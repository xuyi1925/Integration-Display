onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ppi_bg_opt

do {wave.do}

view wave
view structure
view signals

do {ppi_bg.udo}

run -all

quit -force
