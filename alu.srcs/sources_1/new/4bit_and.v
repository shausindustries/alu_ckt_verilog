`timescale 1ns / 1ps
module fbit_and(a0,a1,a2,a3,b0,b1,b2,b3,t0,t1,t2,t3);
input a0,a1,a2,a3,b0,b1,b2,b3;
output t0,t1,t2,t3;

and ad1(t0,a0,b0);
and ad2(t1,a1,b1);
and ad3(t2,a2,b2);
and ad4(t3,a3,b3);

endmodule
