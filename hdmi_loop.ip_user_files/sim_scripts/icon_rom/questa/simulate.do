onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib icon_rom_opt

do {wave.do}

view wave
view structure
view signals

do {icon_rom.udo}

run -all

quit -force
