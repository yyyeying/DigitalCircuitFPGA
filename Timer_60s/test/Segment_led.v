// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Segment_led
// 
// Author: Step
// 
// Description: Segment_led
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Segment_led
(
input  [3:0] seg_data_1,  		//数码管1显示数据输入
input  [3:0] seg_data_2,  		//数码管2显示数据输入
output [8:0] segment_led_1, 	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output [8:0] segment_led_2   	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

reg[8:0] seg [9:0]; 
initial 
	begin
		seg[0] = 9'h3f;   //  0
		seg[1] = 9'h06;   //  1
		seg[2] = 9'h5b;   //  2
		seg[3] = 9'h4f;   //  3
		seg[4] = 9'h66;   //  4
		seg[5] = 9'h6d;   //  5
		seg[6] = 9'h7d;   //  6
		seg[7] = 9'h07;   //  7
		seg[8] = 9'h7f;   //  8
		seg[9] = 9'h6f;   //  9
	end

assign segment_led_1 = seg[seg_data_1]; //将对应数据显示在数码管上
assign segment_led_2 = seg[seg_data_2]; 

endmodule
