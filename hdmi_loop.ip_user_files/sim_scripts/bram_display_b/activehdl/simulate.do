onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+bram_display_b -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bram_display_b xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {bram_display_b.udo}

run -all

endsim

quit -force
