// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Timer_60s
// 
// Author: Step
// 
// Description: 60秒计时器，K1为复位按键，K2为暂停/恢复按键.
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/04/25   |Initial ver
// --------------------------------------------------------------------
/*Function：60秒倒计时计数器
	1），一个按键控制计时器的启动和暂停
	2），复位按键重新等待倒计时，计数回到59
	3），七段数码管显示计时,倒计时结束所有LED全亮
*/
	
module Timer_60s
(
input					clk_in,				//系统时钟输入
input					rst_n_in,			//系统复位输入
input					pause,				//暂停/启动按键信号
output			[8:0]	segment_led_1,		//数码管1显示信号，MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output			[8:0]	segment_led_2,		//数码管2显示信号，MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output		reg	[13:0]	led					//包括单色和三色LED
);

localparam				NUM_1S	=	24'd12_000_000;	//系统输入时钟=12M，1s需计数12M次
//localparam			NUM_1S	=	24'd20;			//仿真时钟参数

				
wire				pause_state;
	
	//按键消抖模块 
	Debounce Debounce_uut
	(
	.clk					(clk_in			),		//系统时钟
	.rst_n					(rst_n_in		),		//系统复位
	.key_n					(pause			),		//按键输入
	.key_pulse				(				),		//按键消抖脉冲输出
	.key_state				(pause_state	)		//按键消抖状态输出
	);
	

	reg				[23:0]	cnt;					//产生1秒周期的计数器，最大计数到NUM_1S				
	always @(posedge clk_in or negedge rst_n_in) begin
		if(!rst_n_in) 
			cnt <= 1'b0;
		else if(pause_state) 						//按键控制计数器的启动和暂停
			cnt <= cnt;
		else begin
			if(cnt >= NUM_1S-1) 
				cnt <= 1'b0;
			else 
				cnt <= cnt + 1'b1;
		end
	end

	reg				[7:0]	seg_data;
	always @(posedge clk_in  or negedge rst_n_in) begin		//秒数显示控制模块
		if(!rst_n_in) begin
			seg_data <= 8'h59;						//复位赋初值59
			led <= 14'b11_1111_1111_1111;			//关闭LED显示
			end
		else if(cnt == NUM_1S-1) begin				
			if(seg_data == 8'h00) begin				//倒计时到0时停止计数，点亮所有LED
				seg_data <= seg_data;
				led <= 14'b0;
			end 
			else if(seg_data[3:0] == 4'd0) begin	//个位计数到0时，个位变为9，十位减一
				seg_data[3:0] <= 4'd9;
				seg_data[7:4] <= seg_data[7:4] - 1'b1;
			end 
			else begin								//个位不为0时，个位减一
				seg_data[3:0] <= seg_data[3:0] - 1'b1;
			end
		end
	end

	Segment_led Segment_led_uut						//例化数码管显示模块
	(
	.seg_data_1				(seg_data[7:4]		),  //数码管1显示数据输入
	.seg_data_2				(seg_data[3:0]		),  //数码管2显示数据输入
	.segment_led_1			(segment_led_1	),  	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	.segment_led_2			(segment_led_2	)   	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	);

endmodule
