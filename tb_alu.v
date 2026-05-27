module tb_alu;
  reg [7:0] a, b;
  reg [2:0] op;
  wire [7:0] result;
  alu_8bit uut(.a(a),.b(b),.op(op),.result(result));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_alu);
    a=10; b=5; op=3'b000; #10;
    a=10; b=5; op=3'b001; #10;
    a=10; b=5; op=3'b010; #10;
    a=10; b=5; op=3'b011; #10;
    $finish;
  end
endmodule
