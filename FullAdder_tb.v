module FullAdder_tb;
reg A,B,C;
wire Sum,Carry;

FullAdder FullAdder_dut(A,B,C,Sum,Carry)
intial 
begin 
  // Wait 10 units for each case
    #10 A = 0; B = 0; C = 1; // Sum=1, Carry=0
    #10 A = 0; B = 1; C = 0; // Sum=1, Carry=0
    #10 A = 0; B = 1; C = 1; // Sum=0, Carry=1
    #10 A = 1; B = 0; C = 0; // Sum=1, Carry=0
    #10 A = 1; B = 0; C = 1; // Sum=0, Carry=1
    #10 A = 1; B = 1; C = 0; // Sum=0, Carry=1
    #10 A = 1; B = 1; C = 1; // Sum=1, Carry=1
end 
endmodule 