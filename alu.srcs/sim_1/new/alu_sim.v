`timescale 1ns / 1ps

module alu_sim;

reg a0_tb;reg a1_tb;reg a2_tb;reg a3_tb;reg b0_tb;reg b1_tb;reg b2_tb;reg b3_tb;reg s0_tb;reg s1_tb;reg s2_tb;
wire f0_tb;wire f1_tb;wire f2_tb;wire f3_tb;wire carry_tb;wire aux_tb;wire parry_tb;wire zero_tb;

alu_s uut(.a0(a0_tb),.a1(a1_tb),.a2(a2_tb),.a3(a3_tb),.b0(b0_tb),.b1(b1_tb),.b2(b2_tb),.b3(b3_tb),.s0(s0_tb),.s1(s1_tb),.s2(s2_tb),.f0(f0_tb),
.f1(f1_tb),.f2(f2_tb),.f3(f3_tb),.carry_out(carry_tb),.aux_carry(aux_tb),.parity_c(parry_tb),.zero_c(zero_tb));

initial
begin
$monitor($time,"a0_tb=%b,a1_tb=%b,a2_tb=%b,a3_tb=%b,b0_tb=%b,b1_tb=%b,b2_tb=%b,b3_tb=%b,s0_tb=%b,s1_tb=%b,s2_tb=%b,f0_tb=%b,f1_tb=%b,f2_tb=%b,f3_tb=%b,carry_tb=%b,aux_tb=%b,parry_tb=%b,zero_tb=%b",
a0_tb,a1_tb,a2_tb,a3_tb,b0_tb,b1_tb,b2_tb,b3_tb,s0_tb,s1_tb,s2_tb,f0_tb,f1_tb,f2_tb,f3_tb,carry_tb,aux_tb,parry_tb,zero_tb);
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=0; s1_tb=0; s2_tb=0;
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=0; s1_tb=0; s2_tb=1;
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=0; s1_tb=1; s2_tb=0;
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=0; s1_tb=1; s2_tb=1;
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=1; s1_tb=0; s2_tb=0;
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=1; s1_tb=0; s2_tb=1;
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=1; s1_tb=1; s2_tb=0;
#5 a0_tb=1; a1_tb=0; a2_tb=0; a3_tb=1; b0_tb=0; b1_tb=0; b2_tb=1; b3_tb=0; s0_tb=1; s1_tb=1; s2_tb=1;

#5 $finish;
end
endmodule
