`timescale 1ns / 1ps
module alu_4bit(a0,a1,a2,b0,b1,b2,y0,y1,y2,opcode);
input a0,a1,a2,b0,b1,b2;
input [0:2]opcode;
output reg y0;reg y1;reg y2;

always@ (opcode)
begin
if (opcode == 3'b000)
y0 = a0 + b0;
y1 = a1 + b1;
y2 = a2 + b2;
else if (opcode == 3'b001)
y0 = a0 - b0;
y1 = a1 - b1;
y2 = a2 - b2;
else if (opcode == 3'b010)
y0 = a0 * b0;
y1 = a1*b1;
y2 = a2*b2;
end 
endmodule
