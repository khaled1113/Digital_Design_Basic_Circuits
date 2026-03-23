module johnson_counter (d,clk,rst,q);
input clk , rst ;
output [3:0]q;

wire notq;
assign notq = ~q[3];

Dff ff0(notq,clk,rst,q[0]);
Dff ff1(q[0],clk,rst,q[1]);
Dff ff2(q[1],clk,rst,q[2]);
Dff ff3(q[2],clk,rst,q[3]);

endmodule


