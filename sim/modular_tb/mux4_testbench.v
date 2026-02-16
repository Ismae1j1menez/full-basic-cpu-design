`include "modular_tb/mux4_tester.v"
`include "../src/mux4.v"
module mux4_testbench_top;
	parameter WIDTH = 8;

	wire [WIDTH-1:0] din1, din2, din3, din4;
	wire [1:0] select;
	wire [WIDTH-1:0] dout;

	// Instantiate mux4
	mux4 #(.WIDTH(WIDTH)) dut (
		.din1(din1), .din2(din2), .din3(din3), .din4(din4),
		.select(select),
		.dout(dout)
	);
	
	// Intantiate tester
	mux4_tester #(.WIDTH(WIDTH)) tester (
		.din1(din1), .din2(din2), .din3(din3), .din4(din4),
		.select(select)
	);	
	
	// Setup VCD file
	initial begin
		$dumpfile("mux4.vcd");
		$dumpvars(0);
	end
endmodule
