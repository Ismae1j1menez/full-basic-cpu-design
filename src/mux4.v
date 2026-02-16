module mux4 #(
	parameter WIDTH = 8
)(
	input [WIDTH-1:0] din1, din2, din3, din4,
       	input [1:0] select,
	output reg [WIDTH-1:0] dout
);
	
	// Minimal binary encoding
	localparam select_0 = 2'b00;
	localparam select_1 = 2'b01;
	localparam select_2 = 2'b10;
	localparam select_3 = 2'b11;

	always @(*) begin
		case (select)
			select_0: dout = din1;
			select_1: dout = din2;	
			select_2: dout = din3;
			select_3: dout = din4;
			default: dout = {WIDTH{1'b0}};
		endcase		
	end
endmodule
