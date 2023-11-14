module top (
    input clk,
    input rst,
    output blinker
);

  reg state = 0;

	assign blinker = state;

  always @(posedge clk) begin
    if (rst) state <= 0;
		else state <= ~state;
  end
endmodule
