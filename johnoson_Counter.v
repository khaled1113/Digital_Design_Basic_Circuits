
module johnoson(d,clk,rst,q)
input reg [3:0]d;
output reg [3:0]q;

wire not_q3;
assign not_q3= ~q[3];

Dff ff0(not_q3,clk,rst,q[0]);
Dff ff1(q[0],clk,rst,q[1]);
Dff ff2(q[1],clk,rst,q[2]);
Dff ff3(q[2],clk,rst,q[3]);

endmodule 
