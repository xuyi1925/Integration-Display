`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/18 10:47:49
// Design Name: 
// Module Name: scale_point
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


module scale_point(
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
    output[7:0]         out_p1_direction,
    input[7:0]          signal,
    input[31:0]         value
);

parameter                               WIN_POS_X          =    12'd640;       // position of sub_window
parameter                               WIN_POS_Y          =    12'd480;    
parameter                               CENTER_X           =    12'd333;        // center of the dashboard
parameter                               CENTER_Y           =    12'd241;
parameter                               SUB_WINDOW_WIDTH   =    19'd640;        // subwindow size
parameter                               SUB_WINDOW_HEIGHT  =    19'd480;

wire                    scale_signal_flag;
wire                    vs_edge;
reg                     vs_d0;
reg                     signal_d0;
wire[7:0]               p1_direction;

assign                  out_p1_direction = p1_direction;
assign                  vs_edge =   ~i_vs & vs_d0; 
assign                  scale_signal_flag = (signal == 8'd5 || signal == 8'd9) && (signal_d0 != 8'd5 && signal_d0 != 8'd9);

integer                 i;

reg[7:0]                scale = 8'd128;

reg[11:0]               scale_origin_x = 12'd0;
reg[11:0]               scale_origin_y = 12'd0;  

reg signed [31:0]       x[3:0];
reg signed [31:0]       y[3:0];

wire[11:0]              p1_x;
wire[11:0]              p1_y;
wire[11:0]              p2_x;
wire[11:0]              p2_y;
wire[11:0]              p3_x;
wire[11:0]              p3_y;
wire[11:0]              p4_x;
wire[11:0]              p4_y;

reg[11:0]               display_width = 12'd640;
reg[11:0]               display_height = 12'd480;

reg[11:0]               out1_x_reg;  
reg[11:0]               out1_y_reg;  
reg[11:0]               out2_x_reg;  
reg[11:0]               out2_y_reg;  
reg[11:0]               out3_x_reg;  
reg[11:0]               out3_y_reg;  
reg[11:0]               out4_x_reg;  
reg[11:0]               out4_y_reg;  

assign                  out1_x  =      out1_x_reg; 
assign                  out1_y  =      out1_y_reg;
assign                  out2_x  =      out2_x_reg;
assign                  out2_y  =      out2_y_reg;
assign                  out3_x  =      out3_x_reg;
assign                  out3_y  =      out3_y_reg;
assign                  out4_x  =      out4_x_reg;
assign                  out4_y  =      out4_y_reg;



simu_point simu_p (
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
    .out1_value         (p1_direction)
); 

ila_0 scale_inst (
	.clk(sys_clk), // input wire clk

	.probe0                    (scale_signal_flag), // input wire [7:0]  probe2 
	.probe1                    (x[1]), // input wire [11:0]  probe5 
	.probe2                    (y[1]), // input wire [31:0]  probe6 
	.probe3                    (display_width), // input wire [31:0]  probe7 
	.probe4                    (display_height), // input wire [31:0]  probe8 
	.probe5                    (signal), // input wire [31:0]  probe9 
	.probe6                   (scale_origin_x),
	.probe7                   (scale_origin_y)
);


always@(posedge clk) begin
	vs_d0 <= i_vs;
end

always@(posedge clk or negedge rst) begin
    if(!rst) begin
        x[0] <= p1_x;
        y[0] <= p1_y;
    end else if (vs_edge) begin
        x[0] <= (p1_x - scale_origin_x) << scale;
        y[0] <= (p1_y - scale_origin_y) << scale;
    end else begin
        x[0] <= x[0];
        y[0] <= y[0];
    end
end

always@(posedge clk or negedge rst) begin
    if(!rst) begin
        x[1] <= p2_x;
        y[1] <= p2_y;
        x[2] <= p3_x;
        y[2] <= p3_y;
        x[3] <= p4_x;
        y[3] <= p4_y;
    end else if(vs_edge) begin
        x[1] <= (p2_x - scale_origin_x) << scale;
        y[1] <= (p2_y - scale_origin_y) << scale;
        x[2] <= (p3_x - scale_origin_x) << scale;
        y[2] <= (p3_y - scale_origin_y) << scale;
        x[3] <= (p4_x - scale_origin_x) << scale;
        y[3] <= (p4_y - scale_origin_y) << scale;
    end else begin
        x[1] <= x[1];
        y[1] <= y[1];
        x[2] <= x[2];
        y[2] <= y[2];
        x[3] <= x[3];
        y[3] <= y[3];
    end
end


//always@(posedge clk or negedge rst) begin
//    if(!rst) begin
//        x[0] <= p1_x;
//        y[0] <= p1_y;
//    end else if (scale_signal_flag) begin
//        if (x[0] > value[23:12]) begin
//            x[0] <= value[23:12] + (((x[0] - value[23:12]) << value[31:24]));
//        end else begin
//            x[0] <= value[23:12] - (((value[23:12] - x[0]) << value[31:24]));
//        end
//        if (y[0] > value[11:0]) begin
//            y[0] <= value[11:0] + (((y[0] - value[11:0]) << value[31:24]));
//        end else begin
//            y[0] <= value[11:0] - (((value[11:0] - y[0]) << value[31:24]));
//        end
//    end else begin
//        x[0] <= p1_x;
//        y[0] <= p1_y;
//    end
//end

//always@(posedge clk or negedge rst) begin
//    if(!rst) begin
//        x[1] <= p2_x;
//        y[1] <= p2_y;
//        x[2] <= p3_x;
//        y[2] <= p3_y;
//        x[3] <= p4_x;
//        y[3] <= p4_y;
//    end else if (scale_signal_flag) begin
//        for (i = 1; i < 4; i = i + 1) begin
//            if (x[i] > value[23:12]) begin
//                x[i] <= value[23:12] + (((x[i] - value[23:12]) << value[31:24]));
//            end else begin
//                x[i] <= value[23:12] - (((value[23:12] - x[i]) << value[31:24]));
//            end
//            if (y[i] > value[11:0]) begin
//                y[i] <= value[11:0] + (((y[i] - value[11:0]) << value[31:24]));
//            end else begin
//                y[i] <= value[11:0] - (((value[11:0] - y[i]) << value[31:24]));
//            end
//        end
//    end
//end

// get the display area size
always@(posedge clk or negedge rst) begin
    if(!rst) begin
        display_width <= SUB_WINDOW_WIDTH;
        display_height <= SUB_WINDOW_HEIGHT;
    end else if (scale_signal_flag) begin
        display_width <= SUB_WINDOW_WIDTH >> scale;
        display_height <= SUB_WINDOW_HEIGHT >> scale;
    end
end

// output
always@(posedge clk) begin
    if (x[0] < 0 || x[0] >= display_width || y[0] < 0 || y[0] >= display_height) begin
        out1_x_reg <= 12'd0;
        out1_y_reg <= 12'd0;
    end else begin
        out1_x_reg <= x[0] + WIN_POS_X;
        out1_y_reg <= y[0] + WIN_POS_Y;
    end
    if (x[1] < 0 || x[1] >= display_width || y[1] < 0 || y[1] >= display_height) begin
        out2_x_reg <= 12'd0;
        out2_y_reg <= 12'd0;
    end else begin
        out2_x_reg <= x[1] + WIN_POS_X;
        out2_y_reg <= y[1] + WIN_POS_Y;
    end
    if (x[2] < 0 || x[2] >= display_width || y[2] < 0 || y[2] >= display_height) begin
        out3_x_reg <= 12'd0;
        out3_y_reg <= 12'd0;
    end else begin
        out3_x_reg <= x[2] + WIN_POS_X;
        out3_y_reg <= y[2] + WIN_POS_Y;
    end
    if (x[3] < 0 || x[3] >= display_width || y[3] < 0 || y[3] >= display_height) begin
        out4_x_reg <= 12'd0;
        out4_y_reg <= 12'd0;
    end else begin
        out4_x_reg <= x[3] + WIN_POS_X;
        out4_y_reg <= y[3] + WIN_POS_Y;
    end
end

// set scale value and flags
always@(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
        scale <= 8'd0;
        scale_origin_x <= 12'd0;
        scale_origin_y <= 12'd0;
    end else begin
        case (signal)
            8'd5: begin
                scale <= value[31:24];
                scale_origin_x <= value[23:12];
                scale_origin_y <= value[11:0];
            end
            8'd9: begin
                scale <= value[31:24];
                scale_origin_x <= value[23:12];
                scale_origin_y <= value[11:0];
            end
        endcase
    end
    signal_d0 <= signal;
end

endmodule
