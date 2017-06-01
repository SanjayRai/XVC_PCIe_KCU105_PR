
################################################################
# This is a generated script based on design: bd_8d7d
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
# source bd_8d7d_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
}


# CHANGE DESIGN NAME HERE
set design_name bd_8d7d

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./debug_bridge_PR/bd_0

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir -bdsource SBD $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design -bdsource SBD $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

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
  set S_BSCAN [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:bscan_rtl:1.0 S_BSCAN ]

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]

  # Create instance: lut_buffer, and set properties
  set lut_buffer [ create_bd_cell -type ip -vlnv xilinx.com:ip:lut_buffer:2.0 lut_buffer ]
  set_property -dict [ list \
CONFIG.C_EN_BSCANID_VEC {false} \
 ] $lut_buffer

  # Create instance: xsdbm, and set properties
  set xsdbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:xsdbm:3.0 xsdbm ]
  set_property -dict [ list \
CONFIG.C_BUILD_REVISION {0} \
CONFIG.C_CLK_INPUT_FREQ_HZ {300000000} \
CONFIG.C_CORE_MAJOR_VER {1} \
CONFIG.C_CORE_MINOR_ALPHA_VER {97} \
CONFIG.C_CORE_MINOR_VER {0} \
CONFIG.C_CORE_TYPE {1} \
CONFIG.C_DCLK_HAS_RESET {0} \
CONFIG.C_ENABLE_CLK_DIVIDER {false} \
CONFIG.C_EN_BSCANID_VEC {false} \
CONFIG.C_EN_INT_SIM {1} \
CONFIG.C_FIFO_STYLE {SUBCORE} \
CONFIG.C_MAJOR_VERSION {14} \
CONFIG.C_MINOR_VERSION {1} \
CONFIG.C_TWO_PRIM_MODE {false} \
CONFIG.C_USER_SCAN_CHAIN {1} \
CONFIG.C_USE_BUFR {0} \
CONFIG.C_USE_EXT_BSCAN {true} \
CONFIG.C_USE_STARTUP_CLK {false} \
CONFIG.C_XSDB_NUM_SLAVES {0} \
 ] $xsdbm

  # Create interface connections
  connect_bd_intf_net -intf_net S_BSCAN_1 [get_bd_intf_ports S_BSCAN] [get_bd_intf_pins lut_buffer/s_bscan]
  connect_bd_intf_net -intf_net lut_buffer_m_bscan [get_bd_intf_pins lut_buffer/m_bscan] [get_bd_intf_pins xsdbm/s_bscan]

  # Create port connections
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins xsdbm/clk]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


