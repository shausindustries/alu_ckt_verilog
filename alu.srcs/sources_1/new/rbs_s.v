`timescale 1ns / 1ps
module rbs_s(a0,a1,a2,a3,b0,b1,b2,b3,d0,d1,d2,d3,borrow);
input a0,a1,a2,a3,b0,b1,b2,b3;
output d0,d1,d2,d3,borrow;
wire t1,t2,t3,t4,t5;

hs_s h1(.in1(a0),.in2(b0),.diff(d0),.borrow(t1));
fs_s f1(.a(t1),.b(a1),.c(b1),.d(d1),.bo(t2));
fs_s f2(.a(t2),.b(a2),.c(b2),.d(d2),.bo(t3));
fs_s f3(.a(t3),.b(a3),.c(b3),.d(d3),.bo(borrow));
endmodule
