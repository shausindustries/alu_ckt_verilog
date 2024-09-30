`timescale 1ns / 1ps
module fbit_or(a0,a1,a2,a3,b0,b1,b2,b3,t0,t1,t2,t3);
input a0,a1,a2,a3,b0,b1,b2,b3;
output t0,t1,t2,t3;

or o1(t0,a0,b0);
or o2(t1,a1,b1);
or o3(t2,a2,b2);
or o4(t3,a3,b3);
endmodule
