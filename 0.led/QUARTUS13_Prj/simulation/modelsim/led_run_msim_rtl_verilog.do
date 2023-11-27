transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/quartusii_13.1/app/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/quartusii_13.1/app/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/quartusii_13.1/app/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/quartusii_13.1/app/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/quartusii_13.1/app/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {d:/quartusii_13.1/app/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Qi_FPGA/prj/0.led/src {E:/Qi_FPGA/prj/0.led/src/LED_TOP.v}
vlog -vlog01compat -work work +incdir+E:/Qi_FPGA/prj/0.led/src {E:/Qi_FPGA/prj/0.led/src/LED_Drive.v}
vlog -vlog01compat -work work +incdir+E:/Qi_FPGA/prj/0.led/src {E:/Qi_FPGA/prj/0.led/src/CLK_DIV_module.v}
vlog -vlog01compat -work work +incdir+E:/Qi_FPGA/prj/0.led/QUARTUS13_Prj/ip {E:/Qi_FPGA/prj/0.led/QUARTUS13_Prj/ip/clk_pll.v}
vlog -vlog01compat -work work +incdir+E:/Qi_FPGA/prj/0.led/QUARTUS13_Prj/db {E:/Qi_FPGA/prj/0.led/QUARTUS13_Prj/db/clk_pll_altpll.v}
