`timescale 10ms / 1ms
`include "xor4.v"

module xor4_tb();

reg [3:0] a,b;
wire [3:0] y;

xor4 uut (a,b,y);

initial begin 
	$dumpfile("xor4.vcd");
	$dumpvars(0, xor4_tb);
	
	#10;
	
	a= 4'b0011; b= 4'b1010; #10;
	a= 4'b0111; b= 4'b1110; #10;
	a= 4'b1011; b= 4'b0010; #10;
	a= 4'b1111; b= 4'b0000; #10;
	
	$finish;
	
	end

endmodule
