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
//  2017/8/9     meisq          1.0         Original
//*******************************************************************************/

module lut_sil9136(
	input[9:0]             lut_index, // Look-up table index address
	output reg[31:0]       lut_data   // I2C device address register address register data
);

always@(*)
begin
	case(lut_index)
		10'd0 : lut_data <= {8'h72,16'hC7, 8'h00};
		10'd1 : lut_data <= {8'h72,16'h08, 8'h60};
		10'd2 : lut_data <= {8'h72,16'h09, 8'h00};
		10'd3 : lut_data <= {8'h72,16'h0A, 8'h00};
		10'd4 : lut_data <= {8'h72,16'h1E, 8'h00};
		10'd5 : lut_data <= {8'h72,16'h1A, 8'h01};	
		default:lut_data <= {8'hff,16'hffff,8'hff};
	endcase
end


endmodule 