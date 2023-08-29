//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//                                                                              //
//  Author: lhj                                                               //
//                                                                             //
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
//2018/1/3                    1.0          Original
//*******************************************************************************/

module uart_rs(
	input                          sys_clk,      
	input                          rst_n,
	input                          uart_rx,
	output                         uart_tx,
	output[7:0]                    signal,
	output[31:0]                   value
);

parameter                       CLK_FRE = 100;//Mhz
localparam                      IDLE =  0;
localparam                      SEND =  1;   //send HELLO ALINX\r\n
localparam                      WAIT =  2;   //wait 1 second and send uart received data
reg[7:0]                        tx_data;
reg[7:0]                        tx_str;
reg                             tx_data_valid;
wire                            tx_data_ready;
reg[7:0]                        tx_cnt;
wire[7:0]                       rx_data;
wire                            rx_data_valid;
wire                            rx_data_ready;
reg[31:0]                       wait_cnt;
reg[3:0]                        state;

reg[7:0]                        signal_reg;
reg[31:0]                       value_reg;
reg[7:0]                        instruct[4:0];
reg[7:0]                        instruct_cnt = 8'd0;

assign signal = signal_reg;
assign value = value_reg;
                                

//===========================================================================
//Differentia system clock to single end clock
//===========================================================================
// IBUFDS: Differential Input Buffer
//         Kintex-7
// Xilinx HDL Language Template, version 2017.4


assign rx_data_ready = 1'b1;//always can receive data,
							//if HELLO ALINX\r\n is being sent, the received data is discarded

always@(posedge sys_clk or negedge rst_n)
begin
	if(rst_n == 1'b0)
	begin
		wait_cnt <= 32'd0;
		tx_data <= 8'd0;
		state <= IDLE;
		tx_cnt <= 8'd0;
		tx_data_valid <= 1'b0;
	end
	else
	case(state)
		IDLE:
			state <= SEND;
		SEND:
		begin
			wait_cnt <= 32'd0;
			tx_data <= tx_str;

			if(tx_data_valid == 1'b1 && tx_data_ready == 1'b1 && tx_cnt < 8'd12)//Send 12 bytes data
			begin
				tx_cnt <= tx_cnt + 8'd1; //Send data counter
			end
			else if(tx_data_valid && tx_data_ready)//last byte sent is complete
			begin
				tx_cnt <= 8'd0;
				tx_data_valid <= 1'b0;
				state <= WAIT;
			end
			else if(~tx_data_valid)
			begin
				tx_data_valid <= 1'b1;
			end
		end
		WAIT:
		begin
			wait_cnt <= wait_cnt + 32'd1;
			if(rx_data_valid == 1'b1) begin
				tx_data_valid <= 1'b1;
				tx_data <= rx_data;   // send uart received data
				instruct[instruct_cnt] = rx_data;
				instruct_cnt = instruct_cnt + 8'd1;
			end else if(tx_data_valid && tx_data_ready) begin
				tx_data_valid <= 1'b0;
			end else if (instruct_cnt == 8'd5) begin
			    state <= SEND;
			    instruct_cnt = 8'd0;
			    signal_reg <= instruct[0];
			    value_reg <= {instruct[1], instruct[2], instruct[3], instruct[4]};
			end else begin
			    signal_reg <= 8'd0;
                value_reg <= 32'd0;
			end
//			else if(wait_cnt >= CLK_FRE * 1000000) // wait for 1 second
//				state <= SEND;
		end
		default:
			state <= IDLE;
	endcase
end

//combinational logic
//Send "HELLO ALINX\r\n"
always@(*)
begin
	case(tx_cnt)
		8'd0 :  tx_str <= "H";
		8'd1 :  tx_str <= "E";
		8'd2 :  tx_str <= "L";
		8'd3 :  tx_str <= "L";
		8'd4 :  tx_str <= "O";
		8'd5 :  tx_str <= " ";
		8'd6 :  tx_str <= "A";
		8'd7 :  tx_str <= "L";
		8'd8 :  tx_str <= "I";
		8'd9 :  tx_str <= "N";
		8'd10:  tx_str <= "X";
		8'd11:  tx_str <= "\r";
		8'd12:  tx_str <= "\n";
		default:tx_str <= 8'd0;
	endcase
end

uart_rx#
(
	.CLK_FRE(CLK_FRE),
	.BAUD_RATE(115200)
) uart_rx_inst
(
	.clk                        (sys_clk                  ),
	.rst_n                      (rst_n                    ),
	.rx_data                    (rx_data                  ),
	.rx_data_valid              (rx_data_valid            ),
	.rx_data_ready              (rx_data_ready            ),
	.rx_pin                     (uart_rx                  )
);

uart_tx#
(
	.CLK_FRE(CLK_FRE),
	.BAUD_RATE(115200)
) uart_tx_inst
(
	.clk                        (sys_clk                  ),
	.rst_n                      (rst_n                    ),
	.tx_data                    (tx_data                  ),
	.tx_data_valid              (tx_data_valid            ),
	.tx_data_ready              (tx_data_ready            ),
	.tx_pin                     (uart_tx                  )
);
endmodule