set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]
set_property PACKAGE_PIN AE10 [get_ports sys_clk_p]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN Y28 [get_ports {led[0]}]
set_property PACKAGE_PIN AA28 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key[0]}]
set_property PACKAGE_PIN AD24 [get_ports {key[0]}]
create_clock -period 5.000 -name sys_clk_p -waveform {0.000 2.500} [get_ports sys_clk_p]
#create_clock -period 6.667 -name vin1_clk -waveform {0.000 3.334} [get_ports vin1_clk]

set_property PACKAGE_PIN W27 [get_ports hdmi1_nreset]
set_property PACKAGE_PIN AD23 [get_ports hdmi2_nreset]
set_property PACKAGE_PIN Y30 [get_ports hdmi1_scl]
set_property PACKAGE_PIN AA30 [get_ports hdmi1_sda]
set_property PACKAGE_PIN AD28 [get_ports hdmi2_scl]
set_property PACKAGE_PIN AD27 [get_ports hdmi2_sda]

set_property IOSTANDARD LVCMOS33 [get_ports hdmi1_nreset]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi2_nreset]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi1_scl]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi1_sda]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi2_scl]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi2_sda]

set_property PACKAGE_PIN AF26 [get_ports {vin1_data[0]}]
set_property PACKAGE_PIN K21 [get_ports {vin1_data[1]}]
set_property PACKAGE_PIN L21 [get_ports {vin1_data[2]}]
set_property PACKAGE_PIN N27 [get_ports {vin1_data[3]}]
set_property PACKAGE_PIN M27 [get_ports {vin1_data[4]}]
set_property PACKAGE_PIN M20 [get_ports {vin1_data[5]}]
set_property PACKAGE_PIN L20 [get_ports {vin1_data[6]}]
set_property PACKAGE_PIN J21 [get_ports {vin1_data[7]}]
set_property PACKAGE_PIN J22 [get_ports {vin1_data[8]}]
set_property PACKAGE_PIN L30 [get_ports {vin1_data[9]}]
set_property PACKAGE_PIN K30 [get_ports {vin1_data[10]}]
set_property PACKAGE_PIN N21 [get_ports {vin1_data[11]}]
set_property PACKAGE_PIN N22 [get_ports {vin1_data[12]}]
set_property PACKAGE_PIN L25 [get_ports {vin1_data[13]}]
set_property PACKAGE_PIN K25 [get_ports {vin1_data[14]}]
set_property PACKAGE_PIN P23 [get_ports {vin1_data[15]}]
set_property PACKAGE_PIN N24 [get_ports {vin1_data[16]}]
set_property PACKAGE_PIN K23 [get_ports {vin1_data[17]}]
set_property PACKAGE_PIN K24 [get_ports {vin1_data[18]}]
set_property PACKAGE_PIN M22 [get_ports {vin1_data[19]}]
set_property PACKAGE_PIN M23 [get_ports {vin1_data[20]}]
set_property PACKAGE_PIN J27 [get_ports {vin1_data[21]}]
set_property PACKAGE_PIN J28 [get_ports {vin1_data[22]}]
set_property PACKAGE_PIN J29 [get_ports {vin1_data[23]}]
set_property PACKAGE_PIN H29 [get_ports {vin1_data[24]}]
set_property PACKAGE_PIN M24 [get_ports {vin1_data[25]}]
set_property PACKAGE_PIN M25 [get_ports {vin1_data[26]}]
set_property PACKAGE_PIN L27 [get_ports {vin1_data[27]}]
set_property PACKAGE_PIN N29 [get_ports {vin1_data[28]}]
set_property PACKAGE_PIN N30 [get_ports {vin1_data[29]}]
set_property PACKAGE_PIN N19 [get_ports {vin1_data[30]}]
set_property PACKAGE_PIN N20 [get_ports {vin1_data[31]}]
set_property PACKAGE_PIN M29 [get_ports {vin1_data[32]}]
set_property PACKAGE_PIN M30 [get_ports {vin1_data[33]}]
set_property PACKAGE_PIN P21 [get_ports {vin1_data[34]}]
set_property PACKAGE_PIN P22 [get_ports {vin1_data[35]}]
set_property PACKAGE_PIN K29 [get_ports {vin1_data[36]}]
set_property PACKAGE_PIN K28 [get_ports {vin1_data[37]}]
set_property PACKAGE_PIN L22 [get_ports {vin1_data[38]}]
set_property PACKAGE_PIN L23 [get_ports {vin1_data[39]}]
set_property PACKAGE_PIN N25 [get_ports {vin1_data[40]}]
set_property PACKAGE_PIN N26 [get_ports {vin1_data[41]}]
set_property PACKAGE_PIN J23 [get_ports {vin1_data[42]}]
set_property PACKAGE_PIN J24 [get_ports {vin1_data[43]}]
set_property PACKAGE_PIN K26 [get_ports {vin1_data[44]}]
set_property PACKAGE_PIN J26 [get_ports {vin1_data[45]}]
set_property PACKAGE_PIN M28 [get_ports {vin1_data[46]}]
set_property PACKAGE_PIN L28 [get_ports {vin1_data[47]}]
set_property PACKAGE_PIN AF27 [get_ports vin1_de]
set_property PACKAGE_PIN F15 [get_ports hdmi1_edid_scl]
set_property PACKAGE_PIN E16 [get_ports hdmi1_edid_sda]
set_property PACKAGE_PIN AF30 [get_ports vin1_hs]
set_property PACKAGE_PIN L26 [get_ports vin1_clk]
set_property PACKAGE_PIN AE30 [get_ports vin1_vs]


