onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+CLK_PLL -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.CLK_PLL xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {CLK_PLL.udo}

run -all

endsim

quit -force
