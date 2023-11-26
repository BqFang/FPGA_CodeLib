-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/vivado2018/APP/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/vivado2018/APP/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../led.srcs/sources_1/ip/CLK_PLL/CLK_PLL_clk_wiz.v" \
  "../../../../led.srcs/sources_1/ip/CLK_PLL/CLK_PLL.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

