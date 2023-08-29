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


module scanning_line(
    input               clk,
    input               sys_clk,
    input               rst,
    input               i_hs,
    input               i_vs,
    input               i_de,
    input[11:0]         pos_x,
    input[11:0]         pos_y,
    
    output[11:0]        out_x,
    output[11:0]        out_y,
    output              o_hs,
    output              o_vs,
    output              o_de,
    output[23:0]        line
    );

parameter                               SUB_WINDOW_WIDTH   =    19'd640;
parameter                               SUB_WINDOW_HEIGHT  =    19'd480;
parameter                               RADIUS             =    19'd185;
parameter                               CENTER_X           =    19'd333;
parameter                               CENTER_Y           =    19'd241;
parameter                               ICON_WIDTH         =    8'd8;
parameter                               ICON_HEIGHT        =    8'd8;

reg de_d0;
reg de_d1;
reg de_d2;
reg vs_d0;
reg vs_d1;
reg vs_d2;
reg hs_d0;
reg hs_d1;
reg hs_d2;
reg[11:0]  pos_x_d0;
reg[11:0]  pos_x_d1;
reg[11:0]  pos_x_d2;
reg[11:0]  pos_y_d0;
reg[11:0]  pos_y_d1;
reg[11:0]  pos_y_d2;
reg[15:0]  addr_x;
reg[15:0]  addr_y;

reg[15:0]   cos_theta;
reg[15:0]   sin_theta;

wire vs_edge;
wire de_falling;
assign vs_edge = vs_d0 & ~vs_d1;  
assign de_falling = ~de_d0 & de_d1;
assign o_de = de_d2;
assign o_vs = vs_d2;
assign o_hs = hs_d2;
assign out_x = pos_x_d2;
assign out_y = pos_y_d2;


reg[11:0]       theta = 12'd360;


reg                                     ena;
reg                                     wea;
reg[18:0]                               addra;
reg[23:0]                               dina;
wire[23:0]                              douta;
reg                                     enb;
reg                                     web;
reg[18:0]                               addrb;
reg[18:0]                               addrb_d0;
reg[18:0]                               addrb_d1;
reg[23:0]                               dinb;
wire[23:0]                              doutb;
assign line = doutb;

reg                                     ena_rom = 1'd1;      // input wire ena               
reg[12:0]                               addra_rom;  // input wire [12 : 0] addra    
wire[15:0]                              douta_rom;  // output wire [15 : 0] douta    
reg                                     enb_rom = 1'd1;      // input wire ena               
reg[12:0]                               addrb_rom;  // input wire [12 : 0] addra    
wire[15:0]                              doutb_rom;  // output wire [15 : 0] douta    

integer                                 radius;
integer                                 i;

reg[31:0]                               tempx_1;
reg[31:0]                               tempy_1;
reg[31:0]                               tempx_2;
reg[31:0]                               tempy_2;
reg[31:0]                               tempx_3;
reg[31:0]                               tempy_3;
reg[9:0]                                line_counter;

wire[11:0]                              p1_out_x;
wire[11:0]                              p1_out_y;
wire[11:0]                              p2_out_x;
wire[11:0]                              p2_out_y;
wire[11:0]                              p3_out_x;
wire[11:0]                              p3_out_y;
wire[11:0]                              p4_out_x;
wire[11:0]                              p4_out_y;

reg[15:0]                               icon_addr   [4:0];
reg[11:0]                               icon_x      [4:0];
reg[15:0]                               icon_ram_addr;
wire[7:0]                               q;
reg[3:0]                                icon_region_active;
reg[3:0]                                icon_region_active_d0;
reg[3:0]                                icon_region_active_d1;
reg[3:0]                                icon_region_active_d2;


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
end

