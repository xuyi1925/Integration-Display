onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bram_display_a_opt

do {wave.do}

view wave
view structure
view signals

do {bram_display_a.udo}

run -all

quit -force
