-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:bsip:1.1
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY bsip_v1_1_0;
USE bsip_v1_1_0.bsip_v1_1_0_bsip;

ENTITY bd_c514_bsip_0 IS
  PORT (
    drck : OUT STD_LOGIC;
    reset : OUT STD_LOGIC;
    sel : OUT STD_LOGIC;
    shift : OUT STD_LOGIC;
    tdi : OUT STD_LOGIC;
    update : OUT STD_LOGIC;
    capture : OUT STD_LOGIC;
    runtest : OUT STD_LOGIC;
    tck : OUT STD_LOGIC;
    tms : OUT STD_LOGIC;
    tap_tdo : OUT STD_LOGIC;
    tdo : IN STD_LOGIC;
    tap_tdi : IN STD_LOGIC;
    tap_tms : IN STD_LOGIC;
    tap_tck : IN STD_LOGIC
  );
END bd_c514_bsip_0;

ARCHITECTURE bd_c514_bsip_0_arch OF bd_c514_bsip_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_c514_bsip_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bsip_v1_1_0_bsip IS
    GENERIC (
      C_EN_MUX : INTEGER;
      C_EN_MUX_EXT_BS : INTEGER;
      C_USE_SOFTBSCAN : INTEGER;
      C_DEVICE_FAMILY : INTEGER;
      C_IR_WIDTH : INTEGER;
      C_CHIP_ID : INTEGER;
      C_IR_ID_INSTR : INTEGER;
      C_IR_USER1_INSTR : INTEGER;
      C_USER_SCAN_CHAIN : INTEGER
    );
    PORT (
      drck : OUT STD_LOGIC;
      reset : OUT STD_LOGIC;
      sel : OUT STD_LOGIC;
      shift : OUT STD_LOGIC;
      tdi : OUT STD_LOGIC;
      update : OUT STD_LOGIC;
      capture : OUT STD_LOGIC;
      runtest : OUT STD_LOGIC;
      tck : OUT STD_LOGIC;
      tms : OUT STD_LOGIC;
      tap_tdo : OUT STD_LOGIC;
      tdo : IN STD_LOGIC;
      tap_tdi : IN STD_LOGIC;
      tap_tms : IN STD_LOGIC;
      tap_tck : IN STD_LOGIC;
      prim_drck : IN STD_LOGIC;
      prim_update : IN STD_LOGIC;
      prim_capture : IN STD_LOGIC;
      prim_sel : IN STD_LOGIC;
      prim_shift : IN STD_LOGIC;
      prim_reset : IN STD_LOGIC;
      prim_runtest : IN STD_LOGIC;
      prim_tms : IN STD_LOGIC;
      prim_tck : IN STD_LOGIC;
      prim_tdi : IN STD_LOGIC;
      prim_tdo : OUT STD_LOGIC
    );
  END COMPONENT bsip_v1_1_0_bsip;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF drck: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan DRCK";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan RESET";
  ATTRIBUTE X_INTERFACE_INFO OF sel: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan SEL";
  ATTRIBUTE X_INTERFACE_INFO OF shift: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan SHIFT";
  ATTRIBUTE X_INTERFACE_INFO OF tdi: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan TDI";
  ATTRIBUTE X_INTERFACE_INFO OF update: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan UPDATE";
  ATTRIBUTE X_INTERFACE_INFO OF capture: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE";
  ATTRIBUTE X_INTERFACE_INFO OF runtest: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST";
  ATTRIBUTE X_INTERFACE_INFO OF tck: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan TCK";
  ATTRIBUTE X_INTERFACE_INFO OF tms: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan TMS";
  ATTRIBUTE X_INTERFACE_INFO OF tdo: SIGNAL IS "xilinx.com:interface:bscan:1.0 m_bscan TDO";
BEGIN
  U0 : bsip_v1_1_0_bsip
    GENERIC MAP (
      C_EN_MUX => 0,
      C_EN_MUX_EXT_BS => 0,
      C_USE_SOFTBSCAN => 1,
      C_DEVICE_FAMILY => 0,
      C_IR_WIDTH => 0,
      C_CHIP_ID => 0,
      C_IR_ID_INSTR => 0,
      C_IR_USER1_INSTR => 0,
      C_USER_SCAN_CHAIN => 1
    )
    PORT MAP (
      drck => drck,
      reset => reset,
      sel => sel,
      shift => shift,
      tdi => tdi,
      update => update,
      capture => capture,
      runtest => runtest,
      tck => tck,
      tms => tms,
      tap_tdo => tap_tdo,
      tdo => tdo,
      tap_tdi => tap_tdi,
      tap_tms => tap_tms,
      tap_tck => tap_tck,
      prim_drck => '0',
      prim_update => '0',
      prim_capture => '0',
      prim_sel => '0',
      prim_shift => '0',
      prim_reset => '0',
      prim_runtest => '0',
      prim_tms => '0',
      prim_tck => '0',
      prim_tdi => '0'
    );
END bd_c514_bsip_0_arch;
