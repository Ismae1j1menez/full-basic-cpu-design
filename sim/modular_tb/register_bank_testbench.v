`include "modular_tb/register_bank_tester.v"
`include "../src/register_bank.v"
module registerbank_testbench;
	parameter WIDTH = 8;
	parameter TCLK = 2;

	wire rst_n, wr_en;
	wire [WIDTH-1:0] in;
	wire [WIDTH-1:0] out;
	reg clk;
	
	// Instantiate resgisterbank
	register_bank #(.WIDTH(WIDTH)) dut (
		.clk(clk), .rst_n(rst_n), .wr_en(wr_en),
		.in(in),
		.out(out)
	);	

	// Instantiate tester
	registerbank_tester #(.WIDTH(WIDTH)) tester (
		.rst_n(rst_n), .wr_en(wr_en),
		.in(in)	
	);
	
	// Generar el reloj
	initial clk = 0;
	always #(TCLK/2)  clk = ~clk;

	// Setup VCD file
	initial begin
		$dumpfile("register_bank.vcd");
		$dumpvars(0);
	end
endmodule
