`timescale 1ns / 1ps

module alu_tb(a_tb,b_tb,y_tb,opcode_tb);
reg a_tb; reg b_tb; reg y_tb, reg opcode_tb;
alu_4bit(.a_tb(a),.b_tb(b),.y_tb(y),.opcode_tb(opcode));
initial
begin
$monitor($time,"a_tb=%b,b_tb=%b,y_tb=%b,opcode_tb=%b",a_tb,b_tb,y_tb,opcode_tb);
#5 opcode_tb=3'b010;
#5 a_tb=4'b0100;b_tb=4'b0011;
#5 opcode_tb=3'b100;
#5 a_tb=3'b000;b_tb=3'b001;
#5 $finish;
end
endmodule
