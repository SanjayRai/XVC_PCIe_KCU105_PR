
################################################################
# This is a generated script based on design: bd_c514
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_c514_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
}


# CHANGE DESIGN NAME HERE
set design_name bd_c514

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set S_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {16} \
CONFIG.ASSOCIATED_BUSIF {S_AXI} \
CONFIG.DATA_WIDTH {32} \
CONFIG.MAX_BURST_LENGTH {1} \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
 ] $S_AXI

  # Create ports
  set s_axi_aclk [ create_bd_port -dir I -type clk s_axi_aclk ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_RESET {s_axi_aresetn:s_axi_lite_resetn} \
 ] $s_axi_aclk
  set s_axi_aresetn [ create_bd_port -dir I -type rst s_axi_aresetn ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $s_axi_aresetn

  # Create instance: axi_jtag, and set properties
  set axi_jtag [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_jtag:1.0 axi_jtag ]
  set_property -dict [ list \
CONFIG.C_S_AXI_ADDR_WIDTH {5} \
CONFIG.C_S_AXI_DATA_WIDTH {32} \
CONFIG.C_TCK_CLOCK_RATIO {8} \
 ] $axi_jtag

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /axi_jtag/s_axi]

  # Create instance: bsip, and set properties
  set bsip [ create_bd_cell -type ip -vlnv xilinx.com:ip:bsip:1.1 bsip ]
  set_property -dict [ list \
CONFIG.C_CHIP_ID {0} \
CONFIG.C_DEVICE_FAMILY {0} \
CONFIG.C_EN_MUX {0} \
CONFIG.C_EN_MUX_EXT_BS {0} \
CONFIG.C_IR_ID_INSTR {0} \
CONFIG.C_IR_USER1_INSTR {0} \
CONFIG.C_IR_WIDTH {0} \
CONFIG.C_USER_SCAN_CHAIN {1} \
CONFIG.C_USE_SOFTBSCAN {1} \
 ] $bsip

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_ports S_AXI] [get_bd_intf_pins axi_jtag/s_axi]

  # Create port connections
  connect_bd_net -net axi_jtag_tck [get_bd_pins axi_jtag/tck] [get_bd_pins bsip/tap_tck]
  connect_bd_net -net axi_jtag_tdi [get_bd_pins axi_jtag/tdi] [get_bd_pins bsip/tap_tdi]
  connect_bd_net -net axi_jtag_tms [get_bd_pins axi_jtag/tms] [get_bd_pins bsip/tap_tms]
  connect_bd_net -net bsip_tap_tdo [get_bd_pins axi_jtag/tdo] [get_bd_pins bsip/tap_tdo]
  connect_bd_net -net s_axi_aclk_1 [get_bd_ports s_axi_aclk] [get_bd_pins axi_jtag/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_ports s_axi_aresetn] [get_bd_pins axi_jtag/s_axi_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces S_AXI] [get_bd_addr_segs axi_jtag/s_axi/reg0] REG


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


