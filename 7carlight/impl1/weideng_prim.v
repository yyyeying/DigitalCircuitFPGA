// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed May 16 04:11:04 2018
//
// Verilog Description of module weideng
//

module weideng (nrst, haz, left, right, brake, lc, lb, la, ra, 
            rb, rc, clk, vga) /* synthesis syn_module_defined=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(1[8:15])
    input nrst;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[7:11])
    input haz;   // c:/users/ktami/desktop/step/7carlight/aa.v(2[7:10])
    input left;   // c:/users/ktami/desktop/step/7carlight/aa.v(2[11:15])
    input right;   // c:/users/ktami/desktop/step/7carlight/aa.v(2[16:21])
    input brake;   // c:/users/ktami/desktop/step/7carlight/aa.v(2[22:27])
    output lc;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[37:39])
    output lb;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[40:42])
    output la;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[43:45])
    output ra;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[46:48])
    output rb;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[49:51])
    output rc;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[52:54])
    input clk;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[24:27])
    output [3:0]vga;   // c:/users/ktami/desktop/step/7carlight/aa.v(4[8:11])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[24:27])
    
    wire GND_net, VCC_net, haz_c, left_c, right_c, nrst_c, lc_c, 
        lb_c, la_c, ra_c, rb_c, rc_c;
    wire [19:0]state;   // c:/users/ktami/desktop/step/7carlight/aa.v(7[11:16])
    wire [19:0]next_state;   // c:/users/ktami/desktop/step/7carlight/aa.v(7[17:27])
    
    wire n4, n7;
    wire [19:0]next_state_19__N_284;
    
    wire n1137, n805, n6, n808, n1136, n5, n932, n1119, next_state_19__N_144_c_17;
    wire [19:0]next_state_19__N_144;
    
    wire n795, n1035, n1118, n1135, n15, n1134, n799, next_state_19__N_3, 
        n1117, n1133, n1116, n1115, n784, n797, n4_adj_1, n1132, 
        n800, n733, n1131, n4_adj_2, n1141, n1130, n18, n1114, 
        n1113, n1139, n1129, n931, n1043, n1138, n1128, n1127, 
        n4_adj_3, n1112, n1173, n23, n1111, n1125, n1110, n1124, 
        n1109, n5_adj_4, n1084, n1123, n6_adj_5, n1122, n1121, 
        n1108, n1120;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(state[9]), .B(n1134), .C(n1133), .D(n1173), .Z(n6)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_4_lut.init = 16'h3b0a;
    LUT4 i2_2_lut_rep_4_3_lut_4_lut (.A(state[16]), .B(n1110), .C(n1113), 
         .D(n1111), .Z(n1108)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_2_lut_rep_4_3_lut_4_lut.init = 16'hfff2;
    FD1S3IX state_i15 (.D(n932), .CK(clk_c), .CD(n1135), .Q(state[14]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i15.GSR = "ENABLED";
    FD1S3AX state_i14 (.D(next_state[13]), .CK(clk_c), .Q(state[13]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i14.GSR = "ENABLED";
    FD1S3AX state_i8 (.D(next_state[7]), .CK(clk_c), .Q(state[7]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i8.GSR = "ENABLED";
    FD1S3AY state_i7 (.D(next_state[6]), .CK(clk_c), .Q(state[6]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i7.GSR = "ENABLED";
    FD1S3AX state_i11 (.D(next_state[10]), .CK(clk_c), .Q(state[10]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i11.GSR = "ENABLED";
    FD1S3IX state_i20 (.D(n1117), .CK(clk_c), .CD(n1135), .Q(state[19]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i20.GSR = "ENABLED";
    FD1S3IX state_i19 (.D(n1120), .CK(clk_c), .CD(n1135), .Q(state[18]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i19.GSR = "ENABLED";
    FD1S3IX state_i18 (.D(n931), .CK(clk_c), .CD(n1135), .Q(state[17]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i18.GSR = "ENABLED";
    FD1S3IX state_i17 (.D(n1111), .CK(clk_c), .CD(n1135), .Q(state[16]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i17.GSR = "ENABLED";
    FD1S3AX state_i6 (.D(next_state[5]), .CK(clk_c), .Q(lc_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i6.GSR = "ENABLED";
    OB lc_pad (.I(lc_c), .O(lc));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[37:39])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_3_lut_3_lut_4_lut_4_lut (.A(state[8]), .B(state[6]), .C(state[7]), 
         .D(n1137), .Z(n808)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_3_lut_3_lut_4_lut_4_lut.init = 16'h3200;
    LUT4 i1_4_lut_4_lut_rep_37 (.A(state[6]), .B(right_c), .C(left_c), 
         .D(n1137), .Z(n1173)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_4_lut_4_lut_rep_37.init = 16'haa82;
    LUT4 i1_2_lut_4_lut_4_lut (.A(state[6]), .B(right_c), .C(left_c), 
         .D(n1137), .Z(n15)) /* synthesis lut_function=(A (B (C+(D))+!B (D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_4_lut_4_lut.init = 16'haa80;
    LUT4 i2_4_lut (.A(n23), .B(n15), .C(n4_adj_3), .D(n808), .Z(next_state[1])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 next_state_19__N_29_I_0_2_lut_rep_12_3_lut_4_lut (.A(n1122), .B(state[12]), 
         .C(state[18]), .D(state[17]), .Z(n1116)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_29_I_0_2_lut_rep_12_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[14]), .B(n1114), .C(n1115), .D(next_state_19__N_144_c_17), 
         .Z(n5)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i225_3_lut_4_lut (.A(state[14]), .B(n1114), .C(next_state_19__N_144_c_17), 
         .D(n1115), .Z(n18)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i225_3_lut_4_lut.init = 16'hf202;
    LUT4 i2_4_lut_adj_1 (.A(n1123), .B(n808), .C(n800), .D(next_state_19__N_144_c_17), 
         .Z(n6_adj_5)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_4_lut_adj_1.init = 16'hfcdd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(n1111), .B(n1109), .C(n1120), 
         .D(n1113), .Z(n799)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'hfffe;
    LUT4 state_18__I_0_2_lut_rep_13_3_lut_4_lut (.A(n1122), .B(state[12]), 
         .C(state[18]), .D(state[17]), .Z(n1117)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_18__I_0_2_lut_rep_13_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(n1114), .B(state[14]), .C(n795), 
         .D(state[15]), .Z(n797)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'hf1f0;
    LUT4 state_16__I_0_2_lut_rep_5_3_lut_4_lut (.A(n1114), .B(state[14]), 
         .C(state[16]), .D(state[15]), .Z(n1109)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_16__I_0_2_lut_rep_5_3_lut_4_lut.init = 16'h0010;
    LUT4 state_6__I_0_112_Select_3_i19_2_lut_3_lut_4_lut_3_lut_4_lut (.A(n1122), 
         .B(state[12]), .C(state[18]), .D(state[17]), .Z(n733)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_6__I_0_112_Select_3_i19_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i550_4_lut_4_lut (.A(n1125), .B(n1043), .C(n1136), .D(n805), 
         .Z(next_state[13])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i550_4_lut_4_lut.init = 16'hffd0;
    LUT4 next_state_19__N_26_I_0_2_lut_rep_14_3_lut_4_lut (.A(n1124), .B(state[11]), 
         .C(state[17]), .D(state[12]), .Z(n1118)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_26_I_0_2_lut_rep_14_3_lut_4_lut.init = 16'hfffe;
    LUT4 state_17__I_0_2_lut_rep_16_3_lut_4_lut (.A(n1124), .B(state[11]), 
         .C(state[17]), .D(state[12]), .Z(n1120)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_17__I_0_2_lut_rep_16_3_lut_4_lut.init = 16'h0010;
    LUT4 next_state_19__N_14_I_0_2_lut_rep_23_3_lut_4_lut (.A(n1139), .B(state[8]), 
         .C(state[13]), .D(state[9]), .Z(n1127)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_14_I_0_2_lut_rep_23_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(n1111), .B(n1109), .C(n1117), 
         .D(n1113), .Z(n800)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'hfffe;
    LUT4 i1_3_lut_rep_15_3_lut_4_lut (.A(state[11]), .B(n1124), .C(n1137), 
         .D(n1125), .Z(n1119)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_3_lut_rep_15_3_lut_4_lut.init = 16'h20f0;
    LUT4 state_13__I_0_2_lut_rep_24_3_lut_4_lut (.A(n1139), .B(state[8]), 
         .C(state[13]), .D(state[9]), .Z(n1128)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_13__I_0_2_lut_rep_24_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n1125), .B(n1123), .C(n1116), .D(state[19]), 
         .Z(n931)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h7f77;
    LUT4 i3_4_lut_4_lut (.A(n1125), .B(n805), .C(n6_adj_5), .D(n1136), 
         .Z(next_state[0])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i3_4_lut_4_lut.init = 16'hfdfc;
    LUT4 state_6__I_0_112_Select_15_i4_2_lut_rep_8_3_lut_4_lut (.A(n1116), 
         .B(state[19]), .C(next_state_19__N_144_c_17), .D(state[14]), 
         .Z(n1112)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_6__I_0_112_Select_15_i4_2_lut_rep_8_3_lut_4_lut.init = 16'h1000;
    LUT4 brake_I_0_1_lut_rep_31 (.A(next_state_19__N_144_c_17), .Z(n1135)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(55[31:37])
    defparam brake_I_0_1_lut_rep_31.init = 16'h5555;
    LUT4 state_6__I_0_112_Select_7_i29_4_lut_4_lut (.A(next_state_19__N_144_c_17), 
         .B(state[6]), .C(n1108), .D(n1132), .Z(next_state[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(55[31:37])
    defparam state_6__I_0_112_Select_7_i29_4_lut_4_lut.init = 16'hdc50;
    FD1S3AX state_i5 (.D(next_state[4]), .CK(clk_c), .Q(lb_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i5.GSR = "ENABLED";
    FD1S3AX state_i4 (.D(next_state[3]), .CK(clk_c), .Q(la_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i4.GSR = "ENABLED";
    LUT4 state_6__I_0_112_Select_10_i29_4_lut_4_lut (.A(next_state_19__N_144_c_17), 
         .B(n1130), .C(n795), .D(next_state_19__N_284[10]), .Z(next_state[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(55[31:37])
    defparam state_6__I_0_112_Select_10_i29_4_lut_4_lut.init = 16'hdc50;
    LUT4 i2_4_lut_4_lut (.A(next_state_19__N_144_c_17), .B(state[16]), .C(n1128), 
         .D(n1110), .Z(n7)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C)+!B (C+!(D))))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(55[31:37])
    defparam i2_4_lut_4_lut.init = 16'h5073;
    LUT4 i26_2_lut_2_lut_rep_32 (.A(next_state_19__N_144_c_17), .B(haz_c), 
         .Z(n1136)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(55[31:37])
    defparam i26_2_lut_2_lut_rep_32.init = 16'h4444;
    LUT4 i1_4_lut_4_lut (.A(next_state_19__N_144_c_17), .B(haz_c), .C(n799), 
         .D(n1123), .Z(n4_adj_3)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(55[31:37])
    defparam i1_4_lut_4_lut.init = 16'ha0e4;
    LUT4 i1_2_lut_rep_33 (.A(haz_c), .B(next_state_19__N_144_c_17), .Z(n1137)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(57[14:34])
    defparam i1_2_lut_rep_33.init = 16'heeee;
    LUT4 i2_3_lut_rep_30_4_lut (.A(haz_c), .B(next_state_19__N_144_c_17), 
         .C(right_c), .D(left_c), .Z(n1134)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(57[14:34])
    defparam i2_3_lut_rep_30_4_lut.init = 16'hfeee;
    LUT4 i385_1_lut_2_lut (.A(haz_c), .B(next_state_19__N_144_c_17), .Z(next_state_19__N_144[12])) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(57[14:34])
    defparam i385_1_lut_2_lut.init = 16'h1111;
    LUT4 next_state_19__N_38_I_0_2_lut_rep_6_3_lut_4_lut (.A(n1116), .B(state[19]), 
         .C(state[15]), .D(state[14]), .Z(n1110)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_38_I_0_2_lut_rep_6_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX state_i3 (.D(next_state[2]), .CK(clk_c), .Q(ra_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_26_3_lut_4_lut (.A(haz_c), .B(next_state_19__N_144_c_17), 
         .C(state[6]), .D(n1138), .Z(n1130)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(57[14:34])
    defparam i1_2_lut_rep_26_3_lut_4_lut.init = 16'he0f0;
    LUT4 state_6__bdd_3_lut_4_lut (.A(haz_c), .B(next_state_19__N_144_c_17), 
         .C(left_c), .D(state[6]), .Z(n1084)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(57[14:34])
    defparam state_6__bdd_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1_2_lut_rep_34 (.A(left_c), .B(right_c), .Z(n1138)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(53[21:37])
    defparam i1_2_lut_rep_34.init = 16'h2222;
    LUT4 i3_4_lut (.A(n5), .B(n1141), .C(n1035), .D(n4_adj_1), .Z(next_state[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_5 (.A(n5_adj_4), .B(n1136), .C(n805), .D(next_state_19__N_3), 
         .Z(next_state[5])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i3_4_lut_adj_5.init = 16'hfefa;
    LUT4 i1_2_lut_rep_28_3_lut_4_lut (.A(left_c), .B(right_c), .C(next_state_19__N_144_c_17), 
         .D(haz_c), .Z(n1132)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(53[21:37])
    defparam i1_2_lut_rep_28_3_lut_4_lut.init = 16'h0002;
    LUT4 state_6__I_0_2_lut_rep_35 (.A(state[6]), .B(state[7]), .Z(n1139)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_6__I_0_2_lut_rep_35.init = 16'heeee;
    LUT4 i572_2_lut_rep_27_3_lut (.A(state[6]), .B(state[7]), .C(state[8]), 
         .Z(n1131)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i572_2_lut_rep_27_3_lut.init = 16'hefef;
    LUT4 next_state_19__N_23_I_0_2_lut_rep_17_3_lut_4_lut (.A(n1127), .B(state[10]), 
         .C(state[12]), .D(state[11]), .Z(n1121)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_23_I_0_2_lut_rep_17_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_6 (.A(n1119), .B(n1131), .C(n797), .D(next_state_19__N_144_c_17), 
         .Z(n5_adj_4)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_4_lut_adj_6.init = 16'hfabb;
    LUT4 state_7__I_0_2_lut (.A(state[7]), .B(state[6]), .Z(next_state_19__N_3)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_7__I_0_2_lut.init = 16'h2222;
    LUT4 next_state_19__N_8_I_0_2_lut_rep_29_3_lut (.A(state[6]), .B(state[7]), 
         .C(state[8]), .Z(n1133)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_8_I_0_2_lut_rep_29_3_lut.init = 16'hfefe;
    FD1S3IX state_i9 (.D(next_state_19__N_3), .CK(clk_c), .CD(n1137), 
            .Q(state[8]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i9.GSR = "ENABLED";
    FD1S3IX state_i10 (.D(next_state_19__N_144[12]), .CK(clk_c), .CD(n1131), 
            .Q(state[9]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i10.GSR = "ENABLED";
    LUT4 next_state_19__N_11_I_0_2_lut_rep_25_3_lut_4_lut (.A(state[6]), .B(state[7]), 
         .C(state[9]), .D(state[8]), .Z(n1129)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_11_I_0_2_lut_rep_25_3_lut_4_lut.init = 16'hfffe;
    LUT4 state_6__bdd_4_lut (.A(state[6]), .B(right_c), .C(next_state_19__N_144_c_17), 
         .D(haz_c), .Z(n1141)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam state_6__bdd_4_lut.init = 16'haaa8;
    LUT4 i4_4_lut (.A(n7), .B(state[12]), .C(n6), .D(n1122), .Z(next_state[6])) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i4_4_lut.init = 16'hfafe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(right_c), .B(left_c), .C(next_state_19__N_144_c_17), 
         .D(haz_c), .Z(next_state_19__N_284[10])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(55[14:30])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0002;
    LUT4 i226_3_lut_4_lut (.A(state[10]), .B(n1127), .C(next_state_19__N_144_c_17), 
         .D(n1128), .Z(n23)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i226_3_lut_4_lut.init = 16'hf202;
    LUT4 i334_3_lut_4_lut (.A(n1111), .B(n1109), .C(next_state_19__N_144_c_17), 
         .D(n733), .Z(n4_adj_1)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i334_3_lut_4_lut.init = 16'hefe0;
    LUT4 state_15__I_0_2_lut_rep_7_3_lut_4_lut (.A(n1116), .B(state[19]), 
         .C(state[15]), .D(state[14]), .Z(n1111)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_15__I_0_2_lut_rep_7_3_lut_4_lut.init = 16'h0010;
    LUT4 i335_4_lut (.A(next_state_19__N_3), .B(n1113), .C(next_state_19__N_144_c_17), 
         .D(n795), .Z(n784)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i335_4_lut.init = 16'hfaca;
    FD1S3AX state_i2 (.D(next_state[1]), .CK(clk_c), .Q(rb_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i2.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(next_state[0]), .CK(clk_c), .Q(rc_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(state[19]), .B(n1116), .C(n1120), .D(n1117), 
         .Z(n795)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_3_lut_4_lut.init = 16'hfff2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(next_state_19__N_144_c_17), .B(n1128), 
         .C(n15), .D(n1119), .Z(n4_adj_2)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'hfff8;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(next_state_19__N_144_c_17), .B(n1128), 
         .C(n808), .D(n1119), .Z(n1035)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hfff8;
    LUT4 i2_4_lut_adj_10 (.A(n1035), .B(n1109), .C(n18), .D(n4), .Z(next_state[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_4_lut_adj_10.init = 16'hfffe;
    FD1S3IX state_i12 (.D(next_state_19__N_144[12]), .CK(clk_c), .CD(n1125), 
            .Q(state[11]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i12.GSR = "ENABLED";
    LUT4 i558_2_lut_rep_19_3_lut_4_lut (.A(n1129), .B(state[13]), .C(state[11]), 
         .D(state[10]), .Z(n1123)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i558_2_lut_rep_19_3_lut_4_lut.init = 16'hffef;
    LUT4 state_14__I_0_2_lut_rep_9_3_lut_4_lut (.A(n1118), .B(state[18]), 
         .C(state[14]), .D(state[19]), .Z(n1113)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_14__I_0_2_lut_rep_9_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(state[13]), .B(n1129), .C(n15), 
         .D(next_state_19__N_144_c_17), .Z(n805)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'hf2f0;
    FD1S3IX state_i13 (.D(next_state_19__N_144[12]), .CK(clk_c), .CD(n1123), 
            .Q(state[12]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i13.GSR = "ENABLED";
    FD1S3AX state_i16 (.D(n1112), .CK(clk_c), .Q(state[15]));   // c:/users/ktami/desktop/step/7carlight/aa.v(46[3:21])
    defparam state_i16.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_12 (.A(n1084), .B(n1111), .C(n733), .D(next_state_19__N_144_c_17), 
         .Z(n4)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i1_4_lut_adj_12.init = 16'hfaee;
    LUT4 i2_3_lut_4_lut_4_lut_adj_13 (.A(n1131), .B(next_state_19__N_3), 
         .C(n1110), .D(state[16]), .Z(n932)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_3_lut_4_lut_4_lut_adj_13.init = 16'hdfdd;
    GSR GSR_INST (.GSR(nrst_c));
    LUT4 i542_3_lut_4_lut_4_lut (.A(n1131), .B(next_state_19__N_3), .C(n1124), 
         .D(state[11]), .Z(n1043)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i542_3_lut_4_lut_4_lut.init = 16'hdfdd;
    LUT4 i2_4_lut_4_lut_adj_14 (.A(n1131), .B(n784), .C(n4_adj_2), .D(n1136), 
         .Z(next_state[4])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i2_4_lut_4_lut_adj_14.init = 16'hfdfc;
    LUT4 next_state_19__N_32_I_0_2_lut_rep_10_3_lut_4_lut (.A(n1121), .B(state[17]), 
         .C(state[19]), .D(state[18]), .Z(n1114)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_32_I_0_2_lut_rep_10_3_lut_4_lut.init = 16'hfffe;
    LUT4 next_state_19__N_17_I_0_2_lut_rep_20_3_lut_4_lut (.A(n1133), .B(state[9]), 
         .C(state[10]), .D(state[13]), .Z(n1124)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_17_I_0_2_lut_rep_20_3_lut_4_lut.init = 16'hfffe;
    LUT4 i565_2_lut_rep_21_3_lut_4_lut (.A(n1133), .B(state[9]), .C(state[10]), 
         .D(state[13]), .Z(n1125)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam i565_2_lut_rep_21_3_lut_4_lut.init = 16'hffef;
    LUT4 next_state_19__N_20_I_0_2_lut_rep_18_3_lut_4_lut (.A(n1129), .B(state[13]), 
         .C(state[11]), .D(state[10]), .Z(n1122)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam next_state_19__N_20_I_0_2_lut_rep_18_3_lut_4_lut.init = 16'hfffe;
    LUT4 state_19__I_0_2_lut_rep_11_3_lut_4_lut (.A(n1121), .B(state[17]), 
         .C(state[19]), .D(state[18]), .Z(n1115)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(52[2] 125[9])
    defparam state_19__I_0_2_lut_rep_11_3_lut_4_lut.init = 16'h0010;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB lb_pad (.I(lb_c), .O(lb));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[40:42])
    OB la_pad (.I(la_c), .O(la));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[43:45])
    OB ra_pad (.I(ra_c), .O(ra));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[46:48])
    OB rb_pad (.I(rb_c), .O(rb));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[49:51])
    OB rc_pad (.I(rc_c), .O(rc));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[52:54])
    OB vga_pad_3 (.I(GND_net), .O(vga[3]));   // c:/users/ktami/desktop/step/7carlight/aa.v(4[8:11])
    OB vga_pad_2 (.I(GND_net), .O(vga[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(4[8:11])
    OB vga_pad_1 (.I(GND_net), .O(vga[1]));   // c:/users/ktami/desktop/step/7carlight/aa.v(4[8:11])
    OB vga_pad_0 (.I(VCC_net), .O(vga[0]));   // c:/users/ktami/desktop/step/7carlight/aa.v(4[8:11])
    IB nrst_pad (.I(nrst), .O(nrst_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[7:11])
    IB haz_pad (.I(haz), .O(haz_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(2[7:10])
    IB left_pad (.I(left), .O(left_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(2[11:15])
    IB right_pad (.I(right), .O(right_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(2[16:21])
    IB next_state_19__N_144_pad_17 (.I(brake), .O(next_state_19__N_144_c_17));   // c:/users/ktami/desktop/step/7carlight/aa.v(2[22:27])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[24:27])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

