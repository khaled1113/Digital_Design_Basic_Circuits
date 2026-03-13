module Dff(d,clk,rst,q);
input d,clk,rst;
output reg q;

always @(posedge clk , negedge rst)
if (!rst)
 q<=0;
 else 
 q<=d;

endmodule 
