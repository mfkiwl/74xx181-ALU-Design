`timescale 10ms / 1ms
`include "alu.v"

module alu_tb();


reg [3:0] a,b,s;
reg cin;
reg m;

wire [3:0] f , g , p;
wire cout, eqv;  

alu uut(a,b,cin, s,m, f, cout, eqv, g,p);

initial begin
	$dumpfile("alu.vcd");
	$dumpvars(0,alu_tb);
	#10;
	
	a= 4'b1111; b= 4'b1010; 
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	{s,m,cin} =$random%6; #10;
	
	$finish;
	end

endmodule
