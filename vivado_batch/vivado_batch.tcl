# Created : 15:24:34, Fri Feb 3, 2017 : Sanjay Rai

source ../device_type.tcl


set TOP_module xvc_pcie_top

create_project -in_memory -part [DEVICE_TYPE] 

#set_param chipscope.enablePRFlow true

read_bd {
../IP/PCIe_BRDG_BD/PCIe_BRDG_BD.bd
}


read_ip {
../IP/ila_x16/ila_x16.xci
../IP/debug_bridge_PR/debug_bridge_PR.xci
../IP/sine_wave_gen/sine_wave_gen.xci
}

read_verilog {
../src/PR_module_sine_wave/src/sine_wave.v
../src/PR_module_sine_wave/src/PR_module_A.v
../src/xvc_pcie_top.v
}

read_xdc {
../src/xdc/xvc_pcie_top.xdc
}

if (1) {
synth_design -top $TOP_module -part [DEVICE_TYPE] 
opt_design -verbose -directive Explore
write_checkpoint -force $TOP_module.post_synth_opt.dcp
write_debug_probes $TOP_module.ltx
place_design -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place_phys_opt.dcp
route_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route_phys_opt.dcp
report_timing_summary -file $TOP_module.timing_summary.rpt
report_drc -file $TOP_module.drc.rpt
set_property config_mode SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
write_bitstream $TOP_module.bit      
write_cfgmem  -format mcs -size 128 -interface SPIx4 -loadbit "up 0x00000000 $TOP_module.bit " -file "$TOP_module.mcs"
}
