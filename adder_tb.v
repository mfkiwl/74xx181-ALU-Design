`timescale 10ms / 1ms
`include "adder.v"

module adder_tb();

reg [3:0] a,b;
reg cin;

wire [3:0] sum, p, g;
wire cout;
	
wire [4:0] c;

adder uut(a,b,cin,sum,cout,p,g);

initial begin 
	$dumpfile("adder.vcd");
	$dumpvars(0, adder_tb);
	
	#10;
	a= 4'b0101; b = 4'b1000; cin = 0; #10;
	a= 4'b0001; b = 4'b1100; cin = 1; #10;
	a= 4'b0111; b = 4'b1110; cin =0; #10;
	a= 4'b0101; b = 4'b0010; cin =1; #10;
	a= 4'b1111; b = 4'b1000; cin = 0; #10;
	a= 4'b1101; b = 4'b1001; cin = 1; #10;
	
	$finish;
	end
	
endmodule
