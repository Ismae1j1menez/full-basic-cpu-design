module register_bank #(
	parameter WIDTH = 8
)(
	input clk, rst_n, wr_en,
	input [WIDTH-1:0] in,
	output reg [WIDTH-1:0] out

);

	// Sequencial logic
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			out <= {WIDTH{1'b0}}; // Initialize to 0.	
		end else if (wr_en) begin
			out <= in;
		end		
	end
endmodule
