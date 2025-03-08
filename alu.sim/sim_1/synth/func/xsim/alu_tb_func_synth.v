// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar  7 18:40:44 2025
// Host        : DESKTOP-TH2FPTO running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/imp folders/vlog
//               prrojects/alu/alu.sim/sim_1/synth/func/xsim/alu_tb_func_synth.v}
// Design      : alu_s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module alu_s
   (a0,
    a1,
    a2,
    a3,
    b0,
    b1,
    b2,
    b3,
    f0,
    f1,
    f2,
    f3,
    carry_out,
    s0,
    s1,
    s2,
    aux_carry,
    parity_c,
    zero_c);
  input a0;
  input a1;
  input a2;
  input a3;
  input b0;
  input b1;
  input b2;
  input b3;
  output f0;
  output f1;
  output f2;
  output f3;
  output carry_out;
  input s0;
  input s1;
  input s2;
  output aux_carry;
  output parity_c;
  output zero_c;

  wire \R1/t3 ;
  wire a0;
  wire a0_IBUF;
  wire a1;
  wire a1_IBUF;
  wire a2;
  wire a2_IBUF;
  wire a3;
  wire a3_IBUF;
  wire aux_carry;
  wire aux_carry_OBUF;
  wire b0;
  wire b0_IBUF;
  wire b1;
  wire b1_IBUF;
  wire b2;
  wire b2_IBUF;
  wire b3;
  wire b3_IBUF;
  wire carry_out;
  wire carry_out_OBUF;
  wire f0;
  wire f0_OBUF;
  wire f1;
  wire f1_OBUF;
  wire f2;
  wire f2_OBUF;
  wire f3;
  wire f3_OBUF;
  wire parity_c;
  wire parity_c_OBUF;
  wire zero_c;
  wire zero_c_OBUF;

  IBUF a0_IBUF_inst
       (.I(a0),
        .O(a0_IBUF));
  IBUF a1_IBUF_inst
       (.I(a1),
        .O(a1_IBUF));
  IBUF a2_IBUF_inst
       (.I(a2),
        .O(a2_IBUF));
  IBUF a3_IBUF_inst
       (.I(a3),
        .O(a3_IBUF));
  OBUF aux_carry_OBUF_inst
       (.I(aux_carry_OBUF),
        .O(aux_carry));
  LUT6 #(
    .INIT(64'hFEEEFAAAFCCCF000)) 
    aux_carry_OBUF_inst_i_1
       (.I0(b2_IBUF),
        .I1(b1_IBUF),
        .I2(b0_IBUF),
        .I3(a0_IBUF),
        .I4(a1_IBUF),
        .I5(a2_IBUF),
        .O(aux_carry_OBUF));
  IBUF b0_IBUF_inst
       (.I(b0),
        .O(b0_IBUF));
  IBUF b1_IBUF_inst
       (.I(b1),
        .O(b1_IBUF));
  IBUF b2_IBUF_inst
       (.I(b2),
        .O(b2_IBUF));
  IBUF b3_IBUF_inst
       (.I(b3),
        .O(b3_IBUF));
  OBUF carry_out_OBUF_inst
       (.I(carry_out_OBUF),
        .O(carry_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    carry_out_OBUF_inst_i_1
       (.I0(a3_IBUF),
        .I1(\R1/t3 ),
        .I2(b3_IBUF),
        .O(carry_out_OBUF));
  OBUF f0_OBUF_inst
       (.I(f0_OBUF),
        .O(f0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    f0_OBUF_inst_i_1
       (.I0(b0_IBUF),
        .I1(a0_IBUF),
        .O(f0_OBUF));
  OBUF f1_OBUF_inst
       (.I(f1_OBUF),
        .O(f1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    f1_OBUF_inst_i_1
       (.I0(a1_IBUF),
        .I1(a0_IBUF),
        .I2(b0_IBUF),
        .I3(b1_IBUF),
        .O(f1_OBUF));
  OBUF f2_OBUF_inst
       (.I(f2_OBUF),
        .O(f2));
  LUT6 #(
    .INIT(64'hA999955556666AAA)) 
    f2_OBUF_inst_i_1
       (.I0(a2_IBUF),
        .I1(a1_IBUF),
        .I2(a0_IBUF),
        .I3(b0_IBUF),
        .I4(b1_IBUF),
        .I5(b2_IBUF),
        .O(f2_OBUF));
  OBUF f3_OBUF_inst
       (.I(f3_OBUF),
        .O(f3));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    f3_OBUF_inst_i_1
       (.I0(a3_IBUF),
        .I1(\R1/t3 ),
        .I2(b3_IBUF),
        .O(f3_OBUF));
  LUT6 #(
    .INIT(64'hFEEEEAAAA8888000)) 
    f3_OBUF_inst_i_2
       (.I0(a2_IBUF),
        .I1(a1_IBUF),
        .I2(a0_IBUF),
        .I3(b0_IBUF),
        .I4(b1_IBUF),
        .I5(b2_IBUF),
        .O(\R1/t3 ));
  OBUF parity_c_OBUF_inst
       (.I(parity_c_OBUF),
        .O(parity_c));
  LUT6 #(
    .INIT(64'h9668689668969668)) 
    parity_c_OBUF_inst_i_1
       (.I0(f0_OBUF),
        .I1(f1_OBUF),
        .I2(f2_OBUF),
        .I3(b3_IBUF),
        .I4(\R1/t3 ),
        .I5(a3_IBUF),
        .O(parity_c_OBUF));
  OBUF zero_c_OBUF_inst
       (.I(zero_c_OBUF),
        .O(zero_c));
  LUT6 #(
    .INIT(64'h0001010001000001)) 
    zero_c_OBUF_inst_i_1
       (.I0(f2_OBUF),
        .I1(f1_OBUF),
        .I2(f0_OBUF),
        .I3(b3_IBUF),
        .I4(\R1/t3 ),
        .I5(a3_IBUF),
        .O(zero_c_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
