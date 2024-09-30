`timescale 1ns / 1ps
module comparator_4bit_structural(
    input a0, a1, a2, a3,  // Input bits of a
    input b0, b1, b2, b3,  // Input bits of b
    output g, l, e         // Outputs for greater, less, and equal
);

    wire g0, g1, g2, g3;  // Wires for greater conditions for each bit
    wire l0, l1, l2, l3;  // Wires for less conditions for each bit
    wire e0, e1, e2, e3;  // Wires for equality conditions for each bit
    wire abar0, abar1, abar2, abar3;  // Wires for ~a
    wire bbar0, bbar1, bbar2, bbar3;  // Wires for ~b
    wire t1_0, t2_0, t1_1, t2_1, t1_2, t2_2, t1_3, t2_3; // Temporary wires for equality

    // NOT gates to create abar and bbar
    not (abar0, a0);
    not (bbar0, b0);
    not (abar1, a1);
    not (bbar1, b1);
    not (abar2, a2);
    not (bbar2, b2);
    not (abar3, a3);
    not (bbar3, b3);

    // Bit 3 (Most Significant Bit)
    // a3 > b3: g3 = a3 & ~b3
    and (g3, a3, bbar3);
    // a3 < b3: l3 = ~a3 & b3
    and (l3, abar3, b3);
    // a3 == b3: e3 = (a3 & b3) | (~a3 & ~b3)
    and (t1_3, a3, b3);
    and (t2_3, abar3, bbar3);
    or (e3, t1_3, t2_3);

    // Bit 2
    // a2 > b2: g2 = a2 & ~b2
    and (g2, a2, bbar2);
    // a2 < b2: l2 = ~a2 & b2
    and (l2, abar2, b2);
    // a2 == b2: e2 = (a2 & b2) | (~a2 & ~b2)
    and (t1_2, a2, b2);
    and (t2_2, abar2, bbar2);
    or (e2, t1_2, t2_2);

    // Bit 1
    // a1 > b1: g1 = a1 & ~b1
    and (g1, a1, bbar1);
    // a1 < b1: l1 = ~a1 & b1
    and (l1, abar1, b1);
    // a1 == b1: e1 = (a1 & b1) | (~a1 & ~b1)
    and (t1_1, a1, b1);
    and (t2_1, abar1, bbar1);
    or (e1, t1_1, t2_1);

    // Bit 0 (Least Significant Bit)
    // a0 > b0: g0 = a0 & ~b0
    and (g0, a0, bbar0);
    // a0 < b0: l0 = ~a0 & b0
    and (l0, abar0, b0);
    // a0 == b0: e0 = (a0 & b0) | (~a0 & ~b0)
    and (t1_0, a0, b0);
    and (t2_0, abar0, bbar0);
    or (e0, t1_0, t2_0);

    // Combine the individual bit comparison results for the final greater (g), less (l), and equal (e)
    // g = g3 | (e3 & g2) | (e3 & e2 & g1) | (e3 & e2 & e1 & g0)
    wire e3_g2, e3_e2_g1, e3_e2_e1_g0;
    and (e3_g2, e3, g2);
    and (e3_e2_g1, e3, e2, g1);
    and (e3_e2_e1_g0, e3, e2, e1, g0);
    or (g, g3, e3_g2, e3_e2_g1, e3_e2_e1_g0);

    // l = l3 | (e3 & l2) | (e3 & e2 & l1) | (e3 & e2 & e1 & l0)
    wire e3_l2, e3_e2_l1, e3_e2_e1_l0;
    and (e3_l2, e3, l2);
    and (e3_e2_l1, e3, e2, l1);
    and (e3_e2_e1_l0, e3, e2, e1, l0);
    or (l, l3, e3_l2, e3_e2_l1, e3_e2_e1_l0);

    // e = e3 & e2 & e1 & e0 (all bits must be equal)
    and (e, e3, e2, e1, e0);
endmodule

