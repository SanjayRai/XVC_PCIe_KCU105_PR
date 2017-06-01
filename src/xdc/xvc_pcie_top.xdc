set_property PACKAGE_PIN K22 [get_ports pcie_perstn]
set_property PACKAGE_PIN AB6 [get_ports pcie_refclk_clk_p]

set_property IOSTANDARD LVCMOS18 [get_ports pcie_perstn]

create_clock -period 10.000 -name pcie_refclk_clk_p -waveform {0.000 5.000} [get_ports pcie_refclk_clk_p]
create_clock -period 50.000 -name PCIe_BRDG_BD_i/debug_bridge_0/inst/axi_jtag/inst/u_jtag_proc/tck_i_reg/Q [get_pins PCIe_BRDG_BD_i/debug_bridge_0/inst/axi_jtag/inst/u_jtag_proc/tck_i_reg/Q]
set_clock_groups -name TIG_1 -asynchronous -group [get_clocks PCIe_BRDG_BD_i/debug_bridge_0/inst/axi_jtag/inst/u_jtag_proc/tck_i_reg/Q] -group [get_clocks -of_objects [get_pins PCIe_BRDG_BD_i/axi_pcie3_0/inst/pcie3_ip_i/inst/gt_top_i/phy_clk_i/bufg_gt_userclk/O]]



create_pblock pblock_U_PR_module_A
add_cells_to_pblock [get_pblocks pblock_U_PR_module_A] [get_cells -quiet [list U_PR_module_A]]
resize_pblock [get_pblocks pblock_U_PR_module_A] -add {CLOCKREGION_X0Y0:CLOCKREGION_X1Y0}
set_property HD.RECONFIGURABLE 1 [get_cells -quiet U_PR_module_A]
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_U_PR_module_A]

