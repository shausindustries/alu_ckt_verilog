`timescale 1ns / 1ps
module fbit_nand(a0,a1,a2,a3,b0,b1,b2,b3,y0,y1,y2,y3);
input a0,a1,a2,a3,b0,b1,b2,b3;
output y0,y1,y2,y3;

nand n1(y0,a0,b0);
nand n2(y1,a1,b1);
nand n3(y2,a2,b2);
nand n4(y3,a3,b3);
endmodule
