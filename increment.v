module increment (a, y, cout);

input [3:0] a;
output [3:0] y;
output cout;

assign {cout, y} = a + 1;

endmodule
