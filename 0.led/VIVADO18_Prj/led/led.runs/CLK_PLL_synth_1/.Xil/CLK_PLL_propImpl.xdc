set_property SRC_FILE_INFO {cfile:e:/Qi_FPGA/prj/0.led/VIVADO18_Prj/led/led.srcs/sources_1/ip/CLK_PLL/CLK_PLL.xdc rfile:../../../led.srcs/sources_1/ip/CLK_PLL/CLK_PLL.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
