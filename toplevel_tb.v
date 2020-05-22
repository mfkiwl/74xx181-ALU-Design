`timescale 10ms / 1ms
`include "toplevel.v"

module toplevel_tb();


reg [3:0] a,b,s;
reg cin;
reg m;

wire [3:0] f , g , p;
wire cout, eqv;  

toplevel uut(a,b,cin, s,m, f, cout, eqv, g,p);

initial begin
	$dumpfile("top.vcd");
	$dumpvars(0,toplevel_tb);
	#10;
	
	a= 4'b0010; b= 4'b1010; cin = 1'b0; s = 4'b0001; m= 1'b0; #10;
	a= 4'b0010; b= 4'b1010; cin = 1'b1; s = 4'b0010; m= 1'b1; #10;
	a= 4'b0010; b= 4'b1010; cin = 1'b1; s = 4'b0101; m= 1'b0; #10;
	
	$finish;
	end
endmodule
