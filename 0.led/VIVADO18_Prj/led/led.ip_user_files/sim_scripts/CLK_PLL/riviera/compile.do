vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" \
"D:/vivado2018/APP/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/vivado2018/APP/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../led.srcs/sources_1/ip/CLK_PLL/CLK_PLL_clk_wiz.v" \
"../../../../led.srcs/sources_1/ip/CLK_PLL/CLK_PLL.v" \

vlog -work xil_defaultlib \
"glbl.v"

