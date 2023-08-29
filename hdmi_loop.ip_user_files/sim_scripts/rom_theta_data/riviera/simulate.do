onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+rom_theta_data -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rom_theta_data xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {rom_theta_data.udo}

run -all

endsim

quit -force
