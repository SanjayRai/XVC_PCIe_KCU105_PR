module sine_wave (
input clk,
output [15:0] sig_data

);

reg [15:0] phase_count = 16'd0;
reg [15:0] i_sig_data = 16'd0;
wire [15:0] m_axis_data_tdata;
wire m_axis_data_tvalid;

always @(posedge clk)
begin
    phase_count <= phase_count + 1;
end
sine_wave_gen u_sine_wave_gen (
  .aclk(clk),                                // input wire aclk
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata(phase_count),    // input wire [15 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(m_axis_data_tvalid),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata(m_axis_data_tdata)      // output wire [15 : 0] m_axis_data_tdata
);

always @(posedge clk)
begin
    if (m_axis_data_tvalid)
       i_sig_data <= m_axis_data_tdata; 
    else
       i_sig_data <= 16'hBADC; 
end

assign sig_data = i_sig_data; 

endmodule
