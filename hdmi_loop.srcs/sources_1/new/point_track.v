//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//                                                                              //
//  Author: meisq                                                               //
//          msq@qq.com                                                          //
//          ALINX(shanghai) Technology Co.,Ltd                                  //
//          heijin                                                              //
//     WEB: http://www.alinx.cn/                                                //
//     BBS: http://www.heijin.org/                                              //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//2017/8/20                    1.0          Original
//*******************************************************************************/
module point_track(
	input                       rst_n,   
	input                       pclk,
	input                       sys_clk,
	input                       i_hs,    
	input                       i_vs,    
	input                       i_de,	
	input[23:0]                 i_data,  
	output                      o_hs,    
	output                      o_vs,    
	output                      o_de,    
	output[23:0]                o_data
);

// subwindow parameter
parameter                               SUB_WINDOW_WIDTH   =    19'd640;
parameter                               SUB_WINDOW_HEIGHT  =    19'd480;
parameter                               WIN_WIDTH          =    19'd1920;
parameter                               WIN_HEIGHT         =    19'd1080;

parameter                               D1_START_X         =    19'd10;
parameter                               D1_START_Y         =    19'd10;
parameter                               DIS_HEIGHT         =    19'd16;
parameter                               D1_WIDTH           =    19'd56;  //  longitude,latitude

parameter                               D2_START_X         =    19'd66;
parameter                               D2_START_Y         =    19'd10;
parameter                               D2_WIDTH           =    19'd88;   //  longitude,latitude,value


//parameter                               D1_HEIGHT          =    19'd24;
//parameter                               D1_HEIGHT          =    19'd24;
//parameter                               D1_HEIGHT          =    19'd24;
//parameter                               D1_HEIGHT          =    19'd24;
//parameter                               D1_HEIGHT          =    19'd24;

// mouse parameter
parameter                               MOUSE_RGB          =   24'hbfff00;                

reg[11:0]                               win_pos_x          =   19'd0;
reg[11:0]                               win_pos_y          =   19'd0;      

wire[11:0]                              pos_x;
wire[11:0]                              pos_y;

wire                                    pos_hs;
wire                                    pos_vs;
wire                                    pos_de;
wire[23:0]                              pos_data;
reg[23:0]                               v_data;
reg                                     region_active;
reg                                     region_active_d0;
reg                                     region_active_d1;
reg                                     region_active_d2;

reg                                     out_vs_d0;
reg                                     out_vs_d1;

integer                                 i;
integer                                 j;

reg                                     ram_finish = 1'b0;  


reg                                     enb;
reg                                     web;
reg[18:0]                               addrb;
reg[23:0]                               dinb;
wire[23:0]                              doutb;
reg[23:0]                               doutb_d0;
reg[23:0]                               doutb_d1;
reg[7:0]                                counter = 8'd0;

wire[11:0]                              out_x;
wire[11:0]                              out_y;                                  
wire                                    out_hs;
wire                                    out_vs;
wire                                    out_de;
wire[23:0]                              line;
wire                                    vs_falling;

reg[11:0]                               mouse_x             =   12'd0;
reg[11:0]                               mouse_y             =   12'd0;      
reg                                     find_mouse          =   1'b0;  

reg[15:0]                               char_addr   [19:0];
reg[11:0]                               osd_x       [19:0];
reg[15:0]                               osd_ram_addr;
wire[7:0]                               q;
reg[7:0]                                d1_region_active;
reg[7:0]                                d1_region_active_d0;
reg[7:0]                                d1_region_active_d1;
reg[7:0]                                d1_region_active_d2;
reg[7:0]                                d1_region_active_d3;
reg[7:0]                                d1_region_active_d4;

reg                                     longitude_we        =   1'b0;
reg                                     latitude_ns         =   1'b0;
reg[7:0]                                longitude_value     =   8'd116;
reg[7:0]                                latitude_value      =   8'd40;
reg[11:0]                               temp_x;
reg[7:0]                                long_lati_values   [19:0];

assign vs_falling = out_vs & ~out_vs_d0;  


assign o_data   =   v_data;
assign o_hs     =   out_hs;
assign o_vs     =   out_vs;
assign o_de     =   out_de;

//delay 1 clock 
always@(posedge pclk)
begin
    if(out_y >= win_pos_y && out_y <= win_pos_y + SUB_WINDOW_HEIGHT - 19'd1 && out_x >= win_pos_x && out_x  <= win_pos_x + SUB_WINDOW_WIDTH - 19'd1)
        region_active <= 1'b1;
	else
		region_active <= 1'b0;
end

