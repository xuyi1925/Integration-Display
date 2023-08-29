onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bram_sin_cos_opt

do {wave.do}

view wave
view structure
view signals

do {bram_sin_cos.udo}

run -all

quit -force
