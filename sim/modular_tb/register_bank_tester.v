module registerbank_tester #(
	parameter WIDTH =8
)(
	output reg rst_n, wr_en,
	output reg [WIDTH-1:0] in
);
	
	initial begin
		// Initialize signlas
		rst_n = 0; wr_en = 1; in = 8'hB1;
		#10;

		// Up reset, to see if the register works correctly
		rst_n = 1; wr_en = 0;
		#5;

		// wr_en up to check if the data is correctly written
		wr_en = 1; #5; in = 8'hD4; #5; in = 8'hE2; #10;

		// wr_en down to check if the register keeps the last data
		wr_en = 0;
		#10;

		#10 $finish;
	end
endmodule
