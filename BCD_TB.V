module bcd_encoder_tb;
reg [9:0] number;
wire [3:0] A;
bcd_encoder bcd_encoder_dut(
    .number(number),
    .A(A)
);

initial begin
    number = 10'b0000000000; // 0
    #10 number = 10'b0000000001; // 1
    #10 number = 10'b0000000010; // 2
    #10 number = 10'b0000000100; // 3
    #10 number = 10'b0000001000; // 4
    #10 number = 10'b0000010000; // 5
    #10 number = 10'b0000100000; // 6
    #10 number = 10'b0001000000; // 7
    #10 number = 10'b0010000000; // 8
    #10 number = 10'b0100000000; // 9
    #10 $finish;

    $display ("Time   number    A");
    $monitor ("%d %b %b", $time, number, A);
end
endmodule