set_property IOSTANDARD LVCMOS33 [get_ports {vin1_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports vin1_clk]
set_property IOSTANDARD LVCMOS33 [get_ports vin1_hs]
set_property IOSTANDARD LVCMOS33 [get_ports vin1_vs]
set_property IOSTANDARD LVCMOS33 [get_ports vin1_de]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi1_edid_scl]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi1_edid_sda]

set_property PACKAGE_PIN C24 [get_ports {vin2_data[0]}]
set_property PACKAGE_PIN B25 [get_ports {vin2_data[1]}]
set_property PACKAGE_PIN C25 [get_ports {vin2_data[2]}]
set_property PACKAGE_PIN A26 [get_ports {vin2_data[3]}]
set_property PACKAGE_PIN A25 [get_ports {vin2_data[4]}]
set_property PACKAGE_PIN C26 [get_ports {vin2_data[5]}]
set_property PACKAGE_PIN D26 [get_ports {vin2_data[6]}]
set_property PACKAGE_PIN C27 [get_ports {vin2_data[7]}]
set_property PACKAGE_PIN D27 [get_ports {vin2_data[8]}]
set_property PACKAGE_PIN G27 [get_ports {vin2_data[9]}]
set_property PACKAGE_PIN F27 [get_ports {vin2_data[10]}]
set_property PACKAGE_PIN F28 [get_ports {vin2_data[11]}]
set_property PACKAGE_PIN G28 [get_ports {vin2_data[12]}]
set_property PACKAGE_PIN B28 [get_ports {vin2_data[13]}]
set_property PACKAGE_PIN A28 [get_ports {vin2_data[14]}]
set_property PACKAGE_PIN C29 [get_ports {vin2_data[15]}]
set_property PACKAGE_PIN B29 [get_ports {vin2_data[16]}]
set_property PACKAGE_PIN H25 [get_ports {vin2_data[17]}]
set_property PACKAGE_PIN H24 [get_ports {vin2_data[18]}]
set_property PACKAGE_PIN A23 [get_ports {vin2_data[19]}]
set_property PACKAGE_PIN B23 [get_ports {vin2_data[20]}]
set_property PACKAGE_PIN E23 [get_ports {vin2_data[21]}]
set_property PACKAGE_PIN D23 [get_ports {vin2_data[22]}]
set_property PACKAGE_PIN G24 [get_ports {vin2_data[23]}]
set_property PACKAGE_PIN G23 [get_ports {vin2_data[24]}]
set_property PACKAGE_PIN A27 [get_ports {vin2_data[25]}]
set_property PACKAGE_PIN B27 [get_ports {vin2_data[26]}]
set_property PACKAGE_PIN E30 [get_ports {vin2_data[27]}]
set_property PACKAGE_PIN E29 [get_ports {vin2_data[28]}]
set_property PACKAGE_PIN D28 [get_ports {vin2_data[29]}]
set_property PACKAGE_PIN F30 [get_ports {vin2_data[30]}]
set_property PACKAGE_PIN G29 [get_ports {vin2_data[31]}]
set_property PACKAGE_PIN F26 [get_ports {vin2_data[32]}]
set_property PACKAGE_PIN E26 [get_ports {vin2_data[33]}]
set_property PACKAGE_PIN G30 [get_ports {vin2_data[34]}]
set_property PACKAGE_PIN H30 [get_ports {vin2_data[35]}]
set_property PACKAGE_PIN H27 [get_ports {vin2_data[36]}]
set_property PACKAGE_PIN H26 [get_ports {vin2_data[37]}]
set_property PACKAGE_PIN B30 [get_ports {vin2_data[38]}]
set_property PACKAGE_PIN A30 [get_ports {vin2_data[39]}]
set_property PACKAGE_PIN K20 [get_ports {vin2_data[40]}]
set_property PACKAGE_PIN K19 [get_ports {vin2_data[41]}]
set_property PACKAGE_PIN J19 [get_ports {vin2_data[42]}]
set_property PACKAGE_PIN H19 [get_ports {vin2_data[43]}]
set_property PACKAGE_PIN J17 [get_ports {vin2_data[44]}]
set_property PACKAGE_PIN H17 [get_ports {vin2_data[45]}]
set_property PACKAGE_PIN H22 [get_ports {vin2_data[46]}]
set_property PACKAGE_PIN H21 [get_ports {vin2_data[47]}]
set_property PACKAGE_PIN B24 [get_ports vin2_de]
set_property PACKAGE_PIN B14 [get_ports hdmi2_edid_scl]
set_property PACKAGE_PIN A15 [get_ports hdmi2_edid_sda]
set_property PACKAGE_PIN C30 [get_ports vin2_hs]
set_property PACKAGE_PIN E28 [get_ports vin2_clk]
set_property PACKAGE_PIN D29 [get_ports vin2_vs]

