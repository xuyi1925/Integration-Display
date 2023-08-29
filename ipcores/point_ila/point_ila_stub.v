// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Mar  5 20:11:21 2023
// Host        : DESKTOP-QJAPJ31 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/xuyi/Desktop/FPGA
//               display/08_4_hdmi_loop/ipcores/point_ila/point_ila_stub.v}
// Design      : point_ila
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2017.4" *)
module point_ila(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[7:0],probe2[11:0],probe3[11:0],probe4[11:0],probe5[11:0],probe6[11:0],probe7[11:0],probe8[11:0],probe9[11:0]" */;
  input clk;
  input [0:0]probe0;
  input [7:0]probe1;
  input [11:0]probe2;
  input [11:0]probe3;
  input [11:0]probe4;
  input [11:0]probe5;
  input [11:0]probe6;
  input [11:0]probe7;
  input [11:0]probe8;
  input [11:0]probe9;
endmodule
