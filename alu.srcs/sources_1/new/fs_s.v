`timescale 1ns / 1ps
module fs_s(a,b,c,d,bo);
input a,b,c;
output d,bo;
wire t1,t2,t3,t4,t5,t6;

not n1(t1,a);
xor x1(d,a,c);
and a1(t2,t1,c);
and a2(t3,t1,b);
and a3(t4,b,c);
or o1(t5,t2,t3);
or o2(t6,t5,t4);
endmodule
