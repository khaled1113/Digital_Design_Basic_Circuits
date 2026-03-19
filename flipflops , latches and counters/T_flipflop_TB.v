module t_ff_tb;
reg clk ,t , r ;
wire q;

tflipflop t_ff_dut(.t(t),
.clk(clk),
.q(q),
.r(r)
);
always #5 clk=~clk;
initial begin
    clk =0 ; t =0; r=0;
#10 r=1;
#10 r=0;

#10 t=0;
#20 t=1;
#10 t=0;
#30 t=1;
#100 $finish ;
end    

endmodule 