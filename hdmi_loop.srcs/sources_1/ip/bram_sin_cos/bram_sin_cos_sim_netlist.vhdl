-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Feb 21 15:05:28 2023
-- Host        : DESKTOP-IDDFDEU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Yi/Desktop/FPGA/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/bram_sin_cos/bram_sin_cos_sim_netlist.vhdl
-- Design      : bram_sin_cos
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    douta_array : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram_sin_cos_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end bram_sin_cos_blk_mem_gen_mux;

architecture STRUCTURE of bram_sin_cos_blk_mem_gen_mux is
  signal \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC;
  signal sel_pipe_d1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \douta[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \douta[10]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \douta[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \douta[12]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \douta[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \douta[14]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \douta[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \douta[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \douta[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \douta[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \douta[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \douta[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \douta[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \douta[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \douta[8]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \douta[9]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1\ : label is "soft_lutpair0";
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(16),
      I1 => sel_pipe_d1,
      I2 => douta_array(0),
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(26),
      I1 => sel_pipe_d1,
      I2 => douta_array(10),
      O => douta(10)
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(27),
      I1 => sel_pipe_d1,
      I2 => douta_array(11),
      O => douta(11)
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(28),
      I1 => sel_pipe_d1,
      I2 => douta_array(12),
      O => douta(12)
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(29),
      I1 => sel_pipe_d1,
      I2 => douta_array(13),
      O => douta(13)
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(30),
      I1 => sel_pipe_d1,
      I2 => douta_array(14),
      O => douta(14)
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(31),
      I1 => sel_pipe_d1,
      I2 => douta_array(15),
      O => douta(15)
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(17),
      I1 => sel_pipe_d1,
      I2 => douta_array(1),
      O => douta(1)
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(18),
      I1 => sel_pipe_d1,
      I2 => douta_array(2),
      O => douta(2)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(19),
      I1 => sel_pipe_d1,
      I2 => douta_array(3),
      O => douta(3)
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(20),
      I1 => sel_pipe_d1,
      I2 => douta_array(4),
      O => douta(4)
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(21),
      I1 => sel_pipe_d1,
      I2 => douta_array(5),
      O => douta(5)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(22),
      I1 => sel_pipe_d1,
      I2 => douta_array(6),
      O => douta(6)
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(23),
      I1 => sel_pipe_d1,
      I2 => douta_array(7),
      O => douta(7)
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(24),
      I1 => sel_pipe_d1,
      I2 => douta_array(8),
      O => douta(8)
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => douta_array(25),
      I1 => sel_pipe_d1,
      I2 => douta_array(9),
      O => douta(9)
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sel_pipe,
      I1 => ena,
      I2 => sel_pipe_d1,
      O => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1_n_0\
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1_n_0\,
      Q => sel_pipe_d1,
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addra(0),
      I1 => ena,
      I2 => sel_pipe,
      O => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\,
      Q => sel_pipe,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram_sin_cos_blk_mem_gen_mux__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb : in STD_LOGIC;
    doutb_array : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram_sin_cos_blk_mem_gen_mux__parameterized0\ : entity is "blk_mem_gen_mux";
end \bram_sin_cos_blk_mem_gen_mux__parameterized0\;

architecture STRUCTURE of \bram_sin_cos_blk_mem_gen_mux__parameterized0\ is
  signal \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \doutb[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \doutb[10]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \doutb[11]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \doutb[12]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \doutb[13]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \doutb[14]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \doutb[15]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \doutb[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \doutb[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \doutb[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \doutb[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \doutb[5]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \doutb[6]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \doutb[7]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \doutb[8]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \doutb[9]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0\ : label is "soft_lutpair9";
begin
\doutb[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(16),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(0),
      O => doutb(0)
    );
\doutb[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(26),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(10),
      O => doutb(10)
    );
\doutb[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(27),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(11),
      O => doutb(11)
    );
\doutb[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(28),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(12),
      O => doutb(12)
    );
\doutb[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(29),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(13),
      O => doutb(13)
    );
\doutb[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(30),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(14),
      O => doutb(14)
    );
\doutb[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(31),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(15),
      O => doutb(15)
    );
\doutb[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(17),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(1),
      O => doutb(1)
    );
\doutb[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(18),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(2),
      O => doutb(2)
    );
\doutb[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(19),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(3),
      O => doutb(3)
    );
\doutb[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(20),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(4),
      O => doutb(4)
    );
\doutb[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(21),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(5),
      O => doutb(5)
    );
\doutb[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(22),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(6),
      O => doutb(6)
    );
\doutb[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(23),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(7),
      O => doutb(7)
    );
\doutb[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(24),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(8),
      O => doutb(8)
    );
\doutb[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => doutb_array(25),
      I1 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      I2 => doutb_array(9),
      O => doutb(9)
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I1 => enb,
      I2 => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      O => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0_n_0\
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1[0]_i_1__0_n_0\,
      Q => \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0]\,
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addrb(0),
      I1 => enb,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      O => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0\,
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos_blk_mem_gen_prim_wrapper_init is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram_sin_cos_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end bram_sin_cos_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of bram_sin_cos_blk_mem_gen_prim_wrapper_init is
  signal \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_1\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_0\;
  \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ <= \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_1\;
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000003FFF",
      INITP_01 => X"00000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000",
      INITP_06 => X"F80000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"00000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1E1C1A1817151311100E0C0A090705030200FEFCFBF9F7F5F4F2F0EEEDEBE9E8",
      INIT_01 => X"555352504E4D4B4947464442403F3D3B3938363432312F2D2C2A28262523211F",
      INIT_02 => X"8D8B8987868482807F7D7B7A78767473716F6D6C6A6867656361605E5C5A5957",
      INIT_03 => X"C3C2C0BEBDBBB9B7B6B4B2B1AFADABAAA8A6A5A3A19F9E9C9A9997959392908E",
      INIT_04 => X"F9F8F6F4F3F1EFEEECEAE9E7E5E4E2E0DEDDDBD9D8D6D4D3D1CFCECCCAC8C7C5",
      INIT_05 => X"2F2D2B2A2826252321201E1D1B1918161413110F0E0C0A090705040200FEFDFB",
      INIT_06 => X"6361605E5C5B5958565453514F4E4C4B4947464442413F3E3C3A393735343230",
      INIT_07 => X"96949391908E8D8B898886858381807E7D7B797876757371706E6D6B69686665",
      INIT_08 => X"C8C6C5C3C2C0BFBDBBBAB8B7B5B4B2B1AFADACAAA9A7A6A4A3A19F9E9C9B9998",
      INIT_09 => X"F8F6F5F3F2F1EFEEECEBE9E8E6E5E3E2E0DFDDDCDAD8D7D5D4D2D1CFCECCCBC9",
      INIT_0A => X"27252422211F1E1C1B1A1817151412110F0E0D0B0A080705040201FFFEFCFBF9",
      INIT_0B => X"5352514F4E4C4B4A484745444341403F3D3C3A393836353332302F2E2C2B2928",
      INIT_0C => X"7E7D7C7A79787675747271706E6D6C6A69686665646261605E5D5B5A59575655",
      INIT_0D => X"A7A6A4A3A2A19F9E9D9C9A99989795949391908F8E8C8B8A898786858382817F",
      INIT_0E => X"CDCCCBCAC9C8C6C5C4C3C2C0BFBEBDBCBAB9B8B7B6B4B3B2B1B0AEADACABA9A8",
      INIT_0F => X"F2F1F0EEEDECEBEAE9E8E7E6E4E3E2E1E0DFDEDCDBDAD9D8D7D6D4D3D2D1D0CF",
      INIT_10 => X"141312110F0E0D0C0B0A09080706050403020100FFFEFDFCFAF9F8F7F6F5F4F3",
      INIT_11 => X"333231302F2E2D2C2B2A29282726262524232221201F1E1D1C1B1A1918171615",
      INIT_12 => X"504F4E4D4C4B4A4A49484746454443424241403F3E3D3C3B3A39383837363534",
      INIT_13 => X"6A6968676666656463636261605F5F5E5D5C5B5A5A5958575655555453525150",
      INIT_14 => X"81807F7F7E7D7D7C7B7A7A79787877767575747373727170706F6E6D6D6C6B6A",
      INIT_15 => X"959494939392919190908F8E8E8D8C8C8B8B8A89898887878685858483838281",
      INIT_16 => X"A6A6A5A5A4A4A3A3A2A2A1A1A0A09F9F9E9D9D9C9C9B9B9A9A99989897979696",
      INIT_17 => X"B5B4B4B3B3B3B2B2B1B1B1B0B0AFAFAEAEADADADACACABABAAAAA9A9A8A8A7A7",
      INIT_18 => X"C0C0BFBFBFBEBEBEBDBDBDBCBCBCBBBBBBBABABAB9B9B9B8B8B7B7B7B6B6B5B5",
      INIT_19 => X"C8C8C8C8C7C7C7C7C6C6C6C6C6C5C5C5C5C4C4C4C3C3C3C3C2C2C2C1C1C1C1C0",
      INIT_1A => X"CDCDCDCDCDCDCDCDCCCCCCCCCCCCCCCBCBCBCBCBCBCACACACACAC9C9C9C9C9C8",
      INIT_1B => X"CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCECECECECECECECECECECE",
      INIT_1C => X"CECECFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFD0CFCFCFCF",
      INIT_1D => X"CACACBCBCBCBCBCBCCCCCCCCCCCCCCCDCDCDCDCDCDCDCDCECECECECECECECECE",
      INIT_1E => X"C3C3C3C4C4C4C5C5C5C5C6C6C6C6C6C7C7C7C7C8C8C8C8C8C9C9C9C9C9CACACA",
      INIT_1F => X"B9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEBFBFBFC0C0C0C1C1C1C1C2C2C2C3",
      INIT_20 => X"ABACACADADADAEAEAFAFB0B0B1B1B1B2B2B3B3B3B4B4B5B5B5B6B6B7B7B7B8B8",
      INIT_21 => X"9B9B9C9C9D9D9E9F9FA0A0A1A1A2A2A3A3A4A4A5A5A6A6A7A7A8A8A9A9AAAAAB",
      INIT_22 => X"878889898A8B8B8C8C8D8E8E8F90909191929393949495969697979898999A9A",
      INIT_23 => X"7172737374757576777878797A7A7B7C7D7D7E7F7F8081818283838485858687",
      INIT_24 => X"58595A5A5B5C5D5E5F5F6061626363646566666768696A6A6B6C6D6D6E6F7070",
      INIT_25 => X"3C3D3E3F40414242434445464748494A4A4B4C4D4E4F50505152535455555657",
      INIT_26 => X"1E1F20212223242526262728292A2B2C2D2E2F30313233343536373838393A3B",
      INIT_27 => X"FDFEFF000102030405060708090A0B0C0D0E0F1112131415161718191A1B1C1D",
      INIT_28 => X"D9DADBDCDEDFE0E1E2E3E4E6E7E8E9EAEBECEDEEF0F1F2F3F4F5F6F7F8F9FAFC",
      INIT_29 => X"B3B4B6B7B8B9BABCBDBEBFC0C2C3C4C5C6C8C9CACBCCCDCFD0D1D2D3D4D6D7D8",
      INIT_2A => X"8B8C8E8F90919394959798999A9C9D9E9FA1A2A3A4A6A7A8A9ABACADAEB0B1B2",
      INIT_2B => X"616264656668696A6C6D6E70717274757678797A7C7D7E7F818283858687898A",
      INIT_2C => X"353638393A3C3D3F404143444547484A4B4C4E4F515253555657595A5B5D5E60",
      INIT_2D => X"07080A0B0D0E0F1112141517181A1B1C1E1F212224252728292B2C2E2F303233",
      INIT_2E => X"D7D8DADCDDDFE0E2E3E5E6E8E9EBECEEEFF1F2F3F5F6F8F9FBFCFEFF01020405",
      INIT_2F => X"A6A7A9AAACADAFB1B2B4B5B7B8BABBBDBFC0C2C3C5C6C8C9CBCCCECFD1D2D4D5",
      INIT_30 => X"73757678797B7D7E808183858688898B8D8E909193949698999B9C9E9FA1A3A4",
      INIT_31 => X"3F4142444647494B4C4E4F5153545658595B5C5E606163656668696B6D6E7071",
      INIT_32 => X"0A0C0E0F1113141618191B1D1E2021232526282A2B2D2F3032343537393A3C3E",
      INIT_33 => X"D4D6D8D9DBDDDEE0E2E4E5E7E9EAECEEEFF1F3F4F6F8F9FBFDFE000204050709",
      INIT_34 => X"9E9FA1A3A5A6A8AAABADAFB1B2B4B6B7B9BBBDBEC0C2C3C5C7C8CACCCECFD1D3",
      INIT_35 => X"67686A6C6D6F71737476787A7B7D7F8082848687898B8D8E9092939597999A9C",
      INIT_36 => X"2F3132343638393B3D3F4042444647494B4D4E5052535557595A5C5E60616365",
      INIT_37 => X"F7F9FBFCFE0002030507090A0C0E1011131517181A1C1E1F21232526282A2C2D",
      INIT_38 => X"BFC1C3C5C6C8CACCCDCFD1D3D4D6D8DADBDDDFE1E2E4E6E8E9EBEDEEF0F2F4F5",
      INIT_39 => X"88898B8D8F9092949697999B9D9EA0A2A3A5A7A9AAACAEB0B1B3B5B7B8BABCBE",
      INIT_3A => X"5052545557595B5C5E6062636567686A6C6E6F71737576787A7C7D7F81828486",
      INIT_3B => X"191B1D1E2022242527292A2C2E3031333536383A3C3D3F4142444648494B4D4F",
      INIT_3C => X"E3E5E6E8EAEBEDEFF1F2F4F6F7F9FBFCFE0001030507080A0C0D0F1112141618",
      INIT_3D => X"AEAFB1B2B4B6B7B9BBBCBEC0C1C3C5C6C8CACBCDCFD1D2D4D6D7D9DBDCDEE0E1",
      INIT_3E => X"797B7C7E808183848688898B8D8E9091939596989A9B9D9FA0A2A4A5A7A9AAAC",
      INIT_3F => X"4647494A4C4E4F5152545657595A5C5E5F6162646667696A6C6E6F7173747677",
      INIT_40 => X"141517181A1B1D1E202223252628292B2C2E303133343637393B3C3E3F414244",
      INIT_41 => X"E3E4E6E7E9EAECEDEFF0F2F3F5F7F8FAFBFDFE000103040607090A0C0D0F1012",
      INIT_42 => X"B4B5B7B8BABBBDBEC0C1C2C4C5C7C8CACBCDCED0D1D3D4D6D7D9DADCDDDEE0E1",
      INIT_43 => X"87888A8B8C8E8F909293959697999A9C9D9FA0A1A3A4A6A7A8AAABADAEB0B1B3",
      INIT_44 => X"5B5D5E5F616263656667696A6B6D6E6F717274757678797A7C7D7E8081838485",
      INIT_45 => X"3233353637383A3B3C3E3F40414344454648494A4C4D4E50515253555657595A",
      INIT_46 => X"0B0C0D0F1011121315161718191B1C1D1E1F21222324262728292B2C2D2E3031",
      INIT_47 => X"E6E7E8E9EBECEDEEEFF0F1F3F4F5F6F7F8F9FBFCFDFEFF00020304050607090A",
      INIT_48 => X"C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D5D6D7D8D9DADBDCDDDEDFE1E2E3E4E5",
      INIT_49 => X"A4A5A6A7A8A9A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEC0C1C2C3",
      INIT_4A => X"868788898A8B8C8D8D8E8F90919293949596979798999A9B9C9D9E9FA0A1A2A3",
      INIT_4B => X"6C6C6D6E6F7070717273747575767778797A7A7B7C7D7E7F7F80818283848585",
      INIT_4C => X"54555556575758595A5A5B5C5C5D5E5F5F606162626364656566676869696A6B",
      INIT_4D => X"3F3F4041414243434444454646474848494A4A4B4C4C4D4E4E4F505051525253",
      INIT_4E => X"2D2D2E2E2F2F3030313232333334343535363737383839393A3B3B3C3C3D3E3E",
      INIT_4F => X"1E1E1E1F1F2020212122222223232424252526262727282829292A2A2B2B2C2C",
      INIT_50 => X"121212131313141414151515161616171718181819191A1A1A1B1B1C1C1C1D1D",
      INIT_51 => X"09090909090A0A0A0A0B0B0B0C0C0C0C0D0D0D0E0E0E0E0F0F0F101010111111",
      INIT_52 => X"0303030303030304040404040405050505050606060606070707070708080808",
      INIT_53 => X"0000000000000000000000000001010101010101010101010202020202020202",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0303030303030302020202020202020101010101010101010101000000000000",
      INIT_56 => X"0A0A090909090908080808070707070706060606060505050505040404040404",
      INIT_57 => X"141313131212121111111010100F0F0F0E0E0E0E0D0D0D0C0C0C0C0B0B0B0A0A",
      INIT_58 => X"20201F1F1E1E1E1D1D1C1C1C1B1B1A1A1A191918181817171616161515151414",
      INIT_59 => X"302F2F2E2E2D2D2C2C2B2B2A2A29292828272726262525242423232222222121",
      INIT_5A => X"43424141403F3F3E3E3D3C3C3B3B3A3939383837373635353434333332323130",
      INIT_5B => X"585757565555545352525150504F4E4E4D4C4C4B4A4A49484847464645444443",
      INIT_5C => X"70706F6E6D6C6C6B6A696968676665656463626261605F5F5E5D5C5C5B5A5A59",
      INIT_5D => X"8C8B8A89888786858584838281807F7F7E7D7C7B7A7A79787776757574737271",
      INIT_5E => X"A9A9A8A7A6A5A4A3A2A1A09F9E9D9C9B9A99989797969594939291908F8E8D8D",
      INIT_5F => X"CAC9C8C7C6C5C4C3C2C1C0BEBDBCBBBAB9B8B7B6B5B4B3B2B1B0AFAEADACABAA",
      INIT_60 => X"EDECEBE9E8E7E6E5E4E3E2E1DFDEDDDCDBDAD9D8D7D6D5D3D2D1D0CFCECDCCCB",
      INIT_61 => X"1211100F0D0C0B0A0907060504030200FFFEFDFCFBF9F8F7F6F5F4F3F1F0EFEE",
      INIT_62 => X"3A38373635333231302E2D2C2B29282726242322211F1E1D1C1B191817161513",
      INIT_63 => X"6362615F5E5D5B5A59575655535251504E4D4C4A49484645444341403F3E3C3B",
      INIT_64 => X"8F8E8C8B8A888785848381807E7D7C7A797876757472716F6E6D6B6A69676665",
      INIT_65 => X"BDBBBAB8B7B5B4B3B1B0AEADABAAA8A7A6A4A3A1A09F9D9C9A99979695939290",
      INIT_66 => X"ECEAE9E7E6E4E3E1E0DEDDDCDAD9D7D6D4D3D1D0CECDCBCAC8C7C5C4C2C1C0BE",
      INIT_67 => X"1D1B1A1817151412100F0D0C0A09070604030100FEFDFBFAF8F7F5F3F2F0EFED",
      INIT_68 => X"4F4E4C4A4947464442413F3E3C3B393736343331302E2C2B292826252322201E",
      INIT_69 => X"8381807E7C7B7977767473716F6E6C6A6967666462615F5E5C5A595756545251",
      INIT_6A => X"B7B6B4B2B1AFAEACAAA9A7A5A4A2A09F9D9B9A9896959391908E8D8B89888684",
      INIT_6B => X"EDEBEAE8E6E5E3E1E0DEDCDBD9D7D6D4D2D1CFCDCBCAC8C6C5C3C1C0BEBCBBB9",
      INIT_6C => X"2422201E1D1B1918161412110F0D0C0A080705030100FEFCFBF9F7F6F4F2F1EF",
      INIT_6D => X"5B5957555452504F4D4B4948464442413F3D3C3A3836353331302E2C2A292725",
      INIT_6E => X"92908F8D8B8988868482817F7D7C7A78767573716F6E6C6A6867656362605E5C",
      INIT_6F => X"CAC8C6C5C3C1BFBEBCBAB8B7B5B3B1B0AEACAAA9A7A5A3A2A09E9D9B99979694",
      INIT_70 => X"CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFD0E6E4E2E1DFDDDBDAD8D6D4D3D1CFCDCC",
      INIT_71 => X"CCCCCCCDCDCDCDCDCDCDCDCECECECECECECECECECECECFCFCFCFCFCFCFCFCFCF",
      INIT_72 => X"C6C6C6C7C7C7C7C8C8C8C8C8C9C9C9C9C9CACACACACACBCBCBCBCBCBCCCCCCCC",
      INIT_73 => X"BDBDBDBEBEBEBFBFBFC0C0C0C1C1C1C1C2C2C2C3C3C3C3C4C4C4C5C5C5C5C6C6",
      INIT_74 => X"B1B1B1B2B2B3B3B3B4B4B5B5B5B6B6B7B7B7B8B8B9B9B9BABABABBBBBBBCBCBC",
      INIT_75 => X"A1A2A2A3A3A4A4A5A5A6A6A7A7A8A8A9A9AAAAABABACACADADADAEAEAFAFB0B0",
      INIT_76 => X"8F90909191929393949495969697979898999A9A9B9B9C9C9D9D9E9F9FA0A0A1",
      INIT_77 => X"7A7A7B7C7D7D7E7F7F8081818283838485858687878889898A8B8B8C8C8D8E8E",
      INIT_78 => X"626363646566666768696A6A6B6C6D6D6E6F7070717273737475757677787879",
      INIT_79 => X"4748494A4A4B4C4D4E4F5050515253545555565758595A5A5B5C5D5E5F5F6061",
      INIT_7A => X"292A2B2C2D2E2F30313233343536373838393A3B3C3D3E3F4041424243444546",
      INIT_7B => X"090A0B0C0D0E0F1112131415161718191A1B1C1D1E1F20212223242526262728",
      INIT_7C => X"E7E8E9EAEBECEDEEF0F1F2F3F4F5F6F7F8F9FAFCFDFEFF000102030405060708",
      INIT_7D => X"C2C3C4C5C6C8C9CACBCCCDCFD0D1D2D3D4D6D7D8D9DADBDCDEDFE0E1E2E3E4E6",
      INIT_7E => X"9A9C9D9E9FA1A2A3A4A6A7A8A9ABACADAEB0B1B2B3B4B6B7B8B9BABCBDBEBFC0",
      INIT_7F => X"717274757678797A7C7D7E7F818283858687898A8B8C8E8F9091939495979899",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => douta_array(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => doutb_array(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_0\,
      ENBWREN => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_1\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ena,
      I1 => addra(12),
      O => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enb,
      I1 => addrb(12),
      O => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000",
      INITP_02 => X"FFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000007FFFFFF",
      INITP_03 => X"00000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"FFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"0000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000",
      INITP_09 => X"00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"00000000000000000000000000000000000000000000000000000000FFFFFFFF",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"4547484A4B4C4E4F515253555657595A5B5D5E60616264656668696A6C6D6E70",
      INIT_01 => X"181A1B1C1E1F212224252728292B2C2E2F303233353638393A3C3D3F40414344",
      INIT_02 => X"E9EBECEEEFF1F2F3F5F6F8F9FBFCFEFF0102040507080A0B0D0E0F1112141517",
      INIT_03 => X"B8BABBBDBFC0C2C3C5C6C8C9CBCCCECFD1D2D4D5D7D8DADCDDDFE0E2E3E5E6E8",
      INIT_04 => X"8688898B8D8E909193949698999B9C9E9FA1A3A4A6A7A9AAACADAFB1B2B4B5B7",
      INIT_05 => X"53545658595B5C5E606163656668696B6D6E707173757678797B7D7E80818385",
      INIT_06 => X"1E2021232526282A2B2D2F3032343537393A3C3E3F4142444647494B4C4E4F51",
      INIT_07 => X"E9EAECEEEFF1F3F4F6F8F9FBFDFE0002040507090A0C0E0F1113141618191B1D",
      INIT_08 => X"B2B4B6B7B9BBBDBEC0C2C3C5C7C8CACCCECFD1D3D4D6D8D9DBDDDEE0E2E4E5E7",
      INIT_09 => X"7B7D7F8082848687898B8D8E9092939597999A9C9E9FA1A3A5A6A8AAABADAFB1",
      INIT_0A => X"444647494B4D4E5052535557595A5C5E6061636567686A6C6D6F71737476787A",
      INIT_0B => X"0C0E1011131517181A1C1E1F21232526282A2C2D2F3132343638393B3D3F4042",
      INIT_0C => X"D4D6D8DADBDDDFE1E2E4E6E8E9EBEDEEF0F2F4F5F7F9FBFCFE0002030507090A",
      INIT_0D => X"9D9EA0A2A3A5A7A9AAACAEB0B1B3B5B7B8BABCBEBFC1C3C5C6C8CACCCDCFD1D3",
      INIT_0E => X"6567686A6C6E6F71737576787A7C7D7F8182848688898B8D8F9092949697999B",
      INIT_0F => X"2E3031333536383A3C3D3F4142444648494B4D4F5052545557595B5C5E606263",
      INIT_10 => X"F7F9FBFCFE0001030507080A0C0D0F1112141618191B1D1E2022242527292A2C",
      INIT_11 => X"C1C3C5C6C8CACBCDCFD1D2D4D6D7D9DBDCDEE0E1E3E5E6E8EAEBEDEFF1F2F4F6",
      INIT_12 => X"8D8E9091939596989A9B9D9FA0A2A4A5A7A9AAACAEAFB1B2B4B6B7B9BBBCBEC0",
      INIT_13 => X"595A5C5E5F6162646667696A6C6E6F7173747677797B7C7E808183848688898B",
      INIT_14 => X"2628292B2C2E303133343637393B3C3E3F4142444647494A4C4E4F5152545657",
      INIT_15 => X"F5F7F8FAFBFDFE000103040607090A0C0D0F1012141517181A1B1D1E20222325",
      INIT_16 => X"C5C7C8CACBCDCED0D1D3D4D6D7D9DADCDDDEE0E1E3E4E6E7E9EAECEDEFF0F2F4",
      INIT_17 => X"97999A9C9D9FA0A1A3A4A6A7A8AAABADAEB0B1B3B4B5B7B8BABBBDBEC0C1C2C4",
      INIT_18 => X"6B6D6E6F717274757678797A7C7D7E808183848587888A8B8C8E8F9092939596",
      INIT_19 => X"414344454648494A4C4D4E50515253555657595A5B5D5E5F616263656667696A",
      INIT_1A => X"191B1C1D1E1F21222324262728292B2C2D2E30313233353637383A3B3C3E3F40",
      INIT_1B => X"F4F5F6F7F8F9FBFCFDFEFF00020304050607090A0B0C0D0F1011121315161718",
      INIT_1C => X"D0D1D2D3D5D6D7D8D9DADBDCDDDEDFE1E2E3E4E5E6E7E8E9EBECEDEEEFF0F1F3",
      INIT_1D => X"AFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEC0C1C2C3C4C5C6C7C8C9CACBCCCDCECF",
      INIT_1E => X"919293949596979798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9A9AAABACADAE",
      INIT_1F => X"75767778797A7A7B7C7D7E7F7F80818283848585868788898A8B8C8D8D8E8F90",
      INIT_20 => X"5C5D5E5F5F606162626364656566676869696A6B6C6C6D6E6F70707172737475",
      INIT_21 => X"46474848494A4A4B4C4C4D4E4E4F50505152525354555556575758595A5A5B5C",
      INIT_22 => X"3334343535363737383839393A3B3B3C3C3D3E3E3F3F40414142434344444546",
      INIT_23 => X"23232424252526262727282829292A2A2B2B2C2C2D2D2E2E2F2F303031323233",
      INIT_24 => X"161616171718181819191A1A1A1B1B1C1C1C1D1D1E1E1E1F1F20202121222222",
      INIT_25 => X"0C0C0C0C0D0D0D0E0E0E0E0F0F0F101010111111121212131313141414151515",
      INIT_26 => X"040505050505060606060607070707070808080809090909090A0A0A0A0B0B0B",
      INIT_27 => X"0001010101010101010101010202020202020202030303030303030404040404",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0202020101010101010101010101000000000000000000000000000000000000",
      INIT_2A => X"0707070706060606060505050505040404040404030303030303030202020202",
      INIT_2B => X"100F0F0F0E0E0E0E0D0D0D0C0C0C0C0B0B0B0A0A0A0A09090909090808080807",
      INIT_2C => X"1B1B1A1A1A191918181817171616161515151414141313131212121111111010",
      INIT_2D => X"2A2929282827272626252524242323222222212120201F1F1E1E1E1D1D1C1C1C",
      INIT_2E => X"3B3B3A3939383837373635353434333332323130302F2F2E2E2D2D2C2C2B2B2A",
      INIT_2F => X"504F4E4E4D4C4C4B4A4A4948484746464544444343424141403F3F3E3E3D3C3C",
      INIT_30 => X"676665656463626261605F5F5E5D5C5C5B5A5A59585757565555545352525150",
      INIT_31 => X"81807F7F7E7D7C7B7A7A7978777675757473727170706F6E6D6C6C6B6A696968",
      INIT_32 => X"9E9D9C9B9A99989797969594939291908F8E8D8D8C8B8A898887868585848382",
      INIT_33 => X"BDBCBBBAB9B8B7B6B5B4B3B2B1B0AFAEADACABAAA9A9A8A7A6A5A4A3A2A1A09F",
      INIT_34 => X"DFDEDDDCDBDAD9D8D7D6D5D3D2D1D0CFCECDCCCBCAC9C8C7C6C5C4C3C2C1C0BE",
      INIT_35 => X"04030200FFFEFDFCFBF9F8F7F6F5F4F3F1F0EFEEEDECEBE9E8E7E6E5E4E3E2E1",
      INIT_36 => X"2B29282726242322211F1E1D1C1B1918171615131211100F0D0C0B0A09070605",
      INIT_37 => X"535251504E4D4C4A49484645444341403F3E3C3B3A38373635333231302E2D2C",
      INIT_38 => X"7E7D7C7A797876757472716F6E6D6B6A696766656362615F5E5D5B5A59575655",
      INIT_39 => X"ABAAA8A7A6A4A3A1A09F9D9C9A999796959392908F8E8C8B8A88878584838180",
      INIT_3A => X"DAD9D7D6D4D3D1D0CECDCBCAC8C7C5C4C2C1C0BEBDBBBAB8B7B5B4B3B1B0AEAD",
      INIT_3B => X"0A09070604030100FEFDFBFAF8F7F5F3F2F0EFEDECEAE9E7E6E4E3E1E0DEDDDC",
      INIT_3C => X"3C3B393736343331302E2C2B292826252322201E1D1B1A1817151412100F0D0C",
      INIT_3D => X"6F6E6C6A6967666462615F5E5C5A5957565452514F4E4C4A4947464442413F3E",
      INIT_3E => X"A4A2A09F9D9B9A9896959391908E8D8B898886848381807E7C7B797776747371",
      INIT_3F => X"D9D7D6D4D2D1CFCDCBCAC8C6C5C3C1C0BEBCBBB9B7B6B4B2B1AFAEACAAA9A7A5",
      INIT_40 => X"0F0D0C0A080705030100FEFCFBF9F7F6F4F2F1EFEDEBEAE8E6E5E3E1E0DEDCDB",
      INIT_41 => X"464442413F3D3C3A3836353331302E2C2A2927252422201E1D1B191816141211",
      INIT_42 => X"7D7C7A78767573716F6E6C6A6867656362605E5C5B5957555452504F4D4B4948",
      INIT_43 => X"B5B3B1B0AEACAAA9A7A5A3A2A09E9D9B9997969492908F8D8B8988868482817F",
      INIT_44 => X"EDEBE9E7E6E4E2E1DFDDDBDAD8D6D4D3D1CFCDCCCAC8C6C5C3C1BFBEBCBAB8B7",
      INIT_45 => X"2523211F1E1C1A1817151311100E0C0A090705030200FEFCFBF9F7F5F4F2F0EE",
      INIT_46 => X"5C5A5957555352504E4D4B4947464442403F3D3B3938363432312F2D2C2A2826",
      INIT_47 => X"9392908E8D8B8987868482807F7D7B7A78767473716F6D6C6A6867656361605E",
      INIT_48 => X"CAC8C7C5C3C2C0BEBDBBB9B7B6B4B2B1AFADABAAA8A6A5A3A19F9E9C9A999795",
      INIT_49 => X"00FEFDFBF9F8F6F4F3F1EFEEECEAE9E7E5E4E2E0DEDDDBD9D8D6D4D3D1CFCECC",
      INIT_4A => X"353432302F2D2B2A2826252321201E1D1B1918161413110F0E0C0A0907050402",
      INIT_4B => X"696866656361605E5C5B5958565453514F4E4C4B4947464442413F3E3C3A3937",
      INIT_4C => X"9C9B999896949391908E8D8B898886858381807E7D7B797876757371706E6D6B",
      INIT_4D => X"CECCCBC9C8C6C5C3C2C0BFBDBBBAB8B7B5B4B2B1AFADACAAA9A7A6A4A3A19F9E",
      INIT_4E => X"FEFCFBF9F8F6F5F3F2F1EFEEECEBE9E8E6E5E3E2E0DFDDDCDAD8D7D5D4D2D1CF",
      INIT_4F => X"2C2B292827252422211F1E1C1B1A1817151412110F0E0D0B0A080705040201FF",
      INIT_50 => X"595756555352514F4E4C4B4A484745444341403F3D3C3A393836353332302F2E",
      INIT_51 => X"8382817F7E7D7C7A79787675747271706E6D6C6A69686665646261605E5D5B5A",
      INIT_52 => X"ACABA9A8A7A6A4A3A2A19F9E9D9C9A99989795949391908F8E8C8B8A89878685",
      INIT_53 => X"D2D1D0CFCDCCCBCAC9C8C6C5C4C3C2C0BFBEBDBCBAB9B8B7B6B4B3B2B1B0AEAD",
      INIT_54 => X"F6F5F4F3F2F1F0EEEDECEBEAE9E8E7E6E4E3E2E1E0DFDEDCDBDAD9D8D7D6D4D3",
      INIT_55 => X"18171615141312110F0E0D0C0B0A09080706050403020100FFFEFDFCFAF9F8F7",
      INIT_56 => X"37363534333231302F2E2D2C2B2A29282726262524232221201F1E1D1C1B1A19",
      INIT_57 => X"53525150504F4E4D4C4B4A4A49484746454443424241403F3E3D3C3B3A393838",
      INIT_58 => X"6D6C6B6A6A6968676666656463636261605F5F5E5D5C5B5A5A59585756555554",
      INIT_59 => X"8383828181807F7F7E7D7D7C7B7A7A79787877767575747373727170706F6E6D",
      INIT_5A => X"97979696959494939392919190908F8E8E8D8C8C8B8B8A898988878786858584",
      INIT_5B => X"A8A8A7A7A6A6A5A5A4A4A3A3A2A2A1A1A0A09F9F9E9D9D9C9C9B9B9A9A999898",
      INIT_5C => X"B6B6B5B5B5B4B4B3B3B3B2B2B1B1B1B0B0AFAFAEAEADADADACACABABAAAAA9A9",
      INIT_5D => X"C1C1C1C0C0C0BFBFBFBEBEBEBDBDBDBCBCBCBBBBBBBABABAB9B9B9B8B8B7B7B7",
      INIT_5E => X"C9C9C9C8C8C8C8C8C7C7C7C7C6C6C6C6C6C5C5C5C5C4C4C4C3C3C3C3C2C2C2C1",
      INIT_5F => X"CECECECECDCDCDCDCDCDCDCDCCCCCCCCCCCCCCCBCBCBCBCBCBCACACACACAC9C9",
      INIT_60 => X"CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCECECECECECECE",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => douta_array(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => doutb_array(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    \addrb[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0202020202020202020202020202020202020101010101010101010101010101",
      INIT_01 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_02 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_03 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_04 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_05 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_06 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_07 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_08 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_09 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_0A => X"0303030303030303030303030303030303030303030303030303030202020202",
      INIT_0B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_10 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_11 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_12 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_13 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_14 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_15 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_16 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_17 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_18 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_19 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_20 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_21 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_22 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_23 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_24 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_25 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_26 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_27 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_28 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_29 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2E => X"0202020202020202020202020202020202020202020202020202020203030303",
      INIT_2F => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_30 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_31 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_32 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_33 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_34 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_35 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_36 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_37 => X"0101010101020202020202020202020202020202020202020202020202020202",
      INIT_38 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_39 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3A => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3B => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3C => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3D => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3E => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3F => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_40 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_41 => X"0000000000000000000000000000000000000001010101010101010101010101",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0101010101010101010101010101010101010101000000000000000000000000",
      INIT_68 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_69 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_6A => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_6B => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_6C => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_6D => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_6E => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_6F => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_70 => X"0303030303030303030303030303030301010101010101010101010101010101",
      INIT_71 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_72 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_73 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_74 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_75 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_76 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_77 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_78 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_79 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_7A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_7B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_7C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_7D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_7E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_7F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45\,
      DOADO(6 downto 0) => douta_array(6 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77\,
      DOBDO(6 downto 0) => doutb_array(6 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => \addrb[12]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ena_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \^ena_array\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^enb_array\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  ena_array(0) <= \^ena_array\(0);
  enb_array(0) <= \^enb_array\(0);
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_01 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_02 => X"0202020202020202020202020202020203030303030303030303030303030303",
      INIT_03 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_04 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_05 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_06 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_07 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_08 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_09 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_0A => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_0B => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_0C => X"0101010101010101010101010101010101010101010101010102020202020202",
      INIT_0D => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_0E => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_0F => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_10 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_11 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_12 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_13 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_14 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_15 => X"0000000000000001010101010101010101010101010101010101010101010101",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0101010101010101000000000000000000000000000000000000000000000000",
      INIT_3C => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3D => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3E => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_3F => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_40 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_41 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_42 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_43 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_44 => X"0101010101010101010101010101010101010101010101010101010101010101",
      INIT_45 => X"0202020202020202020202020202020202020202020201010101010101010101",
      INIT_46 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_47 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_48 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_49 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_4A => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_4B => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_4C => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_4D => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_4E => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_4F => X"0303030303030303030303030303030303030303030303030303030303030302",
      INIT_50 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_51 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_52 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_53 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_54 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_55 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_56 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_57 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_58 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_59 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_5A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_5B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_5C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_5D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_5E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_5F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_60 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45\,
      DOADO(6 downto 0) => douta_array(6 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77\,
      DOBDO(6 downto 0) => doutb_array(6 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^ena_array\(0),
      ENBWREN => \^enb_array\(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addra(12),
      I1 => ena,
      O => \^ena_array\(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addrb(12),
      I1 => enb,
      O => \^enb_array\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos_blk_mem_gen_prim_width is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram_sin_cos_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end bram_sin_cos_blk_mem_gen_prim_width;

architecture STRUCTURE of bram_sin_cos_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.bram_sin_cos_blk_mem_gen_prim_wrapper_init
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\,
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      douta_array(8 downto 0) => douta_array(8 downto 0),
      doutb_array(8 downto 0) => doutb_array(8 downto 0),
      ena => ena,
      enb => enb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram_sin_cos_blk_mem_gen_prim_width__parameterized0\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram_sin_cos_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \bram_sin_cos_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \bram_sin_cos_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      douta_array(8 downto 0) => douta_array(8 downto 0),
      doutb_array(8 downto 0) => doutb_array(8 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      enb => enb,
      enb_array(0) => enb_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram_sin_cos_blk_mem_gen_prim_width__parameterized1\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    \addrb[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram_sin_cos_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \bram_sin_cos_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \bram_sin_cos_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[12]\ => \addrb[12]\,
      clka => clka,
      clkb => clkb,
      douta_array(6 downto 0) => douta_array(6 downto 0),
      doutb_array(6 downto 0) => doutb_array(6 downto 0),
      ena => ena,
      enb => enb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram_sin_cos_blk_mem_gen_prim_width__parameterized2\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ena_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram_sin_cos_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \bram_sin_cos_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \bram_sin_cos_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\bram_sin_cos_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      douta_array(6 downto 0) => douta_array(6 downto 0),
      doutb_array(6 downto 0) => doutb_array(6 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      enb => enb,
      enb_array(0) => enb_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram_sin_cos_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end bram_sin_cos_blk_mem_gen_generic_cstr;

architecture STRUCTURE of bram_sin_cos_blk_mem_gen_generic_cstr is
  signal douta_array : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal doutb_array : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ena_array : STD_LOGIC_VECTOR ( 1 to 1 );
  signal enb_array : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \ramloop[0].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[0].ram.r_n_19\ : STD_LOGIC;
begin
\has_mux_a.A\: entity work.bram_sin_cos_blk_mem_gen_mux
     port map (
      addra(0) => addra(12),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      douta_array(31 downto 0) => douta_array(31 downto 0),
      ena => ena
    );
\has_mux_b.B\: entity work.\bram_sin_cos_blk_mem_gen_mux__parameterized0\
     port map (
      addrb(0) => addrb(12),
      clkb => clkb,
      doutb(15 downto 0) => doutb(15 downto 0),
      doutb_array(31 downto 0) => doutb_array(31 downto 0),
      enb => enb
    );
\ramloop[0].ram.r\: entity work.bram_sin_cos_blk_mem_gen_prim_width
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => \ramloop[0].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \ramloop[0].ram.r_n_19\,
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      douta_array(8 downto 0) => douta_array(8 downto 0),
      doutb_array(8 downto 0) => doutb_array(8 downto 0),
      ena => ena,
      enb => enb
    );
\ramloop[1].ram.r\: entity work.\bram_sin_cos_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      douta_array(8 downto 0) => douta_array(24 downto 16),
      doutb_array(8 downto 0) => doutb_array(24 downto 16),
      ena => ena,
      ena_array(0) => ena_array(1),
      enb => enb,
      enb_array(0) => enb_array(1)
    );
\ramloop[2].ram.r\: entity work.\bram_sin_cos_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[0].ram.r_n_18\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[12]\ => \ramloop[0].ram.r_n_19\,
      clka => clka,
      clkb => clkb,
      douta_array(6 downto 0) => douta_array(15 downto 9),
      doutb_array(6 downto 0) => doutb_array(15 downto 9),
      ena => ena,
      enb => enb
    );
\ramloop[3].ram.r\: entity work.\bram_sin_cos_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      douta_array(6 downto 0) => douta_array(31 downto 25),
      doutb_array(6 downto 0) => doutb_array(31 downto 25),
      ena => ena,
      ena_array(0) => ena_array(1),
      enb => enb,
      enb_array(0) => enb_array(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram_sin_cos_blk_mem_gen_top : entity is "blk_mem_gen_top";
end bram_sin_cos_blk_mem_gen_top;

architecture STRUCTURE of bram_sin_cos_blk_mem_gen_top is
begin
\valid.cstr\: entity work.bram_sin_cos_blk_mem_gen_generic_cstr
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram_sin_cos_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end bram_sin_cos_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of bram_sin_cos_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.bram_sin_cos_blk_mem_gen_top
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 13;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 13;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     9.3056 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "kintex7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "bram_sin_cos.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "bram_sin_cos.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 7200;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 7200;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 7200;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 7200;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "kintex7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bram_sin_cos_blk_mem_gen_v8_4_1 : entity is "yes";
end bram_sin_cos_blk_mem_gen_v8_4_1;

architecture STRUCTURE of bram_sin_cos_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.bram_sin_cos_blk_mem_gen_v8_4_1_synth
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram_sin_cos is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bram_sin_cos : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bram_sin_cos : entity is "bram_sin_cos,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bram_sin_cos : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bram_sin_cos : entity is "blk_mem_gen_v8_4_1,Vivado 2017.4";
end bram_sin_cos;

architecture STRUCTURE of bram_sin_cos is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 13;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 13;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     9.3056 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintex7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "bram_sin_cos.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "bram_sin_cos.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 4;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 7200;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 7200;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 7200;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 7200;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "kintex7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of enb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
begin
U0: entity work.bram_sin_cos_blk_mem_gen_v8_4_1
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(12 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(12 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(12 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(12 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
