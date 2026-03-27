module bcd_encoder(number,A);
input [9:0]number;
output wire [3:0] A;

assign A[0] = number[1] | number[3] | number[5] | number[7] | number[9];
assign A[1] = number[2] | number[3] | number[6] | number[7];
assign A[2] = number[4] | number[5] | number[6] | number[7];
assign A[3] = number[8] | number[9];
endmodule