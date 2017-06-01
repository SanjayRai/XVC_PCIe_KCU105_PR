# Created : 15:24:34, Fri Feb 3, 2017 : Sanjay Rai

proc DEVICE_TYPE {} {
    return xcku040-ffva1156-2-e
}

proc HW_DEBUGGER {} {
open_hw
connect_hw_server -url mcmicro:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210251893419]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210251893419]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
}

