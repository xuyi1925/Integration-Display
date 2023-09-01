-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Sep  1 15:06:20 2023
-- Host        : DESKTOP-IDDFDEU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub c:/Users/Yi/Desktop/FPGA/08_4_hdmi_loop/ipcores/ila_0/ila_0_stub.vhdl
-- Design      : ila_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end ila_0;

architecture stub of ila_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[7:0],probe1[31:0],probe2[11:0],probe3[11:0],probe4[11:0],probe5[11:0],probe6[19:0],probe7[19:0],probe8[19:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2017.4";
begin
end;
