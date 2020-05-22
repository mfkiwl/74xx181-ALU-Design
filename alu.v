`timescale 10ms / 1ms

`include "adder.v"

module alu(a,b,cin, s,m, f, cout, eqv, g,p);

input [3:0] a,b,s;
input cin;
input m;
output reg [3:0] f;
output [3:0]  g , p;
output reg cout = 0, eqv;   	
wire [3:0] x;
wire [3:0] abar, bbar;
wire y;

adder gate(a,b,cin, x,y,p,g);
assign abar = ~a;
assign bbar = ~b;


always @(a,b)
	if(a===b)
		eqv = 1;
	else eqv = 0;

always @(s,m,cin)
	begin
		
		
		casex ({s,m,cin})
		
		
		6'b000000:	{cout,f} = a;
			
		
		6'b000001: 	
			{cout,f} = a+1;
			
		6'b00001x:	{cout,f} = abar;
							
		//tested
		6'b000100:	{cout,f} = a | b;
			
		6'b000101:	{cout,f} = (a|b)+1;
			
			
		6'b00011x:	{cout,f} = ~(a|b);
		
		6'b001000:
			{cout,f} = abar|b;
		
		6'b001001: 
			{cout,f} = (abar | b)+1;
		
		6'b00101x:	{cout,f} = abar&b;
				
		6'b001100: begin
			{cout,f} = -1;
			end
			
		6'b001101:
			{cout,f}=0;
			
		6'b00111x:
			{cout,f}=0;
		
		
		6'b010000: 
				{cout,f} = a + (a & bbar);
		
		6'b010001: 
				{cout,f} = a + (a & bbar) + 1;
		
		6'b01001x:
			{cout,f} = ~(a & b);
			
		//test	
		6'b010100:
			{cout,f} = (a | b) + (a & bbar);
			
		6'b010101:
			{cout,f} = (a | b) + (a & bbar) + 1; 
		
		6'b01011x:
			{cout,f}= bbar;
		
		6'b011000:
			{cout,f} = a-b-1; 
		
		6'b011001:
			{cout,f} = a-b; 
		
		6'b01101x:
			{cout,f} = a ^ b;
			
		6'b011100:
			{cout,f} = a & bbar -1;
		
		6'b011101:
			{cout,f} = a & bbar;
			
		6'b01111x:
			{cout,f} = a & bbar;
		
		6'b100000:
			{cout,f} = a + (a & b);
		
		6'b100001:
			{cout,f} = a + (a & b) +1;
		
		6'b10001x:
			{cout,f} = abar | b;
		
		6'b100100:
			{cout,f} = a + b;
		
		6'b100101:
			{cout,f} = a + b +1;
			
		6'b10011x:
			{cout,f} = ~(a^b);
			
		6'b101000:
			{cout,f} = (a | bbar) + (a & b);
		
		6'b101001:
			{cout,f} = (a | bbar) + (a & b) +1;
		
		6'b10101x:
			{cout,f} = b;
			
		6'b101100:
			{cout,f} = (a & b) -1;
		
		6'b101101:
			{cout,f} = (a & b);
		
		6'b10111x:
			{cout,f} = (a & b);
		
		6'b110000:
			{cout,f} = a + abar;
		
		6'b110001:
			{cout,f} = a + abar +1;
		
		6'b11001x: begin
				cout = 0;
				f = 1;
				end
		
		6'b110100:
			{cout,f} = (a | bbar) + a;
		
		6'b110101:
			{cout,f} = (a | bbar) + a +1;
		
		6'b11011x:
			{cout,f} = (a | bbar);
		
		6'b111000:
			{cout,f} = (a | b) + a;
			
		6'b111001:
			{cout,f} = (a | b) + a +1;
		
		6'b11101x:
			{cout,f} = (a | b);
		
		6'b111100:
			{cout,f} = a - 1;
			
		6'b111101:
			{cout,f} = a;
		
		6'b11111x:
			{cout,f} = a;
		
			
		default : $display("invalid input case provided by user");
		
		endcase
	
	end
endmodule			
