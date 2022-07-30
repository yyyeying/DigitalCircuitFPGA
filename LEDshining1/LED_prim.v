// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Tue May 01 19:56:28 2018
//
// Verilog Description of module LED
//

module LED (key, sw, led);   // c:/fpgacode/ledshining.v(18[8:11])
    input [3:0]key;   // c:/fpgacode/ledshining.v(20[14:17])
    input [3:0]sw;   // c:/fpgacode/ledshining.v(21[14:16])
    output [7:0]led;   // c:/fpgacode/ledshining.v(22[15:18])
    
    
    wire led_c_3_c, led_c_2_c, led_c_1_c, led_c_0_c, n2_c, n3_c, 
        n4_c, n5_c, GND_net, VCC_net;
    
    VLO i23 (.Z(GND_net));
    OB led_pad_7 (.I(led_c_3_c), .O(led[7]));   // c:/fpgacode/ledshining.v(22[15:18])
    OB led_pad_6 (.I(led_c_2_c), .O(led[6]));   // c:/fpgacode/ledshining.v(22[15:18])
    OB led_pad_5 (.I(led_c_1_c), .O(led[5]));   // c:/fpgacode/ledshining.v(22[15:18])
    OB led_pad_4 (.I(led_c_0_c), .O(led[4]));   // c:/fpgacode/ledshining.v(22[15:18])
    OB led_pad_3 (.I(n2_c), .O(led[3]));   // c:/fpgacode/ledshining.v(22[15:18])
    OB led_pad_2 (.I(n3_c), .O(led[2]));   // c:/fpgacode/ledshining.v(22[15:18])
    OB led_pad_1 (.I(n4_c), .O(led[1]));   // c:/fpgacode/ledshining.v(22[15:18])
    OB led_pad_0 (.I(n5_c), .O(led[0]));   // c:/fpgacode/ledshining.v(22[15:18])
    IB led_c_3_pad (.I(key[3]), .O(led_c_3_c));   // c:/fpgacode/ledshining.v(20[14:17])
    IB led_c_2_pad (.I(key[2]), .O(led_c_2_c));   // c:/fpgacode/ledshining.v(20[14:17])
    IB led_c_1_pad (.I(key[1]), .O(led_c_1_c));   // c:/fpgacode/ledshining.v(20[14:17])
    IB led_c_0_pad (.I(key[0]), .O(led_c_0_c));   // c:/fpgacode/ledshining.v(20[14:17])
    IB n2_pad (.I(sw[3]), .O(n2_c));   // c:/fpgacode/ledshining.v(21[14:16])
    IB n3_pad (.I(sw[2]), .O(n3_c));   // c:/fpgacode/ledshining.v(21[14:16])
    IB n4_pad (.I(sw[1]), .O(n4_c));   // c:/fpgacode/ledshining.v(21[14:16])
    IB n5_pad (.I(sw[0]), .O(n5_c));   // c:/fpgacode/ledshining.v(21[14:16])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i24 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

