module overlay(
	input                      rst_n,   
	input                      pclk,
	input                      sys_clk,
	input                      i_hs,    
	input                      i_vs,    
	input                      i_de,	
	input[23:0]                i_data, 
	input[23:0]                ori_data,
	input[11:0]                pos_x,
	input[11:0]                pos_y, 
	input[3:0]                 object_id,
	output                     o_hs,    
	output                     o_vs,    
	output                     o_de,    
	output[23:0]               o_data,
	input[7:0]                 signal,
	input[31:0]                value
);

// subwindow parameter                                 
parameter                               SUB_WINDOW_WIDTH   =    19'd640;
parameter                               SUB_WINDOW_HEIGHT  =    19'd480;
parameter                               WIN_WIDTH          =    19'd1920;
parameter                               WIN_HEIGHT         =    19'd1080;

// display a area parameter
parameter                               DISPLAY_A_START_X    =    19'd1310;
parameter                               DISPLAY_A_START_Y    =    19'd650;
parameter                               DISPLAY_A_WIDTH      =    19'd384;
parameter                               DISPLAY_A_HEIGHT     =    19'd144;

reg[19:0]                               D1_START_X         =    19'd650;
reg[19:0]                               D1_START_Y         =    19'd490;
parameter                               DIS_HEIGHT         =    19'd16;
parameter                               D1_WIDTH           =    19'd56;  //  longitude,latitude

reg[19:0]                               D2_START_X         =    19'd706;
reg[19:0]                               D2_START_Y         =    19'd490;
parameter                               D2_WIDTH           =    19'd88;  //  longitude,latitude,value

reg                                     i_vs_d0;
reg                                     i_vs_d1;
reg                                     i_vs_d2;

reg[19:0]                               win_pos_x          =    19'd640;       // position of sub_window
reg[19:0]                               win_pos_y          =    19'd480;

reg[18:0]                               mouse_dis_start_x[9:0];          //  display area near mouse
reg[18:0]                               mouse_dis_start_y[9:0];
reg[18:0]                               mouse_dis_width[9:0];

reg                                     mouse_dis_flag     =    1'b0;    //  display or not
reg[15:0]                               mouse_dis_addr      [9:0];
reg[11:0]                               mouse_dis_x         [9:0];
reg[7:0]                                mouse_dis_region_active;
reg[7:0]                                mouse_dis_region_active_d0;
reg[7:0]                                mouse_dis_region_active_d1;
reg[7:0]                                mouse_dis_region_active_d2;
reg[7:0]                                mouse_dis_values[9:0];           // display value

parameter                               MOUSE_RGB          =   24'hbfff00;  // RGB of original mouse     

reg[23:0]                               v_data;                             // final output

reg                                     region_active;                      // flag of if the pixel in the subwindow
reg                                     region_active_d0;
reg                                     region_active_d1;
reg                                     region_active_d2;

integer                                 i;
integer                                 j;
reg[7:0]                                counter = 8'd0;

wire                                    vs_edge;

reg[11:0]                               mouse_x             =   12'd0;
reg[11:0]                               mouse_y             =   12'd0;     
reg[11:0]                               mouse_x_d0          =   12'd0;
reg[11:0]                               mouse_y_d0          =   12'd0;    
reg                                     find_mouse          =   1'b0;  

reg[15:0]                               char_addr   [19:0];
reg[11:0]                               osd_x       [19:0];
reg[15:0]                               osd_ram_addr;
wire[7:0]                               q;
reg[7:0]                                d1_region_active;
reg[7:0]                                d1_region_active_d0;
reg[7:0]                                d1_region_active_d1;
reg[7:0]                                d1_region_active_d2;

reg                                     longitude_we        =   1'b0;
reg                                     latitude_ns         =   1'b0;
reg[7:0]                                longitude_value     =   8'd116;
reg[7:0]                                latitude_value      =   8'd40;
reg[11:0]                               temp_x;
reg[7:0]                                long_lati_values   [19:0];

reg[23:0]                               icon_color = 24'hff0000;
reg[23:0]                               icon_color_d0;