set_property IOSTANDARD LVCMOS33 [get_ports {vin2_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports vin2_clk]
set_property IOSTANDARD LVCMOS33 [get_ports vin2_hs]
set_property IOSTANDARD LVCMOS33 [get_ports vin2_vs]
set_property IOSTANDARD LVCMOS33 [get_ports vin2_de]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi2_edid_scl]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi2_edid_sda]

set_property PACKAGE_PIN E21 [get_ports vout1_clk]
set_property PACKAGE_PIN E20 [get_ports {vout1_data[0]}]
set_property PACKAGE_PIN F20 [get_ports {vout1_data[1]}]
set_property PACKAGE_PIN B22 [get_ports {vout1_data[2]}]
set_property PACKAGE_PIN A22 [get_ports {vout1_data[3]}]
set_property PACKAGE_PIN D18 [get_ports {vout1_data[4]}]
set_property PACKAGE_PIN D17 [get_ports {vout1_data[5]}]
set_property PACKAGE_PIN A21 [get_ports {vout1_data[6]}]
set_property PACKAGE_PIN A20 [get_ports {vout1_data[7]}]
set_property PACKAGE_PIN A17 [get_ports {vout1_data[8]}]
set_property PACKAGE_PIN A16 [get_ports {vout1_data[9]}]
set_property PACKAGE_PIN D19 [get_ports {vout1_data[10]}]
set_property PACKAGE_PIN E19 [get_ports {vout1_data[11]}]
set_property PACKAGE_PIN C16 [get_ports {vout1_data[12]}]
set_property PACKAGE_PIN D16 [get_ports {vout1_data[13]}]
set_property PACKAGE_PIN L17 [get_ports {vout1_data[14]}]
set_property PACKAGE_PIN L18 [get_ports {vout1_data[15]}]
set_property PACKAGE_PIN C17 [get_ports {vout1_data[16]}]
set_property PACKAGE_PIN B17 [get_ports {vout1_data[17]}]
set_property PACKAGE_PIN K18 [get_ports {vout1_data[18]}]
set_property PACKAGE_PIN J18 [get_ports {vout1_data[19]}]
set_property PACKAGE_PIN A18 [get_ports {vout1_data[20]}]
set_property PACKAGE_PIN B18 [get_ports {vout1_data[21]}]
set_property PACKAGE_PIN D21 [get_ports {vout1_data[22]}]
set_property PACKAGE_PIN C21 [get_ports {vout1_data[23]}]
set_property PACKAGE_PIN C19 [get_ports {vout1_data[24]}]
set_property PACKAGE_PIN B19 [get_ports {vout1_data[25]}]
set_property PACKAGE_PIN F17 [get_ports {vout1_data[26]}]
set_property PACKAGE_PIN G17 [get_ports {vout1_data[27]}]
set_property PACKAGE_PIN B20 [get_ports {vout1_data[28]}]
set_property PACKAGE_PIN C20 [get_ports {vout1_data[29]}]
set_property PACKAGE_PIN C22 [get_ports {vout1_data[30]}]
set_property PACKAGE_PIN D22 [get_ports {vout1_data[31]}]
set_property PACKAGE_PIN F18 [get_ports {vout1_data[32]}]
set_property PACKAGE_PIN G18 [get_ports {vout1_data[33]}]
set_property PACKAGE_PIN G20 [get_ports {vout1_data[34]}]
set_property PACKAGE_PIN H20 [get_ports {vout1_data[35]}]
set_property PACKAGE_PIN G22 [get_ports vout1_de]
set_property PACKAGE_PIN F22 [get_ports vout1_hs]
set_property PACKAGE_PIN F21 [get_ports vout1_vs]


