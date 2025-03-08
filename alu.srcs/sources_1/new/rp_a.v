`timescale 1ns / 1ps
module rp_a(a0,a1,a2,a3,b0,b1,b2,b3,ca_o,y0,y1,y2,y3,ac);
input a0,a1,a2,a3,b0,b1,b2,b3;
output ca_o,y0,y1,y2,y3,ac;
wire t1,t2,t3,t4,t5,t6,t7,t8,t9;

ha h1(.in1(a0),.in2(b0),.sum(y0),.carry(t1));
fa f1(.a(t1),.b(a1),.cin(b1),.s(y1),.cout(t2));
fa f2(.a(t2),.b(a2),.cin(b2),.s(y2),.cout(t3));
fa f3(.a(t3),.b(a3),.cin(b3),.s(y3),.cout(ca_o));
or o1(ac,t1,t2,t3);
endmodule
