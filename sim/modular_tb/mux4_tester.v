module mux4_tester #(
	parameter WIDTH =8
)(
	output reg [WIDTH-1:0] din1, din2, din3, din4,
	output reg [1:0] select
);

	initial begin
		// Signals initilization
		din1 = 8'hA0; din2 = 8'hB1; din3 = 8'hC2; din4 = 8'hD6;

		#10; // Check undefine state at the beginning
		select = 2'b00;
		#4;
		select = 2'b01;
		#4;
		select = 2'b10;
		#4;
		select = 2'b11;
		#1;
		select = 2'b00;
		#1;
		select = 2'b11;
		#10 $finish;
	end
endmodule
