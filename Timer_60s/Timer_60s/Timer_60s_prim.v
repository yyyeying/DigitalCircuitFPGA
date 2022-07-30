// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed May 23 16:55:00 2018
//
// Verilog Description of module Timer_60s
//

module Timer_60s (clk_in, rst_n_in, pause, segment_led_1, segment_led_2, 
            led) /* synthesis syn_module_defined=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(24[8:17])
    input clk_in;   // c:/fpgacode/timer_60s/timer_60s.v(26[11:17])
    input rst_n_in;   // c:/fpgacode/timer_60s/timer_60s.v(27[11:19])
    input pause;   // c:/fpgacode/timer_60s/timer_60s.v(28[11:16])
    output [8:0]segment_led_1;   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    output [8:0]segment_led_2;   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    output [13:0]led;   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(26[11:17])
    
    wire GND_net, VCC_net, rst_n_in_c, pause_c_0, segment_led_1_c_6, 
        segment_led_1_c_5, segment_led_1_c_4, segment_led_1_c_3, segment_led_1_c_2, 
        segment_led_1_c_1, segment_led_1_c_0, segment_led_2_c_6, segment_led_2_c_5, 
        segment_led_2_c_4, segment_led_2_c_3, segment_led_2_c_2, segment_led_2_c_1, 
        segment_led_2_c_0, led_c, clk_in_c_enable_27;
    wire [23:0]cnt;   // c:/fpgacode/timer_60s/timer_60s.v(51[16:19])
    wire [7:0]seg_data;   // c:/fpgacode/timer_60s/timer_60s.v(65[15:23])
    
    wire n24, n22, n1013, n18, n16, n1002, n1012, n1172, n1011, 
        n1010, n129, n130, n1164, n1160, n12, n1016, n1009, 
        n9, n1008, n8, n1288, n1150, clk_in_c_enable_15, n612, 
        n1007, n1006, n1005, n1004, n1149, n1003, n125, n124, 
        n123, n122, n121, n120, n119, n118, n117, n116, n115, 
        clk_in_c_enable_30, n114, n113, n112, n111, n110, n109, 
        n1017, n108, n107, n106, n105, n104, n103, n102, n1148, 
        n1289, n1341, n1218, n1135, n1137, clk_in_c_enable_29, n583, 
        n579, n1138, n1340;
    
    VHI i996 (.Z(VCC_net));
    LUT4 i896_4_lut (.A(cnt[9]), .B(n1138), .C(n1148), .D(cnt[20]), 
         .Z(n1172)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i896_4_lut.init = 16'h8000;
    LUT4 i523_4_lut (.A(seg_data[3]), .B(clk_in_c_enable_15), .C(n1289), 
         .D(clk_in_c_enable_29), .Z(n18)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam i523_4_lut.init = 16'h0322;
    LUT4 i1_3_lut_4_lut (.A(seg_data[5]), .B(seg_data[4]), .C(seg_data[6]), 
         .D(seg_data[7]), .Z(n583)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(78[22:42])
    defparam i1_3_lut_4_lut.init = 16'hfe01;
    CCU2D cnt_111_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1002), 
          .S1(n125));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_1.INIT0 = 16'hF000;
    defparam cnt_111_add_4_1.INIT1 = 16'h0555;
    defparam cnt_111_add_4_1.INJECT1_0 = "NO";
    defparam cnt_111_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_111_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1012), .COUT(n1013), .S0(n104), .S1(n103));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_23.INJECT1_0 = "NO";
    defparam cnt_111_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_111_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1011), .COUT(n1012), .S0(n106), .S1(n105));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_21.INJECT1_0 = "NO";
    defparam cnt_111_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_111_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1010), .COUT(n1011), .S0(n108), .S1(n107));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_19.INJECT1_0 = "NO";
    defparam cnt_111_add_4_19.INJECT1_1 = "NO";
    OB segment_led_1_pad_7 (.I(GND_net), .O(segment_led_1[7]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    CCU2D cnt_111_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1009), .COUT(n1010), .S0(n110), .S1(n109));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_17.INJECT1_0 = "NO";
    defparam cnt_111_add_4_17.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(n1137), .B(cnt[18]), .C(cnt[17]), .D(cnt[16]), 
         .Z(n1017)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    CCU2D cnt_111_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1008), .COUT(n1009), .S0(n112), .S1(n111));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_15.INJECT1_0 = "NO";
    defparam cnt_111_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_111_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1007), .COUT(n1008), .S0(n114), .S1(n113));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_13.INJECT1_0 = "NO";
    defparam cnt_111_add_4_13.INJECT1_1 = "NO";
    LUT4 i888_3_lut (.A(cnt[12]), .B(cnt[23]), .C(cnt[21]), .Z(n1164)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i888_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_rep_15 (.A(seg_data[2]), .B(seg_data[0]), .C(seg_data[3]), 
         .D(seg_data[1]), .Z(n1340)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(72[7:24])
    defparam i2_3_lut_rep_15.init = 16'hfffe;
    CCU2D cnt_111_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1006), 
          .COUT(n1007), .S0(n116), .S1(n115));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_11.INJECT1_0 = "NO";
    defparam cnt_111_add_4_11.INJECT1_1 = "NO";
    LUT4 i947_2_lut_4_lut_4_lut (.A(n1340), .B(n1160), .C(n1218), .D(n1172), 
         .Z(clk_in_c_enable_27)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam i947_2_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3IX cnt_111__i2 (.D(n123), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i2.GSR = "ENABLED";
    FD1P3IX cnt_111__i6 (.D(n119), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i6.GSR = "ENABLED";
    FD1P3IX cnt_111__i3 (.D(n122), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i3.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(cnt[12]), .B(n1135), .C(cnt[11]), .D(n22), .Z(n1137)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    FD1P3IX cnt_111__i4 (.D(n121), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i4.GSR = "ENABLED";
    FD1P3IX cnt_111__i9 (.D(n116), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i9.GSR = "ENABLED";
    LUT4 i144_4_lut (.A(n1149), .B(cnt[10]), .C(cnt[9]), .D(cnt[8]), 
         .Z(n22)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i144_4_lut.init = 16'hfcec;
    LUT4 i2_4_lut (.A(cnt[21]), .B(cnt[20]), .C(n1017), .D(cnt[19]), 
         .Z(n1016)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    Segment_led Segment_led_uut (.seg_data({seg_data}), .segment_led_1_c_6(segment_led_1_c_6), 
            .segment_led_1_c_3(segment_led_1_c_3), .segment_led_1_c_4(segment_led_1_c_4), 
            .segment_led_1_c_5(segment_led_1_c_5), .segment_led_2_c_2(segment_led_2_c_2), 
            .segment_led_2_c_3(segment_led_2_c_3), .segment_led_2_c_4(segment_led_2_c_4), 
            .segment_led_2_c_5(segment_led_2_c_5), .segment_led_1_c_0(segment_led_1_c_0), 
            .segment_led_1_c_1(segment_led_1_c_1), .segment_led_1_c_2(segment_led_1_c_2), 
            .n130(n130), .segment_led_2_c_6(segment_led_2_c_6), .segment_led_2_c_1(segment_led_2_c_1), 
            .segment_led_2_c_0(segment_led_2_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(86[14] 92[3])
    FD1P3IX cnt_111__i7 (.D(n118), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i7.GSR = "ENABLED";
    CCU2D cnt_111_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1005), 
          .COUT(n1006), .S0(n118), .S1(n117));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_9.INJECT1_0 = "NO";
    defparam cnt_111_add_4_9.INJECT1_1 = "NO";
    FD1P3IX cnt_111__i5 (.D(n120), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i5.GSR = "ENABLED";
    FD1P3IX cnt_111__i8 (.D(n117), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i8.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_3 (.A(cnt[0]), .B(n1138), .C(cnt[7]), .D(n1148), 
         .Z(n1149)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_3.init = 16'h8000;
    OB segment_led_1_pad_6 (.I(segment_led_1_c_6), .O(segment_led_1[6]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    FD1P3IX cnt_111__i11 (.D(n114), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i11.GSR = "ENABLED";
    FD1P3IX cnt_111__i15 (.D(n110), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i15.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(cnt[1]), .B(cnt[4]), .C(cnt[2]), .Z(n1138)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3IX cnt_111__i22 (.D(n103), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i22.GSR = "ENABLED";
    FD1P3IX cnt_111__i1 (.D(n124), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i1.GSR = "ENABLED";
    FD1P3IX cnt_111__i23 (.D(n102), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i23.GSR = "ENABLED";
    FD1P3IX cnt_111__i16 (.D(n109), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i16.GSR = "ENABLED";
    FD1P3AY led__i1 (.D(n1341), .SP(clk_in_c_enable_15), .CK(clk_in_c), 
            .Q(led_c));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam led__i1.GSR = "ENABLED";
    FD1P3IX cnt_111__i17 (.D(n108), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i17.GSR = "ENABLED";
    FD1P3IX cnt_111__i12 (.D(n113), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i12.GSR = "ENABLED";
    FD1P3IX cnt_111__i18 (.D(n107), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i18.GSR = "ENABLED";
    FD1P3IX cnt_111__i19 (.D(n106), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i19.GSR = "ENABLED";
    LUT4 i935_4_lut (.A(clk_in_c_enable_27), .B(n1150), .C(seg_data[5]), 
         .D(seg_data[7]), .Z(clk_in_c_enable_15)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i935_4_lut.init = 16'h0002;
    FD1P3IX cnt_111__i13 (.D(n112), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i13.GSR = "ENABLED";
    FD1P3IX cnt_111__i20 (.D(n105), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i20.GSR = "ENABLED";
    FD1P3IX cnt_111__i14 (.D(n111), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i14.GSR = "ENABLED";
    FD1P3IX cnt_111__i21 (.D(n104), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i21.GSR = "ENABLED";
    LUT4 i205_2_lut_rep_14 (.A(seg_data[5]), .B(seg_data[4]), .Z(n1288)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(78[22:42])
    defparam i205_2_lut_rep_14.init = 16'heeee;
    OB segment_led_1_pad_8 (.I(GND_net), .O(segment_led_1[8]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    FD1P3IX cnt_111__i10 (.D(n115), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i10.GSR = "ENABLED";
    LUT4 i500_3_lut_4_lut_4_lut (.A(seg_data[2]), .B(seg_data[0]), .C(seg_data[3]), 
         .D(seg_data[1]), .Z(n129)) /* synthesis lut_function=(A (B+(D))+!A !(B+((D)+!C))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(72[7:24])
    defparam i500_3_lut_4_lut_4_lut.init = 16'haa98;
    LUT4 seg_data_3__bdd_4_lut (.A(seg_data[3]), .B(seg_data[2]), .C(seg_data[0]), 
         .D(seg_data[1]), .Z(n1289)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;
    defparam seg_data_3__bdd_4_lut.init = 16'h5556;
    LUT4 i2_3_lut_adj_4 (.A(cnt[5]), .B(cnt[3]), .C(cnt[6]), .Z(n1148)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_4.init = 16'h8080;
    LUT4 i1_2_lut (.A(seg_data[6]), .B(seg_data[4]), .Z(n1150)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i943_4_lut (.A(n9), .B(cnt[22]), .C(n8), .D(cnt[19]), .Z(n1218)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(71[11:26])
    defparam i943_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_adj_5 (.A(cnt[14]), .B(cnt[13]), .C(cnt[15]), .Z(n1135)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_5.init = 16'hfefe;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i3_4_lut_adj_6 (.A(n1135), .B(cnt[16]), .C(n1164), .D(cnt[0]), 
         .Z(n9)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_6.init = 16'hbfff;
    FD1S3AY seg_data__i0 (.D(n24), .CK(clk_in_c), .Q(seg_data[0]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i0.GSR = "ENABLED";
    FD1P3IX seg_data__i7 (.D(n583), .SP(clk_in_c_enable_27), .CD(clk_in_c_enable_15), 
            .CK(clk_in_c), .Q(seg_data[7]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i7.GSR = "ENABLED";
    CCU2D cnt_111_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1004), 
          .COUT(n1005), .S0(n120), .S1(n119));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_7.INJECT1_0 = "NO";
    defparam cnt_111_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_111_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1003), 
          .COUT(n1004), .S0(n122), .S1(n121));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_5.INJECT1_0 = "NO";
    defparam cnt_111_add_4_5.INJECT1_1 = "NO";
    FD1S3AY seg_data__i6 (.D(n12), .CK(clk_in_c), .Q(seg_data[6]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i6.GSR = "ENABLED";
    FD1P3IX seg_data__i5 (.D(n579), .SP(clk_in_c_enable_27), .CD(clk_in_c_enable_15), 
            .CK(clk_in_c), .Q(seg_data[5]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i5.GSR = "ENABLED";
    FD1S3AY seg_data__i4 (.D(n16), .CK(clk_in_c), .Q(seg_data[4]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i4.GSR = "ENABLED";
    FD1S3AY seg_data__i3 (.D(n18), .CK(clk_in_c), .Q(seg_data[3]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i3.GSR = "ENABLED";
    FD1P3IX seg_data__i2 (.D(n129), .SP(clk_in_c_enable_29), .CD(clk_in_c_enable_15), 
            .CK(clk_in_c), .Q(seg_data[2]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i2.GSR = "ENABLED";
    FD1P3IX seg_data__i1 (.D(n130), .SP(clk_in_c_enable_29), .CD(clk_in_c_enable_15), 
            .CK(clk_in_c), .Q(seg_data[1]));   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam seg_data__i1.GSR = "ENABLED";
    LUT4 i884_4_lut (.A(cnt[11]), .B(cnt[18]), .C(cnt[7]), .D(cnt[17]), 
         .Z(n1160)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i884_4_lut.init = 16'h8000;
    VLO i1 (.Z(GND_net));
    CCU2D cnt_111_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1013), .S0(n102));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_25.INIT1 = 16'h0000;
    defparam cnt_111_add_4_25.INJECT1_0 = "NO";
    defparam cnt_111_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_111_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1002), 
          .COUT(n1003), .S0(n124), .S1(n123));   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_111_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_111_add_4_3.INJECT1_0 = "NO";
    defparam cnt_111_add_4_3.INJECT1_1 = "NO";
    LUT4 i506_3_lut (.A(clk_in_c_enable_29), .B(clk_in_c_enable_15), .C(seg_data[0]), 
         .Z(n24)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam i506_3_lut.init = 16'h1212;
    LUT4 i519_4_lut (.A(seg_data[6]), .B(clk_in_c_enable_15), .C(n1288), 
         .D(clk_in_c_enable_27), .Z(n12)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+(C+!(D))))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam i519_4_lut.init = 16'h2122;
    LUT4 i1_2_lut_adj_7 (.A(seg_data[5]), .B(seg_data[4]), .Z(n579)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'h9999;
    OB segment_led_1_pad_5 (.I(segment_led_1_c_5), .O(segment_led_1[5]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    OB segment_led_1_pad_4 (.I(segment_led_1_c_4), .O(segment_led_1[4]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    OB segment_led_1_pad_3 (.I(segment_led_1_c_3), .O(segment_led_1[3]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    OB segment_led_1_pad_2 (.I(segment_led_1_c_2), .O(segment_led_1[2]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    OB segment_led_1_pad_1 (.I(segment_led_1_c_1), .O(segment_led_1[1]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    OB segment_led_1_pad_0 (.I(segment_led_1_c_0), .O(segment_led_1[0]));   // c:/fpgacode/timer_60s/timer_60s.v(29[16:29])
    OB segment_led_2_pad_8 (.I(GND_net), .O(segment_led_2[8]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_7 (.I(GND_net), .O(segment_led_2[7]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_6 (.I(segment_led_2_c_6), .O(segment_led_2[6]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_5 (.I(segment_led_2_c_5), .O(segment_led_2[5]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_4 (.I(segment_led_2_c_4), .O(segment_led_2[4]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_3 (.I(segment_led_2_c_3), .O(segment_led_2[3]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_2 (.I(segment_led_2_c_2), .O(segment_led_2[2]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_1 (.I(segment_led_2_c_1), .O(segment_led_2[1]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB segment_led_2_pad_0 (.I(segment_led_2_c_0), .O(segment_led_2[0]));   // c:/fpgacode/timer_60s/timer_60s.v(30[16:29])
    OB led_pad_13 (.I(led_c), .O(led[13]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_12 (.I(led_c), .O(led[12]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_11 (.I(led_c), .O(led[11]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_10 (.I(led_c), .O(led[10]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_9 (.I(led_c), .O(led[9]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_8 (.I(led_c), .O(led[8]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_7 (.I(led_c), .O(led[7]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_6 (.I(led_c), .O(led[6]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_5 (.I(led_c), .O(led[5]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_4 (.I(led_c), .O(led[4]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_3 (.I(led_c), .O(led[3]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_2 (.I(led_c), .O(led[2]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_1 (.I(led_c), .O(led[1]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    OB led_pad_0 (.I(led_c), .O(led[0]));   // c:/fpgacode/timer_60s/timer_60s.v(31[20:23])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/fpgacode/timer_60s/timer_60s.v(26[11:17])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // c:/fpgacode/timer_60s/timer_60s.v(27[11:19])
    IB pause_pad (.I(pause), .O(pause_c_0));   // c:/fpgacode/timer_60s/timer_60s.v(28[11:16])
    GSR GSR_INST (.GSR(rst_n_in_c));
    FD1P3IX cnt_111__i0 (.D(n125), .SP(clk_in_c_enable_30), .CD(n612), 
            .CK(clk_in_c), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(61[12:22])
    defparam cnt_111__i0.GSR = "ENABLED";
    LUT4 i522_4_lut (.A(seg_data[4]), .B(clk_in_c_enable_15), .C(n1340), 
         .D(clk_in_c_enable_29), .Z(n16)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+(C+!(D))))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(71[8] 83[6])
    defparam i522_4_lut.init = 16'h2122;
    LUT4 i944_3_lut_rep_9 (.A(n1172), .B(n1218), .C(n1160), .Z(clk_in_c_enable_29)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/fpgacode/timer_60s/timer_60s.v(71[11:26])
    defparam i944_3_lut_rep_9.init = 16'h8080;
    Debounce Debounce_uut (.clk_in_c(clk_in_c), .GND_net(GND_net), .pause_c_0(pause_c_0), 
            .clk_in_c_enable_30(clk_in_c_enable_30), .\cnt[22] (cnt[22]), 
            .\cnt[23] (cnt[23]), .n1016(n1016), .n612(n612)) /* synthesis syn_module_defined=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(41[11] 48[3])
    LUT4 m0_lut (.Z(n1341)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 i2_2_lut (.A(cnt[8]), .B(cnt[10]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module Segment_led
//

module Segment_led (seg_data, segment_led_1_c_6, segment_led_1_c_3, segment_led_1_c_4, 
            segment_led_1_c_5, segment_led_2_c_2, segment_led_2_c_3, segment_led_2_c_4, 
            segment_led_2_c_5, segment_led_1_c_0, segment_led_1_c_1, segment_led_1_c_2, 
            n130, segment_led_2_c_6, segment_led_2_c_1, segment_led_2_c_0) /* synthesis syn_module_defined=1 */ ;
    input [7:0]seg_data;
    output segment_led_1_c_6;
    output segment_led_1_c_3;
    output segment_led_1_c_4;
    output segment_led_1_c_5;
    output segment_led_2_c_2;
    output segment_led_2_c_3;
    output segment_led_2_c_4;
    output segment_led_2_c_5;
    output segment_led_1_c_0;
    output segment_led_1_c_1;
    output segment_led_1_c_2;
    output n130;
    output segment_led_2_c_6;
    output segment_led_2_c_1;
    output segment_led_2_c_0;
    
    
    LUT4 mux_33_Mux_6_i15_4_lut_4_lut (.A(seg_data[4]), .B(seg_data[5]), 
         .C(seg_data[6]), .D(seg_data[7]), .Z(segment_led_1_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam mux_33_Mux_6_i15_4_lut_4_lut.init = 16'h037c;
    LUT4 seg_data_7__bdd_4_lut_967 (.A(seg_data[7]), .B(seg_data[4]), .C(seg_data[6]), 
         .D(seg_data[5]), .Z(segment_led_1_c_3)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;
    defparam seg_data_7__bdd_4_lut_967.init = 16'h154b;
    LUT4 i954_4_lut (.A(seg_data[4]), .B(seg_data[6]), .C(seg_data[7]), 
         .D(seg_data[5]), .Z(segment_led_1_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i954_4_lut.init = 16'h0511;
    LUT4 seg_data_7__bdd_4_lut (.A(seg_data[7]), .B(seg_data[6]), .C(seg_data[5]), 
         .D(seg_data[4]), .Z(segment_led_1_c_5)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C (D))+!B (C+(D))))) */ ;
    defparam seg_data_7__bdd_4_lut.init = 16'h0647;
    LUT4 seg_data_1__bdd_4_lut (.A(seg_data[1]), .B(seg_data[0]), .C(seg_data[3]), 
         .D(seg_data[2]), .Z(segment_led_2_c_2)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C (D)))) */ ;
    defparam seg_data_1__bdd_4_lut.init = 16'h0f5d;
    LUT4 seg_data_3__bdd_4_lut_966 (.A(seg_data[3]), .B(seg_data[0]), .C(seg_data[2]), 
         .D(seg_data[1]), .Z(segment_led_2_c_3)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;
    defparam seg_data_3__bdd_4_lut_966.init = 16'h154b;
    LUT4 i950_4_lut (.A(seg_data[0]), .B(seg_data[2]), .C(seg_data[3]), 
         .D(seg_data[1]), .Z(segment_led_2_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i950_4_lut.init = 16'h0511;
    LUT4 seg_data_3__bdd_4_lut_974 (.A(seg_data[3]), .B(seg_data[2]), .C(seg_data[1]), 
         .D(seg_data[0]), .Z(segment_led_2_c_5)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C (D))+!B (C+(D))))) */ ;
    defparam seg_data_3__bdd_4_lut_974.init = 16'h0647;
    LUT4 seg_data_6__bdd_4_lut (.A(seg_data[6]), .B(seg_data[4]), .C(seg_data[7]), 
         .D(seg_data[5]), .Z(segment_led_1_c_0)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam seg_data_6__bdd_4_lut.init = 16'h0f59;
    LUT4 seg_data_4__bdd_4_lut (.A(seg_data[4]), .B(seg_data[7]), .C(seg_data[6]), 
         .D(seg_data[5]), .Z(segment_led_1_c_1)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam seg_data_4__bdd_4_lut.init = 16'h231f;
    LUT4 seg_data_5__bdd_4_lut (.A(seg_data[5]), .B(seg_data[4]), .C(seg_data[7]), 
         .D(seg_data[6]), .Z(segment_led_1_c_2)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C (D)))) */ ;
    defparam seg_data_5__bdd_4_lut.init = 16'h0f5d;
    LUT4 i501_2_lut_4_lut_4_lut_4_lut (.A(seg_data[0]), .B(seg_data[1]), 
         .C(seg_data[3]), .D(seg_data[2]), .Z(n130)) /* synthesis lut_function=(A (B)+!A !(B+!(C+(D)))) */ ;   // c:/fpgacode/timer_60s/segment_led.v(42[24:39])
    defparam i501_2_lut_4_lut_4_lut_4_lut.init = 16'h9998;
    LUT4 mux_34_Mux_6_i15_4_lut_4_lut (.A(seg_data[0]), .B(seg_data[1]), 
         .C(seg_data[2]), .D(seg_data[3]), .Z(segment_led_2_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam mux_34_Mux_6_i15_4_lut_4_lut.init = 16'h037c;
    LUT4 seg_data_0__bdd_4_lut (.A(seg_data[0]), .B(seg_data[3]), .C(seg_data[2]), 
         .D(seg_data[1]), .Z(segment_led_2_c_1)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam seg_data_0__bdd_4_lut.init = 16'h231f;
    LUT4 seg_data_2__bdd_4_lut (.A(seg_data[2]), .B(seg_data[0]), .C(seg_data[3]), 
         .D(seg_data[1]), .Z(segment_led_2_c_0)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam seg_data_2__bdd_4_lut.init = 16'h0f59;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Debounce
//

module Debounce (clk_in_c, GND_net, pause_c_0, clk_in_c_enable_30, \cnt[22] , 
            \cnt[23] , n1016, n612) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    input GND_net;
    input pause_c_0;
    output clk_in_c_enable_30;
    input \cnt[22] ;
    input \cnt[23] ;
    input n1016;
    output n612;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/fpgacode/timer_60s/timer_60s.v(26[11:17])
    wire [0:0]low_sw_r;   // c:/fpgacode/timer_60s/debounce.v(64[22:30])
    wire [0:0]low_sw;   // c:/fpgacode/timer_60s/debounce.v(57[22:28])
    
    wire n1000;
    wire [18:0]cnt;   // c:/fpgacode/timer_60s/debounce.v(48[13:16])
    wire [18:0]n81;
    wire [0:0]key_rst;   // c:/fpgacode/timer_60s/debounce.v(38[22:29])
    
    wire n1196, n12, clk_in_c_enable_17, n999, n994, n995, n992, 
        n993;
    wire [0:0]key_state;   // c:/fpgacode/timer_60s/debounce.v(36[29:38])
    
    wire n1192, n1190, n996, n997, n998, n1184, n1178, n463, 
        key_an;
    
    FD1S3AY low_sw_r_0__34 (.D(low_sw[0]), .CK(clk_in_c), .Q(low_sw_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/fpgacode/timer_60s/debounce.v(69[4:23])
    defparam low_sw_r_0__34.GSR = "ENABLED";
    CCU2D cnt_112_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1000), .S0(n81[17]), .S1(n81[18]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_19.INJECT1_0 = "NO";
    defparam cnt_112_add_4_19.INJECT1_1 = "NO";
    FD1S3AY key_rst_0__31 (.D(pause_c_0), .CK(clk_in_c), .Q(key_rst[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/fpgacode/timer_60s/debounce.v(43[4:20])
    defparam key_rst_0__31.GSR = "ENABLED";
    LUT4 i941_4_lut (.A(n1196), .B(n12), .C(cnt[10]), .D(cnt[9]), .Z(clk_in_c_enable_17)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/fpgacode/timer_60s/debounce.v(61[12:28])
    defparam i941_4_lut.init = 16'h0002;
    CCU2D cnt_112_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n999), .COUT(n1000), .S0(n81[15]), .S1(n81[16]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_17.INJECT1_0 = "NO";
    defparam cnt_112_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_112_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n994), 
          .COUT(n995), .S0(n81[5]), .S1(n81[6]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_7.INJECT1_0 = "NO";
    defparam cnt_112_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_112_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n992), 
          .COUT(n993), .S0(n81[1]), .S1(n81[2]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_3.INJECT1_0 = "NO";
    defparam cnt_112_add_4_3.INJECT1_1 = "NO";
    LUT4 i350_1_lut_rep_12 (.A(key_state[0]), .Z(clk_in_c_enable_30)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpgacode/timer_60s/debounce.v(77[8] 80[27])
    defparam i350_1_lut_rep_12.init = 16'h5555;
    LUT4 i920_4_lut (.A(cnt[6]), .B(n1192), .C(n1190), .D(cnt[4]), .Z(n1196)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i920_4_lut.init = 16'h8000;
    FD1P3AY low_sw_0__33 (.D(pause_c_0), .SP(clk_in_c_enable_17), .CK(clk_in_c), 
            .Q(low_sw[0]));   // c:/fpgacode/timer_60s/debounce.v(61[8] 62[20])
    defparam low_sw_0__33.GSR = "ENABLED";
    CCU2D cnt_112_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n996), 
          .COUT(n997), .S0(n81[9]), .S1(n81[10]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_11.INJECT1_0 = "NO";
    defparam cnt_112_add_4_11.INJECT1_1 = "NO";
    LUT4 i379_4_lut_4_lut (.A(key_state[0]), .B(\cnt[22] ), .C(\cnt[23] ), 
         .D(n1016), .Z(n612)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/fpgacode/timer_60s/debounce.v(77[8] 80[27])
    defparam i379_4_lut_4_lut.init = 16'h5040;
    CCU2D cnt_112_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n995), 
          .COUT(n996), .S0(n81[7]), .S1(n81[8]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_9.INJECT1_0 = "NO";
    defparam cnt_112_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_112_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n998), .COUT(n999), .S0(n81[13]), .S1(n81[14]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_15.INJECT1_0 = "NO";
    defparam cnt_112_add_4_15.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[12]), .D(cnt[18]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i916_4_lut (.A(cnt[8]), .B(n1184), .C(n1178), .D(cnt[13]), 
         .Z(n1192)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i916_4_lut.init = 16'h8000;
    FD1S3AY key_state_0__35 (.D(n463), .CK(clk_in_c), .Q(key_state[0]));   // c:/fpgacode/timer_60s/debounce.v(77[8] 80[27])
    defparam key_state_0__35.GSR = "ENABLED";
    LUT4 i914_3_lut (.A(cnt[15]), .B(cnt[17]), .C(cnt[2]), .Z(n1190)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i914_3_lut.init = 16'h8080;
    CCU2D cnt_112_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n993), 
          .COUT(n994), .S0(n81[3]), .S1(n81[4]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_5.INJECT1_0 = "NO";
    defparam cnt_112_add_4_5.INJECT1_1 = "NO";
    LUT4 i908_4_lut (.A(cnt[1]), .B(cnt[16]), .C(cnt[0]), .D(cnt[3]), 
         .Z(n1184)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i908_4_lut.init = 16'h8000;
    CCU2D cnt_112_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n992), 
          .S1(n81[0]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_1.INIT0 = 16'hF000;
    defparam cnt_112_add_4_1.INIT1 = 16'h0555;
    defparam cnt_112_add_4_1.INJECT1_0 = "NO";
    defparam cnt_112_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_112__i0 (.D(n81[0]), .CK(clk_in_c), .CD(key_an), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i0.GSR = "ENABLED";
    CCU2D cnt_112_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n997), .COUT(n998), .S0(n81[11]), .S1(n81[12]));   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_112_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_112_add_4_13.INJECT1_0 = "NO";
    defparam cnt_112_add_4_13.INJECT1_1 = "NO";
    LUT4 i902_2_lut (.A(cnt[5]), .B(cnt[11]), .Z(n1178)) /* synthesis lut_function=(A (B)) */ ;
    defparam i902_2_lut.init = 16'h8888;
    LUT4 i307_3_lut (.A(key_state[0]), .B(low_sw_r[0]), .C(low_sw[0]), 
         .Z(n463)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/fpgacode/timer_60s/debounce.v(77[8] 80[27])
    defparam i307_3_lut.init = 16'ha6a6;
    LUT4 key_rst_0__I_0_2_lut (.A(key_rst[0]), .B(pause_c_0), .Z(key_an)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpgacode/timer_60s/debounce.v(46[17:33])
    defparam key_rst_0__I_0_2_lut.init = 16'h6666;
    FD1S3IX cnt_112__i18 (.D(n81[18]), .CK(clk_in_c), .CD(key_an), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i18.GSR = "ENABLED";
    FD1S3IX cnt_112__i17 (.D(n81[17]), .CK(clk_in_c), .CD(key_an), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i17.GSR = "ENABLED";
    FD1S3IX cnt_112__i16 (.D(n81[16]), .CK(clk_in_c), .CD(key_an), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i16.GSR = "ENABLED";
    FD1S3IX cnt_112__i15 (.D(n81[15]), .CK(clk_in_c), .CD(key_an), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i15.GSR = "ENABLED";
    FD1S3IX cnt_112__i14 (.D(n81[14]), .CK(clk_in_c), .CD(key_an), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i14.GSR = "ENABLED";
    FD1S3IX cnt_112__i13 (.D(n81[13]), .CK(clk_in_c), .CD(key_an), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i13.GSR = "ENABLED";
    FD1S3IX cnt_112__i12 (.D(n81[12]), .CK(clk_in_c), .CD(key_an), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i12.GSR = "ENABLED";
    FD1S3IX cnt_112__i11 (.D(n81[11]), .CK(clk_in_c), .CD(key_an), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i11.GSR = "ENABLED";
    FD1S3IX cnt_112__i10 (.D(n81[10]), .CK(clk_in_c), .CD(key_an), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i10.GSR = "ENABLED";
    FD1S3IX cnt_112__i9 (.D(n81[9]), .CK(clk_in_c), .CD(key_an), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i9.GSR = "ENABLED";
    FD1S3IX cnt_112__i8 (.D(n81[8]), .CK(clk_in_c), .CD(key_an), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i8.GSR = "ENABLED";
    FD1S3IX cnt_112__i7 (.D(n81[7]), .CK(clk_in_c), .CD(key_an), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i7.GSR = "ENABLED";
    FD1S3IX cnt_112__i6 (.D(n81[6]), .CK(clk_in_c), .CD(key_an), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i6.GSR = "ENABLED";
    FD1S3IX cnt_112__i5 (.D(n81[5]), .CK(clk_in_c), .CD(key_an), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i5.GSR = "ENABLED";
    FD1S3IX cnt_112__i4 (.D(n81[4]), .CK(clk_in_c), .CD(key_an), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i4.GSR = "ENABLED";
    FD1S3IX cnt_112__i3 (.D(n81[3]), .CK(clk_in_c), .CD(key_an), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i3.GSR = "ENABLED";
    FD1S3IX cnt_112__i2 (.D(n81[2]), .CK(clk_in_c), .CD(key_an), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i2.GSR = "ENABLED";
    FD1S3IX cnt_112__i1 (.D(n81[1]), .CK(clk_in_c), .CD(key_an), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpgacode/timer_60s/debounce.v(55[11:21])
    defparam cnt_112__i1.GSR = "ENABLED";
    
endmodule
