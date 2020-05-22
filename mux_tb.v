`timescale 10ms / 1ms
`include "mux.v"

module mux_tb();

reg [63:0] i;
reg [5:0] s;

wire x;

mux uut(x,i,s);

initial begin
	$dumpfile("mux.vcd");
	$dumpvars(0,mux_tb);
	
	#10;
	i = $urandom%64;
	i[0] = 0;
	i[4] = 1;
	i[21] = 1; 
	s = 6'b000000; #10;
	s = 6'b000100; #10;
	s = 6'b010101; #10;
	
	$finish;
	end
endmodule