always@(posedge pclk)
begin
    if(out_y >= D1_START_Y && out_y <= D1_START_Y + DIS_HEIGHT - 19'd1) begin
        if (out_x >= D1_START_X && out_x <= D1_START_X + D1_WIDTH - 19'd1) begin
            d1_region_active <= 8'd1;
        end else if (out_x >= D2_START_X && out_x <= D2_START_X + D2_WIDTH)begin
            temp_x <= out_x - D2_START_X;
            if (out_x >= D2_START_X + 8'd2) begin
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

always@(posedge pclk)
begin
	d1_region_active_d0 <= d1_region_active;
	d1_region_active_d1 <= d1_region_active_d0;
	d1_region_active_d2 <= d1_region_active_d1;
    d1_region_active_d3 <= d1_region_active_d2;
    d1_region_active_d4 <= d1_region_active_d3;
end


always@(posedge pclk)
begin
	region_active_d0 <= region_active;
	region_active_d1 <= region_active_d0;
	region_active_d2 <= region_active_d1;
end

always@(posedge pclk)
begin
	out_vs_d0 <= out_vs;
	out_vs_d1 <= out_vs_d0;
end

always@(posedge pclk)
begin
	doutb_d0 <= doutb;
	doutb_d1 <= doutb_d0;
end


//overlap
always@(posedge pclk) begin
    if (region_active == 1'b1) begin
        addrb <= (out_y - win_pos_y) * SUB_WINDOW_WIDTH + (out_x - win_pos_x);
        if (out_x > mouse_x && out_x < mouse_x + 12'd5 && out_y >= mouse_y && out_y < mouse_y + 12'd4) begin
            v_data <= 24'h00ffbf;  
        end else if (d1_region_active_d2 > 8'd0) begin
            if (q[osd_x[d1_region_active_d2][2:0]] == 1'b1) begin
                v_data <= 24'hff0000;
            end else begin
                v_data <= doutb_d1;
            end
        end else if(line[23:16] + line[15:8] + line[7:0] > doutb_d1[23:16] + doutb_d1[15:8] + doutb_d1[7:0]) begin
            v_data <= line;
        end else begin
            v_data <= doutb_d1;
        end
    end else begin
        v_data <= pos_data;
    end
end
    
always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        mouse_x <= 12'd0;
        mouse_y <= 12'd0;
        find_mouse <= 1'b0;
    end else if (vs_falling == 1'b1) begin
        if (find_mouse) begin
            find_mouse <= 1'b0;
        end
    end else if (pos_data == MOUSE_RGB && ~find_mouse) begin
        mouse_x <= out_x;
        mouse_y <= out_y;
        find_mouse <= 1'b1;
    end 
end    
    
always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        enb <= 1'b0;  
        web <= 1'b0;
        dinb <= 24'h000000; 
    end else begin
        enb <= 1'b1;
        web <= 1'b0;
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

always@(posedge pclk)
begin
	if(d1_region_active > 0) begin
		char_addr[d1_region_active] <= char_addr[d1_region_active] + 16'd1;
    end else if (vs_falling == 1'b1)begin
        for (i = 0; i < 15; i = i + 1) begin
            char_addr[i] <= 16'd0;
        end
    end
end

always@(posedge pclk)
begin
	if(out_vs_d1 == 1'b1 && out_vs_d0 == 1'b0)
		osd_ram_addr <= 16'd0;        
	else if(d1_region_active > 8'd0) begin
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

always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0)begin
        counter <= 8'd0;
    end else if (vs_falling) begin
        counter <= counter + 8'd1;
        if (counter >= 8'd60) begin
            counter <= 8'd0;
        end
    end
end

always@(posedge pclk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        longitude_we        <=   1'b0; 
        latitude_ns         <=   1'b0; 
        longitude_value     <=   8'd116;
        latitude_value      <=   8'd40;
    end else if (counter >= 8'd60 && vs_falling) begin
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
    end else if (counter >= 8'd60 && vs_falling) begin
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


timing_gen_xy timing_gen_xy_m0(
	.rst_n              (rst_n    ),
	.clk                (pclk     ),
	.i_hs               (i_hs     ),
	.i_vs               (i_vs     ),
	.i_de               (i_de     ),
	.i_data             (i_data   ),
	.o_hs               (pos_hs   ),
	.o_vs               (pos_vs   ),
	.o_de               (pos_de   ),
	.o_data             (pos_data ),
	.x                  (pos_x    ),
	.y                  (pos_y    )
);

scanning_line scanning_line_m0(
    .clk                (pclk       ),
    .sys_clk            (sys_clk    ),
    .rst                (rst_n      ),
    .i_hs               (pos_hs     ),
    .i_vs               (pos_vs     ),
    .i_de               (pos_de     ),
    .pos_x              (pos_x      ),
    .pos_y              (pos_y      ),
    .out_x              (out_x      ),
    .out_y              (out_y      ),
    .o_hs               (out_hs     ),
    .o_vs               (out_vs     ),  
    .o_de               (out_de     ),
    .line               (line       )
    );

rom_char char_dis (
	.clka               (pclk                    ),   
	.ena                (1'b1                    ),     
	.addra              (osd_ram_addr[14:3]      ), 
	.douta              (q                       )  
);


ppi_bg ppi (
  .clka                 (pclk   ),          // input wire clka
  .ena                  (enb    ),          // input wire ena
  .addra                (addrb  ),          // input wire [18 : 0] addra
  .douta                (doutb  )           // output wire [23 : 0] douta
);

ila_0 ila_win (
	.clk(sys_clk),         // input wire clk

	.probe0(out_x),        // input wire [11:0]  probe0  
	.probe1(out_y),        // input wire [11:0]  probe1 
	.probe2(osd_ram_addr),         // input wire [23:0]  probe2 
	.probe3(q),        // input wire [18:0]  probe3 
	.probe4(long_lati_values[0]),        // input wire [18:0]  probe4 
	.probe5(d1_region_active),
	.probe6(osd_x[2]),
	.probe7(char_addr[2])
);

endmodule