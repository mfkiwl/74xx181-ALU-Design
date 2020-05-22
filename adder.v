/////////////////////////////////////////////
//Carry Lookahead Adder Module
//Project : ALU
////////////////////////////////////////////


module adder(a,b,cin,sum,cout,p,g);
input [3:0] a,b;
input cin;

output [3:0] sum, p, g;
output cout;
	
wire [4:0] c;

assign p[0] = a[0] ^ b[0]; 			//propagated carry
assign p[1] = a[1] ^ b[1]; 			//propagated carry
assign p[2] = a[2] ^ b[2]; 			//propagated carry
assign p[3] = a[3] ^ b[3]; 			//propagated carry

assign g[0] = a[0] & b[0];			//generated carry
assign g[1] = a[1] & b[1];			//generated carry
assign g[2] = a[2] & b[2];			//generated carry
assign g[3] = a[3] & b[3];			//generated carry

assign c[0] = cin;

assign c[1] = g[0] | p[0] & c[0];
assign c[2] = g[1] | p[1] & g[0] | p[1] & p[0] & c[0];
assign c[3] = g[2] | p[2] & g[1] | p[2] & p[1] & g[0] | p[2] & p[1] & p[0] & c[0];
assign c[4] = g[3] | p[3] & g[2] | p[3] & p[2] & g[1] | p[3] & p[2] & g[1] & g[0] | p[3] & p[2] & p[1] & p[0] & c[0];  

assign sum[0] = p[0] ^ c[0];
assign sum[1] = p[1] ^ c[1];
assign sum[2] = p[2] ^ c[2];
assign sum[3] = p[3] ^ c[3];

assign cout = c[4];

endmodule
