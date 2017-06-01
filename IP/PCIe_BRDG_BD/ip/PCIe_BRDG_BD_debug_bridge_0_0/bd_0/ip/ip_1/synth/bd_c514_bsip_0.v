// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:bsip:1.1
// IP Revision: 0

(* X_CORE_INFO = "bsip_v1_1_0_bsip,Vivado 2017.1" *)
(* CHECK_LICENSE_TYPE = "bd_c514_bsip_0,bsip_v1_1_0_bsip,{}" *)
(* CORE_GENERATION_INFO = "bd_c514_bsip_0,bsip_v1_1_0_bsip,{x_ipProduct=Vivado 2017.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=bsip,x_ipVersion=1.1,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EN_MUX=0,C_EN_MUX_EXT_BS=0,C_USE_SOFTBSCAN=1,C_DEVICE_FAMILY=0,C_IR_WIDTH=0,C_CHIP_ID=0,C_IR_ID_INSTR=0,C_IR_USER1_INSTR=0,C_USER_SCAN_CHAIN=1}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_c514_bsip_0 (
  drck,
  reset,
  sel,
  shift,
  tdi,
  update,
  capture,
  runtest,
  tck,
  tms,
  tap_tdo,
  tdo,
  tap_tdi,
  tap_tms,
  tap_tck
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *)
output wire drck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *)
output wire reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *)
output wire sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *)
output wire shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *)
output wire tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *)
output wire update;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *)
output wire capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *)
output wire runtest;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *)
output wire tck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *)
output wire tms;
output wire tap_tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *)
input wire tdo;
input wire tap_tdi;
input wire tap_tms;
input wire tap_tck;

  bsip_v1_1_0_bsip #(
    .C_EN_MUX(0),
    .C_EN_MUX_EXT_BS(0),
    .C_USE_SOFTBSCAN(1),
    .C_DEVICE_FAMILY(0),
    .C_IR_WIDTH(0),
    .C_CHIP_ID(0),
    .C_IR_ID_INSTR(0),
    .C_IR_USER1_INSTR(0),
    .C_USER_SCAN_CHAIN(1)
  ) inst (
    .drck(drck),
    .reset(reset),
    .sel(sel),
    .shift(shift),
    .tdi(tdi),
    .update(update),
    .capture(capture),
    .runtest(runtest),
    .tck(tck),
    .tms(tms),
    .tap_tdo(tap_tdo),
    .tdo(tdo),
    .tap_tdi(tap_tdi),
    .tap_tms(tap_tms),
    .tap_tck(tap_tck),
    .prim_drck(1'B0),
    .prim_update(1'B0),
    .prim_capture(1'B0),
    .prim_sel(1'B0),
    .prim_shift(1'B0),
    .prim_reset(1'B0),
    .prim_runtest(1'B0),
    .prim_tms(1'B0),
    .prim_tck(1'B0),
    .prim_tdi(1'B0),
    .prim_tdo()
  );
endmodule
