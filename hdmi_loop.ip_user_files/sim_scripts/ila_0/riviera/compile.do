vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ipcores/ila_0/hdl/verilog" "+incdir+../../../../ipcores/ila_0/hdl/verilog" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ipcores/ila_0/hdl/verilog" "+incdir+../../../../ipcores/ila_0/hdl/verilog" \
"../../../../ipcores/ila_0/sim/ila_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

