`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/16 11:55:54
// Design Name: 
// Module Name: scanning_line
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module plot(
    input               clk,
    input               sys_clk,
    input               rst,
    input               i_hs,
    input               i_vs,
    input               i_de,
    input[11:0]         pos_x,
    input[11:0]         pos_y,
    input[23:0]         i_data,
    
    output[11:0]        out_x,
    output[11:0]        out_y,
    output              o_hs,
    output              o_vs,
    output              o_de,
    output[23:0]        plot_data,
    output[3:0]         object_id,
    output[23:0]        o_data,
    input[7:0]          signal,
    input[31:0]         value
);
parameter                               WIN_POS_X          =    19'd640;       // position of sub_window
parameter                               WIN_POS_Y          =    19'd480;    
parameter                               SUB_WINDOW_WIDTH   =    19'd640;        // subwindow size
parameter                               SUB_WINDOW_HEIGHT  =    19'd480;
parameter                               RADIUS             =    19'd210;        // length of scanning line
parameter                               RADIUS_SQ          =    20'd34225;
parameter                               CENTER_X           =    19'd333 + WIN_POS_X;        // center of the dashboard
parameter                               CENTER_Y           =    19'd241 + WIN_POS_Y;
parameter                               ICON_WIDTH         =    8'd8;           // icon size
parameter                               ICON_HEIGHT        =    8'd8;
parameter                               PLANE_WIDTH        =    8'd16;          // plane size
parameter                               PLANE_HEIGHT       =    8'd16;
parameter                               ROTATIONAL_SPEED   =    8'd10;         // rotational speed of scanning line
parameter                               AFTERGLOW_DECAY    =    8'd4;


reg                                     de_d0;          
reg                                     de_d1;
reg                                     de_d2;
reg                                     vs_d0;
reg                                     vs_d1;
reg                                     vs_d2;
reg                                     hs_d0;
reg                                     hs_d1;
reg                                     hs_d2;

reg[11:0]                               pos_x_d0;       // coordinate of current pixel
reg[11:0]                               pos_x_d1;
reg[11:0]                               pos_x_d2;
reg[11:0]                               pos_y_d0;
reg[11:0]                               pos_y_d1;
reg[11:0]                               pos_y_d2;

reg[15:0]                               scanning_line_x;    // current x-coordinate when plotting scanning line
reg[15:0]                               scanning_line_y;    // current y-coordinate when plotting scanning line

wire                                    vs_edge;
wire                                    de_falling;

reg[11:0]                               theta = 12'd0;    // angle of scanning line


reg                                     ena;        // signals to the plotting layer ram
reg[18:0]                               addra;
reg[23:0]                               dina;
reg[18:0]                               addrb;
reg[18:0]                               addrb_d0;
reg[18:0]                               addrb_d1;
wire[23:0]                              doutb;       

integer                                 radius;     // current raidus when plotting scanning line
integer                                 i;

reg[31:0]                               tempx_1;    
reg[31:0]                               tempy_1;
reg[31:0]                               tempx_2;
reg[31:0]                               tempy_2;
reg[31:0]                               tempx_3;
reg[31:0]                               tempy_3;

wire[11:0]                              p1_x;   // position coordinates of objects
wire[11:0]                              p1_y;
wire[11:0]                              p2_x;
wire[11:0]                              p2_y;
wire[11:0]                              p3_x;
wire[11:0]                              p3_y;
wire[11:0]                              p4_x;
wire[11:0]                              p4_y;

wire[7:0]                               p1_direction;   // direction of object 1

reg[11:0]                               p1_x_d0;
reg[11:0]                               p1_y_d0;
reg[11:0]                               p2_x_d0;
reg[11:0]                               p2_y_d0;
reg[11:0]                               p3_x_d0;
reg[11:0]                               p3_y_d0;
reg[11:0]                               p4_x_d0;
reg[11:0]                               p4_y_d0;
reg[11:0]                               p1_x_d1;
reg[11:0]                               p1_y_d1;
reg[11:0]                               p1_x_d2;
reg[11:0]                               p1_y_d2;

reg[15:0]                               icon_addr   [4:0];
reg[11:0]                               icon_x      [4:0];
reg[15:0]                               icon_ram_addr;
wire[7:0]                               q;
reg[3:0]                                icon_region_active;
reg[3:0]                                icon_region_active_d0;
reg[3:0]                                icon_region_active_d1;
reg[3:0]                                icon_region_active_d2;

reg                                     region_active;                      // flag of if the pixel in the subwindow
reg                                     region_active_d0;
reg                                     region_active_d1;
reg                                     region_active_d2;

reg[23:0]                               i_data_d0;
reg[23:0]                               i_data_d1;
reg[23:0]                               i_data_d2;

reg[7:0]                                icon_values    [8:0];  // values of objects(icon id)

wire[31:0]                              distance_sq;
reg[11:0]                               theta_d0;
wire[15:0]                              current_pixel_theta;

reg[7:0]                                danger_level_threshold = 8'd0;
wire signed [11:0]                      relative_x;
wire signed [11:0]                      relative_y;

wire                                    scale_signal_flag;
reg[9:0]                                addrb_display_a;
reg[31:0]                               doutb_display_a;

reg[7:0]                                alpha;

reg[7:0]                                echo_intensity_threshold = 8'd0;

assign vs_edge = vs_d0 & ~vs_d1;  
assign de_falling = ~de_d0 & de_d1;
assign o_de = de_d2;
assign o_vs = vs_d2;
assign o_hs = hs_d2;
assign out_x = pos_x_d2;
assign out_y = pos_y_d2;
assign object_id = icon_region_active_d2;
assign plot_data = doutb;
assign o_data = i_data_d2;
assign relative_x = pos_x - CENTER_X;
assign relative_y = CENTER_Y - pos_y;
assign distance_sq = relative_x * relative_x + relative_y * relative_y;


scale_point scale_p (
    .clk                (clk),
    .sys_clk            (sys_clk),
    .rst                (rst),
    .i_vs               (i_vs),
    .out1_x             (p1_x),
    .out1_y             (p1_y),
    .out2_x             (p2_x),
    .out2_y             (p2_y),
    .out3_x             (p3_x),
    .out3_y             (p3_y),
    .out4_x             (p4_x),
    .out4_y             (p4_y),
    .out_p1_direction   (p1_direction),
    .signal             (signal),
    .value              (value)

);

//// simulated objects
//simu_point simu_p (
//    .clk                (clk),
//    .sys_clk            (sys_clk),
//    .rst                (rst),
//    .i_vs               (i_vs),
//    .out1_x             (p1_x),
//    .out1_y             (p1_y),
//    .out2_x             (p2_x),
//    .out2_y             (p2_y),
//    .out3_x             (p3_x),
//    .out3_y             (p3_y),
//    .out4_x             (p4_x),
//    .out4_y             (p4_y),
//    .out1_value         (p1_direction),
//    .signal             (signal),
//    .value              (value)
//);

// ram storing plot layer
plot_bram plot (
  .clka                 (clk),      // input wire clka
  .ena                  (1'b1),     // input wire ena
  .wea                  (1'b1),     // input wire [0 : 0] wea
  .addra                (addra),    // input wire [18 : 0] addra
  .dina                 (dina),     // input wire [23 : 0] dina
  .douta                (),    // output wire [23 : 0] dou          ta
  .clkb                 (clk),      // input wire clkb
  .enb                  (1'b1),     // input wire enb
  .web                  (1'b0),      // input wire [0 : 0] web
  .addrb                (addrb),    // input wire [18 : 0] addrb
  .dinb                 (24'h000000),     // input wire [23 : 0] dinb
  .doutb                (doutb)     // output wire [23 : 0] doutb
);


rom_theta_data rom_theta_data_inst (
  .clka                 (clk),              // input wire clka
  .ena                  (1'b1),             // input wire ena
  .addra                (addrb),            // input wire [18 : 0] addra
  .douta                (current_pixel_theta)   // output wire [15 : 0] douta
);

// rom storing the icon mask matrices
icon_rom icon (
  .clka                 (clk),              // input wire clka
  .ena                  (1'b1),             // input wire ena
  .addra                (icon_ram_addr[11:3]),  // input wire [4 : 0] addra
  .douta                (q)                 // output wire [7 : 0] douta
);


// delay
always@(posedge clk) begin
	de_d0 <= i_de;
	de_d1 <= de_d0;
	de_d2 <= de_d1;
	vs_d0 <= i_vs;
	vs_d1 <= vs_d0;
	vs_d2 <= vs_d1;
	hs_d0 <= i_hs;
	hs_d1 <= hs_d0;
	hs_d2 <= hs_d1;
    pos_x_d0 <= pos_x;
    pos_x_d1 <= pos_x_d0;
    pos_x_d2 <= pos_x_d1;
        
    pos_y_d0 <= pos_y;
    pos_y_d1 <= pos_y_d0;
    pos_y_d2 <= pos_y_d1;
    
    addrb_d0 <= addrb;
    addrb_d1 <= addrb_d0;
    
    i_data_d0 <= i_data;
    i_data_d1 <= i_data_d0;
    i_data_d2 <= i_data_d1;
    
    region_active_d0 <= region_active;
    region_active_d1 <= region_active_d0;
    region_active_d2 <= region_active_d1;
    
    icon_region_active_d0 <= icon_region_active;
    icon_region_active_d1 <= icon_region_active_d0;
    icon_region_active_d2 <= icon_region_active_d1;
end

//delay 1 clock 
always@(posedge clk) begin
    if(i_vs == 1'b1 && pos_y >= WIN_POS_Y && pos_y <= WIN_POS_Y + SUB_WINDOW_HEIGHT - 19'd1 && pos_x >= WIN_POS_X && pos_x  <= WIN_POS_X + SUB_WINDOW_WIDTH - 19'd1)
        region_active <= 1'b1;
	else
		region_active <= 1'b0;
end

// plot
always@(posedge clk or negedge rst) begin
    if(rst == 1'b0) begin
        addra <= 18'd0;
        dina <= 24'd0;
    end else begin
        addra <= addrb_d1;
        // plot objects
        if (icon_region_active_d2 > 4'd0 && q[icon_x[icon_region_active_d2][2:0]] == 1'b1) begin
            dina <= 24'hff0000;
        end else if (distance_sq <= RADIUS_SQ && current_pixel_theta <= theta && current_pixel_theta > theta_d0) begin
            dina <= 24'hffffff;
        end else if (doutb > 24'h000000) begin
            if (doutb[23:16] > AFTERGLOW_DECAY) begin
                dina[23:16] <= doutb[23:16] - AFTERGLOW_DECAY;
            end else begin
                dina[23:16] <= 8'h00;
            end
            if (doutb[15:8] > AFTERGLOW_DECAY) begin
                dina[15:8] <= doutb[15:8] - AFTERGLOW_DECAY;
            end else begin
                dina[15:8] <= 8'h00;
            end
            if (doutb[7:0] > AFTERGLOW_DECAY) begin
                dina[7:0] <= doutb[7:0] - AFTERGLOW_DECAY;
            end else begin
                dina[7:0] <= 8'h00;
            end
        end else begin
            dina <= 24'h000000;
        end
    end
end

// set address to get the data in last frame of plotting layer
always@(posedge clk or negedge rst) begin
    if(rst == 1'b0 || ~region_active) begin
        addrb <= 19'd0;
    end else begin
        addrb <= (pos_y - WIN_POS_Y) * SUB_WINDOW_WIDTH + (pos_x - WIN_POS_X);
    end 
end    

// theta change
always@(posedge clk or negedge rst) begin
    if(rst == 1'b0)
        theta <= 12'd0;
    else if(vs_edge == 1'b1) begin
        if (theta >= 3600 - ROTATIONAL_SPEED) begin
            theta <= 12'd0;
        end else begin
            theta <= theta + ROTATIONAL_SPEED;
        end
        theta_d0 <= theta;
    end
end

// get the area of current pixel
always@(posedge clk) begin
    if(pos_x >= p1_x && pos_x < p1_x + PLANE_WIDTH && pos_y >= p1_y && pos_y < p1_y + PLANE_HEIGHT && danger_level_threshold <= 1 && echo_intensity_threshold <= 4) begin
        icon_region_active <= 4'd1;
    end else if (pos_x >= p2_x && pos_x < p2_x + ICON_WIDTH && pos_y >= p2_y && pos_y < p2_y + ICON_HEIGHT && danger_level_threshold <= 2 && echo_intensity_threshold <= 3)begin
		icon_region_active <= 4'd2;
    end else if (pos_x >= p3_x && pos_x < p3_x + ICON_WIDTH && pos_y >= p3_y && pos_y < p3_y + ICON_HEIGHT && danger_level_threshold <= 3 && echo_intensity_threshold <= 2)begin
        icon_region_active <= 4'd3;
    end else if (pos_x >= p4_x && pos_x < p4_x + ICON_WIDTH && pos_y >= p4_y && pos_y < p4_y + ICON_HEIGHT && danger_level_threshold <= 4 && echo_intensity_threshold <= 1)begin
        icon_region_active <= 4'd4;
    end else begin
        icon_region_active <= 4'd0;
    end
end

// get the bit index of icon 
always@(posedge clk) begin
	if(icon_region_active_d2 > 4'd0) begin
		icon_x[icon_region_active_d2] <= icon_x[icon_region_active_d2] + 1;
    end else begin
        for (i = 0; i < 5; i = i + 1) begin
            icon_x[i] <= 12'd0;
        end
    end
end


// set the relative address of objects 
always@(posedge clk) begin
	if(icon_region_active > 4'd0) begin
		icon_addr[icon_region_active] <= icon_addr[icon_region_active] + 16'd1;
    end else if (vs_edge == 1'b1)begin
        for (i = 0; i < 5; i = i + 1) begin
            icon_addr[i] <= 16'd0;
        end
    end
end

// set address to get the value of icon mask
always@(posedge clk) begin
	if(vs_edge == 1'b1)
		icon_ram_addr <= 16'd0;        
	else if(icon_region_active > 4'd0) begin
	    case (icon_values[icon_region_active])
	    8'd1: begin
            icon_ram_addr <= icon_addr[icon_region_active];
	    end 
        8'd2: begin
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd64;
        end 
        8'd3: begin
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd128;
        end 
        8'd4: begin
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd192;
        end 
        8'd5: begin //  plane 0
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd256;
        end 
        8'd6: begin //  plane 45 
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd512;
        end
        8'd7: begin //  plane 90
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd768;
        end  
        8'd8: begin //  plane 135
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd1024;
        end 
        8'd9: begin //  plane 180
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd1280;
        end 
        8'd10: begin // plane 235
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd1536;
        end 
        8'd11: begin // plane 270
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd1792;
        end 
        8'd12: begin // plane 315
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd2048;
        end 
	    endcase
    end
end

// set icon values
always@(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
        icon_values[1] <= 8'd12;
        for (i = 2; i < 9; i = i + 1) begin
            icon_values[i] <= i;
        end
        danger_level_threshold <= 8'd0;
    end else begin
        icon_values[1] <= p1_direction;
        case (signal)
            8'd2: begin
                for (i = 2; i < 9; i = i + 1) begin
                    icon_values[i] <= value[7:0];
                end
            end
            8'd3: begin
                danger_level_threshold <= value[7:0];
            end
            8'd6: begin
                alpha <= value[7:0];
            end
            8'd8: begin
                echo_intensity_threshold <= value[7:0];
            end
        endcase
    end
end
endmodule
