`timescale 10 ms / 1ms
`include "compliment.v"

module complement_tb ();

reg [3:0] a;
wire [3:0] abar;

compliment dut (a, abar);

initial begin
	$dumpfile("compliment.vcd");
	$dumpvars(0, complement_tb);

	#10;
	a=4'b0101; #10;
	
	a=4'b1100; #10;
	
	a=4'b1111; #10;
	
	a=4'b0000; #10;

	$finish;
	end

endmodule


