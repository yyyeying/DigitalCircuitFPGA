// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Timer_60s
// 
// Author: Step
// 
// Description: 60秒计时器测试文件，进行仿真时建议将相关时间参数降低。
//
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/04/25   |Initial ver
// --------------------------------------------------------------------
`timescale 1ns/1ns

module Timer_60s_tb;

	reg				clk_in;				//系统时钟激励信号
	reg				rst_n_in;			//系统复位激励信号
	reg				pause;				//暂停按键激励信号
	wire	[8:0]	segment_led_1;		//数码管1显示信号，MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	wire	[8:0]	segment_led_2;		//数码管2显示信号，MSB~LSB = SEG,DP,G,F,E,D,C,B,A

	Timer_60s Timer_60s_tb(
		.clk_in(clk_in),				//系统时钟输入
		.rst_n_in(rst_n_in),			//系统复位输入
		.pause(pause),					//暂停信号
		.segment_led_1(segment_led_1),		//数码管1显示信号，MSB~LSB = SEG,DP,G,F,E,D,C,B,A
		.segment_led_2(segment_led_2)		//数码管2显示信号，MSB~LSB = SEG,DP,G,F,E,D,C,B,A
		);
	
	initial begin				//输入激励信号
		clk_in=0; 
		rst_n_in=1; pause=0;	//给出复位信号
		#200
		rst_n_in=0; pause=0;
		#200		
		rst_n_in=1; pause=0;	//给出起始信号	
		#200
		rst_n_in=1; pause=1;
		#200
		rst_n_in=1; pause=0;	//给出暂停信号
		#2000
		rst_n_in=1; pause=1;	
		#1000	
		rst_n_in=1; pause=0;	
		#6000
		rst_n_in=1; pause=1;	//给出恢复信号
		#1000
		rst_n_in=1; pause=0;

		end
	
	always #5 clk_in=~clk_in;	//产生时钟信号

endmodule
