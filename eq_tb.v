`timescale 10ms / 1ms
`include "eq.v"

module eq_tb ();

reg [3:0] a,b;
wire y;

eq uut(a,b,y);

initial begin 
	$dumpfile("eq.vcd");
	$dumpvars(0,eq_tb);
	
	#10;
	
	a= 4'b0000; b= 4'b0000; #10;
	a= 4'b1100; b= 4'b0000; #10;
	a= 4'b0010; b= 4'b0010; #10;
	a= 4'b0110; b= 4'b0000; #10;
	
	$finish;
	end

endmodule
