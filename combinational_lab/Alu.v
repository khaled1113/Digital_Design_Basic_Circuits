module alu (a,b,sel,out);
input [1:0] a,b;
input [2:0] sel;
output reg [3:0] out;

always @ (*)
 begin 
    case(sel)
    3'b000:
    out = a & b;
    3'b001:
    out = a | b;
    3'b010:
    out = a + b;
    3'b011:
    out = a - b;
    3'b100:
    out = a * b;
    3'b101:
    out = a > b ? 4'b1010 : 4'b1011;
    3'b110:
    out = a < b ? 4'b1011 : 4'b1010;
    3'b111:
    out = a == b  ? 4'b1100 : 4'b0000;
    default:
    out = 4'b0000;
    endcase
    end
endmodule