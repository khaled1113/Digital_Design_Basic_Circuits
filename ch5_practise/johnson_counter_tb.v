module johnson_counter_tb;
reg clk;
reg rst;
wire [3:0] q;

johnson_counter johnson_counter_dut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

initial begin
    clk = 1;
    rst = 1;
    #10 clk = 1; rst = 0;

    #100;

    $display ("Time   clk    Reset    Q");
    $monitor ("%d %b %b %b", $time, clk, rst, q);
end;

always #5 clk = ~clk;
 
endmodule