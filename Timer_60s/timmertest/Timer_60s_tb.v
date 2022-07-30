// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Timer_60s
// 
// Author: Step
// 
// Description: 60���ʱ�������ļ������з���ʱ���齫���ʱ��������͡�
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

	reg				clk_in;				//ϵͳʱ�Ӽ����ź�
	reg				rst_n_in;			//ϵͳ��λ�����ź�
	reg				pause;				//��ͣ���������ź�
	wire	[8:0]	segment_led_1;		//�����1��ʾ�źţ�MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	wire	[8:0]	segment_led_2;		//�����2��ʾ�źţ�MSB~LSB = SEG,DP,G,F,E,D,C,B,A

	Timer_60s Timer_60s_tb(
		.clk_in(clk_in),				//ϵͳʱ������
		.rst_n_in(rst_n_in),			//ϵͳ��λ����
		.pause(pause),					//��ͣ�ź�
		.segment_led_1(segment_led_1),		//�����1��ʾ�źţ�MSB~LSB = SEG,DP,G,F,E,D,C,B,A
		.segment_led_2(segment_led_2)		//�����2��ʾ�źţ�MSB~LSB = SEG,DP,G,F,E,D,C,B,A
		);
	
	initial begin				//���뼤���ź�
		clk_in=0; 
		rst_n_in=1; pause=0;	//������λ�ź�
		#200
		rst_n_in=0; pause=0;
		#200		
		rst_n_in=1; pause=0;	//������ʼ�ź�	
		#200
		rst_n_in=1; pause=1;
		#200
		rst_n_in=1; pause=0;	//������ͣ�ź�
		#2000
		rst_n_in=1; pause=1;	
		#1000	
		rst_n_in=1; pause=0;	
		#6000
		rst_n_in=1; pause=1;	//�����ָ��ź�
		#1000
		rst_n_in=1; pause=0;

		end
	
	always #5 clk_in=~clk_in;	//����ʱ���ź�

endmodule
