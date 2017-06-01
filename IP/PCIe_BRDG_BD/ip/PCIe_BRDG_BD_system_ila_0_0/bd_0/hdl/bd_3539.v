//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Wed May 31 11:50:38 2017
//Host        : MC32GBLNX running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target bd_3539.bd
//Design      : bd_3539
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_3539,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_3539,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "PCIe_BRDG_BD_system_ila_0_0.hwdef" *) 
module bd_3539
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arid,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arlock,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awid,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rid,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_ruser,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wuser,
    SLOT_0_AXI_wvalid,
    clk,
    resetn);
  input [31:0]SLOT_0_AXI_araddr;
  input [3:0]SLOT_0_AXI_arcache;
  input [2:0]SLOT_0_AXI_arid;
  input [7:0]SLOT_0_AXI_arlen;
  input [0:0]SLOT_0_AXI_arlock;
  input [2:0]SLOT_0_AXI_arprot;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input [31:0]SLOT_0_AXI_awaddr;
  input [3:0]SLOT_0_AXI_awcache;
  input [2:0]SLOT_0_AXI_awid;
  input [7:0]SLOT_0_AXI_awlen;
  input [0:0]SLOT_0_AXI_awlock;
  input [2:0]SLOT_0_AXI_awprot;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input [2:0]SLOT_0_AXI_bid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [255:0]SLOT_0_AXI_rdata;
  input [2:0]SLOT_0_AXI_rid;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input [31:0]SLOT_0_AXI_ruser;
  input SLOT_0_AXI_rvalid;
  input [255:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [31:0]SLOT_0_AXI_wstrb;
  input [31:0]SLOT_0_AXI_wuser;
  input SLOT_0_AXI_wvalid;
  input clk;
  input resetn;

  wire [31:0]Conn_ARADDR;
  wire [3:0]Conn_ARCACHE;
  wire [2:0]Conn_ARID;
  wire [7:0]Conn_ARLEN;
  wire [0:0]Conn_ARLOCK;
  wire [2:0]Conn_ARPROT;
  wire Conn_ARREADY;
  wire [2:0]Conn_ARSIZE;
  wire Conn_ARVALID;
  wire [31:0]Conn_AWADDR;
  wire [3:0]Conn_AWCACHE;
  wire [2:0]Conn_AWID;
  wire [7:0]Conn_AWLEN;
  wire [0:0]Conn_AWLOCK;
  wire [2:0]Conn_AWPROT;
  wire Conn_AWREADY;
  wire [2:0]Conn_AWSIZE;
  wire Conn_AWVALID;
  wire [2:0]Conn_BID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [255:0]Conn_RDATA;
  wire [2:0]Conn_RID;
  wire Conn_RLAST;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire [31:0]Conn_RUSER;
  wire Conn_RVALID;
  wire [255:0]Conn_WDATA;
  wire Conn_WLAST;
  wire Conn_WREADY;
  wire [31:0]Conn_WSTRB;
  wire [31:0]Conn_WUSER;
  wire Conn_WVALID;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [31:0]net_slot_0_axi_araddr;
  wire [3:0]net_slot_0_axi_arcache;
  wire [2:0]net_slot_0_axi_arid;
  wire [7:0]net_slot_0_axi_arlen;
  wire [0:0]net_slot_0_axi_arlock;
  wire [2:0]net_slot_0_axi_arprot;
  wire net_slot_0_axi_arready;
  wire [2:0]net_slot_0_axi_arsize;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [31:0]net_slot_0_axi_awaddr;
  wire [3:0]net_slot_0_axi_awcache;
  wire [2:0]net_slot_0_axi_awid;
  wire [7:0]net_slot_0_axi_awlen;
  wire [0:0]net_slot_0_axi_awlock;
  wire [2:0]net_slot_0_axi_awprot;
  wire net_slot_0_axi_awready;
  wire [2:0]net_slot_0_axi_awsize;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire [2:0]net_slot_0_axi_bid;
  wire net_slot_0_axi_bready;
  wire [1:0]net_slot_0_axi_bresp;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [2:0]net_slot_0_axi_r_ctrl;
  wire [255:0]net_slot_0_axi_rdata;
  wire [2:0]net_slot_0_axi_rid;
  wire net_slot_0_axi_rlast;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire [31:0]net_slot_0_axi_ruser;
  wire net_slot_0_axi_rvalid;
  wire [2:0]net_slot_0_axi_w_ctrl;
  wire [255:0]net_slot_0_axi_wdata;
  wire net_slot_0_axi_wlast;
  wire net_slot_0_axi_wready;
  wire [31:0]net_slot_0_axi_wstrb;
  wire [31:0]net_slot_0_axi_wuser;
  wire net_slot_0_axi_wvalid;
  wire resetn_1;

  assign Conn_ARADDR = SLOT_0_AXI_araddr[31:0];
  assign Conn_ARCACHE = SLOT_0_AXI_arcache[3:0];
  assign Conn_ARID = SLOT_0_AXI_arid[2:0];
  assign Conn_ARLEN = SLOT_0_AXI_arlen[7:0];
  assign Conn_ARLOCK = SLOT_0_AXI_arlock[0];
  assign Conn_ARPROT = SLOT_0_AXI_arprot[2:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARSIZE = SLOT_0_AXI_arsize[2:0];
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[31:0];
  assign Conn_AWCACHE = SLOT_0_AXI_awcache[3:0];
  assign Conn_AWID = SLOT_0_AXI_awid[2:0];
  assign Conn_AWLEN = SLOT_0_AXI_awlen[7:0];
  assign Conn_AWLOCK = SLOT_0_AXI_awlock[0];
  assign Conn_AWPROT = SLOT_0_AXI_awprot[2:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWSIZE = SLOT_0_AXI_awsize[2:0];
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BID = SLOT_0_AXI_bid[2:0];
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[255:0];
  assign Conn_RID = SLOT_0_AXI_rid[2:0];
  assign Conn_RLAST = SLOT_0_AXI_rlast;
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn_RUSER = SLOT_0_AXI_ruser[31:0];
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[255:0];
  assign Conn_WLAST = SLOT_0_AXI_wlast;
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WSTRB = SLOT_0_AXI_wstrb[31:0];
  assign Conn_WUSER = SLOT_0_AXI_wuser[31:0];
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign clk_1 = clk;
  assign resetn_1 = resetn;
  bd_3539_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arcache(net_slot_0_axi_arcache),
        .m_slot_0_axi_arid(net_slot_0_axi_arid),
        .m_slot_0_axi_arlen(net_slot_0_axi_arlen),
        .m_slot_0_axi_arlock(net_slot_0_axi_arlock),
        .m_slot_0_axi_arprot(net_slot_0_axi_arprot),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arsize(net_slot_0_axi_arsize),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awcache(net_slot_0_axi_awcache),
        .m_slot_0_axi_awid(net_slot_0_axi_awid),
        .m_slot_0_axi_awlen(net_slot_0_axi_awlen),
        .m_slot_0_axi_awlock(net_slot_0_axi_awlock),
        .m_slot_0_axi_awprot(net_slot_0_axi_awprot),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awsize(net_slot_0_axi_awsize),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bid(net_slot_0_axi_bid),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bresp(net_slot_0_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rid(net_slot_0_axi_rid),
        .m_slot_0_axi_rlast(net_slot_0_axi_rlast),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_ruser(net_slot_0_axi_ruser),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wlast(net_slot_0_axi_wlast),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_0_axi_wstrb),
        .m_slot_0_axi_wuser(net_slot_0_axi_wuser),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arcache(Conn_ARCACHE),
        .slot_0_axi_arid(Conn_ARID),
        .slot_0_axi_arlen(Conn_ARLEN),
        .slot_0_axi_arlock(Conn_ARLOCK),
        .slot_0_axi_arprot(Conn_ARPROT),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arsize(Conn_ARSIZE),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awcache(Conn_AWCACHE),
        .slot_0_axi_awid(Conn_AWID),
        .slot_0_axi_awlen(Conn_AWLEN),
        .slot_0_axi_awlock(Conn_AWLOCK),
        .slot_0_axi_awprot(Conn_AWPROT),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awsize(Conn_AWSIZE),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bid(Conn_BID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rid(Conn_RID),
        .slot_0_axi_rlast(Conn_RLAST),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_ruser(Conn_RUSER),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wlast(Conn_WLAST),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wuser(Conn_WUSER),
        .slot_0_axi_wvalid(Conn_WVALID));
  bd_3539_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(net_slot_0_axi_ar_cnt),
        .probe1(net_slot_0_axi_araddr),
        .probe10(net_slot_0_axi_awcache),
        .probe11(net_slot_0_axi_awid),
        .probe12(net_slot_0_axi_awlen),
        .probe13(net_slot_0_axi_awlock),
        .probe14(net_slot_0_axi_awprot),
        .probe15(net_slot_0_axi_awsize),
        .probe16(net_slot_0_axi_b_cnt),
        .probe17(net_slot_0_axi_bid),
        .probe18(net_slot_0_axi_bresp),
        .probe19(net_slot_0_axi_r_cnt),
        .probe2(net_slot_0_axi_arcache),
        .probe20(net_slot_0_axi_rdata),
        .probe21(net_slot_0_axi_rid),
        .probe22(net_slot_0_axi_rresp),
        .probe23(net_slot_0_axi_ruser),
        .probe24(net_slot_0_axi_wdata),
        .probe25(net_slot_0_axi_wstrb),
        .probe26(net_slot_0_axi_wuser),
        .probe27(net_slot_0_axi_aw_ctrl),
        .probe28(net_slot_0_axi_w_ctrl),
        .probe29(net_slot_0_axi_b_ctrl),
        .probe3(net_slot_0_axi_arid),
        .probe30(net_slot_0_axi_ar_ctrl),
        .probe31(net_slot_0_axi_r_ctrl),
        .probe4(net_slot_0_axi_arlen),
        .probe5(net_slot_0_axi_arlock),
        .probe6(net_slot_0_axi_arprot),
        .probe7(net_slot_0_axi_arsize),
        .probe8(net_slot_0_axi_aw_cnt),
        .probe9(net_slot_0_axi_awaddr));
  bd_3539_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_3539_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_3539_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_3539_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .In2(net_slot_0_axi_rlast),
        .dout(net_slot_0_axi_r_ctrl));
  bd_3539_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .In2(net_slot_0_axi_wlast),
        .dout(net_slot_0_axi_w_ctrl));
endmodule
