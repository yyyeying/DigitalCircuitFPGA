// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Thu May 10 11:24:36 2018
//
// Verilog Description of module segment_counter
//

module segment_counter (clk, rst, hold, seg_led_1, seg_led_2, ) /* synthesis syn_module_defined=1 */ ;   // c:/fpgacode/timmer/timmer.v(1[8:23])
    input clk;   // c:/fpgacode/timmer/timmer.v(10[9:12])
    input rst;   // c:/fpgacode/timmer/timmer.v(10[13:16])
    input hold;   // c:/fpgacode/timmer/timmer.v(11[8:12])
    output [8:0]seg_led_1;   // c:/fpgacode/timmer/timmer.v(13[19:28])
    output [8:0]seg_led_2;   // c:/fpgacode/timmer/timmer.v(13[29:38])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/fpgacode/timmer/timmer.v(10[9:12])
    wire hold_c /* synthesis is_clock=1, SET_AS_NETWORK=hold_c */ ;   // c:/fpgacode/timmer/timmer.v(11[8:12])
    wire clk_divided /* synthesis SET_AS_NETWORK=clk_divided, is_clock=1 */ ;   // c:/fpgacode/timmer/timmer.v(15[8:19])
    
    wire GND_net, rst_c, seg_led_1_c_6, seg_led_1_c_5, seg_led_1_c_4, 
        seg_led_1_c_3, seg_led_1_c_2, seg_led_1_c_1, seg_led_1_c_0, 
        seg_led_2_c_6, seg_led_2_c_5, seg_led_2_c_4, seg_led_2_c_3, 
        seg_led_2_c_2, seg_led_2_c_1, seg_led_2_c_0, hold_flag, n1017;
    wire [23:0]cnt;   // c:/fpgacode/timmer/timmer.v(19[15:18])
    wire [3:0]cnt_ge;   // c:/fpgacode/timmer/timmer.v(20[14:20])
    wire [3:0]cnt_shi;   // c:/fpgacode/timmer/timmer.v(21[14:21])
    
    wire rst_N_60, n1247, n1246, clk_divided_N_71, n670, n5, n104, 
        n103, n102, n47, n118, n1024, n119, n120, n121, n1, 
        n362, n363, n70, n117, n12;
    wire [31:0]back_to_zero_flag_N_76;
    
    wire n13, n6, n14, n8, n11, n6_adj_1, n1016, n1015, n22, 
        n125, n106, n114, n115, n107, n1014, n6_adj_2, n116, 
        n7, n124, n7_adj_3, n1013, n1012, n113, n112, n123, 
        n111, n110, n1011, n23, n7_adj_4, n109, n6_adj_5, n1140, 
        n11_adj_6, n1010, n1028, n108, n1008, n1257, n122, n1006, 
        n1005, n1003, n105, n1004, n867, n1009, n1023, n1007, 
        n5_adj_7, n1002, n7_adj_8, n1134, n165, n1256, n1025, 
        n4, n1249, clk_divided_enable_7, clk_divided_enable_4, n1260, 
        n1248, VCC_net;
    
    LUT4 i841_4_lut (.A(cnt_shi[3]), .B(cnt_shi[2]), .C(cnt_shi[0]), .D(cnt_shi[1]), 
         .Z(n7)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i841_4_lut.init = 16'hffb7;
    FD1S3AX hold_flag_37 (.D(n1257), .CK(hold_c), .Q(hold_flag));   // c:/fpgacode/timmer/timmer.v(68[9] 69[27])
    defparam hold_flag_37.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_25_3_lut_4_lut (.A(cnt_ge[1]), .B(cnt_ge[2]), .C(cnt_ge[0]), 
         .D(cnt_ge[3]), .Z(clk_divided_enable_7)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_25_3_lut_4_lut.init = 16'h1000;
    VHI i868 (.Z(VCC_net));
    FD1P3IX cnt_ge__i2 (.D(n363), .SP(clk_divided_enable_4), .CD(clk_divided_enable_7), 
            .CK(clk_divided), .Q(cnt_ge[2]));   // c:/fpgacode/timmer/timmer.v(75[8] 81[25])
    defparam cnt_ge__i2.GSR = "ENABLED";
    FD1P3IX cnt_ge__i3 (.D(n362), .SP(clk_divided_enable_4), .CD(clk_divided_enable_7), 
            .CK(clk_divided), .Q(cnt_ge[3]));   // c:/fpgacode/timmer/timmer.v(75[8] 81[25])
    defparam cnt_ge__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(cnt_ge[1]), .B(cnt_ge[2]), .C(cnt_ge[0]), 
         .D(cnt_ge[3]), .Z(seg_led_1_c_2)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h11fd;
    LUT4 mux_58_Mux_6_i15_3_lut_4_lut_4_lut (.A(cnt_shi[1]), .B(cnt_shi[2]), 
         .C(cnt_shi[3]), .D(cnt_shi[0]), .Z(seg_led_2_c_5)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B !(C+!(D))))) */ ;   // c:/fpgacode/timmer/timmer.v(89[28:40])
    defparam mux_58_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h141d;
    LUT4 n937_bdd_3_lut (.A(cnt_shi[3]), .B(cnt_shi[0]), .C(cnt_shi[1]), 
         .Z(n1246)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n937_bdd_3_lut.init = 16'hfdfd;
    OB seg_led_1_pad_7 (.I(GND_net), .O(seg_led_1[7]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    LUT4 i527_4_lut_4_lut (.A(cnt_shi[2]), .B(cnt_shi[3]), .C(cnt_shi[1]), 
         .D(cnt_shi[0]), .Z(n867)) /* synthesis lut_function=(A (B+!(C (D)))+!A ((C+(D))+!B)) */ ;
    defparam i527_4_lut_4_lut.init = 16'hdffb;
    LUT4 i642_2_lut_3_lut (.A(cnt_shi[0]), .B(cnt_shi[1]), .C(cnt_shi[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i642_2_lut_3_lut.init = 16'h7878;
    LUT4 n937_bdd_4_lut_3_lut (.A(cnt_shi[0]), .B(cnt_shi[1]), .C(cnt_shi[3]), 
         .Z(n1247)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;
    defparam n937_bdd_4_lut_3_lut.init = 16'h5d5d;
    LUT4 i1_4_lut_4_lut_adj_1 (.A(cnt_ge[3]), .B(cnt_ge[0]), .C(cnt_ge[2]), 
         .D(cnt_ge[1]), .Z(seg_led_1_c_5)) /* synthesis lut_function=(!(A (C+(D))+!A (B ((D)+!C)+!B !(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_1.init = 16'h105b;
    FD1P3AX cnt_shi_139__i3 (.D(n22), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_shi[3]));   // c:/fpgacode/timmer/timmer.v(77[15:26])
    defparam cnt_shi_139__i3.GSR = "ENABLED";
    CCU2D cnt_141_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1012), .COUT(n1013), .S0(n112), .S1(n111));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_15.INJECT1_0 = "NO";
    defparam cnt_141_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(cnt_ge[0]), .B(rst_c), .C(n13), .D(n14), .Z(n47)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/fpgacode/timmer/timmer.v(20[14:20])
    defparam i1_4_lut.init = 16'hccc8;
    LUT4 rst_I_0_1_lut (.A(rst_c), .Z(rst_N_60)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpgacode/timmer/timmer.v(47[8:12])
    defparam rst_I_0_1_lut.init = 16'h5555;
    FD1S3IX cnt_141__i23 (.D(n102), .CK(clk_c), .CD(n670), .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i23.GSR = "DISABLED";
    CCU2D cnt_141_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1011), .COUT(n1012), .S0(n114), .S1(n113));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_13.INJECT1_0 = "NO";
    defparam cnt_141_add_4_13.INJECT1_1 = "NO";
    LUT4 i15_2_lut (.A(n70), .B(clk_divided), .Z(clk_divided_N_71)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpgacode/timmer/timmer.v(15[8:19])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i5_4_lut (.A(back_to_zero_flag_N_76[5]), .B(back_to_zero_flag_N_76[8]), 
         .C(back_to_zero_flag_N_76[4]), .D(back_to_zero_flag_N_76[7]), .Z(n13)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpgacode/timmer/timmer.v(20[14:20])
    defparam i5_4_lut.init = 16'hffef;
    LUT4 i6_4_lut (.A(back_to_zero_flag_N_76[1]), .B(back_to_zero_flag_N_76[3]), 
         .C(back_to_zero_flag_N_76[2]), .D(back_to_zero_flag_N_76[6]), .Z(n14)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpgacode/timmer/timmer.v(20[14:20])
    defparam i6_4_lut.init = 16'hfffb;
    CCU2D cnt_141_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1017), .S0(n102));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_25.INIT1 = 16'h0000;
    defparam cnt_141_add_4_25.INJECT1_0 = "NO";
    defparam cnt_141_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_141_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1016), .COUT(n1017), .S0(n104), .S1(n103));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_23.INJECT1_0 = "NO";
    defparam cnt_141_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_141_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1015), .COUT(n1016), .S0(n106), .S1(n105));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_21.INJECT1_0 = "NO";
    defparam cnt_141_add_4_21.INJECT1_1 = "NO";
    LUT4 mux_58_Mux_5_i15_4_lut_4_lut (.A(cnt_shi[0]), .B(cnt_shi[1]), .C(cnt_shi[2]), 
         .D(cnt_shi[3]), .Z(seg_led_2_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam mux_58_Mux_5_i15_4_lut_4_lut.init = 16'h037c;
    LUT4 i838_2_lut_4_lut (.A(cnt_shi[0]), .B(cnt_shi[2]), .C(cnt_shi[3]), 
         .D(cnt_shi[1]), .Z(n4)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (C (D))))) */ ;
    defparam i838_2_lut_4_lut.init = 16'h35ff;
    CCU2D cnt_141_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1014), .COUT(n1015), .S0(n108), .S1(n107));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_19.INJECT1_0 = "NO";
    defparam cnt_141_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_141_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1013), .COUT(n1014), .S0(n110), .S1(n109));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_17.INJECT1_0 = "NO";
    defparam cnt_141_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_141_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1010), 
          .COUT(n1011), .S0(n116), .S1(n115));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_11.INJECT1_0 = "NO";
    defparam cnt_141_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_141_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1009), 
          .COUT(n1010), .S0(n118), .S1(n117));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_9.INJECT1_0 = "NO";
    defparam cnt_141_add_4_9.INJECT1_1 = "NO";
    LUT4 i144_2_lut_rep_24_3_lut_4_lut_4_lut (.A(hold_flag), .B(cnt_ge[0]), 
         .C(n1256), .D(cnt_ge[3]), .Z(clk_divided_enable_4)) /* synthesis lut_function=(!(A ((C+!(D))+!B))) */ ;   // c:/fpgacode/timmer/timmer.v(69[16:26])
    defparam i144_2_lut_rep_24_3_lut_4_lut_4_lut.init = 16'h5d55;
    CCU2D cnt_141_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1008), 
          .COUT(n1009), .S0(n120), .S1(n119));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_7.INJECT1_0 = "NO";
    defparam cnt_141_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_141_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1007), 
          .COUT(n1008), .S0(n122), .S1(n121));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_5.INJECT1_0 = "NO";
    defparam cnt_141_add_4_5.INJECT1_1 = "NO";
    FD1P3IX cnt_ge__i1 (.D(n6_adj_1), .SP(clk_divided_enable_4), .CD(clk_divided_enable_7), 
            .CK(clk_divided), .Q(cnt_ge[1]));   // c:/fpgacode/timmer/timmer.v(75[8] 81[25])
    defparam cnt_ge__i1.GSR = "ENABLED";
    FD1P3AX cnt_shi_139__i2 (.D(n23), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_shi[2]));   // c:/fpgacode/timmer/timmer.v(77[15:26])
    defparam cnt_shi_139__i2.GSR = "ENABLED";
    FD1P3AX cnt_shi_139__i1 (.D(n6_adj_5), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_shi[1]));   // c:/fpgacode/timmer/timmer.v(77[15:26])
    defparam cnt_shi_139__i1.GSR = "ENABLED";
    CCU2D add_142_5 (.A0(n1134), .B0(n7_adj_3), .C0(n5), .D0(n7_adj_8), 
          .A1(n7), .B1(n6), .C1(GND_net), .D1(GND_net), .CIN(n1003), 
          .COUT(n1004), .S0(back_to_zero_flag_N_76[4]), .S1(back_to_zero_flag_N_76[5]));   // c:/fpgacode/timmer/timmer.v(62[12:35])
    defparam add_142_5.INIT0 = 16'hf7ff;
    defparam add_142_5.INIT1 = 16'h8777;
    defparam add_142_5.INJECT1_0 = "NO";
    defparam add_142_5.INJECT1_1 = "NO";
    LUT4 i1_1_lut (.A(cnt_shi[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i848_2_lut_4_lut (.A(cnt_shi[0]), .B(cnt_shi[2]), .C(cnt_shi[3]), 
         .D(cnt_shi[1]), .Z(n6_adj_2)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam i848_2_lut_4_lut.init = 16'hcaff;
    LUT4 i1_4_lut_4_lut_adj_2 (.A(cnt_shi[0]), .B(cnt_shi[1]), .C(cnt_shi[2]), 
         .D(cnt_shi[3]), .Z(n5)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_2.init = 16'h8200;
    LUT4 i846_4_lut (.A(cnt_shi[0]), .B(cnt_shi[2]), .C(cnt_shi[3]), .D(cnt_shi[1]), 
         .Z(seg_led_2_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i846_4_lut.init = 16'h0511;
    LUT4 i823_4_lut (.A(cnt_shi[1]), .B(cnt_shi[0]), .C(cnt_shi[3]), .D(cnt_shi[2]), 
         .Z(n7_adj_4)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C+(D))+!B)) */ ;
    defparam i823_4_lut.init = 16'hff7b;
    LUT4 cnt_ge_3__bdd_4_lut (.A(cnt_ge[3]), .B(cnt_ge[0]), .C(cnt_ge[2]), 
         .D(cnt_ge[1]), .Z(seg_led_1_c_3)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;
    defparam cnt_ge_3__bdd_4_lut.init = 16'h154b;
    LUT4 i427_3_lut (.A(cnt_ge[2]), .B(cnt_ge[0]), .C(cnt_ge[1]), .Z(n363)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpgacode/timmer/timmer.v(20[14:20])
    defparam i427_3_lut.init = 16'h6a6a;
    LUT4 i14_4_lut (.A(cnt_shi[0]), .B(cnt_shi[3]), .C(cnt_shi[2]), .D(cnt_shi[1]), 
         .Z(n6)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+!(D))+!B !(C))) */ ;
    defparam i14_4_lut.init = 16'he3ef;
    LUT4 cnt_ge_3__bdd_4_lut_849 (.A(cnt_ge[3]), .B(cnt_ge[0]), .C(cnt_ge[2]), 
         .D(cnt_ge[1]), .Z(seg_led_1_c_0)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B ((D)+!C)))) */ ;
    defparam cnt_ge_3__bdd_4_lut_849.init = 16'h554b;
    LUT4 i649_3_lut_4_lut (.A(cnt_shi[0]), .B(cnt_shi[1]), .C(cnt_shi[2]), 
         .D(cnt_shi[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i649_3_lut_4_lut.init = 16'h7f80;
    FD1S3IX cnt_141__i0 (.D(n125), .CK(clk_c), .CD(n670), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i0.GSR = "DISABLED";
    FD1S3IX clk_divided_36 (.D(clk_divided_N_71), .CK(clk_c), .CD(rst_N_60), 
            .Q(clk_divided));   // c:/fpgacode/timmer/timmer.v(46[9] 57[6])
    defparam clk_divided_36.GSR = "DISABLED";
    FD1S3IX cnt_141__i22 (.D(n103), .CK(clk_c), .CD(n670), .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i22.GSR = "DISABLED";
    FD1S3IX cnt_141__i21 (.D(n104), .CK(clk_c), .CD(n670), .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i21.GSR = "DISABLED";
    FD1S3IX cnt_ge__i0 (.D(n11_adj_6), .CK(clk_divided), .CD(clk_divided_enable_7), 
            .Q(cnt_ge[0]));   // c:/fpgacode/timmer/timmer.v(75[8] 81[25])
    defparam cnt_ge__i0.GSR = "ENABLED";
    FD1S3IX cnt_141__i20 (.D(n105), .CK(clk_c), .CD(n670), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i20.GSR = "DISABLED";
    CCU2D add_142_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1005), 
          .S0(back_to_zero_flag_N_76[8]));   // c:/fpgacode/timmer/timmer.v(62[12:35])
    defparam add_142_cout.INIT0 = 16'h0000;
    defparam add_142_cout.INIT1 = 16'h0000;
    defparam add_142_cout.INJECT1_0 = "NO";
    defparam add_142_cout.INJECT1_1 = "NO";
    FD1S3IX cnt_141__i19 (.D(n106), .CK(clk_c), .CD(n670), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i19.GSR = "DISABLED";
    FD1S3IX cnt_141__i18 (.D(n107), .CK(clk_c), .CD(n670), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i18.GSR = "DISABLED";
    FD1S3IX cnt_141__i17 (.D(n108), .CK(clk_c), .CD(n670), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i17.GSR = "DISABLED";
    FD1P3AX cnt_shi_139__i0 (.D(n1), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_shi[0]));   // c:/fpgacode/timmer/timmer.v(77[15:26])
    defparam cnt_shi_139__i0.GSR = "ENABLED";
    FD1S3IX cnt_141__i16 (.D(n109), .CK(clk_c), .CD(n670), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i16.GSR = "DISABLED";
    FD1S3IX cnt_141__i15 (.D(n110), .CK(clk_c), .CD(n670), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i15.GSR = "DISABLED";
    FD1S3IX cnt_141__i14 (.D(n111), .CK(clk_c), .CD(n670), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i14.GSR = "DISABLED";
    FD1S3IX cnt_141__i13 (.D(n112), .CK(clk_c), .CD(n670), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i13.GSR = "DISABLED";
    CCU2D add_142_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ge[1]), .B1(n7_adj_4), .C1(n1140), .D1(n5_adj_7), 
          .COUT(n1002), .S1(back_to_zero_flag_N_76[1]));   // c:/fpgacode/timmer/timmer.v(62[12:35])
    defparam add_142_1.INIT0 = 16'hF000;
    defparam add_142_1.INIT1 = 16'h5955;
    defparam add_142_1.INJECT1_0 = "NO";
    defparam add_142_1.INJECT1_1 = "NO";
    FD1S3IX cnt_141__i12 (.D(n113), .CK(clk_c), .CD(n670), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i12.GSR = "DISABLED";
    FD1S3IX cnt_141__i11 (.D(n114), .CK(clk_c), .CD(n670), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i11.GSR = "DISABLED";
    FD1S3IX cnt_141__i10 (.D(n115), .CK(clk_c), .CD(n670), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i10.GSR = "DISABLED";
    FD1S3IX cnt_141__i9 (.D(n116), .CK(clk_c), .CD(n670), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i9.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3IX cnt_141__i8 (.D(n117), .CK(clk_c), .CD(n670), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i8.GSR = "DISABLED";
    FD1S3IX cnt_141__i7 (.D(n118), .CK(clk_c), .CD(n670), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i7.GSR = "DISABLED";
    FD1S3IX cnt_141__i6 (.D(n119), .CK(clk_c), .CD(n670), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i6.GSR = "DISABLED";
    LUT4 i777_3_lut_4_lut (.A(cnt_shi[3]), .B(cnt_shi[2]), .C(cnt_shi[1]), 
         .D(cnt_shi[0]), .Z(n1140)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam i777_3_lut_4_lut.init = 16'h9600;
    CCU2D add_142_3 (.A0(n6_adj_2), .B0(n4), .C0(cnt_ge[2]), .D0(GND_net), 
          .A1(n1248), .B1(n1249), .C1(cnt_ge[3]), .D1(GND_net), .CIN(n1002), 
          .COUT(n1003), .S0(back_to_zero_flag_N_76[2]), .S1(back_to_zero_flag_N_76[3]));   // c:/fpgacode/timmer/timmer.v(62[12:35])
    defparam add_142_3.INIT0 = 16'h8787;
    defparam add_142_3.INIT1 = 16'h8787;
    defparam add_142_3.INJECT1_0 = "NO";
    defparam add_142_3.INJECT1_1 = "NO";
    FD1S3IX cnt_141__i5 (.D(n120), .CK(clk_c), .CD(n670), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i5.GSR = "DISABLED";
    FD1S3IX cnt_141__i4 (.D(n121), .CK(clk_c), .CD(n670), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i4.GSR = "DISABLED";
    FD1S3IX cnt_141__i3 (.D(n122), .CK(clk_c), .CD(n670), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i3.GSR = "DISABLED";
    FD1S3IX cnt_141__i2 (.D(n123), .CK(clk_c), .CD(n670), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i2.GSR = "DISABLED";
    CCU2D cnt_141_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1006), 
          .COUT(n1007), .S0(n124), .S1(n123));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_141_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_141_add_4_3.INJECT1_0 = "NO";
    defparam cnt_141_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_141__i1 (.D(n124), .CK(clk_c), .CD(n670), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141__i1.GSR = "DISABLED";
    OB seg_led_1_pad_6 (.I(seg_led_1_c_6), .O(seg_led_1[6]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    OB seg_led_1_pad_8 (.I(GND_net), .O(seg_led_1[8]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    LUT4 i545_4_lut (.A(cnt_ge[3]), .B(cnt_ge[0]), .C(cnt_ge[2]), .D(cnt_ge[1]), 
         .Z(n362)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam i545_4_lut.init = 16'h6aaa;
    OB seg_led_1_pad_5 (.I(seg_led_1_c_5), .O(seg_led_1[5]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    OB seg_led_1_pad_4 (.I(seg_led_1_c_4), .O(seg_led_1[4]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    OB seg_led_1_pad_3 (.I(seg_led_1_c_3), .O(seg_led_1[3]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    OB seg_led_1_pad_2 (.I(seg_led_1_c_2), .O(seg_led_1[2]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    OB seg_led_1_pad_1 (.I(seg_led_1_c_1), .O(seg_led_1[1]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    OB seg_led_1_pad_0 (.I(seg_led_1_c_0), .O(seg_led_1[0]));   // c:/fpgacode/timmer/timmer.v(13[19:28])
    OB seg_led_2_pad_8 (.I(GND_net), .O(seg_led_2[8]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_7 (.I(GND_net), .O(seg_led_2[7]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_6 (.I(seg_led_2_c_6), .O(seg_led_2[6]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_5 (.I(seg_led_2_c_5), .O(seg_led_2[5]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_4 (.I(seg_led_2_c_4), .O(seg_led_2[4]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_3 (.I(seg_led_2_c_3), .O(seg_led_2[3]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_2 (.I(seg_led_2_c_2), .O(seg_led_2[2]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_1 (.I(seg_led_2_c_1), .O(seg_led_2[1]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    OB seg_led_2_pad_0 (.I(seg_led_2_c_0), .O(seg_led_2[0]));   // c:/fpgacode/timmer/timmer.v(13[29:38])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/fpgacode/timmer/timmer.v(10[9:12])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/fpgacode/timmer/timmer.v(10[13:16])
    IB hold_pad (.I(hold), .O(hold_c));   // c:/fpgacode/timmer/timmer.v(11[8:12])
    LUT4 i819_3_lut_4_lut (.A(cnt_shi[0]), .B(cnt_shi[1]), .C(cnt_shi[2]), 
         .D(cnt_shi[3]), .Z(n8)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C (D)))) */ ;
    defparam i819_3_lut_4_lut.init = 16'he1ff;
    GSR GSR_INST (.GSR(n47));
    CCU2D add_142_7 (.A0(n867), .B0(n8), .C0(GND_net), .D0(GND_net), 
          .A1(n1), .B1(cnt_shi[0]), .C1(n1260), .D1(cnt_shi[1]), .CIN(n1004), 
          .COUT(n1005), .S0(back_to_zero_flag_N_76[6]), .S1(back_to_zero_flag_N_76[7]));   // c:/fpgacode/timmer/timmer.v(62[12:35])
    defparam add_142_7.INIT0 = 16'h8777;
    defparam add_142_7.INIT1 = 16'hf050;
    defparam add_142_7.INJECT1_0 = "NO";
    defparam add_142_7.INJECT1_1 = "NO";
    LUT4 cnt_shi_3__bdd_4_lut_855 (.A(cnt_shi[3]), .B(cnt_shi[0]), .C(cnt_shi[2]), 
         .D(cnt_shi[1]), .Z(n1249)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(C))) */ ;
    defparam cnt_shi_3__bdd_4_lut_855.init = 16'hcbef;
    LUT4 i1_2_lut (.A(rst_c), .B(n70), .Z(n670)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 cnt_shi_2__bdd_4_lut (.A(cnt_shi[2]), .B(cnt_shi[0]), .C(cnt_shi[3]), 
         .D(cnt_shi[1]), .Z(seg_led_2_c_0)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam cnt_shi_2__bdd_4_lut.init = 16'h0f59;
    LUT4 i1_4_lut_adj_3 (.A(cnt[21]), .B(cnt[23]), .C(cnt[22]), .D(n1023), 
         .Z(n70)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam i1_4_lut_adj_3.init = 16'hfcec;
    LUT4 equal_71_i7_2_lut_2_lut_3_lut_4_lut (.A(cnt_shi[2]), .B(cnt_shi[3]), 
         .C(cnt_shi[1]), .D(cnt_shi[0]), .Z(n7_adj_3)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpgacode/timmer/timmer.v(62[13:25])
    defparam equal_71_i7_2_lut_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i826_3_lut_4_lut (.A(cnt_shi[0]), .B(cnt_shi[3]), .C(cnt_shi[2]), 
         .D(cnt_shi[1]), .Z(n1134)) /* synthesis lut_function=((B+(C (D)+!C !(D)))+!A) */ ;
    defparam i826_3_lut_4_lut.init = 16'hfddf;
    LUT4 i236_2_lut_3_lut_3_lut_4_lut_4_lut (.A(hold_flag), .B(cnt_ge[0]), 
         .C(n1256), .D(cnt_ge[3]), .Z(n11_adj_6)) /* synthesis lut_function=(A (B (C+!(D)))+!A !(B)) */ ;   // c:/fpgacode/timmer/timmer.v(69[16:26])
    defparam i236_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h9199;
    LUT4 i529_2_lut_rep_30 (.A(cnt_shi[2]), .B(cnt_shi[3]), .Z(n1260)) /* synthesis lut_function=(A (B)) */ ;
    defparam i529_2_lut_rep_30.init = 16'h8888;
    LUT4 i1_4_lut_adj_4 (.A(cnt_ge[2]), .B(cnt_ge[3]), .C(cnt_ge[1]), 
         .D(cnt_ge[0]), .Z(seg_led_1_c_1)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B (C)))) */ ;
    defparam i1_4_lut_adj_4.init = 16'h3517;
    LUT4 i843_4_lut_4_lut (.A(cnt_shi[2]), .B(cnt_shi[3]), .C(cnt_shi[1]), 
         .D(cnt_shi[0]), .Z(n7_adj_8)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B+((D)+!C))) */ ;
    defparam i843_4_lut_4_lut.init = 16'hffc7;
    LUT4 i835_4_lut (.A(cnt_shi[1]), .B(cnt_shi[0]), .C(cnt_shi[3]), .D(cnt_shi[2]), 
         .Z(n5_adj_7)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C (D)))) */ ;
    defparam i835_4_lut.init = 16'hb7ff;
    PFUMX i853 (.BLUT(n1247), .ALUT(n1246), .C0(cnt_shi[2]), .Z(n1248));
    LUT4 i2_4_lut (.A(cnt[20]), .B(cnt[18]), .C(cnt[19]), .D(n1024), 
         .Z(n1023)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/fpgacode/timmer/timmer.v(51[9:23])
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1_4_lut_4_lut_adj_5 (.A(cnt_shi[1]), .B(cnt_shi[2]), .C(cnt_shi[0]), 
         .D(cnt_shi[3]), .Z(seg_led_2_c_2)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (D)))) */ ;   // c:/fpgacode/timmer/timmer.v(89[28:40])
    defparam i1_4_lut_4_lut_adj_5.init = 16'h11fd;
    LUT4 i3_4_lut (.A(cnt[15]), .B(cnt[16]), .C(cnt[17]), .D(n1028), 
         .Z(n1024)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpgacode/timmer/timmer.v(19[15:18])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_6 (.A(cnt[14]), .B(cnt[12]), .C(n1025), .D(cnt[13]), 
         .Z(n1028)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpgacode/timmer/timmer.v(19[15:18])
    defparam i3_4_lut_adj_6.init = 16'hfffe;
    LUT4 i2_4_lut_adj_7 (.A(cnt[11]), .B(cnt[9]), .C(cnt[10]), .D(n165), 
         .Z(n1025)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_7.init = 16'ha080;
    LUT4 i138_4_lut (.A(cnt[8]), .B(n11), .C(cnt[7]), .D(n12), .Z(n165)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i138_4_lut.init = 16'ha8a0;
    VLO i1 (.Z(GND_net));
    LUT4 i4_3_lut (.A(cnt[4]), .B(cnt[0]), .C(cnt[1]), .Z(n11)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4_3_lut.init = 16'h8080;
    CCU2D cnt_141_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1006), 
          .S1(n125));   // c:/fpgacode/timmer/timmer.v(52[13:20])
    defparam cnt_141_add_4_1.INIT0 = 16'hF000;
    defparam cnt_141_add_4_1.INIT1 = 16'h0555;
    defparam cnt_141_add_4_1.INJECT1_0 = "NO";
    defparam cnt_141_add_4_1.INJECT1_1 = "NO";
    LUT4 cnt_shi_0__bdd_4_lut (.A(cnt_shi[0]), .B(cnt_shi[3]), .C(cnt_shi[2]), 
         .D(cnt_shi[1]), .Z(seg_led_2_c_1)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam cnt_shi_0__bdd_4_lut.init = 16'h231f;
    LUT4 i5_4_lut_adj_8 (.A(cnt[2]), .B(cnt[5]), .C(cnt[6]), .D(cnt[3]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_8.init = 16'h8000;
    LUT4 i30_2_lut (.A(cnt_ge[0]), .B(cnt_ge[1]), .Z(n6_adj_1)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpgacode/timmer/timmer.v(20[14:20])
    defparam i30_2_lut.init = 16'h6666;
    LUT4 i29_4_lut (.A(cnt_ge[0]), .B(cnt_ge[1]), .C(cnt_ge[3]), .D(cnt_ge[2]), 
         .Z(seg_led_1_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/fpgacode/timmer/timmer.v(20[14:20])
    defparam i29_4_lut.init = 16'h073c;
    LUT4 cnt_shi_3__bdd_4_lut (.A(cnt_shi[3]), .B(cnt_shi[2]), .C(cnt_shi[1]), 
         .D(cnt_shi[0]), .Z(seg_led_2_c_3)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;
    defparam cnt_shi_3__bdd_4_lut.init = 16'h1653;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i812_4_lut (.A(cnt_ge[0]), .B(cnt_ge[2]), .C(cnt_ge[3]), .D(cnt_ge[1]), 
         .Z(seg_led_1_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i812_4_lut.init = 16'h0511;
    LUT4 hold_flag_I_0_1_lut_rep_27 (.A(hold_flag), .Z(n1257)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpgacode/timmer/timmer.v(69[16:26])
    defparam hold_flag_I_0_1_lut_rep_27.init = 16'h5555;
    LUT4 i787_2_lut_rep_26 (.A(cnt_ge[1]), .B(cnt_ge[2]), .Z(n1256)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i787_2_lut_rep_26.init = 16'heeee;
    LUT4 i120_2_lut (.A(cnt_shi[0]), .B(cnt_shi[1]), .Z(n6_adj_5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpgacode/timmer/timmer.v(89[28:40])
    defparam i120_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

