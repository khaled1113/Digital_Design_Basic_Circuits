module SevenSegmentDecoder_tb;
reg a, b, c, d;

7_Segment_Decoder dut(
    .A(a),
    .B(b),
    .C(c),
    .D(d)
);

initial begin 
    #10 a= 0; b=0; c=0; d=0;
    #10 a= 0; b=0; c=0; d=1;
    #10 a= 0; b=0; c=1; d=0;
    #10 a= 0; b=0; c=1; d=1;   
    #10 a= 0; b=1; c=0; d=0;
    #10 a= 0; b=1; c=0; d=1;
    #10 a= 0; b=1; c=1; d=0;
    #10 a= 0; b=1; c=1; d=1;
    #10 a= 1; b=0; c=0; d=0;
    #10 a= 1; b=0; c=0; d=1;
    #10 a= 1; b=0; c=1; d=0;
    #10 a= 1; b=0; c=1; d=1;
    #10 a= 1; b=1; c=0; d=0;
    #10 a= 1; b=1; c=0; d=1;
    #10 a= 1; b=1; c=1; d=0;
    #10 a= 1; b=1; c=1; d=1;
    #10 $finish;
end
//display and monitor
initial begin
    $display ("Time   A   B   C   D   led_a  led_b  led_c  led_d  led_e  led_f  led_g");
    $monitor ("%d %b %b %b %b %b %b %b %b %b %b %b", $time, a, b, c, d, dut.led_a, dut.led_b, dut.led_c, dut.led_d, dut.led_e, dut.led_f, dut.led_g);
end
endmodule