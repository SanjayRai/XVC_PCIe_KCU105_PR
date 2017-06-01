# Created : 15:49:7, Mon Jun 6, 2016 : Sanjay Rai

source ../../../device_type.tcl


set TOP_module PR_module_A 

create_project -in_memory -part [DEVICE_TYPE] 

read_ip {
../../../IP/sine_wave_gen/sine_wave_gen.xci
../../../IP/debug_bridge_PR/debug_bridge_PR.xci
../../../IP/ila_x16/ila_x16.xci
}

read_verilog {
../src/sine_wave.v
../src/PR_module_A.v
}

if (1) {
synth_design -top $TOP_module -part [DEVICE_TYPE] -mode out_of_context 
opt_design -verbose -directive Explore
reset_timing
write_checkpoint -force $TOP_module.post_synth_opt.dcp
# place_design -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_place.dcp
# phys_opt_design  -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_place_phys_opt.dcp
# route_design  -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_route.dcp
# phys_opt_design  -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_route_phys_opt.dcp
# report_timing_summary -file $TOP_module.timing_summary.rpt
# report_drc -file $TOP_module.drc.rpt
# set_property config_mode SPIx4 [current_design]
# set_property config_mode B_SCAN [current_design]
# set_property config_mode SPIx4 [current_design]
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
# write_bitstream $TOP_module.bit      
}
