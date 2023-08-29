//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/15 15:47:12
// Design Name: 
// Module Name: top
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


module top(
	input                               sys_clk_p,
    input                               sys_clk_n,

    output[1:0]                         led
 );
    
wire [31:0]                             counter;
wire [31:0]                             counter_max;
wire                                    clk100m;
wire                                    clk200m;

wire                                    locked;
reg                                     wr_en        = 1'b0 ;
reg                                     rd_en        = 1'b0;
reg                                     rw_flag      = 1'b0;         // 0->write, 1->read
wire [7:0]                              dout;
wire                                    full;
wire                                    empty;

reg                                     ena;
reg                                     wea;
reg[9:0]                                addra;
reg[31:0]                               dina;
wire[31:0]                              douta;

reg                                     enb;
reg                                     web;
reg[9:0]                                addrb;
reg[31:0]                               dinb;
wire[31:0]                              doutb;


assign led = counter[31:30];

wire                                    rst;
assign                                  rst         = ~locked;

vio_0 vio_0_inst (
    .clk                                (clk100m),                // input wire clk
    
    .probe_out0                         (counter_max)  // output wire [31 : 0] probe_out0
);

counter counter_inst
(
    .clk                                (clk100m),
    .rst                                (rst),
    .counter                            (counter),
    .counter_max                        (counter_max)
);

sys_pll sys_pll_m0
(
	.clk_out1              (clk100m     ),
	.clk_out2              (clk200m),
	// Clock in ports
	.clk_in1_p             (sys_clk_p),
	.clk_in1_n             (sys_clk_n),
	.locked                (locked)
 );
    
FIFO fifo_inst (
    .clk                    (clk100m        ),      // input wire clk
    .srst                   (rst            ),      // input wire srst
    .din                    (counter[7:0]   ),      // input wire [7 : 0] din
    .wr_en                  (wr_en          ),      // input wire wr_en
    .rd_en                  (rd_en          ),      // input wire rd_en
    .dout                   (dout           ),      // output wire [7 : 0] dout
    .full                   (full           ),      // output wire full
    .empty                  (empty          )       // output wire empty
);

BRAM BRAM_inst (
    .clka                   (clk100m),// input wire clka            
    .ena                    (ena),    // input wire ena             
    .wea                    (wea),    // input wire [0 : 0] wea     
    .addra                  (addra),  // input wire [9 : 0] addra   
    .dina                   (dina),   // input wire [31 : 0] dina   
    .douta                  (douta),  // output wire [31 : 0] douta 
                                       
    .clkb                   (clk100m),   // input wire clkb            
    .enb                    (enb),    // input wire enb             
    .web                    (web),    // input wire [0 : 0] web     
    .addrb                  (addrb),  // input wire [9 : 0] addrb   
    .dinb                   (dinb),   // input wire [31 : 0] dinb    
    .doutb                  (doutb)   // output wire [31 : 0] doutb  
);

    always@(posedge clk100m) begin
        if (rst) begin
            wr_en <= 1'b0;
            rd_en <= 1'b0;
        end else if (~rw_flag) begin
            if (~full) begin
                wr_en <= 1'b1;
            end else begin
                rw_flag <= 1'b1;
                rd_en <= 1'b1;
                wr_en <= 1'b0;
            end
        end else begin
            if (~empty) begin
                rd_en <= 1'b1;
            end else begin
                rw_flag <= 1'b0;
                rd_en <= 1'b0;
                wr_en <= 1'b1;
            end
        end
    end
    
    
always@(posedge clk100m) begin
    if (rst) begin
        ena <= 1'b0;  
        wea <= 1'b0;
        dina <= 32'h0000; 
        enb <= 1'b0;  
        web <= 1'b0;
        dinb <= 32'h0000; 
    end else begin
        ena <= 1'b1;
        wea <= 1'b1;
        enb <= 1'b1;
        web <= 1'b0;
    end
end

always@(posedge clk100m) begin
    dina <= counter;
    addra <= counter[9:0];
    if (addra >= 10'd32)
        addrb <= addra - 10'd32;
    else
        addrb <= 10'd0;
end
    
ila_0 ila_0_inst (
	.clk                   (clk100m    ), // input wire clk
	
	.probe0                (counter    ), // input wire [31:0] probe0
	.probe1                (rst        ),
	.probe2                (rd_en      ),
	.probe3                (wr_en      ),
	.probe4                (rw_flag    ),
	.probe5                (dout       ),
	.probe6                (doutb      ),
	.probe7                (addra      ),
	.probe8                (dina       ),
	.probe9                (addrb      )

);
endmodule
