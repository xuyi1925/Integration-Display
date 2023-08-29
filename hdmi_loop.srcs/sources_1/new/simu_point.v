`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/23 19:35:45
// Design Name: 
// Module Name: simu_point
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


module simu_point(
    input               clk,
    input               sys_clk,
    input               rst,
    input               i_vs,
    output[11:0]        out1_x,
    output[11:0]        out1_y,
    output[11:0]        out2_x,
    output[11:0]        out2_y,
    output[11:0]        out3_x,
    output[11:0]        out3_y,
    output[11:0]        out4_x,
    output[11:0]        out4_y,
    output[7:0]         out1_value
    );
    
parameter                               WIN_POS_X          =    12'd640;       // position of sub_window
parameter                               WIN_POS_Y          =    12'd480;    
parameter                               CENTER_X           =    12'd333;        // center of the dashboard
parameter                               CENTER_Y           =    12'd241;
    
reg[11:0]               k[3:0];
reg[11:0]               b[3:0];

reg                     vs_d0;
reg [11:0]              x[3:0];
reg [11:0]              y[3:0];

integer                 i;

assign                  out1_x   =   x[0];
assign                  out1_y   =   y[0];
assign                  out2_x   =   x[1];
assign                  out2_y   =   y[1];
assign                  out3_x   =   x[2];
assign                  out3_y   =   y[2];
assign                  out4_x   =   x[3];
assign                  out4_y   =   y[3];

reg[7:0]                counter =   8'd0;

wire                    vs_edge;

reg[3:0]                x_direction_list[7:0];
reg[3:0]                y_direction_list[7:0];
reg[3:0]                direction_index[7:0];
reg[7:0]                out1_value_list[7:0];
reg[7:0]                out1_value_reg;

reg[7:0]                scale = 8'd128;
wire                    scale_signal_flag;

reg[7:0]                signal_d0;
reg[7:0]                signal_d1;


assign                  out1_value = out1_value_reg;
assign                  vs_edge =   ~i_vs & vs_d0; 

reg[11:0]               scale_center_x = 12'd0;
reg[11:0]               scale_center_y = 12'd0;  

reg[31:0]               temp_x_1;
reg[31:0]               temp_x_2;
reg[31:0]               temp_x_3;

reg[31:0]               temp_y_1;
reg[31:0]               temp_y_2;
reg[31:0]               temp_y_3;      


initial begin
    k[0] = 8'd10;
    k[1] = 8'd20;
    k[2] = 8'd15;
    k[3] = 8'd12;
    b[0] = 8'd6;
    b[1] = 8'd7;
    b[2] = 8'd8;
    b[3] = 8'd9;
    
    x_direction_list[0] = 4'd1;
    x_direction_list[1] = 4'd2;
    x_direction_list[2] = 4'd2;
    x_direction_list[3] = 4'd2;
    x_direction_list[4] = 4'd1;
    x_direction_list[5] = 4'd0;
    x_direction_list[6] = 4'd0;
    x_direction_list[7] = 4'd0;
    
    y_direction_list[0] = 4'd0;
    y_direction_list[1] = 4'd0;
    y_direction_list[2] = 4'd1;
    y_direction_list[3] = 4'd2;
    y_direction_list[4] = 4'd2;
    y_direction_list[5] = 4'd2;
    y_direction_list[6] = 4'd1;
    y_direction_list[7] = 4'd0;
    
    out1_value_list[0] = 8'd5;
    out1_value_list[1] = 8'd6;
    out1_value_list[2] = 8'd7;
    out1_value_list[3] = 8'd8;
    out1_value_list[4] = 8'd9;
    out1_value_list[5] = 8'd10;
    out1_value_list[6] = 8'd11;
    out1_value_list[7] = 8'd12;
end


always@(posedge clk) begin
	vs_d0 <= i_vs;
end


always@(posedge clk or negedge rst) begin
    if (rst == 1'b0)begin
        counter <= 8'd0;
    end else if (vs_edge) begin
        counter <= counter + 8'd1;
        if (counter > 8'd60) begin
            counter <= 8'd0;
        end
    end
end

always@(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
        x[0] <= 12'd300;
        y[0] <= 12'd200;
    end else begin
        if (vs_edge) begin
            x[0] <= x[0] + x_direction_list[direction_index[0]] - 1;
            y[0] <= y[0] + y_direction_list[direction_index[0]] - 1;
            out1_value_reg <= out1_value_list[direction_index[0]];
            if (counter == 8'd60) begin
                direction_index[0] <= direction_index[0] + 1;
            end
        end 
    end
end

always@(posedge clk or negedge rst) begin
    if (rst == 1'b0)begin
        x[1] <= 12'd200;
        y[1] <= 12'd200;
        x[2] <= 12'd250;
        y[2] <= 12'd250;
        x[3] <= 12'd350;
        y[3] <= 12'd200;
    end 
end

endmodule
