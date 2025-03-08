`timescale 1ns / 1ps
module par_reg(a,b,c,d,op);
input a,b,c,d;
output op;
wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11;

not n1(t1,a);
not n2(t2,b);
not n3(t3,c);
not n4(t4,d);
and a1(t5,t1,t2,c,d);
and a2(t6,t1,b,t3,d);
and a3(t7,t1,b,c,t4);
and a4(t8,a,b,t3,t4);
and a5(t9,a,b,c,d);
and a6(t10,a,t2,t3,d);
and a7(t11,a,t2,c,t4);
or o1(op,t5,t6,t7,t8,t9,t10,t11);
endmodule
