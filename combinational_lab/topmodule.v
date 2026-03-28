module topmodule;
wire [3:0] out;
reg [1:0] a,b;
reg [2:0] sel;
alu alu_dut(
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
);
decoder decoder_dut(
    .sel(sel),
    .out(out)
);
