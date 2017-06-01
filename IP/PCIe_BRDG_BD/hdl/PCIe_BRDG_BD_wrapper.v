//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Wed May 31 11:50:26 2017
//Host        : MC32GBLNX running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target PCIe_BRDG_BD_wrapper.bd
//Design      : PCIe_BRDG_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIe_BRDG_BD_wrapper
   (axi_clk_out,
    pci_express_rxn,
    pci_express_rxp,
    pci_express_txn,
    pci_express_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output axi_clk_out;
  input [7:0]pci_express_rxn;
  input [7:0]pci_express_rxp;
  output [7:0]pci_express_txn;
  output [7:0]pci_express_txp;
  input pcie_perstn;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire axi_clk_out;
  wire [7:0]pci_express_rxn;
  wire [7:0]pci_express_rxp;
  wire [7:0]pci_express_txn;
  wire [7:0]pci_express_txp;
  wire pcie_perstn;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;

  PCIe_BRDG_BD PCIe_BRDG_BD_i
       (.axi_clk_out(axi_clk_out),
        .pci_express_rxn(pci_express_rxn),
        .pci_express_rxp(pci_express_rxp),
        .pci_express_txn(pci_express_txn),
        .pci_express_txp(pci_express_txp),
        .pcie_perstn(pcie_perstn),
        .pcie_refclk_clk_n(pcie_refclk_clk_n),
        .pcie_refclk_clk_p(pcie_refclk_clk_p));
endmodule
