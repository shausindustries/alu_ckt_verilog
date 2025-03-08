`timescale 1ns / 1ps
module alu_s(a0,a1,a2,a3,b0,b1,b2,b3,f0,f1,f2,f3,carry_out,s0,s1,s2,aux_carry,parity_c,zero_c);
input a0,a1,a2,a3,b0,b1,b2,b3,s0,s1,s2;
output f0,f1,f2,f3,carry_out,aux_carry,parity_c,zero_c;
wire t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30;

rp_a R1(.a0(a0),.b0(b0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.ca_o(carry_out),.y0(t0),.y1(t1),.y2(t2),.y3(t3),.ac(aux_carry));
rbs_s S1(.a0(a0),.b0(b0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.borrow(carry_out),.d0(t4),.d1(t5),.d2(t6),.d3(t7));
multiplier M1(.a0(a0),.b0(b0),.a1(a1),.b1(b2),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.s0(t8),.s1(t9),.s2(t10),.s3(t11));
comparator_4bit_structural C1(.a0(a0),.b0(b0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.g(t12),.l(t13),.e(t14));
fbit_and A1(.a0(a0),.b0(b0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.t0(t15),.t1(t16),.t2(t17),.t3(t18));
fbit_or O1(.a0(a0),.b0(b0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.t0(t19),.t1(t20),.t2(t21),.t3(t22));
fbit_xor X1(.a0(a0),.b0(b0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.y0(t23),.y1(t24),.y2(t25),.y3(t26));
fbit_nand N1(.a0(a0),.b0(b0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.y0(t27),.y1(t28),.y2(t29),.y3(t30));
eightto1mux e1(.i0(t0),.i1(t4),.i2(t8),.i3(t12),.i4(t15),.i5(t19),.i6(t23),.i7(t27),.s0(s0),.s1(s1),.s2(s2),.f(f0));
eightto1mux e2(.i0(t1),.i1(t5),.i2(t9),.i3(t13),.i4(t16),.i5(t20),.i6(t24),.i7(t28),.s0(s0),.s1(s1),.s2(s2),.f(f1));
eightto1mux e3(.i0(t2),.i1(t6),.i2(t10),.i3(t14),.i4(t17),.i5(t21),.i6(t25),.i7(t29),.s0(s0),.s1(s1),.s2(s2),.f(f2));
eightto1mux e4(.i0(t3),.i1(t7),.i2(t11),.i3(1'b0),.i4(t18),.i5(t22),.i6(t26),.i7(t30),.s0(s0),.s1(s1),.s2(s2),.f(f3));
par_reg p1(.a(f0),.b(f1),.c(f2),.d(f3),.op(parity_c));
nor no1(zero_c,f0,f1,f2,f3);

endmodule
