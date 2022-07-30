// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Debounce
// 
// Author: Step
// 
// Description: Debounce for button with FPGA/CPLD
// 
// Web: www.stepfapga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module Debounce #
(
	parameter	KEY_WIDTH = 1,				//需要消抖的按键位数，
	parameter	CNT_NUM = 19'd240000		//消抖时间参数
	//parameter CNT_NUM = 19'd20			//测试时间参数
)
(
	clk,				//系统时钟输入
	rst_n,				//系统复位输入
	key_n,				//按键输入
	key_pulse,			//按键信号（已消抖）脉冲输出
	key_state			//按键信号（已消抖）复位输出
); 

	input   					clk;			//系统时钟输入
	input   					rst_n;			//系统复位输入
	input   	[KEY_WIDTH-1:0]	key_n;			//按键信号输入
	output  	[KEY_WIDTH-1:0]	key_pulse;		//按键信号（已消抖）脉冲输出
	output	reg	[KEY_WIDTH-1:0]	key_state;		//按键信号（已消抖）复位输出

	reg [KEY_WIDTH-1:0] key_rst;   				//定义一个寄存器型变量存储上一个触发时的按键值
	always @(posedge clk  or  negedge rst_n)
		if (!rst_n) 
			key_rst <= {KEY_WIDTH{1'b1}};		//初始化时给key_rst赋值全为1，{}中表示KEY_WIDTH个1
		else  
			key_rst <=key_n;


	wire  key_an = (key_rst==key_n)? 0:1;		//对输入按键信号进行边沿检测

	reg[18:0]  cnt;								//定义一个计数器去计时20ms的延时时间
	always @ (posedge clk or negedge rst_n)
		if (!rst_n) 
			cnt <= 19'd0;
		else if(key_an) 
			cnt <=19'd0;
		else 
			cnt <= cnt + 1'b1;

	reg [KEY_WIDTH-1:0] low_sw;					//延时完成后将key的值赋值到low_sw中
	always @(posedge clk or negedge rst_n)
		if (!rst_n)  
			low_sw <= {KEY_WIDTH{1'b1}};
		else if (cnt == CNT_NUM-1)
			low_sw <= key_n;

	reg [KEY_WIDTH-1:0] low_sw_r;				//将low_sw赋值给low_sw_r,	
	always @ (posedge clk or negedge rst_n)
		if (!rst_n) 
			low_sw_r <= {KEY_WIDTH{1'b1}};
		else  
			low_sw_r <= low_sw;

	wire [KEY_WIDTH-1:0] key_pulse;				
	assign key_pulse= low_sw_r & ( ~low_sw);		//利用上面两个always模块产生的low_sw和low_sw进行脉冲边沿检测。当检测到下降沿时，key_pulse产生一个时钟周期的高电平

	always @(posedge clk or negedge rst_n)			//产生状态跳变信号
		if (!rst_n) 
			key_state <= {KEY_WIDTH{1'b1}};
		else if(key_pulse) 
			key_state <= key_state^key_pulse;
		else 
			key_state <= key_state;

endmodule

