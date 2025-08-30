# Mux4 paramters
MUX4_GENERATE_FILE = mux4
MUX4_TESTBENCH = modular_tb/mux4_testbench

# Register bank parameters
RB_GENERATE_FILE = register_bank
RB_TESTBENCH = modular_tb/register_bank_testbench

# Mux4 targets
mux4_compile:
	iverilog -o $(MUX4_GENERATE_FILE).vvp $(MUX4_TESTBENCH).v # GENERATE A VPP FILE TO USE IN GTKWAVE
	VVP $(MUX4_GENERATE_FILE).vvp

mux4_gtkwave:
	gtkwave $(MUX4_GENERATE_FILE).vcd

mux4_all:
	iverilog -o $(MUX4_GENERATE_FILE).vvp $(MUX4_TESTBENCH).v
	vvp $(MUX4_GENERATE_FILE).vvp
	gtkwave $(MUX4_GENERATE_FILE).vcd

# Register Bank targets
registerb_compile:
	iverilog -o $(RB_GENERATE_FILE).vvp $(RB_TESTBENCH).v 
	VVP $(RB_GENERATE_FILE).vvp

registerb_gtkwave:
	gtkwave $(RB_GENERATE_FILE).vcd

registerb_all:
	iverilog -o $(RB_GENERATE_FILE).vvp $(RB_TESTBENCH).v 
	vvp $(RB_GENERATE_FILE).vvp
	gtkwave $(RB_GENERATE_FILE).vcd

clean:
	rm -f *.vvp *.vcd
