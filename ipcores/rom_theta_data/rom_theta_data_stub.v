// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  7 18:08:19 2023
// Host        : DESKTOP-QJAPJ31 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/xuyi/Desktop/FPGA
//               display/08_4_hdmi_loop/ipcores/rom_theta_data/rom_theta_data_stub.v}
// Design      : rom_theta_data
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module rom_theta_data(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[18:0],douta[15:0]" */;
  input clka;
  input ena;
  input [18:0]addra;
  output [15:0]douta;
endmodule
