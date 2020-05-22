module mux(x, i[63:0], s);

input [63:0] i;
input [5:0] s;

output reg x;

always @(*)
	x = i[s];

endmodule