set_property IOSTANDARD LVTTL [get_ports vout1_clk]
set_property IOSTANDARD LVTTL [get_ports {vout1_data[*]}]
set_property IOSTANDARD LVTTL [get_ports vout1_de]
set_property IOSTANDARD LVTTL [get_ports vout1_hs]
set_property IOSTANDARD LVTTL [get_ports vout1_vs]
set_property SLEW FAST [get_ports {vout1_data[*]}]
set_property SLEW FAST [get_ports vout1_de]
set_property SLEW FAST [get_ports vout1_hs]
set_property SLEW FAST [get_ports vout1_vs]
set_property SLEW FAST [get_ports vout1_clk]

set_property DRIVE 24 [get_ports {vout1_data[*]}]
set_property DRIVE 24 [get_ports vout1_de]
set_property DRIVE 24 [get_ports vout1_hs]
set_property DRIVE 24 [get_ports vout1_vs]
set_property DRIVE 24 [get_ports vout1_clk]


set_property PACKAGE_PIN D14 [get_ports vout2_clk]
set_property PACKAGE_PIN G14 [get_ports {vout2_data[0]}]
set_property PACKAGE_PIN H14 [get_ports {vout2_data[1]}]
set_property PACKAGE_PIN E15 [get_ports {vout2_data[2]}]
set_property PACKAGE_PIN E14 [get_ports {vout2_data[3]}]
set_property PACKAGE_PIN H12 [get_ports {vout2_data[4]}]
set_property PACKAGE_PIN H11 [get_ports {vout2_data[5]}]
set_property PACKAGE_PIN F13 [get_ports {vout2_data[6]}]
set_property PACKAGE_PIN G13 [get_ports {vout2_data[7]}]
set_property PACKAGE_PIN J13 [get_ports {vout2_data[8]}]
set_property PACKAGE_PIN K13 [get_ports {vout2_data[9]}]
set_property PACKAGE_PIN K16 [get_ports {vout2_data[10]}]
set_property PACKAGE_PIN L16 [get_ports {vout2_data[11]}]
set_property PACKAGE_PIN K15 [get_ports {vout2_data[12]}]
set_property PACKAGE_PIN L15 [get_ports {vout2_data[13]}]
set_property PACKAGE_PIN L13 [get_ports {vout2_data[14]}]
set_property PACKAGE_PIN L12 [get_ports {vout2_data[15]}]
set_property PACKAGE_PIN K14 [get_ports {vout2_data[16]}]
set_property PACKAGE_PIN J14 [get_ports {vout2_data[17]}]
set_property PACKAGE_PIN L11 [get_ports {vout2_data[18]}]
set_property PACKAGE_PIN K11 [get_ports {vout2_data[19]}]
set_property PACKAGE_PIN H15 [get_ports {vout2_data[20]}]
set_property PACKAGE_PIN G15 [get_ports {vout2_data[21]}]
set_property PACKAGE_PIN J11 [get_ports {vout2_data[22]}]
set_property PACKAGE_PIN J12 [get_ports {vout2_data[23]}]
set_property PACKAGE_PIN J16 [get_ports {vout2_data[24]}]
set_property PACKAGE_PIN H16 [get_ports {vout2_data[25]}]
set_property PACKAGE_PIN F11 [get_ports {vout2_data[26]}]
set_property PACKAGE_PIN E11 [get_ports {vout2_data[27]}]
set_property PACKAGE_PIN D11 [get_ports {vout2_data[28]}]
set_property PACKAGE_PIN C11 [get_ports {vout2_data[29]}]
set_property PACKAGE_PIN C12 [get_ports {vout2_data[30]}]
set_property PACKAGE_PIN B12 [get_ports {vout2_data[31]}]
set_property PACKAGE_PIN C15 [get_ports {vout2_data[32]}]
set_property PACKAGE_PIN B15 [get_ports {vout2_data[33]}]
set_property PACKAGE_PIN A11 [get_ports {vout2_data[34]}]
set_property PACKAGE_PIN A12 [get_ports {vout2_data[35]}]
set_property PACKAGE_PIN A13 [get_ports vout2_de]
set_property PACKAGE_PIN B13 [get_ports vout2_hs]
set_property PACKAGE_PIN C14 [get_ports vout2_vs]

