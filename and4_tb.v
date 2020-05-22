`timescale 10ms / 1ms
`include "and.v"

module and4_tb();

reg [3:0] a,b;
wire [3:0] y;

and4 uut(a,b,y);

initial begin 
	$dumpfile("and4.vcd");
	$dumpvars(0,and4_tb);
	#10;
	
	a= 4'b1010; b = 4'b0011; #10;
	a= 4'b1110; b = 4'b0011; #10;
	a= 4'b1011; b = 4'b0010; #10;
	a= 4'b1111; b = 4'b1111; #10;
	
	$finish;
	end
	
endmodule
 
