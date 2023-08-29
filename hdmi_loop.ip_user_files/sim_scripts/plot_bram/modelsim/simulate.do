onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.plot_bram xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {plot_bram.udo}

run -all

quit -force
