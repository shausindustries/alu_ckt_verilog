`timescale 1ns / 1ps

module eightto1mux(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,f);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output f;
wire t0,t1,t2,t3,t4,t5;

mux_s m1(.a(i0),.b(i1),.s(s2),.o(t0));
mux_s m2(.a(i2),.b(i3),.s(s2),.o(t1));
mux_s m3(.a(i4),.b(i5),.s(s2),.o(t2));
mux_s m4(.a(i6),.b(i7),.s(s2),.o(t3));
mux_s m5(.a(t0),.b(t1),.s(s1),.o(t4));
mux_s m6(.a(t2),.b(t3),.s(s1),.o(t5));
mux_s m7(.a(t4),.b(t5),.s(s0),.o(f));

endmodule