//neg edge Reset Asynchronous 
/*
module t_flipflop (input t ,input clk , output reg q,input reset);
always @(posedge clk or negedge reset)
if (~reset)begin
q <= 1'b0;
end 
else if (t)begin
q <= ~q;
end

endmodule
*/

//pos edge synchronous Reset
module t_flipflop (input t ,input clk , output reg q ,input reset);
always @(posedge clk)
if (reset )begin 
q <= 1'b0;
end 
else if (t)begin
q <= ~q;
end
endmodule