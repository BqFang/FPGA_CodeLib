// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov 26 19:15:43 2023
// Host        : DESKTOP-ICSAAF9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Qi_FPGA/prj/0.led/VIVADO18_Prj/led/led.srcs/sources_1/ip/CLK_PLL/CLK_PLL_stub.v
// Design      : CLK_PLL
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module CLK_PLL(clk_out1, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,locked,clk_in1" */;
  output clk_out1;
  output locked;
  input clk_in1;
endmodule