set_property IOSTANDARD LVTTL [get_ports vout2_clk]
set_property IOSTANDARD LVTTL [get_ports {vout2_data[*]}]
set_property IOSTANDARD LVTTL [get_ports vout2_de]
set_property IOSTANDARD LVTTL [get_ports vout2_hs]
set_property IOSTANDARD LVTTL [get_ports vout2_vs]
set_property SLEW FAST [get_ports {vout2_data[*]}]
set_property SLEW FAST [get_ports vout2_de]
set_property SLEW FAST [get_ports vout2_hs]
set_property SLEW FAST [get_ports vout2_vs]
set_property SLEW FAST [get_ports vout2_clk]
set_property DRIVE 24 [get_ports {vout2_data[*]}]
set_property DRIVE 24 [get_ports vout2_de]
set_property DRIVE 24 [get_ports vout2_hs]
set_property DRIVE 24 [get_ports vout2_vs]
set_property DRIVE 24 [get_ports vout2_clk]


create_clock -period 6.667 -name vin1_clk -waveform {0.000 1.667} [get_ports vin1_clk]
create_clock -period 6.667 -name vin2_clk -waveform {0.000 1.667} [get_ports vin2_clk]
create_clock -period 10.000 -name VIRTUAL_clk_out1_sys_pll -waveform {0.000 5.000}
set_input_delay -clock [get_clocks vin1_clk] -min -add_delay 1.500 [get_ports {vin1_data[*]}]
set_input_delay -clock [get_clocks vin1_clk] -max -add_delay 3.500 [get_ports {vin1_data[*]}]
set_input_delay -clock [get_clocks vin2_clk] -min -add_delay 1.500 [get_ports {vin2_data[*]}]
set_input_delay -clock [get_clocks vin2_clk] -max -add_delay 3.500 [get_ports {vin2_data[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi1_edid_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi1_edid_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi1_edid_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi1_edid_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi1_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi1_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi1_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi1_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi2_edid_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi2_edid_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi2_edid_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi2_edid_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi2_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi2_scl]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports hdmi2_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports hdmi2_sda]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay 1.500 [get_ports {key[0]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.500 [get_ports {key[0]}]
set_input_delay -clock [get_clocks vin1_clk] -min -add_delay 1.500 [get_ports vin1_de]
set_input_delay -clock [get_clocks vin1_clk] -max -add_delay 3.500 [get_ports vin1_de]
set_input_delay -clock [get_clocks vin1_clk] -min -add_delay 1.500 [get_ports vin1_hs]
set_input_delay -clock [get_clocks vin1_clk] -max -add_delay 3.500 [get_ports vin1_hs]
set_input_delay -clock [get_clocks vin1_clk] -min -add_delay 1.500 [get_ports vin1_vs]
set_input_delay -clock [get_clocks vin1_clk] -max -add_delay 3.500 [get_ports vin1_vs]
set_input_delay -clock [get_clocks vin2_clk] -min -add_delay 1.500 [get_ports vin2_de]
set_input_delay -clock [get_clocks vin2_clk] -max -add_delay 3.500 [get_ports vin2_de]
set_input_delay -clock [get_clocks vin2_clk] -min -add_delay 1.500 [get_ports vin2_hs]
set_input_delay -clock [get_clocks vin2_clk] -max -add_delay 3.500 [get_ports vin2_hs]
set_input_delay -clock [get_clocks vin2_clk] -min -add_delay 1.500 [get_ports vin2_vs]
set_input_delay -clock [get_clocks vin2_clk] -max -add_delay 3.500 [get_ports vin2_vs]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -9.000 [get_ports {led[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 11.000 [get_ports {led[*]}]
set_output_delay -clock [get_clocks vin2_clk] -min -add_delay -1.000 [get_ports {vout1_data[*]}]
set_output_delay -clock [get_clocks vin2_clk] -max -add_delay 3.000 [get_ports {vout1_data[*]}]
set_output_delay -clock [get_clocks vin1_clk] -min -add_delay -1.000 [get_ports {vout2_data[*]}]
set_output_delay -clock [get_clocks vin1_clk] -max -add_delay 3.000 [get_ports {vout2_data[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi1_edid_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi1_edid_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi1_nreset]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi1_nreset]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi1_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi1_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi1_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi1_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi2_edid_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi2_edid_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi2_nreset]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi2_nreset]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi2_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi2_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -min -add_delay -1.000 [get_ports hdmi2_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_out1_sys_pll] -max -add_delay 3.000 [get_ports hdmi2_sda]
set_output_delay -clock [get_clocks vin2_clk] -min -add_delay -1.000 [get_ports vout1_de]
set_output_delay -clock [get_clocks vin2_clk] -max -add_delay 3.000 [get_ports vout1_de]
set_output_delay -clock [get_clocks vin2_clk] -min -add_delay -1.000 [get_ports vout1_hs]
set_output_delay -clock [get_clocks vin2_clk] -max -add_delay 3.000 [get_ports vout1_hs]
set_output_delay -clock [get_clocks vin2_clk] -min -add_delay -1.000 [get_ports vout1_vs]
set_output_delay -clock [get_clocks vin2_clk] -max -add_delay 3.000 [get_ports vout1_vs]
set_output_delay -clock [get_clocks vin1_clk] -min -add_delay -1.000 [get_ports vout2_de]
set_output_delay -clock [get_clocks vin1_clk] -max -add_delay 3.000 [get_ports vout2_de]
set_output_delay -clock [get_clocks vin1_clk] -min -add_delay -1.000 [get_ports vout2_hs]
set_output_delay -clock [get_clocks vin1_clk] -max -add_delay 3.000 [get_ports vout2_hs]
set_output_delay -clock [get_clocks vin1_clk] -min -add_delay -1.000 [get_ports vout2_vs]
set_output_delay -clock [get_clocks vin1_clk] -max -add_delay 3.000 [get_ports vout2_vs]

set_false_path -from [get_clocks -of_objects [get_pins sys_pll_m0/inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks VIRTUAL_clk_out1_sys_pll]  
set_false_path -from [get_clocks VIRTUAL_clk_out1_sys_pll] -to [get_clocks -of_objects [get_pins sys_pll_m0/inst/mmcm_adv_inst/CLKOUT0]]
set_false_path -from [get_clocks vin1_clk] -to [get_clocks vin2_clk] 
set_false_path -from [get_clocks vin2_clk] -to [get_clocks vin1_clk] 
set_false_path -from [get_clocks -of_objects [get_pins sys_pll_m0/inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks vin1_clk]
set_false_path -from [get_clocks vin1_clk] -to [get_clocks -of_objects [get_pins sys_pll_m0/inst/mmcm_adv_inst/CLKOUT0]]

##############uart define###########################
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
set_property PACKAGE_PIN AA27 [get_ports uart_rx]
set_property PACKAGE_PIN W28 [get_ports uart_tx]
