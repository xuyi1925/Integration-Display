// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jul  3 15:56:02 2023
// Host        : DESKTOP-QJAPJ31 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/xuyi/Desktop/FPGA
//               display/08_4_hdmi_loop/ipcores/bram_display_r/bram_display_r_stub.v}
// Design      : bram_display_r
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module bram_display_r(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[8:0],dina[15:0],clkb,enb,addrb[8:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [8:0]addra;
  input [15:0]dina;
  input clkb;
  input enb;
  input [8:0]addrb;
  output [15:0]doutb;
endmodule
