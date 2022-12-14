// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : LED.v
// Module name  : LED
// Author       : STEP
// Description  : control LED
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:利用按键和开关的状态来控制LED灯的亮灭。
 
module LED (key,sw,led);
 
	input [3:0] key;						//按键输入信号
	input [3:0] sw;							//开关输入信号
	output [7:0] led;						//输出信号到LED
 
	assign led = {key,sw};                                          //assign连续赋值。大括号是拼接符，表示把key和sw拼接组成一个新的8位数赋值给led
 
endmodule
