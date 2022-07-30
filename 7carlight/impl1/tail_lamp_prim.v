// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed May 16 04:17:20 2018
//
// Verilog Description of module tail_lamp
//

module tail_lamp (sys_clk, sys_rst_n, state_in, led_left, led_right, 
            led_out) /* synthesis syn_module_defined=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(1[8:17])
    input sys_clk;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[7:14])
    input sys_rst_n;   // c:/users/ktami/desktop/step/7carlight/aa.v(4[7:16])
    input [3:0]state_in;   // c:/users/ktami/desktop/step/7carlight/aa.v(5[13:21])
    output [2:0]led_left;   // c:/users/ktami/desktop/step/7carlight/aa.v(7[18:26])
    output [2:0]led_right;   // c:/users/ktami/desktop/step/7carlight/aa.v(8[18:27])
    output [7:0]led_out;   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(3[7:14])
    
    wire GND_net, VCC_net, sys_rst_n_c, state_in_c_3, state_in_c_2, 
        state_in_c_1, state_in_c_0, led_left_c_2, led_right_c_2, led_out_c_7, 
        led_out_c_6, led_out_c_5, led_out_c_4, led_out_c_3, led_out_c_2, 
        led_out_c_1, led_out_c_0;
    wire [2:0]tail_shin;   // c:/users/ktami/desktop/step/7carlight/aa.v(22[13:22])
    wire [23:0]cnt;   // c:/users/ktami/desktop/step/7carlight/aa.v(27[13:16])
    wire [3:0]current_state;   // c:/users/ktami/desktop/step/7carlight/aa.v(28[12:25])
    wire [7:0]_go;   // c:/users/ktami/desktop/step/7carlight/aa.v(31[12:15])
    wire [7:0]_back;   // c:/users/ktami/desktop/step/7carlight/aa.v(32[12:17])
    
    wire cnt_23__N_83, n443, n995, n970, n16, n919, tail_shin_2__N_17, 
        n10, n845, n921, n38, n12, sys_clk_c_enable_16, n994, 
        n1001, n453, n455, n457, n22, n13, n4, n1000, n930, 
        n11, n998, n997, n992, n911, n990, n991, n841, n851, 
        n844, n929, n493, n8, n98, n99, n100, n101, n102, 
        n103, n104, n105, n106, n107, n108, n109, n110, n111, 
        n112, n113, n114, n115, n116, n117, n118, n119, n120, 
        n850, n849, n848, n847, n914, n846, n7, n843, n842;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_2_lut_3_lut_else_4_lut (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(n22), .D(_back[6]), .Z(n1000)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_else_4_lut.init = 16'h2000;
    FD1S3IX cnt_111_112__i20 (.D(n101), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i20.GSR = "ENABLED";
    FD1S3AX current_state_i0 (.D(state_in_c_0), .CK(sys_clk_c), .Q(current_state[0]));   // c:/users/ktami/desktop/step/7carlight/aa.v(85[3:31])
    defparam current_state_i0.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i19 (.D(n102), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i19.GSR = "ENABLED";
    LUT4 i222_4_lut (.A(_back[1]), .B(_go[1]), .C(n4), .D(current_state[0]), 
         .Z(n457)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i222_4_lut.init = 16'hca0a;
    LUT4 i5_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[5]), .D(cnt[4]), .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(n493), .B(n443), .C(current_state[2]), .Z(led_out_c_0)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    OB led_left_pad_2 (.I(led_left_c_2), .O(led_left[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(7[18:26])
    FD1S3IX cnt_111_112__i18 (.D(n103), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i18.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(cnt[6]), .B(n12), .C(cnt[0]), .D(cnt[3]), .Z(n914)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    FD1S3IX cnt_111_112__i17 (.D(n104), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i17.GSR = "ENABLED";
    LUT4 i139_4_lut (.A(n930), .B(cnt[18]), .C(n919), .D(n911), .Z(n38)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i139_4_lut.init = 16'hfcec;
    OB led_left_pad_1 (.I(VCC_net), .O(led_left[1]));   // c:/users/ktami/desktop/step/7carlight/aa.v(7[18:26])
    FD1P3AY _go_i0_i0 (.D(_go[1]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[0]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i0.GSR = "ENABLED";
    LUT4 i208_4_lut (.A(_back[0]), .B(_go[0]), .C(n4), .D(current_state[0]), 
         .Z(n443)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i208_4_lut.init = 16'hca0a;
    PFUMX i728 (.BLUT(n997), .ALUT(n998), .C0(n4), .Z(led_out_c_5));
    LUT4 i705_4_lut (.A(cnt[7]), .B(n7), .C(n911), .D(n8), .Z(sys_clk_c_enable_16)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(47[10:26])
    defparam i705_4_lut.init = 16'h0001;
    LUT4 i2_3_lut (.A(cnt[12]), .B(cnt[13]), .C(cnt[14]), .Z(n911)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    FD1S3IX cnt_111_112__i16 (.D(n105), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i16.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i15 (.D(n106), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i15.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i14 (.D(n107), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i14.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt[21]), .B(cnt[18]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX cnt_111_112__i13 (.D(n108), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i13.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i12 (.D(n109), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i12.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(current_state[0]), .B(current_state[1]), .C(current_state[3]), 
         .D(current_state[2]), .Z(n22)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0110;
    FD1S3IX cnt_111_112__i11 (.D(n110), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i11.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i10 (.D(n111), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i10.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_then_4_lut (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(current_state[0]), .D(_go[5]), .Z(n998)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_then_4_lut.init = 16'h2202;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX cnt_111_112__i1 (.D(n120), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i1.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i9 (.D(n112), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i9.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i8 (.D(n113), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i8.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i7 (.D(n114), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i7.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i6 (.D(n115), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i6.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i5 (.D(n116), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i5.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i4 (.D(n117), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i4.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i3 (.D(n118), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i3.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i2 (.D(n119), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i2.GSR = "ENABLED";
    FD1P3AX _go_i0_i7 (.D(_go[0]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[7]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i7.GSR = "ENABLED";
    FD1P3AY _go_i0_i6 (.D(_go[7]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[6]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i6.GSR = "ENABLED";
    FD1P3AY _go_i0_i5 (.D(_go[6]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[5]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i5.GSR = "ENABLED";
    FD1P3AY _go_i0_i4 (.D(_go[5]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[4]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i4.GSR = "ENABLED";
    FD1P3AY _go_i0_i3 (.D(_go[4]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[3]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i3.GSR = "ENABLED";
    FD1P3AY _go_i0_i2 (.D(_go[3]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i2.GSR = "ENABLED";
    FD1P3AY _go_i0_i1 (.D(_go[2]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_go[1]));   // c:/users/ktami/desktop/step/7carlight/aa.v(61[7] 64[14])
    defparam _go_i0_i1.GSR = "ENABLED";
    FD1S3AX current_state_i3 (.D(state_in_c_3), .CK(sys_clk_c), .Q(current_state[3]));   // c:/users/ktami/desktop/step/7carlight/aa.v(85[3:31])
    defparam current_state_i3.GSR = "ENABLED";
    PFUMX i726 (.BLUT(n994), .ALUT(n995), .C0(n4), .Z(led_out_c_4));
    LUT4 i1_2_lut_3_lut_else_4_lut_adj_1 (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(n22), .D(_back[5]), .Z(n997)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_else_4_lut_adj_1.init = 16'h2000;
    FD1S3AX clk_1hz_43 (.D(tail_shin_2__N_17), .CK(sys_clk_c), .Q(tail_shin[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(47[7] 50[22])
    defparam clk_1hz_43.GSR = "ENABLED";
    CCU2D cnt_111_112_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n844), .COUT(n845), .S0(n113), .S1(n112));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_9.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n921), .B(cnt[9]), .C(n10), .D(n929), .Z(n8)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdfff;
    LUT4 tail_shin_2__bdd_3_lut_4_lut (.A(n970), .B(tail_shin[2]), .C(current_state[1]), 
         .D(sys_rst_n_c), .Z(led_left_c_2)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam tail_shin_2__bdd_3_lut_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_3_lut_then_4_lut_adj_2 (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(current_state[0]), .D(_go[7]), .Z(n992)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_then_4_lut_adj_2.init = 16'h2202;
    CCU2D cnt_111_112_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n851), .S0(n99), .S1(n98));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_23.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_23.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_else_4_lut_adj_3 (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(n22), .D(_back[7]), .Z(n991)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_else_4_lut_adj_3.init = 16'h2000;
    CCU2D cnt_111_112_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n850), .COUT(n851), .S0(n101), .S1(n100));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_21.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_111_112_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n843), .COUT(n844), .S0(n115), .S1(n114));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_7.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_111_112_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n849), .COUT(n850), .S0(n103), .S1(n102));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_19.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_19.INJECT1_1 = "NO";
    FD1S3AX current_state_i2 (.D(state_in_c_2), .CK(sys_clk_c), .Q(current_state[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(85[3:31])
    defparam current_state_i2.GSR = "ENABLED";
    FD1S3AX current_state_i1 (.D(state_in_c_1), .CK(sys_clk_c), .Q(current_state[1]));   // c:/users/ktami/desktop/step/7carlight/aa.v(85[3:31])
    defparam current_state_i1.GSR = "ENABLED";
    FD1P3AY _back_i0_i7 (.D(_back[6]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[7]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i7.GSR = "ENABLED";
    FD1P3AY _back_i0_i6 (.D(_back[5]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[6]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i6.GSR = "ENABLED";
    FD1P3AY _back_i0_i5 (.D(_back[4]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[5]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i5.GSR = "ENABLED";
    FD1P3AY _back_i0_i4 (.D(_back[3]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[4]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i4.GSR = "ENABLED";
    FD1P3AY _back_i0_i3 (.D(_back[2]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[3]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i3.GSR = "ENABLED";
    FD1P3AY _back_i0_i2 (.D(_back[1]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i2.GSR = "ENABLED";
    FD1P3AY _back_i0_i1 (.D(_back[0]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[1]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i1.GSR = "ENABLED";
    FD1P3AX _back_i0_i0 (.D(_back[7]), .SP(sys_clk_c_enable_16), .CK(sys_clk_c), 
            .Q(_back[0]));   // c:/users/ktami/desktop/step/7carlight/aa.v(70[7] 73[18])
    defparam _back_i0_i0.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i21 (.D(n100), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i21.GSR = "ENABLED";
    OB led_left_pad_0 (.I(VCC_net), .O(led_left[0]));   // c:/users/ktami/desktop/step/7carlight/aa.v(7[18:26])
    OB led_right_pad_2 (.I(led_right_c_2), .O(led_right[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(8[18:27])
    OB led_right_pad_1 (.I(VCC_net), .O(led_right[1]));   // c:/users/ktami/desktop/step/7carlight/aa.v(8[18:27])
    OB led_right_pad_0 (.I(VCC_net), .O(led_right[0]));   // c:/users/ktami/desktop/step/7carlight/aa.v(8[18:27])
    OB led_out_pad_7 (.I(led_out_c_7), .O(led_out[7]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    OB led_out_pad_6 (.I(led_out_c_6), .O(led_out[6]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    OB led_out_pad_5 (.I(led_out_c_5), .O(led_out[5]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    OB led_out_pad_4 (.I(led_out_c_4), .O(led_out[4]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    OB led_out_pad_3 (.I(led_out_c_3), .O(led_out[3]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    OB led_out_pad_2 (.I(led_out_c_2), .O(led_out[2]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    OB led_out_pad_1 (.I(led_out_c_1), .O(led_out[1]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    OB led_out_pad_0 (.I(led_out_c_0), .O(led_out[0]));   // c:/users/ktami/desktop/step/7carlight/aa.v(9[18:25])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(3[7:14])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/ktami/desktop/step/7carlight/aa.v(4[7:16])
    IB state_in_pad_3 (.I(state_in[3]), .O(state_in_c_3));   // c:/users/ktami/desktop/step/7carlight/aa.v(5[13:21])
    IB state_in_pad_2 (.I(state_in[2]), .O(state_in_c_2));   // c:/users/ktami/desktop/step/7carlight/aa.v(5[13:21])
    IB state_in_pad_1 (.I(state_in[1]), .O(state_in_c_1));   // c:/users/ktami/desktop/step/7carlight/aa.v(5[13:21])
    IB state_in_pad_0 (.I(state_in[0]), .O(state_in_c_0));   // c:/users/ktami/desktop/step/7carlight/aa.v(5[13:21])
    FD1S3IX cnt_111_112__i22 (.D(n99), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i22.GSR = "ENABLED";
    FD1S3IX cnt_111_112__i23 (.D(n98), .CK(sys_clk_c), .CD(cnt_23__N_83), 
            .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112__i23.GSR = "ENABLED";
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i372_2_lut_rep_7 (.A(current_state[0]), .B(current_state[1]), .Z(n990)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i372_2_lut_rep_7.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_then_4_lut_adj_4 (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(current_state[0]), .D(_go[4]), .Z(n995)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_then_4_lut_adj_4.init = 16'h2202;
    LUT4 i1_3_lut_adj_5 (.A(n493), .B(n453), .C(current_state[2]), .Z(led_out_c_3)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_5.init = 16'ha8a8;
    LUT4 i4_4_lut (.A(cnt[8]), .B(cnt[22]), .C(n914), .D(n919), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(current_state[3]), .B(current_state[2]), .C(tail_shin[2]), 
         .D(n990), .Z(n11)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0a2a;
    LUT4 i1_2_lut_3_lut_then_4_lut_adj_6 (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(current_state[0]), .D(_go[6]), .Z(n1001)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_then_4_lut_adj_6.init = 16'h2202;
    LUT4 i2_3_lut_adj_7 (.A(cnt[16]), .B(cnt[17]), .C(cnt[15]), .Z(n919)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_7.init = 16'h8080;
    LUT4 i218_4_lut (.A(_back[3]), .B(_go[3]), .C(n4), .D(current_state[0]), 
         .Z(n453)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i218_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_adj_8 (.A(cnt[20]), .B(cnt[19]), .Z(n921)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_8.init = 16'h8888;
    LUT4 i1_2_lut_adj_9 (.A(cnt[11]), .B(cnt[10]), .Z(n929)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_9.init = 16'h8888;
    LUT4 i1_4_lut_adj_10 (.A(sys_rst_n_c), .B(current_state[2]), .C(n22), 
         .D(n4), .Z(n493)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(4[7:16])
    defparam i1_4_lut_adj_10.init = 16'ha2a0;
    LUT4 current_state_3__bdd_4_lut (.A(current_state[3]), .B(current_state[0]), 
         .C(tail_shin[2]), .D(current_state[2]), .Z(n970)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam current_state_3__bdd_4_lut.init = 16'hf1d4;
    PFUMX i730 (.BLUT(n1000), .ALUT(n1001), .C0(n4), .Z(led_out_c_6));
    LUT4 i1_2_lut_3_lut_else_4_lut_adj_11 (.A(sys_rst_n_c), .B(current_state[2]), 
         .C(n22), .D(_back[4]), .Z(n994)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_else_4_lut_adj_11.init = 16'h2000;
    LUT4 i1_3_lut_adj_12 (.A(current_state[2]), .B(current_state[1]), .C(current_state[0]), 
         .Z(n13)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;
    defparam i1_3_lut_adj_12.init = 16'hebeb;
    CCU2D cnt_111_112_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n842), .COUT(n843), .S0(n117), .S1(n116));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_5.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_111_112_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n848), .COUT(n849), .S0(n105), .S1(n104));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_17.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_111_112_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n847), .COUT(n848), .S0(n107), .S1(n106));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_15.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_13 (.A(current_state[0]), .B(current_state[3]), .C(current_state[1]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam i1_3_lut_adj_13.init = 16'h1212;
    LUT4 i1_3_lut_adj_14 (.A(n455), .B(n493), .C(current_state[2]), .Z(led_out_c_2)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(4[7:16])
    defparam i1_3_lut_adj_14.init = 16'hc8c8;
    CCU2D cnt_111_112_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n846), .COUT(n847), .S0(n109), .S1(n108));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_13.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_13.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    LUT4 i220_4_lut (.A(_back[2]), .B(_go[2]), .C(n4), .D(current_state[0]), 
         .Z(n455)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i220_4_lut.init = 16'hca0a;
    LUT4 i128_2_lut (.A(n914), .B(cnt[7]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i128_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_adj_15 (.A(n493), .B(n457), .C(current_state[2]), .Z(led_out_c_1)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_15.init = 16'ha8a8;
    CCU2D cnt_111_112_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n845), .COUT(n846), .S0(n111), .S1(n110));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_11.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_111_112_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n841), .COUT(n842), .S0(n119), .S1(n118));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_111_112_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_111_112_add_4_3.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_111_112_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n841), .S1(n120));   // c:/users/ktami/desktop/step/7carlight/aa.v(41[10:20])
    defparam cnt_111_112_add_4_1.INIT0 = 16'hF000;
    defparam cnt_111_112_add_4_1.INIT1 = 16'h0555;
    defparam cnt_111_112_add_4_1.INJECT1_0 = "NO";
    defparam cnt_111_112_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_16 (.A(tail_shin[2]), .B(sys_clk_c_enable_16), .Z(tail_shin_2__N_17)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_16.init = 16'h6666;
    PFUMX i724 (.BLUT(n991), .ALUT(n992), .C0(n4), .Z(led_out_c_7));
    LUT4 i1_4_lut_adj_17 (.A(n16), .B(n929), .C(cnt[9]), .D(cnt[8]), 
         .Z(n930)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hc8c0;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i12_4_lut (.A(tail_shin[2]), .B(n11), .C(sys_rst_n_c), .D(n13), 
         .Z(led_right_c_2)) /* synthesis lut_function=(!(A (B (C))+!A (B+((D)+!C)))) */ ;   // c:/users/ktami/desktop/step/7carlight/aa.v(22[13:22])
    defparam i12_4_lut.init = 16'h2a3a;
    LUT4 i161_4_lut (.A(n38), .B(cnt[22]), .C(cnt[21]), .D(n921), .Z(cnt_23__N_83)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i161_4_lut.init = 16'hc8c0;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

