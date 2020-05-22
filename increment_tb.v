`timescale 10ms / 1ms
`include "increment.v"

module increment_tb ();

reg [3:0] a;
wire [3:0] y;
wire cout;

increment dut (a,y, cout);

initial begin 
	$dumpfile("increment.vcd");
	$dumpvars(0, increment_tb);
	
	#10;
	a=4'b0000; #10;
	a=4'b0001; #10;
	a=4'b1111; #10;
	
	$finish;
	end

endmodule
