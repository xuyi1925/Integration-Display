// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Feb 21 15:05:28 2023
// Host        : DESKTOP-IDDFDEU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Yi/Desktop/FPGA/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/bram_sin_cos/bram_sin_cos_sim_netlist.v
// Design      : bram_sin_cos
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_sin_cos,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module bram_sin_cos
   (clka,
    ena,
    addra,
    douta,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "4" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.3056 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_sin_cos.mem" *) 
  (* C_INIT_FILE_NAME = "bram_sin_cos.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "7200" *) 
  (* C_READ_DEPTH_B = "7200" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "7200" *) 
  (* C_WRITE_DEPTH_B = "7200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bram_sin_cos_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module bram_sin_cos_blk_mem_gen_generic_cstr
   (douta,
    doutb,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb);
  output [15:0]douta;
  output [15:0]doutb;
  input ena;
  input [12:0]addra;
  input enb;
  input [12:0]addrb;
  input clka;
  input clkb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [31:0]douta_array;
  wire [15:0]doutb;
  wire [31:0]doutb_array;
  wire ena;
  wire [1:1]ena_array;
  wire enb;
  wire [1:1]enb_array;
  wire \ramloop[0].ram.r_n_18 ;
  wire \ramloop[0].ram.r_n_19 ;

  bram_sin_cos_blk_mem_gen_mux \has_mux_a.A 
       (.addra(addra[12]),
        .clka(clka),
        .douta(douta),
        .douta_array(douta_array),
        .ena(ena));
  bram_sin_cos_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.addrb(addrb[12]),
        .clkb(clkb),
        .doutb(doutb),
        .doutb_array(doutb_array),
        .enb(enb));
  bram_sin_cos_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[0].ram.r_n_18 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[0].ram.r_n_19 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array[8:0]),
        .doutb_array(doutb_array[8:0]),
        .ena(ena),
        .enb(enb));
  bram_sin_cos_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array[24:16]),
        .doutb_array(doutb_array[24:16]),
        .ena(ena),
        .ena_array(ena_array),
        .enb(enb),
        .enb_array(enb_array));
  bram_sin_cos_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[0].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[0].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array[15:9]),
        .doutb_array(doutb_array[15:9]),
        .ena(ena),
        .enb(enb));
  bram_sin_cos_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array[31:25]),
        .doutb_array(doutb_array[31:25]),
        .ena(ena),
        .ena_array(ena_array),
        .enb(enb),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module bram_sin_cos_blk_mem_gen_mux
   (douta,
    clka,
    addra,
    ena,
    douta_array);
  output [15:0]douta;
  input clka;
  input [0:0]addra;
  input ena;
  input [31:0]douta_array;

  wire [0:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [31:0]douta_array;
  wire ena;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire sel_pipe;
  wire sel_pipe_d1;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[0]_INST_0 
       (.I0(douta_array[16]),
        .I1(sel_pipe_d1),
        .I2(douta_array[0]),
        .O(douta[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[10]_INST_0 
       (.I0(douta_array[26]),
        .I1(sel_pipe_d1),
        .I2(douta_array[10]),
        .O(douta[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[11]_INST_0 
       (.I0(douta_array[27]),
        .I1(sel_pipe_d1),
        .I2(douta_array[11]),
        .O(douta[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[12]_INST_0 
       (.I0(douta_array[28]),
        .I1(sel_pipe_d1),
        .I2(douta_array[12]),
        .O(douta[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[13]_INST_0 
       (.I0(douta_array[29]),
        .I1(sel_pipe_d1),
        .I2(douta_array[13]),
        .O(douta[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[14]_INST_0 
       (.I0(douta_array[30]),
        .I1(sel_pipe_d1),
        .I2(douta_array[14]),
        .O(douta[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[15]_INST_0 
       (.I0(douta_array[31]),
        .I1(sel_pipe_d1),
        .I2(douta_array[15]),
        .O(douta[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[1]_INST_0 
       (.I0(douta_array[17]),
        .I1(sel_pipe_d1),
        .I2(douta_array[1]),
        .O(douta[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[2]_INST_0 
       (.I0(douta_array[18]),
        .I1(sel_pipe_d1),
        .I2(douta_array[2]),
        .O(douta[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[3]_INST_0 
       (.I0(douta_array[19]),
        .I1(sel_pipe_d1),
        .I2(douta_array[3]),
        .O(douta[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[4]_INST_0 
       (.I0(douta_array[20]),
        .I1(sel_pipe_d1),
        .I2(douta_array[4]),
        .O(douta[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[5]_INST_0 
       (.I0(douta_array[21]),
        .I1(sel_pipe_d1),
        .I2(douta_array[5]),
        .O(douta[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[6]_INST_0 
       (.I0(douta_array[22]),
        .I1(sel_pipe_d1),
        .I2(douta_array[6]),
        .O(douta[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[7]_INST_0 
       (.I0(douta_array[23]),
        .I1(sel_pipe_d1),
        .I2(douta_array[7]),
        .O(douta[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[8]_INST_0 
       (.I0(douta_array[24]),
        .I1(sel_pipe_d1),
        .I2(douta_array[8]),
        .O(douta[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[9]_INST_0 
       (.I0(douta_array[25]),
        .I1(sel_pipe_d1),
        .I2(douta_array[9]),
        .O(douta[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1 
       (.I0(sel_pipe),
        .I1(ena),
        .I2(sel_pipe_d1),
        .O(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1_n_0 ),
        .Q(sel_pipe_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra),
        .I1(ena),
        .I2(sel_pipe),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module bram_sin_cos_blk_mem_gen_mux__parameterized0
   (doutb,
    clkb,
    addrb,
    enb,
    doutb_array);
  output [15:0]doutb;
  input clkb;
  input [0:0]addrb;
  input enb;
  input [31:0]doutb_array;

  wire [0:0]addrb;
  wire clkb;
  wire [15:0]doutb;
  wire [31:0]doutb_array;
  wire enb;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0_n_0 ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[0]_INST_0 
       (.I0(doutb_array[16]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[0]),
        .O(doutb[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[10]_INST_0 
       (.I0(doutb_array[26]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[10]),
        .O(doutb[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[11]_INST_0 
       (.I0(doutb_array[27]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[11]),
        .O(doutb[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[12]_INST_0 
       (.I0(doutb_array[28]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[12]),
        .O(doutb[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[13]_INST_0 
       (.I0(doutb_array[29]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[13]),
        .O(doutb[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[14]_INST_0 
       (.I0(doutb_array[30]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[14]),
        .O(doutb[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[15]_INST_0 
       (.I0(doutb_array[31]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[15]),
        .O(doutb[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[1]_INST_0 
       (.I0(doutb_array[17]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[1]),
        .O(doutb[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[2]_INST_0 
       (.I0(doutb_array[18]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[2]),
        .O(doutb[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[3]_INST_0 
       (.I0(doutb_array[19]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[3]),
        .O(doutb[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[4]_INST_0 
       (.I0(doutb_array[20]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[4]),
        .O(doutb[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[5]_INST_0 
       (.I0(doutb_array[21]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[5]),
        .O(doutb[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[6]_INST_0 
       (.I0(doutb_array[22]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[6]),
        .O(doutb[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[7]_INST_0 
       (.I0(doutb_array[23]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[7]),
        .O(doutb[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[8]_INST_0 
       (.I0(doutb_array[24]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[8]),
        .O(doutb[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[9]_INST_0 
       (.I0(doutb_array[25]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(doutb_array[9]),
        .O(doutb[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0 
       (.I0(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I1(enb),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0_n_0 ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0 
       (.I0(addrb),
        .I1(enb),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0 ),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module bram_sin_cos_blk_mem_gen_prim_width
   (douta_array,
    doutb_array,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb);
  output [8:0]douta_array;
  output [8:0]doutb_array;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]douta_array;
  wire [8:0]doutb_array;
  wire ena;
  wire enb;

  bram_sin_cos_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena(ena),
        .enb(enb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module bram_sin_cos_blk_mem_gen_prim_width__parameterized0
   (douta_array,
    doutb_array,
    clka,
    clkb,
    ena_array,
    enb_array,
    ena,
    enb,
    addra,
    addrb);
  output [8:0]douta_array;
  output [8:0]doutb_array;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input ena;
  input enb;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]douta_array;
  wire [8:0]doutb_array;
  wire ena;
  wire [0:0]ena_array;
  wire enb;
  wire [0:0]enb_array;

  bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena(ena),
        .ena_array(ena_array),
        .enb(enb),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module bram_sin_cos_blk_mem_gen_prim_width__parameterized1
   (douta_array,
    doutb_array,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    ena,
    enb,
    addra,
    addrb);
  output [6:0]douta_array;
  output [6:0]doutb_array;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input ena;
  input enb;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [6:0]douta_array;
  wire [6:0]doutb_array;
  wire ena;
  wire enb;

  bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena(ena),
        .enb(enb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module bram_sin_cos_blk_mem_gen_prim_width__parameterized2
   (douta_array,
    doutb_array,
    ena_array,
    enb_array,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb);
  output [6:0]douta_array;
  output [6:0]doutb_array;
  output [0:0]ena_array;
  output [0:0]enb_array;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [6:0]douta_array;
  wire [6:0]doutb_array;
  wire ena;
  wire [0:0]ena_array;
  wire enb;
  wire [0:0]enb_array;

  bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena(ena),
        .ena_array(ena_array),
        .enb(enb),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module bram_sin_cos_blk_mem_gen_prim_wrapper_init
   (douta_array,
    doutb_array,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb);
  output [8:0]douta_array;
  output [8:0]doutb_array;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]douta_array;
  wire [8:0]doutb_array;
  wire ena;
  wire enb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000003FFF),
    .INITP_01(256'h00000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'h1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000),
    .INITP_06(256'hF80000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'h00000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'h000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'h000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h1E1C1A1817151311100E0C0A090705030200FEFCFBF9F7F5F4F2F0EEEDEBE9E8),
    .INIT_01(256'h555352504E4D4B4947464442403F3D3B3938363432312F2D2C2A28262523211F),
    .INIT_02(256'h8D8B8987868482807F7D7B7A78767473716F6D6C6A6867656361605E5C5A5957),
    .INIT_03(256'hC3C2C0BEBDBBB9B7B6B4B2B1AFADABAAA8A6A5A3A19F9E9C9A9997959392908E),
    .INIT_04(256'hF9F8F6F4F3F1EFEEECEAE9E7E5E4E2E0DEDDDBD9D8D6D4D3D1CFCECCCAC8C7C5),
    .INIT_05(256'h2F2D2B2A2826252321201E1D1B1918161413110F0E0C0A090705040200FEFDFB),
    .INIT_06(256'h6361605E5C5B5958565453514F4E4C4B4947464442413F3E3C3A393735343230),
    .INIT_07(256'h96949391908E8D8B898886858381807E7D7B797876757371706E6D6B69686665),
    .INIT_08(256'hC8C6C5C3C2C0BFBDBBBAB8B7B5B4B2B1AFADACAAA9A7A6A4A3A19F9E9C9B9998),
    .INIT_09(256'hF8F6F5F3F2F1EFEEECEBE9E8E6E5E3E2E0DFDDDCDAD8D7D5D4D2D1CFCECCCBC9),
    .INIT_0A(256'h27252422211F1E1C1B1A1817151412110F0E0D0B0A080705040201FFFEFCFBF9),
    .INIT_0B(256'h5352514F4E4C4B4A484745444341403F3D3C3A393836353332302F2E2C2B2928),
    .INIT_0C(256'h7E7D7C7A79787675747271706E6D6C6A69686665646261605E5D5B5A59575655),
    .INIT_0D(256'hA7A6A4A3A2A19F9E9D9C9A99989795949391908F8E8C8B8A898786858382817F),
    .INIT_0E(256'hCDCCCBCAC9C8C6C5C4C3C2C0BFBEBDBCBAB9B8B7B6B4B3B2B1B0AEADACABA9A8),
    .INIT_0F(256'hF2F1F0EEEDECEBEAE9E8E7E6E4E3E2E1E0DFDEDCDBDAD9D8D7D6D4D3D2D1D0CF),
    .INIT_10(256'h141312110F0E0D0C0B0A09080706050403020100FFFEFDFCFAF9F8F7F6F5F4F3),
    .INIT_11(256'h333231302F2E2D2C2B2A29282726262524232221201F1E1D1C1B1A1918171615),
    .INIT_12(256'h504F4E4D4C4B4A4A49484746454443424241403F3E3D3C3B3A39383837363534),
    .INIT_13(256'h6A6968676666656463636261605F5F5E5D5C5B5A5A5958575655555453525150),
    .INIT_14(256'h81807F7F7E7D7D7C7B7A7A79787877767575747373727170706F6E6D6D6C6B6A),
    .INIT_15(256'h959494939392919190908F8E8E8D8C8C8B8B8A89898887878685858483838281),
    .INIT_16(256'hA6A6A5A5A4A4A3A3A2A2A1A1A0A09F9F9E9D9D9C9C9B9B9A9A99989897979696),
    .INIT_17(256'hB5B4B4B3B3B3B2B2B1B1B1B0B0AFAFAEAEADADADACACABABAAAAA9A9A8A8A7A7),
    .INIT_18(256'hC0C0BFBFBFBEBEBEBDBDBDBCBCBCBBBBBBBABABAB9B9B9B8B8B7B7B7B6B6B5B5),
    .INIT_19(256'hC8C8C8C8C7C7C7C7C6C6C6C6C6C5C5C5C5C4C4C4C3C3C3C3C2C2C2C1C1C1C1C0),
    .INIT_1A(256'hCDCDCDCDCDCDCDCDCCCCCCCCCCCCCCCBCBCBCBCBCBCACACACACAC9C9C9C9C9C8),
    .INIT_1B(256'hCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCECECECECECECECECECECE),
    .INIT_1C(256'hCECECFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFD0CFCFCFCF),
    .INIT_1D(256'hCACACBCBCBCBCBCBCCCCCCCCCCCCCCCDCDCDCDCDCDCDCDCECECECECECECECECE),
    .INIT_1E(256'hC3C3C3C4C4C4C5C5C5C5C6C6C6C6C6C7C7C7C7C8C8C8C8C8C9C9C9C9C9CACACA),
    .INIT_1F(256'hB9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEBFBFBFC0C0C0C1C1C1C1C2C2C2C3),
    .INIT_20(256'hABACACADADADAEAEAFAFB0B0B1B1B1B2B2B3B3B3B4B4B5B5B5B6B6B7B7B7B8B8),
    .INIT_21(256'h9B9B9C9C9D9D9E9F9FA0A0A1A1A2A2A3A3A4A4A5A5A6A6A7A7A8A8A9A9AAAAAB),
    .INIT_22(256'h878889898A8B8B8C8C8D8E8E8F90909191929393949495969697979898999A9A),
    .INIT_23(256'h7172737374757576777878797A7A7B7C7D7D7E7F7F8081818283838485858687),
    .INIT_24(256'h58595A5A5B5C5D5E5F5F6061626363646566666768696A6A6B6C6D6D6E6F7070),
    .INIT_25(256'h3C3D3E3F40414242434445464748494A4A4B4C4D4E4F50505152535455555657),
    .INIT_26(256'h1E1F20212223242526262728292A2B2C2D2E2F30313233343536373838393A3B),
    .INIT_27(256'hFDFEFF000102030405060708090A0B0C0D0E0F1112131415161718191A1B1C1D),
    .INIT_28(256'hD9DADBDCDEDFE0E1E2E3E4E6E7E8E9EAEBECEDEEF0F1F2F3F4F5F6F7F8F9FAFC),
    .INIT_29(256'hB3B4B6B7B8B9BABCBDBEBFC0C2C3C4C5C6C8C9CACBCCCDCFD0D1D2D3D4D6D7D8),
    .INIT_2A(256'h8B8C8E8F90919394959798999A9C9D9E9FA1A2A3A4A6A7A8A9ABACADAEB0B1B2),
    .INIT_2B(256'h616264656668696A6C6D6E70717274757678797A7C7D7E7F818283858687898A),
    .INIT_2C(256'h353638393A3C3D3F404143444547484A4B4C4E4F515253555657595A5B5D5E60),
    .INIT_2D(256'h07080A0B0D0E0F1112141517181A1B1C1E1F212224252728292B2C2E2F303233),
    .INIT_2E(256'hD7D8DADCDDDFE0E2E3E5E6E8E9EBECEEEFF1F2F3F5F6F8F9FBFCFEFF01020405),
    .INIT_2F(256'hA6A7A9AAACADAFB1B2B4B5B7B8BABBBDBFC0C2C3C5C6C8C9CBCCCECFD1D2D4D5),
    .INIT_30(256'h73757678797B7D7E808183858688898B8D8E909193949698999B9C9E9FA1A3A4),
    .INIT_31(256'h3F4142444647494B4C4E4F5153545658595B5C5E606163656668696B6D6E7071),
    .INIT_32(256'h0A0C0E0F1113141618191B1D1E2021232526282A2B2D2F3032343537393A3C3E),
    .INIT_33(256'hD4D6D8D9DBDDDEE0E2E4E5E7E9EAECEEEFF1F3F4F6F8F9FBFDFE000204050709),
    .INIT_34(256'h9E9FA1A3A5A6A8AAABADAFB1B2B4B6B7B9BBBDBEC0C2C3C5C7C8CACCCECFD1D3),
    .INIT_35(256'h67686A6C6D6F71737476787A7B7D7F8082848687898B8D8E9092939597999A9C),
    .INIT_36(256'h2F3132343638393B3D3F4042444647494B4D4E5052535557595A5C5E60616365),
    .INIT_37(256'hF7F9FBFCFE0002030507090A0C0E1011131517181A1C1E1F21232526282A2C2D),
    .INIT_38(256'hBFC1C3C5C6C8CACCCDCFD1D3D4D6D8DADBDDDFE1E2E4E6E8E9EBEDEEF0F2F4F5),
    .INIT_39(256'h88898B8D8F9092949697999B9D9EA0A2A3A5A7A9AAACAEB0B1B3B5B7B8BABCBE),
    .INIT_3A(256'h5052545557595B5C5E6062636567686A6C6E6F71737576787A7C7D7F81828486),
    .INIT_3B(256'h191B1D1E2022242527292A2C2E3031333536383A3C3D3F4142444648494B4D4F),
    .INIT_3C(256'hE3E5E6E8EAEBEDEFF1F2F4F6F7F9FBFCFE0001030507080A0C0D0F1112141618),
    .INIT_3D(256'hAEAFB1B2B4B6B7B9BBBCBEC0C1C3C5C6C8CACBCDCFD1D2D4D6D7D9DBDCDEE0E1),
    .INIT_3E(256'h797B7C7E808183848688898B8D8E9091939596989A9B9D9FA0A2A4A5A7A9AAAC),
    .INIT_3F(256'h4647494A4C4E4F5152545657595A5C5E5F6162646667696A6C6E6F7173747677),
    .INIT_40(256'h141517181A1B1D1E202223252628292B2C2E303133343637393B3C3E3F414244),
    .INIT_41(256'hE3E4E6E7E9EAECEDEFF0F2F3F5F7F8FAFBFDFE000103040607090A0C0D0F1012),
    .INIT_42(256'hB4B5B7B8BABBBDBEC0C1C2C4C5C7C8CACBCDCED0D1D3D4D6D7D9DADCDDDEE0E1),
    .INIT_43(256'h87888A8B8C8E8F909293959697999A9C9D9FA0A1A3A4A6A7A8AAABADAEB0B1B3),
    .INIT_44(256'h5B5D5E5F616263656667696A6B6D6E6F717274757678797A7C7D7E8081838485),
    .INIT_45(256'h3233353637383A3B3C3E3F40414344454648494A4C4D4E50515253555657595A),
    .INIT_46(256'h0B0C0D0F1011121315161718191B1C1D1E1F21222324262728292B2C2D2E3031),
    .INIT_47(256'hE6E7E8E9EBECEDEEEFF0F1F3F4F5F6F7F8F9FBFCFDFEFF00020304050607090A),
    .INIT_48(256'hC4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D5D6D7D8D9DADBDCDDDEDFE1E2E3E4E5),
    .INIT_49(256'hA4A5A6A7A8A9A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEC0C1C2C3),
    .INIT_4A(256'h868788898A8B8C8D8D8E8F90919293949596979798999A9B9C9D9E9FA0A1A2A3),
    .INIT_4B(256'h6C6C6D6E6F7070717273747575767778797A7A7B7C7D7E7F7F80818283848585),
    .INIT_4C(256'h54555556575758595A5A5B5C5C5D5E5F5F606162626364656566676869696A6B),
    .INIT_4D(256'h3F3F4041414243434444454646474848494A4A4B4C4C4D4E4E4F505051525253),
    .INIT_4E(256'h2D2D2E2E2F2F3030313232333334343535363737383839393A3B3B3C3C3D3E3E),
    .INIT_4F(256'h1E1E1E1F1F2020212122222223232424252526262727282829292A2A2B2B2C2C),
    .INIT_50(256'h121212131313141414151515161616171718181819191A1A1A1B1B1C1C1C1D1D),
    .INIT_51(256'h09090909090A0A0A0A0B0B0B0C0C0C0C0D0D0D0E0E0E0E0F0F0F101010111111),
    .INIT_52(256'h0303030303030304040404040405050505050606060606070707070708080808),
    .INIT_53(256'h0000000000000000000000000001010101010101010101010202020202020202),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0303030303030302020202020202020101010101010101010101000000000000),
    .INIT_56(256'h0A0A090909090908080808070707070706060606060505050505040404040404),
    .INIT_57(256'h141313131212121111111010100F0F0F0E0E0E0E0D0D0D0C0C0C0C0B0B0B0A0A),
    .INIT_58(256'h20201F1F1E1E1E1D1D1C1C1C1B1B1A1A1A191918181817171616161515151414),
    .INIT_59(256'h302F2F2E2E2D2D2C2C2B2B2A2A29292828272726262525242423232222222121),
    .INIT_5A(256'h43424141403F3F3E3E3D3C3C3B3B3A3939383837373635353434333332323130),
    .INIT_5B(256'h585757565555545352525150504F4E4E4D4C4C4B4A4A49484847464645444443),
    .INIT_5C(256'h70706F6E6D6C6C6B6A696968676665656463626261605F5F5E5D5C5C5B5A5A59),
    .INIT_5D(256'h8C8B8A89888786858584838281807F7F7E7D7C7B7A7A79787776757574737271),
    .INIT_5E(256'hA9A9A8A7A6A5A4A3A2A1A09F9E9D9C9B9A99989797969594939291908F8E8D8D),
    .INIT_5F(256'hCAC9C8C7C6C5C4C3C2C1C0BEBDBCBBBAB9B8B7B6B5B4B3B2B1B0AFAEADACABAA),
    .INIT_60(256'hEDECEBE9E8E7E6E5E4E3E2E1DFDEDDDCDBDAD9D8D7D6D5D3D2D1D0CFCECDCCCB),
    .INIT_61(256'h1211100F0D0C0B0A0907060504030200FFFEFDFCFBF9F8F7F6F5F4F3F1F0EFEE),
    .INIT_62(256'h3A38373635333231302E2D2C2B29282726242322211F1E1D1C1B191817161513),
    .INIT_63(256'h6362615F5E5D5B5A59575655535251504E4D4C4A49484645444341403F3E3C3B),
    .INIT_64(256'h8F8E8C8B8A888785848381807E7D7C7A797876757472716F6E6D6B6A69676665),
    .INIT_65(256'hBDBBBAB8B7B5B4B3B1B0AEADABAAA8A7A6A4A3A1A09F9D9C9A99979695939290),
    .INIT_66(256'hECEAE9E7E6E4E3E1E0DEDDDCDAD9D7D6D4D3D1D0CECDCBCAC8C7C5C4C2C1C0BE),
    .INIT_67(256'h1D1B1A1817151412100F0D0C0A09070604030100FEFDFBFAF8F7F5F3F2F0EFED),
    .INIT_68(256'h4F4E4C4A4947464442413F3E3C3B393736343331302E2C2B292826252322201E),
    .INIT_69(256'h8381807E7C7B7977767473716F6E6C6A6967666462615F5E5C5A595756545251),
    .INIT_6A(256'hB7B6B4B2B1AFAEACAAA9A7A5A4A2A09F9D9B9A9896959391908E8D8B89888684),
    .INIT_6B(256'hEDEBEAE8E6E5E3E1E0DEDCDBD9D7D6D4D2D1CFCDCBCAC8C6C5C3C1C0BEBCBBB9),
    .INIT_6C(256'h2422201E1D1B1918161412110F0D0C0A080705030100FEFCFBF9F7F6F4F2F1EF),
    .INIT_6D(256'h5B5957555452504F4D4B4948464442413F3D3C3A3836353331302E2C2A292725),
    .INIT_6E(256'h92908F8D8B8988868482817F7D7C7A78767573716F6E6C6A6867656362605E5C),
    .INIT_6F(256'hCAC8C6C5C3C1BFBEBCBAB8B7B5B3B1B0AEACAAA9A7A5A3A2A09E9D9B99979694),
    .INIT_70(256'hCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFD0E6E4E2E1DFDDDBDAD8D6D4D3D1CFCDCC),
    .INIT_71(256'hCCCCCCCDCDCDCDCDCDCDCDCECECECECECECECECECECECFCFCFCFCFCFCFCFCFCF),
    .INIT_72(256'hC6C6C6C7C7C7C7C8C8C8C8C8C9C9C9C9C9CACACACACACBCBCBCBCBCBCCCCCCCC),
    .INIT_73(256'hBDBDBDBEBEBEBFBFBFC0C0C0C1C1C1C1C2C2C2C3C3C3C3C4C4C4C5C5C5C5C6C6),
    .INIT_74(256'hB1B1B1B2B2B3B3B3B4B4B5B5B5B6B6B7B7B7B8B8B9B9B9BABABABBBBBBBCBCBC),
    .INIT_75(256'hA1A2A2A3A3A4A4A5A5A6A6A7A7A8A8A9A9AAAAABABACACADADADAEAEAFAFB0B0),
    .INIT_76(256'h8F90909191929393949495969697979898999A9A9B9B9C9C9D9D9E9F9FA0A0A1),
    .INIT_77(256'h7A7A7B7C7D7D7E7F7F8081818283838485858687878889898A8B8B8C8C8D8E8E),
    .INIT_78(256'h626363646566666768696A6A6B6C6D6D6E6F7070717273737475757677787879),
    .INIT_79(256'h4748494A4A4B4C4D4E4F5050515253545555565758595A5A5B5C5D5E5F5F6061),
    .INIT_7A(256'h292A2B2C2D2E2F30313233343536373838393A3B3C3D3E3F4041424243444546),
    .INIT_7B(256'h090A0B0C0D0E0F1112131415161718191A1B1C1D1E1F20212223242526262728),
    .INIT_7C(256'hE7E8E9EAEBECEDEEF0F1F2F3F4F5F6F7F8F9FAFCFDFEFF000102030405060708),
    .INIT_7D(256'hC2C3C4C5C6C8C9CACBCCCDCFD0D1D2D3D4D6D7D8D9DADBDCDEDFE0E1E2E3E4E6),
    .INIT_7E(256'h9A9C9D9E9FA1A2A3A4A6A7A8A9ABACADAEB0B1B2B3B4B6B7B8B9BABCBDBEBFC0),
    .INIT_7F(256'h717274757678797A7C7D7E7F818283858687898A8B8C8E8F9091939495979899),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta_array[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb_array[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(ena),
        .I1(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(enb),
        .I1(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta_array,
    doutb_array,
    clka,
    clkb,
    ena_array,
    enb_array,
    ena,
    enb,
    addra,
    addrb);
  output [8:0]douta_array;
  output [8:0]doutb_array;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input ena;
  input enb;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]douta_array;
  wire [8:0]doutb_array;
  wire ena;
  wire [0:0]ena_array;
  wire enb;
  wire [0:0]enb_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000007FFFFFF),
    .INITP_03(256'h00000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'hFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'h0000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000),
    .INITP_09(256'h00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4547484A4B4C4E4F515253555657595A5B5D5E60616264656668696A6C6D6E70),
    .INIT_01(256'h181A1B1C1E1F212224252728292B2C2E2F303233353638393A3C3D3F40414344),
    .INIT_02(256'hE9EBECEEEFF1F2F3F5F6F8F9FBFCFEFF0102040507080A0B0D0E0F1112141517),
    .INIT_03(256'hB8BABBBDBFC0C2C3C5C6C8C9CBCCCECFD1D2D4D5D7D8DADCDDDFE0E2E3E5E6E8),
    .INIT_04(256'h8688898B8D8E909193949698999B9C9E9FA1A3A4A6A7A9AAACADAFB1B2B4B5B7),
    .INIT_05(256'h53545658595B5C5E606163656668696B6D6E707173757678797B7D7E80818385),
    .INIT_06(256'h1E2021232526282A2B2D2F3032343537393A3C3E3F4142444647494B4C4E4F51),
    .INIT_07(256'hE9EAECEEEFF1F3F4F6F8F9FBFDFE0002040507090A0C0E0F1113141618191B1D),
    .INIT_08(256'hB2B4B6B7B9BBBDBEC0C2C3C5C7C8CACCCECFD1D3D4D6D8D9DBDDDEE0E2E4E5E7),
    .INIT_09(256'h7B7D7F8082848687898B8D8E9092939597999A9C9E9FA1A3A5A6A8AAABADAFB1),
    .INIT_0A(256'h444647494B4D4E5052535557595A5C5E6061636567686A6C6D6F71737476787A),
    .INIT_0B(256'h0C0E1011131517181A1C1E1F21232526282A2C2D2F3132343638393B3D3F4042),
    .INIT_0C(256'hD4D6D8DADBDDDFE1E2E4E6E8E9EBEDEEF0F2F4F5F7F9FBFCFE0002030507090A),
    .INIT_0D(256'h9D9EA0A2A3A5A7A9AAACAEB0B1B3B5B7B8BABCBEBFC1C3C5C6C8CACCCDCFD1D3),
    .INIT_0E(256'h6567686A6C6E6F71737576787A7C7D7F8182848688898B8D8F9092949697999B),
    .INIT_0F(256'h2E3031333536383A3C3D3F4142444648494B4D4F5052545557595B5C5E606263),
    .INIT_10(256'hF7F9FBFCFE0001030507080A0C0D0F1112141618191B1D1E2022242527292A2C),
    .INIT_11(256'hC1C3C5C6C8CACBCDCFD1D2D4D6D7D9DBDCDEE0E1E3E5E6E8EAEBEDEFF1F2F4F6),
    .INIT_12(256'h8D8E9091939596989A9B9D9FA0A2A4A5A7A9AAACAEAFB1B2B4B6B7B9BBBCBEC0),
    .INIT_13(256'h595A5C5E5F6162646667696A6C6E6F7173747677797B7C7E808183848688898B),
    .INIT_14(256'h2628292B2C2E303133343637393B3C3E3F4142444647494A4C4E4F5152545657),
    .INIT_15(256'hF5F7F8FAFBFDFE000103040607090A0C0D0F1012141517181A1B1D1E20222325),
    .INIT_16(256'hC5C7C8CACBCDCED0D1D3D4D6D7D9DADCDDDEE0E1E3E4E6E7E9EAECEDEFF0F2F4),
    .INIT_17(256'h97999A9C9D9FA0A1A3A4A6A7A8AAABADAEB0B1B3B4B5B7B8BABBBDBEC0C1C2C4),
    .INIT_18(256'h6B6D6E6F717274757678797A7C7D7E808183848587888A8B8C8E8F9092939596),
    .INIT_19(256'h414344454648494A4C4D4E50515253555657595A5B5D5E5F616263656667696A),
    .INIT_1A(256'h191B1C1D1E1F21222324262728292B2C2D2E30313233353637383A3B3C3E3F40),
    .INIT_1B(256'hF4F5F6F7F8F9FBFCFDFEFF00020304050607090A0B0C0D0F1011121315161718),
    .INIT_1C(256'hD0D1D2D3D5D6D7D8D9DADBDCDDDEDFE1E2E3E4E5E6E7E8E9EBECEDEEEFF0F1F3),
    .INIT_1D(256'hAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEC0C1C2C3C4C5C6C7C8C9CACBCCCDCECF),
    .INIT_1E(256'h919293949596979798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9A9AAABACADAE),
    .INIT_1F(256'h75767778797A7A7B7C7D7E7F7F80818283848585868788898A8B8C8D8D8E8F90),
    .INIT_20(256'h5C5D5E5F5F606162626364656566676869696A6B6C6C6D6E6F70707172737475),
    .INIT_21(256'h46474848494A4A4B4C4C4D4E4E4F50505152525354555556575758595A5A5B5C),
    .INIT_22(256'h3334343535363737383839393A3B3B3C3C3D3E3E3F3F40414142434344444546),
    .INIT_23(256'h23232424252526262727282829292A2A2B2B2C2C2D2D2E2E2F2F303031323233),
    .INIT_24(256'h161616171718181819191A1A1A1B1B1C1C1C1D1D1E1E1E1F1F20202121222222),
    .INIT_25(256'h0C0C0C0C0D0D0D0E0E0E0E0F0F0F101010111111121212131313141414151515),
    .INIT_26(256'h040505050505060606060607070707070808080809090909090A0A0A0A0B0B0B),
    .INIT_27(256'h0001010101010101010101010202020202020202030303030303030404040404),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0202020101010101010101010101000000000000000000000000000000000000),
    .INIT_2A(256'h0707070706060606060505050505040404040404030303030303030202020202),
    .INIT_2B(256'h100F0F0F0E0E0E0E0D0D0D0C0C0C0C0B0B0B0A0A0A0A09090909090808080807),
    .INIT_2C(256'h1B1B1A1A1A191918181817171616161515151414141313131212121111111010),
    .INIT_2D(256'h2A2929282827272626252524242323222222212120201F1F1E1E1E1D1D1C1C1C),
    .INIT_2E(256'h3B3B3A3939383837373635353434333332323130302F2F2E2E2D2D2C2C2B2B2A),
    .INIT_2F(256'h504F4E4E4D4C4C4B4A4A4948484746464544444343424141403F3F3E3E3D3C3C),
    .INIT_30(256'h676665656463626261605F5F5E5D5C5C5B5A5A59585757565555545352525150),
    .INIT_31(256'h81807F7F7E7D7C7B7A7A7978777675757473727170706F6E6D6C6C6B6A696968),
    .INIT_32(256'h9E9D9C9B9A99989797969594939291908F8E8D8D8C8B8A898887868585848382),
    .INIT_33(256'hBDBCBBBAB9B8B7B6B5B4B3B2B1B0AFAEADACABAAA9A9A8A7A6A5A4A3A2A1A09F),
    .INIT_34(256'hDFDEDDDCDBDAD9D8D7D6D5D3D2D1D0CFCECDCCCBCAC9C8C7C6C5C4C3C2C1C0BE),
    .INIT_35(256'h04030200FFFEFDFCFBF9F8F7F6F5F4F3F1F0EFEEEDECEBE9E8E7E6E5E4E3E2E1),
    .INIT_36(256'h2B29282726242322211F1E1D1C1B1918171615131211100F0D0C0B0A09070605),
    .INIT_37(256'h535251504E4D4C4A49484645444341403F3E3C3B3A38373635333231302E2D2C),
    .INIT_38(256'h7E7D7C7A797876757472716F6E6D6B6A696766656362615F5E5D5B5A59575655),
    .INIT_39(256'hABAAA8A7A6A4A3A1A09F9D9C9A999796959392908F8E8C8B8A88878584838180),
    .INIT_3A(256'hDAD9D7D6D4D3D1D0CECDCBCAC8C7C5C4C2C1C0BEBDBBBAB8B7B5B4B3B1B0AEAD),
    .INIT_3B(256'h0A09070604030100FEFDFBFAF8F7F5F3F2F0EFEDECEAE9E7E6E4E3E1E0DEDDDC),
    .INIT_3C(256'h3C3B393736343331302E2C2B292826252322201E1D1B1A1817151412100F0D0C),
    .INIT_3D(256'h6F6E6C6A6967666462615F5E5C5A5957565452514F4E4C4A4947464442413F3E),
    .INIT_3E(256'hA4A2A09F9D9B9A9896959391908E8D8B898886848381807E7C7B797776747371),
    .INIT_3F(256'hD9D7D6D4D2D1CFCDCBCAC8C6C5C3C1C0BEBCBBB9B7B6B4B2B1AFAEACAAA9A7A5),
    .INIT_40(256'h0F0D0C0A080705030100FEFCFBF9F7F6F4F2F1EFEDEBEAE8E6E5E3E1E0DEDCDB),
    .INIT_41(256'h464442413F3D3C3A3836353331302E2C2A2927252422201E1D1B191816141211),
    .INIT_42(256'h7D7C7A78767573716F6E6C6A6867656362605E5C5B5957555452504F4D4B4948),
    .INIT_43(256'hB5B3B1B0AEACAAA9A7A5A3A2A09E9D9B9997969492908F8D8B8988868482817F),
    .INIT_44(256'hEDEBE9E7E6E4E2E1DFDDDBDAD8D6D4D3D1CFCDCCCAC8C6C5C3C1BFBEBCBAB8B7),
    .INIT_45(256'h2523211F1E1C1A1817151311100E0C0A090705030200FEFCFBF9F7F5F4F2F0EE),
    .INIT_46(256'h5C5A5957555352504E4D4B4947464442403F3D3B3938363432312F2D2C2A2826),
    .INIT_47(256'h9392908E8D8B8987868482807F7D7B7A78767473716F6D6C6A6867656361605E),
    .INIT_48(256'hCAC8C7C5C3C2C0BEBDBBB9B7B6B4B2B1AFADABAAA8A6A5A3A19F9E9C9A999795),
    .INIT_49(256'h00FEFDFBF9F8F6F4F3F1EFEEECEAE9E7E5E4E2E0DEDDDBD9D8D6D4D3D1CFCECC),
    .INIT_4A(256'h353432302F2D2B2A2826252321201E1D1B1918161413110F0E0C0A0907050402),
    .INIT_4B(256'h696866656361605E5C5B5958565453514F4E4C4B4947464442413F3E3C3A3937),
    .INIT_4C(256'h9C9B999896949391908E8D8B898886858381807E7D7B797876757371706E6D6B),
    .INIT_4D(256'hCECCCBC9C8C6C5C3C2C0BFBDBBBAB8B7B5B4B2B1AFADACAAA9A7A6A4A3A19F9E),
    .INIT_4E(256'hFEFCFBF9F8F6F5F3F2F1EFEEECEBE9E8E6E5E3E2E0DFDDDCDAD8D7D5D4D2D1CF),
    .INIT_4F(256'h2C2B292827252422211F1E1C1B1A1817151412110F0E0D0B0A080705040201FF),
    .INIT_50(256'h595756555352514F4E4C4B4A484745444341403F3D3C3A393836353332302F2E),
    .INIT_51(256'h8382817F7E7D7C7A79787675747271706E6D6C6A69686665646261605E5D5B5A),
    .INIT_52(256'hACABA9A8A7A6A4A3A2A19F9E9D9C9A99989795949391908F8E8C8B8A89878685),
    .INIT_53(256'hD2D1D0CFCDCCCBCAC9C8C6C5C4C3C2C0BFBEBDBCBAB9B8B7B6B4B3B2B1B0AEAD),
    .INIT_54(256'hF6F5F4F3F2F1F0EEEDECEBEAE9E8E7E6E4E3E2E1E0DFDEDCDBDAD9D8D7D6D4D3),
    .INIT_55(256'h18171615141312110F0E0D0C0B0A09080706050403020100FFFEFDFCFAF9F8F7),
    .INIT_56(256'h37363534333231302F2E2D2C2B2A29282726262524232221201F1E1D1C1B1A19),
    .INIT_57(256'h53525150504F4E4D4C4B4A4A49484746454443424241403F3E3D3C3B3A393838),
    .INIT_58(256'h6D6C6B6A6A6968676666656463636261605F5F5E5D5C5B5A5A59585756555554),
    .INIT_59(256'h8383828181807F7F7E7D7D7C7B7A7A79787877767575747373727170706F6E6D),
    .INIT_5A(256'h97979696959494939392919190908F8E8E8D8C8C8B8B8A898988878786858584),
    .INIT_5B(256'hA8A8A7A7A6A6A5A5A4A4A3A3A2A2A1A1A0A09F9F9E9D9D9C9C9B9B9A9A999898),
    .INIT_5C(256'hB6B6B5B5B5B4B4B3B3B3B2B2B1B1B1B0B0AFAFAEAEADADADACACABABAAAAA9A9),
    .INIT_5D(256'hC1C1C1C0C0C0BFBFBFBEBEBEBDBDBDBCBCBCBBBBBBBABABAB9B9B9B8B8B7B7B7),
    .INIT_5E(256'hC9C9C9C8C8C8C8C8C7C7C7C7C6C6C6C6C6C5C5C5C5C4C4C4C3C3C3C3C2C2C2C1),
    .INIT_5F(256'hCECECECECDCDCDCDCDCDCDCDCCCCCCCCCCCCCCCBCBCBCBCBCBCACACACACAC9C9),
    .INIT_60(256'hCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCECECECECECECE),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta_array[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb_array[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta_array,
    doutb_array,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    ena,
    enb,
    addra,
    addrb);
  output [6:0]douta_array;
  output [6:0]doutb_array;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input ena;
  input enb;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [6:0]douta_array;
  wire [6:0]doutb_array;
  wire ena;
  wire enb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0202020202020202020202020202020202020101010101010101010101010101),
    .INIT_01(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_02(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_03(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_04(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_05(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_06(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_07(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_08(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_09(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_0A(256'h0303030303030303030303030303030303030303030303030303030202020202),
    .INIT_0B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_10(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_11(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_12(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_13(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_14(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_15(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_16(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_17(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_18(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_19(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_20(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_21(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_22(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_23(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_24(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_25(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_26(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_27(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_28(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_29(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2E(256'h0202020202020202020202020202020202020202020202020202020203030303),
    .INIT_2F(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_30(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_31(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_32(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_33(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_34(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_35(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_36(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_37(256'h0101010101020202020202020202020202020202020202020202020202020202),
    .INIT_38(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_39(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3A(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3B(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3C(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3D(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3E(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3F(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_40(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_41(256'h0000000000000000000000000000000000000001010101010101010101010101),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0101010101010101010101010101010101010101000000000000000000000000),
    .INIT_68(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_69(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_6A(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_6B(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_6C(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_6D(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_6E(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_6F(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_70(256'h0303030303030303030303030303030301010101010101010101010101010101),
    .INIT_71(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_72(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_73(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_74(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_75(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_76(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_77(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_78(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_79(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ,douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ,doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta_array,
    doutb_array,
    ena_array,
    enb_array,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb);
  output [6:0]douta_array;
  output [6:0]doutb_array;
  output [0:0]ena_array;
  output [0:0]enb_array;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [6:0]douta_array;
  wire [6:0]doutb_array;
  wire ena;
  wire [0:0]ena_array;
  wire enb;
  wire [0:0]enb_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_01(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_02(256'h0202020202020202020202020202020203030303030303030303030303030303),
    .INIT_03(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_04(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_05(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_06(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_07(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_08(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_09(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_0A(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_0B(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_0C(256'h0101010101010101010101010101010101010101010101010102020202020202),
    .INIT_0D(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_0E(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_0F(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_10(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_11(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_12(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_13(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_14(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_15(256'h0000000000000001010101010101010101010101010101010101010101010101),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0101010101010101000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3D(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3E(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_3F(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_40(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_41(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_42(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_43(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_44(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_45(256'h0202020202020202020202020202020202020202020201010101010101010101),
    .INIT_46(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_47(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_48(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_49(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4A(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4B(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4C(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4D(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4E(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4F(256'h0303030303030303030303030303030303030303030303030303030303030302),
    .INIT_50(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_51(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_52(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_53(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_54(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_55(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_56(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_57(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_58(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_59(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_60(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ,douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ,doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(ena),
        .O(ena_array));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2 
       (.I0(addrb[12]),
        .I1(enb),
        .O(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module bram_sin_cos_blk_mem_gen_top
   (douta,
    doutb,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb);
  output [15:0]douta;
  output [15:0]doutb;
  input ena;
  input [12:0]addra;
  input enb;
  input [12:0]addrb;
  input clka;
  input clkb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;

  bram_sin_cos_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "4" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.3056 mW" *) 
(* C_FAMILY = "kintex7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "bram_sin_cos.mem" *) 
(* C_INIT_FILE_NAME = "bram_sin_cos.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "4" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "7200" *) (* C_READ_DEPTH_B = "7200" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "7200" *) (* C_WRITE_DEPTH_B = "7200" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bram_sin_cos_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [12:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bram_sin_cos_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module bram_sin_cos_blk_mem_gen_v8_4_1_synth
   (douta,
    doutb,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb);
  output [15:0]douta;
  output [15:0]doutb;
  input ena;
  input [12:0]addra;
  input enb;
  input [12:0]addrb;
  input clka;
  input clkb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;

  bram_sin_cos_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