always@(posedge clk or negedge rst) begin
    if(rst == 1'b0) begin
        radius <= 32'd0;
        ena <= 1'b0;
    end else if (i_vs == 1'b0) begin
        if (radius <= RADIUS) begin
            radius <= radius + 1'd1;
            ena <= 1'b1;
        end else begin
            radius <= RADIUS + 1'b1;
            ena <= 1'b0;
        end
    end else begin
        radius <= 1'b0;
        ena <= 1'b1;
    end 
end
    

always@(posedge clk or negedge rst) begin
    if(rst == 1'b0) begin
        wea <= 1'b1;
        addra <= 18'd0;
        dina <= 24'd0;
        enb <= 1'b1; 
        web <= 1'b0;
        dinb <= 24'd0;
    end else if(i_vs == 1'b0) begin
        dina <= 24'hffffff;
        if (douta_rom >= 16'd1000 && doutb_rom >= 16'd1000) begin
            tempx_1 <= doutb_rom - 16'd1000;
            tempx_2 <= radius * tempx_1;
            tempx_3 <= tempx_2 >> 10;
            addr_x <= CENTER_X + tempx_3;
            tempy_1 <= douta_rom - 16'd1000;
            tempy_2 <= radius * tempy_1;
            tempy_3 <= tempy_2 >> 10;
            addr_y <= CENTER_Y - tempy_3;
        end else if (douta_rom >= 16'd1000 && doutb_rom < 16'd1000) begin
            tempx_1 <= 16'd1000 - doutb_rom;
            tempx_2 <= radius * tempx_1;
            tempx_3 <= tempx_2 >> 10;
            addr_x <= CENTER_X - tempx_3;
            tempy_1 <= douta_rom - 16'd1000;
            tempy_2 <= radius * tempy_1;
            tempy_3 <= tempy_2 >> 10;
            addr_y <= CENTER_Y - tempy_3;
        end else if (douta_rom < 16'd1000 && doutb_rom < 16'd1000) begin
            tempx_1 <= 16'd1000 - doutb_rom;
            tempx_2 <= radius * tempx_1;
            tempx_3 <= tempx_2 >> 10;
            addr_x <= CENTER_X - tempx_3;
            tempy_1 <= 16'd1000 - douta_rom;
            tempy_2 <= radius * tempy_1;
            tempy_3 <= tempy_2 >> 10;
            addr_y <= CENTER_Y + tempy_3;
        end else begin
            tempx_1 <= doutb_rom - 16'd1000;
            tempx_2 <= radius * tempx_1;
            tempx_3 <= tempx_2 >> 10;
            addr_x <= CENTER_X + tempx_3;
            tempy_1 <= 16'd1000 - douta_rom;
            tempy_2 <= radius * tempy_1;
            tempy_3 <= tempy_2 >> 10;
            addr_y <= CENTER_Y + tempy_3;
        end
        addra <= addr_y * SUB_WINDOW_WIDTH + addr_x;
    end else begin
        // plot point
        if (icon_region_active_d2 > 4'd0 && q[icon_x[icon_region_active_d2][2:0]] == 1'b1) begin
            dina <= 24'hff4900;
        end else if (doutb > 24'h000000) begin
            if (doutb[23:16] > 8'h01) begin
                dina[23:16] <= doutb[23:16] - 8'h01;
            end else begin
                dina[23:16] <= 8'h00;
            end
            if (doutb[15:8] > 8'h01) begin
                dina[15:8] <= doutb[15:8] - 8'h01;
            end else begin
                dina[15:8] <= 8'h00;
            end
            if (doutb[7:0] > 8'h01) begin
                dina[7:0] <= doutb[7:0] - 8'h01;
            end else begin
                dina[7:0] <= 8'h00;
            end
        end else begin
            dina <= 24'h000000;
        end
        addra <= addrb_d1;
    end
end

always@(posedge clk or negedge rst) begin
    if(rst == 1'b0) begin
        addrb <= 19'd0;
    end else begin
        addrb <= pos_y * SUB_WINDOW_WIDTH + pos_x;
    end 
end    

always@(posedge clk or negedge rst) begin
    if(rst == 1'b0)
        theta <= 12'd0;
    else if(vs_edge == 1'b1) begin
        if (theta == 12'd3599) begin
            theta <= 12'd0;
        end else begin
            theta <= theta + 12'd1;
        end
    end
end


// compute x and y of the scanning line
always@(posedge clk or negedge rst) begin
    if(rst == 1'b0) begin
        ena_rom <= 12'd1;
        enb_rom <= 12'd1;
    end
    addra_rom <= theta;
    addrb_rom <= theta + 12'd3600;
end



always@(posedge clk)
begin
	icon_region_active_d0 <= icon_region_active;
	icon_region_active_d1 <= icon_region_active_d0;
	icon_region_active_d2 <= icon_region_active_d1;
end

always@(posedge clk)
begin
    if(pos_x >= p1_out_x && pos_x < p1_out_x + ICON_WIDTH && pos_y >= p1_out_y && pos_y < p1_out_y + ICON_HEIGHT) begin
        icon_region_active <= 4'd1;
    end else if (pos_x >= p2_out_x && pos_x < p2_out_x + ICON_WIDTH && pos_y >= p2_out_y && pos_y < p2_out_y + ICON_HEIGHT)begin
		icon_region_active <= 4'd2;
    end else if (pos_x >= p3_out_x && pos_x < p3_out_x + ICON_WIDTH && pos_y >= p3_out_y && pos_y < p3_out_y + ICON_HEIGHT)begin
        icon_region_active <= 4'd3;
    end else if (pos_x >= p4_out_x && pos_x < p4_out_x + ICON_WIDTH && pos_y >= p4_out_y && pos_y < p4_out_y + ICON_HEIGHT)begin
        icon_region_active <= 4'd4;
    end else begin
        icon_region_active <= 4'd0;
    end
end


always@(posedge clk)
begin
	if(icon_region_active_d2 > 4'd0) begin
		icon_x[icon_region_active_d2] <= icon_x[icon_region_active_d2] + 1;
    end else begin
        for (i = 0; i < 5; i = i + 1) begin
            icon_x[i] <= 12'd0;
        end
    end
end


always@(posedge clk)
begin
	if(icon_region_active > 4'd0) begin
		icon_addr[icon_region_active] <= icon_addr[icon_region_active] + 16'd1;
    end else if (vs_edge == 1'b1)begin
        for (i = 0; i < 5; i = i + 1) begin
            icon_addr[i] <= 16'd0;
        end
    end
end

always@(posedge clk)
begin
	if(vs_edge == 1'b1)
		icon_ram_addr <= 16'd0;        
	else if(icon_region_active > 4'd0) begin
	    case (icon_region_active)
	    4'd1: begin
            icon_ram_addr <= icon_addr[icon_region_active];
	    end 
        4'd2: begin
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd64;
        end 
        4'd3: begin
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd128;
        end 
        4'd4: begin
            icon_ram_addr <= icon_addr[icon_region_active] + 16'd192;
        end 
	    endcase
    end
end


simu_point simu_p (
    .clk                (clk),
    .sys_clk            (sys_clk),
    .rst                (rst),
    .i_vs               (i_vs),
    .out1_x             (p1_out_x),
    .out1_y             (p1_out_y),
    .out2_x             (p2_out_x),
    .out2_y             (p2_out_y),
    .out3_x             (p3_out_x),
    .out3_y             (p3_out_y),
    .out4_x             (p4_out_x),
    .out4_y             (p4_out_y)
);


plot_bram plot (
  .clka                 (clk),      // input wire clka
  .ena                  (ena),      // input wire ena
  .wea                  (wea),      // input wire [0 : 0] wea
  .addra                (addra),    // input wire [18 : 0] addra
  .dina                 (dina),     // input wire [23 : 0] dina
  .douta                (douta),    // output wire [23 : 0] douta
  .clkb                 (clk),      // input wire clkb
  .enb                  (enb),      // input wire enb
  .web                  (web),      // input wire [0 : 0] web
  .addrb                (addrb),    // input wire [18 : 0] addrb
  .dinb                 (dinb),     // input wire [23 : 0] dinb
  .doutb                (doutb)     // output wire [23 : 0] doutb
);

    
bram_sin_cos sin_cos_rom (
    .clka               (clk),              // input wire clka
    .ena                (ena_rom),          // input wire ena
    .addra              (addra_rom),        // input wire [12 : 0] addra
    .douta              (douta_rom),        // output wire [15 : 0] douta
    .clkb               (clk),              // input wire clkb
    .enb                (enb_rom),          // input wire enb
    .addrb              (addrb_rom),        // input wire [12 : 0] addrb
    .doutb              (doutb_rom)         // output wire [15 : 0] doutb
);


icon_rom icon (
  .clka                 (clk),              // input wire clka
  .ena                  (1'b1),             // input wire ena
  .addra                (icon_ram_addr[14:3]),  // input wire [4 : 0] addra
  .douta                (q)                 // output wire [7 : 0] douta
);

endmodule
