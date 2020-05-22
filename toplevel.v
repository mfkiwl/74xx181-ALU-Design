////////////////////////////////////////////////////
/////TOP LEVEL DESIGN OF 74xx181 ALU
////////////////////////////////////////
`timescale 10ms / 1ms

`include "adder.v"
`include "and4.v"
`include "compliment.v"
`include "decrement.v"
`include "eq.v"
`include "increment.v"
`include "or4.v"
`include "xor4.v"

module toplevel(a,b,cin, s,m, f, cout, eqv, g,p);

input [3:0] a,b,s;
input cin;
input m;

output [3:0] f , g , p;
output cout, eqv;   	

wire x1, x2, x3, x4, x5;

eq e(a,b,eqv);





endmodule
