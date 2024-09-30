`timescale 1ns / 1ps
module hs_s(in1,in2,diff,borrow);
input in1,in2;
output diff,borrow;
wire t1;

not n1 (t1,in1);
xor x1(diff,in1,in2);
and a1(borrow,t1,in2);
endmodule
