module decoder (A,B,C,D,led_a,led_b,led_c,led_d,led_e,led_f,led_g);
input A,B,C,D;
output wire led_a, led_b, led_c, led_d, led_e, led_f, led_g;
//behavioral
always @(*) begin
    case ({A,B,C,D})
        4'b0000: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1111110; //0
        4'b0001: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b0110000; //1
        4'b0010: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1101101; //2
        4'b0011: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1111001; //3
        4'b0100: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b0110011; //4
        4'b0101: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1011011; //5
        4'b0110: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1011111; //6
        4'b0111: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1110000; //7
        4'b1000: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1111111; //8
        4'b1001: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1111011; //9
        default: {led_a ,led_b ,led_c ,led_d ,led_e ,led_f ,led_g} = 7'b0000000;
        //draw = 1100
        4'b1100: {led_a, led_b, led_c, led_d, led_e, led_f, led_g} = 7'b1111110; //0
    endcase
end