reg[7:0]                                current_object_id = 8'd0;

reg[23:0]                               ori_data_simu = 24'h000000;
reg[7:0]                                alpha = 8'hff;
reg[7:0]                                alpha_d0;

reg[15:0]                               color_r_temp;
reg[15:0]                               color_g_temp;
reg[15:0]                               color_b_temp;
reg[15:0]                               color_r_ori_temp;
reg[15:0]                               color_g_ori_temp;
reg[15:0]                               color_b_ori_temp;

reg[9:0]                                display_a_addr;
wire[15:0]                              display_a_data;
wire[15:0]                              display_b_data;
wire[15:0]                              display_r_data;
reg[15:0]                               display_a_data_d0;
reg[15:0]                               display_r_data_d0;
reg[3:0]                                display_mode;

assign vs_edge = i_vs & ~i_vs_d0;  

assign o_data   =   v_data;
assign o_hs     =   i_hs;
assign o_vs     =   i_vs;
assign o_de     =   i_de;


rom_char char_dis (
	.clka               (pclk                    ),   
	.ena                (1'b1                    ),     
	.addra              (osd_ram_addr[13:3]      ), 
	.douta              (q                       )  
);

bram_display_a bram_display_a_inst (
    .clka               (pclk),         // input wire clka
    .ena                (1'b0),         // input wire ena
    .wea                (1'b0),         // input wire [0 : 0] wea
    .addra              (10'd0),        // input wire [9 : 0] addra
    .dina               (16'd0),        // input wire [15 : 0] dina
    .clkb               (pclk),         // input wire clkb
    .enb                (display_mode[2]),         // input wire enb
    .addrb              (display_a_addr),  // input wire [9 : 0] addrb
    .doutb              (display_a_data)  // output wire [15 : 0] doutb
);

bram_display_b bram_display_b_inst (
    .clka               (pclk),         // input wire clka
    .ena                (1'b0),         // input wire ena
    .wea                (1'b0),         // input wire [0 : 0] wea
    .addra              (10'd0),        // input wire [9 : 0] addra
    .dina               (16'd0),        // input wire [15 : 0] dina
    .clkb               (pclk),         // input wire clkb
    .enb                (display_mode[1]), // input wire enb
    .addrb              (display_a_addr),  // input wire [9 : 0] addrb
    .doutb              (display_b_data)  // output wire [15 : 0] doutb
);

//bram_display_r bram_display_r_inst (
//    .clka               (pclk),         // input wire clka
//    .ena                (1'b0),         // input wire ena
//    .wea                (1'b0),         // input wire [0 : 0] wea
//    .addra              (10'd0),        // input wire [9 : 0] addra
//    .dina               (16'd0),        // input wire [15 : 0] dina
//    .clkb               (pclk),         // input wire clkb
//    .enb                (display_mode[0]), // input wire enb
//    .addrb              (display_a_addr),  // input wire [9 : 0] addrb
//    .doutb              (display_r_data)  // output wire [15 : 0] doutb
//);


//delay 1 clock 
always@(posedge pclk) begin
    if(i_vs == 1'b1 && pos_y >= win_pos_y && pos_y <= win_pos_y + SUB_WINDOW_HEIGHT - 19'd1 && pos_x >= win_pos_x && pos_x  <= win_pos_x + SUB_WINDOW_WIDTH - 19'd1)
        region_active <= 1'b1;
	else
		region_active <= 1'b0;
end

always@(posedge pclk) begin
    if(pos_y >= D1_START_Y && pos_y <= D1_START_Y + DIS_HEIGHT - 19'd1) begin
        if (pos_x >= D1_START_X && pos_x <= D1_START_X + D1_WIDTH - 19'd1) begin
            d1_region_active <= 8'd1;
        end else if (pos_x >= D2_START_X && pos_x <= D2_START_X + D2_WIDTH)begin
            temp_x <= pos_x - D2_START_X;
            if (pos_x >= D2_START_X + 8'd2) begin
                d1_region_active <= temp_x[11:3] + 8'd2;
            end else begin
                d1_region_active <= 8'd0;
            end
        end else begin
            d1_region_active <= 8'd0;
            temp_x <= 12'd0;
        end
    end
	else begin
		d1_region_active <= 8'd0;
    end
end

always@(posedge pclk) begin
    if (mouse_dis_flag) begin
        if(pos_y >= mouse_dis_start_y[1] && pos_y < mouse_dis_start_y[1] + DIS_HEIGHT) begin
            if (pos_x >= mouse_dis_start_x[1] && pos_x < mouse_dis_start_x[1] + mouse_dis_width[1]) begin
                mouse_dis_region_active <= 8'd1;
            end else if (pos_x >= mouse_dis_start_x[2] && pos_x < mouse_dis_start_x[2] + mouse_dis_width[2])begin
                mouse_dis_region_active <= 8'd2;
            end else begin
                mouse_dis_region_active <= 8'd0;
            end
        end else if (pos_y >= mouse_dis_start_y[3] && pos_y < mouse_dis_start_y[3] + DIS_HEIGHT) begin
           if (pos_x >= mouse_dis_start_x[3] && pos_x < mouse_dis_start_x[3] + mouse_dis_width[3]) begin
                mouse_dis_region_active <= 8'd3;
            end else if (pos_x >= mouse_dis_start_x[4] && pos_x < mouse_dis_start_x[4] + mouse_dis_width[4])begin
                mouse_dis_region_active <= 8'd4;
            end else begin
                mouse_dis_region_active <= 8'd0;
            end
        end else begin
            mouse_dis_region_active <= 8'd0;
        end
    end else begin
        mouse_dis_region_active <= 8'd0;
    end
end

always@(posedge pclk)
begin
	d1_region_active_d0 <= d1_region_active;
	d1_region_active_d1 <= d1_region_active_d0;
	d1_region_active_d2 <= d1_region_active_d1;
    mouse_dis_region_active_d0 <= mouse_dis_region_active;
    mouse_dis_region_active_d1 <= mouse_dis_region_active_d0;
    mouse_dis_region_active_d2 <= mouse_dis_region_active_d1;
    region_active_d0 <= region_active;
    region_active_d1 <= region_active_d0;
    region_active_d2 <= region_active_d1;
end

always@(posedge pclk)
begin
	i_vs_d0 <= i_vs;
	i_vs_d1 <= i_vs_d0;
end

// overlap
always@(posedge pclk) begin
    if (region_active == 1'b1) begin
        if (pos_x > mouse_x && pos_x < mouse_x + 12'd5 && pos_y >= mouse_y && pos_y < mouse_y + 12'd4) begin
            v_data <= 24'h00ffbf;  
        end else if (mouse_dis_flag && mouse_dis_region_active_d2 > 8'd0) begin
            if (q[mouse_dis_x[mouse_dis_region_active_d2][2:0]] == 1'b1) begin
                color_r_temp <= ((8'h00 * (8'hff - alpha)) >> 8);
                color_g_temp <= ((8'hff * (8'hff - alpha)) >> 8);
                color_b_temp <= ((8'hbf * (8'hff - alpha)) >> 8);
                color_r_ori_temp <= ((ori_data[23:16] * alpha) >> 8);
                color_g_ori_temp <= ((ori_data[15:8] * alpha) >> 8);
                color_b_ori_temp <= ((ori_data[7:0] * alpha) >> 8);
                v_data <= {color_r_temp[7:0] + color_r_ori_temp[7:0], color_g_temp[7:0] + color_g_ori_temp[7:0], color_b_temp[7:0] + color_b_ori_temp[7:0]};
            end else begin
                v_data <= 24'h000000;
            end
        end else if (d1_region_active_d2 > 8'd0) begin
            if (q[osd_x[d1_region_active_d2][2:0]] == 1'b1) begin
                color_r_temp <= ((icon_color[23:16] * (8'hff - alpha)) >> 8);
                color_g_temp <= ((icon_color[15:8] * (8'hff - alpha)) >> 8);
                color_b_temp <= ((icon_color[7:0] * (8'hff - alpha)) >> 8);
                color_r_ori_temp <= ((ori_data[23:16] * alpha) >> 8);
                color_g_ori_temp <= ((ori_data[15:8] * alpha) >> 8);
                color_b_ori_temp <= ((ori_data[7:0] * alpha) >> 8);
                v_data <= {color_r_temp[7:0] + color_r_ori_temp[7:0], color_g_temp[7:0] + color_g_ori_temp[7:0], color_b_temp[7:0] + color_b_ori_temp[7:0]};
            end else begin
                v_data <= ori_data;
            end
        end else if(i_data[23:16] + i_data[15:8] + i_data[7:0] > ori_data[23:16] + ori_data[15:8] + ori_data[7:0]) begin
            v_data <= i_data;
        end  else begin
            v_data <= ori_data;
        end
    end else if (display_mode[2] && pos_x >= DISPLAY_A_START_X && pos_x <= DISPLAY_A_START_X + DISPLAY_A_WIDTH && (((pos_y <= DISPLAY_A_START_Y - display_a_data) && (pos_y >= DISPLAY_A_START_Y - display_a_data_d0)) || ((pos_y >= DISPLAY_A_START_Y - display_a_data) && (pos_y <= DISPLAY_A_START_Y - display_a_data_d0)))) begin
        v_data <= 24'hffffff;
    end else if (display_mode[1] && pos_x >= DISPLAY_A_START_X && pos_x <= DISPLAY_A_START_X + DISPLAY_A_WIDTH && pos_y == DISPLAY_A_START_Y - display_b_data) begin
        v_data <= 24'hffffff;
    end else if (display_mode[0] && pos_x >= DISPLAY_A_START_X && pos_x <= DISPLAY_A_START_X + DISPLAY_A_WIDTH && (((pos_y <= DISPLAY_A_START_Y - display_r_data) && (pos_y >= DISPLAY_A_START_Y - display_r_data_d0)) || ((pos_y >= DISPLAY_A_START_Y - display_r_data) && (pos_y <= DISPLAY_A_START_Y - display_r_data_d0)))) begin
        v_data <= 24'hffffff;
    end else begin
        v_data <= ori_data;
    end
end
    
always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        find_mouse <= 1'b0;
        mouse_dis_flag <= 1'b0;
    end else if (vs_edge == 1'b1) begin
        if (find_mouse) begin
            find_mouse <= 1'b0;
        end
    end else if (mouse_x == pos_x && mouse_y == pos_y && ~find_mouse) begin
        find_mouse <= 1'b1;
        if (object_id > 0) begin
            current_object_id <= object_id;
            mouse_dis_flag <= 1'b1;
            mouse_dis_start_x[1] <= pos_x + 12'd7;
            mouse_dis_start_y[1] <= pos_y + 12'd7;
            mouse_dis_start_x[2] <= pos_x + 12'd79;
            mouse_dis_start_y[2] <= pos_y + 12'd7;
            mouse_dis_start_x[3] <= pos_x + 12'd7;
            mouse_dis_start_y[3] <= pos_y + 12'd23;
            mouse_dis_start_x[4] <= pos_x + 12'd47;
            mouse_dis_start_y[4] <= pos_y + 12'd23;
        end else begin
            mouse_dis_flag <= 1'b0;
            current_object_id <= 8'd0;
        end
    end 
end 

always@(posedge pclk)
begin
	if(d1_region_active_d2 > 0) begin
		osd_x[d1_region_active_d2] <= osd_x[d1_region_active_d2] + 12'd1;
    end else begin
        for (i = 0; i < 15; i = i + 1) begin
            osd_x[i] <= 12'd0;
        end
    end
end

always@(posedge pclk) begin
	if(mouse_dis_region_active_d2 > 0) begin
		mouse_dis_x[mouse_dis_region_active_d2] <= mouse_dis_x[mouse_dis_region_active_d2] + 12'd1;
    end else begin
        for (i = 0; i < 10; i = i + 1) begin
            mouse_dis_x[i] <= 12'd0;
        end
    end
end

always@(posedge pclk) begin
	if(d1_region_active > 0) begin
		char_addr[d1_region_active] <= char_addr[d1_region_active] + 16'd1;
    end else if (vs_edge == 1'b1)begin
        for (i = 0; i < 15; i = i + 1) begin
            char_addr[i] <= 16'd0;
        end
    end
end

// address in display area near mouse
always@(posedge pclk) begin
	if(mouse_dis_region_active > 0) begin
		mouse_dis_addr[mouse_dis_region_active] <= mouse_dis_addr[mouse_dis_region_active] + 16'd1;
    end else if (vs_edge == 1'b1)begin
        for (i = 0; i < 10; i = i + 1) begin
            mouse_dis_addr[i] <= 16'd0;
        end
    end
end

// set address to get mask matrix of char
always@(posedge pclk) begin
	if(i_vs_d1 == 1'b1 && i_vs_d0 == 1'b0)
		osd_ram_addr <= 16'd0;        
	else if (mouse_dis_region_active) begin 
	    if (mouse_dis_region_active == 8'd1) begin
            osd_ram_addr <= mouse_dis_addr[1] + 16'd4224;
        end else if (mouse_dis_region_active == 8'd3) begin
            osd_ram_addr <= mouse_dis_addr[3] + 16'd3584;
        end else begin
            case (mouse_dis_values[mouse_dis_region_active]) 
            8'd21: begin
                osd_ram_addr <= mouse_dis_addr[mouse_dis_region_active] + 16'd5376;
            end 
            8'd22: begin
                osd_ram_addr <= mouse_dis_addr[mouse_dis_region_active] + 16'd5504;
            end 
            8'd23: begin
                osd_ram_addr <= mouse_dis_addr[mouse_dis_region_active] + 16'd5632;
            end
            8'd24: begin
                osd_ram_addr <= mouse_dis_addr[mouse_dis_region_active] + 16'd5760;
            end
            endcase
        end
	end else if(d1_region_active > 8'd0) begin
        if (d1_region_active == 8'd1) begin
            osd_ram_addr <= char_addr[1] + 12'd2176;
        end else begin
            case (long_lati_values[d1_region_active - 2]) 
            8'd0: begin
                osd_ram_addr <= char_addr[d1_region_active];
            end
            8'd1: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd128;
            end
            8'd2: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd256;
            end
            8'd3: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd384;
            end
            8'd4: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd512;
            end
            8'd5: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd640;
            end
            8'd6: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd768;
            end
            8'd7: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd896;
            end
            8'd8: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd1024;
            end
            8'd9: begin
                osd_ram_addr <= char_addr[d1_region_active] + 12'd1152;
            end
            8'd10: begin    // angle
                osd_ram_addr <= char_addr[d1_region_active] + 12'd1280;
            end
            8'd11: begin    // blank
                osd_ram_addr <= char_addr[d1_region_active] + 12'd1408;
            end
            8'd12: begin    // minute
                osd_ram_addr <= char_addr[d1_region_active] + 12'd1536;
            end
            8'd13: begin    // second
                osd_ram_addr <= char_addr[d1_region_active] + 12'd1792;
            end
            8'd14: begin    // ,
                osd_ram_addr <= char_addr[d1_region_active] + 12'd2048;
            end
            8'd15: begin    // E
                osd_ram_addr <= char_addr[d1_region_active] + 12'd3072;
            end
            8'd16: begin    // S
                osd_ram_addr <= char_addr[d1_region_active] + 12'd3200;
            end
            8'd17: begin    // W
                osd_ram_addr <= char_addr[d1_region_active] + 12'd3328;
            end
            8'd18: begin    // N
                osd_ram_addr <= char_addr[d1_region_active] + 12'd3456;
            end
            endcase
        end
    end
end

// counter 1hz
always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0)begin
        counter <= 8'd0;
    end else if (vs_edge) begin
        counter <= counter + 8'd1;
        if (counter >= 8'd60) begin
            counter <= 8'd0;
        end
    end
end

// initialization of longitude value and latitude value
always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        longitude_we        <=   1'b0; 
        latitude_ns         <=   1'b0; 
        longitude_value     <=   8'd116;
        latitude_value      <=   8'd40;
    end else if (counter >= 8'd60 && vs_edge) begin
        if (longitude_value < 8'd180) begin
            longitude_value <= longitude_value + 8'd1;
        end else begin
            longitude_value <= 8'd0;
            longitude_we <= ~longitude_we;
        end
        if (latitude_value < 8'd90) begin
            latitude_value <= latitude_value + 8'd1;
        end else begin
            latitude_value <= 8'd0;
            latitude_ns <= ~latitude_ns;
        end
    end
end

// initialization of display area 1
always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        long_lati_values[0] <= 8'd11;
        long_lati_values[1] <= 8'd11;
        long_lati_values[2] <= 8'd0;
        long_lati_values[3] <= 8'd10;
        long_lati_values[4] <= 8'd18;
        long_lati_values[5] <= 8'd14;
        long_lati_values[6] <= 8'd11;
        long_lati_values[7] <= 8'd11;
        long_lati_values[8] <= 8'd0;
        long_lati_values[9] <= 8'd10;
        long_lati_values[10] <= 8'd15;
    end else if (counter >= 8'd60 && vs_edge) begin
        long_lati_values[2] <= latitude_value % 10;
        long_lati_values[1] <= latitude_value % 100 / 10;
        long_lati_values[0] <= 8'd11;
        long_lati_values[8] <= longitude_value % 10;      
        long_lati_values[7] <= longitude_value % 100 / 10;
        long_lati_values[6] <= longitude_value / 100; 
        if (longitude_we == 1'b1) begin
            long_lati_values[10] <= 8'd15;
        end else begin
            long_lati_values[10] <= 8'd17;
        end
        if (latitude_ns == 1'b1) begin
            long_lati_values[4] <= 8'd16;
        end else begin
            long_lati_values[4] <= 8'd18;
        end
    end
end

// initialization of display area near mouse 
always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        mouse_dis_values[1] <= 8'd20; // danger level char
        mouse_dis_values[2] <= 8'd21; // danger level value
        mouse_dis_values[3] <= 8'd19; // type char
        mouse_dis_values[4] <= 8'd21; // type value
        mouse_dis_width[1] <= 19'd72;
        mouse_dis_width[2] <= 19'd8;
        mouse_dis_width[3] <= 19'd40;
        mouse_dis_width[4] <= 19'd8;
    end else begin
        mouse_dis_values[2] <= 8'd20 + current_object_id;
    end 
end

always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        icon_color <= 24'hff0000;
        mouse_x <= 12'd0;
        mouse_y <= 12'd0;
        display_mode <= 3'b100;
    end else begin
        case (signal) 
            8'd1: begin
                icon_color <= value[23:0];
                icon_color_d0 <= icon_color;
            end
            8'd4: begin
                mouse_x <= value[31:16] + win_pos_x;
                mouse_y <= value[15:0] + win_pos_y;
                mouse_x_d0 <= mouse_x;
                mouse_y_d0 <= mouse_y;
            end
            8'd6: begin
                alpha <= value[7:0];
                alpha_d0 <= alpha;
            end
            8'd7: begin
                display_mode <= value[2:0];
            end
            8'd10: begin
                win_pos_x <= value[31:16];
                win_pos_y <= value[15:0];
            end
            default: begin
                icon_color <= icon_color_d0;
                alpha <= alpha_d0;
                mouse_x <= mouse_x_d0;
                mouse_y <= mouse_y_d0;
            end
        endcase
    end 
end

always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        display_a_addr <= 10'd0;
    end else begin
        if (pos_x >= DISPLAY_A_START_X && pos_x <= DISPLAY_A_START_X + DISPLAY_A_WIDTH && pos_y <= DISPLAY_A_START_Y && pos_y >= DISPLAY_A_START_Y - DISPLAY_A_HEIGHT) begin
            display_a_addr <= pos_x - DISPLAY_A_START_X;
        end else begin
            display_a_addr <= 10'd0;
        end
        display_a_data_d0 <= display_a_data;
        display_r_data_d0 <= display_r_data;
    end 
end

endmodule