module PR_module_A (
    input clk,
    input wire S_BSCAN_drck,
    input wire S_BSCAN_shift,
    input wire S_BSCAN_tdi,
    input wire S_BSCAN_update,
    input wire S_BSCAN_sel,
    output wire S_BSCAN_tdo,
    input wire S_BSCAN_tms,
    input wire S_BSCAN_tck,
    input wire S_BSCAN_runtest,
    input wire S_BSCAN_reset,
    input wire S_BSCAN_capture,
    input wire S_BSCAN_bscanid_en
);


wire [15:0] sine_data_out;

sine_wave u_sine_wave(
    .clk(clk),
    .sig_data(sine_data_out));

ila_x16 U_ila_x16_sin (
	.clk(clk), // input wire clk
	.probe0(sine_data_out) // input wire [15:0] probe0
);
debug_bridge_PR U_debug_bridge_PR (
  .clk(clk),          // input wire clk
  .S_BSCAN_drck(S_BSCAN_drck),        // input wire S_BSCAN_drck
  .S_BSCAN_shift(S_BSCAN_shift),      // input wire S_BSCAN_shift
  .S_BSCAN_tdi(S_BSCAN_tdi),          // input wire S_BSCAN_tdi
  .S_BSCAN_update(S_BSCAN_update),    // input wire S_BSCAN_update
  .S_BSCAN_sel(S_BSCAN_sel),          // input wire S_BSCAN_sel
  .S_BSCAN_tdo(S_BSCAN_tdo),         // output wire S_BSCAN_tdo
  .S_BSCAN_tms(S_BSCAN_tms),          // input wire S_BSCAN_tms
  .S_BSCAN_tck(S_BSCAN_tck),          // input wire S_BSCAN_tck
  .S_BSCAN_runtest(S_BSCAN_runtest),  // input wire S_BSCAN_runtest
  .S_BSCAN_reset(S_BSCAN_reset),      // input wire S_BSCAN_reset
  .S_BSCAN_capture(S_BSCAN_capture),  // input wire S_BSCAN_capture
  .S_BSCAN_bscanid_en(S_BSCAN_bscanid_en) // output wire S_BSCAN_bscanid
);
endmodule
