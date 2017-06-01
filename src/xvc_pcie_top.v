//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
//Date        : Fri Feb  3 12:47:24 2017
//Host        : MC32GBLNX running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target PCIe_BRDG_BD_wrapper.bd
//Design      : PCIe_BRDG_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xvc_pcie_top
   (pci_express_rxn,
    pci_express_rxp,
    pci_express_txn,
    pci_express_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  input [7:0]pci_express_rxn;
  input [7:0]pci_express_rxp;
  output [7:0]pci_express_txn;
  output [7:0]pci_express_txp;
  input pcie_perstn;
  input pcie_refclk_clk_n;
  input pcie_refclk_clk_p;

  wire [7:0]pci_express_rxn;
  wire [7:0]pci_express_rxp;
  wire [7:0]pci_express_txn;
  wire [7:0]pci_express_txp;
  wire pcie_perstn;
  wire pcie_refclk_clk_n;
  wire pcie_refclk_clk_p;
  wire axi_clk_out;
  wire [15:0] lin_data_out;

  PCIe_BRDG_BD PCIe_BRDG_BD_i
       (.axi_clk_out(axi_clk_out),
        .pci_express_rxn(pci_express_rxn),
        .pci_express_rxp(pci_express_rxp),
        .pci_express_txn(pci_express_txn),
        .pci_express_txp(pci_express_txp),
        .pcie_perstn(pcie_perstn),
        .pcie_refclk_clk_n(pcie_refclk_clk_n),
        .pcie_refclk_clk_p(pcie_refclk_clk_p));

PR_module_A U_PR_module_A(
    .clk(axi_clk_out),
    .S_BSCAN_drck(),        // input wire S_BSCAN_drck
    .S_BSCAN_shift(),      // input wire S_BSCAN_shift
    .S_BSCAN_tdi(),          // input wire S_BSCAN_tdi
    .S_BSCAN_update(),    // input wire S_BSCAN_update
    .S_BSCAN_sel(),          // input wire S_BSCAN_sel
    .S_BSCAN_tdo(),          // output wire tdo
    .S_BSCAN_tms(),          // input wire S_BSCAN_tms
    .S_BSCAN_tck(),          // input wire tck
    .S_BSCAN_runtest(),  // input wire runtest
    .S_BSCAN_reset(),      // input wire reset
    .S_BSCAN_capture(),  // input wire capture
    .S_BSCAN_bscanid_en()  // input bscanid_en
);

endmodule
