`timescale 10ms / 1ms
`include "decrement.v"

module decrement_tb();

reg [3:0] a;
wire [3:0] y;

decrement uut(a,y);

initial begin 
	$dumpfile ("decrement.vcd");
	$dumpvars(0,decrement_tb);
	
	#10;
	a= 4'b1010; #10;
	a= 4'b1110; #10;
	a= 4'b1111; #10;
	a= 4'b0000; #10;
	
	$finish;
	end
endmodule

