# Created : 15:24:34, Fri Feb 3, 2017 : Sanjay Rai

source ../device_type.tcl

create_project project_X project_X -part [DEVICE_TYPE]


add_files -norecurse {
../IP/PCIe_BRDG_BD/PCIe_BRDG_BD.bd
../IP/ila_x16/ila_x16.xci
../IP/sine_wave_gen/sine_wave_gen.xci
../IP/debug_bridge_PR/debug_bridge_PR.xci
}
