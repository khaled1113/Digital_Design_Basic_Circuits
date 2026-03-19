module D_flipflop_tb;
reg d,clk ,rst ;
wire q;

D_flipflop D_flipflop_dut (
    .d(d),
    .clk(clk),
    .rst(rst),
    .q(q)
);

always #5 clk = ~clk;

initial begin 
    clk =0; d=0; rst=0;
    #10 rst=1;
    #10 rst=0;

#10 d=0;
#20 d=1;
#10 d=0;
#30 d=1;

#100 $finish;
end 
endmodule 