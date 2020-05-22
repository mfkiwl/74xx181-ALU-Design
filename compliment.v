module compliment (a,abar);

input [3:0] a;

output [3:0] abar;

assign abar = ~a;

endmodule
