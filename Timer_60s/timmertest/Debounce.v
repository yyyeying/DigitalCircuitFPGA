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
	parameter	KEY_WIDTH = 1,				//��Ҫ�����İ���λ����
	parameter	CNT_NUM = 19'd240000		//����ʱ�����
	//parameter CNT_NUM = 19'd20			//����ʱ�����
)
(
	clk,				//ϵͳʱ������
	rst_n,				//ϵͳ��λ����
	key_n,				//��������
	key_pulse,			//�����źţ����������������
	key_state			//�����źţ�����������λ���
); 

	input   					clk;			//ϵͳʱ������
	input   					rst_n;			//ϵͳ��λ����
	input   	[KEY_WIDTH-1:0]	key_n;			//�����ź�����
	output  	[KEY_WIDTH-1:0]	key_pulse;		//�����źţ����������������
	output	reg	[KEY_WIDTH-1:0]	key_state;		//�����źţ�����������λ���

	reg [KEY_WIDTH-1:0] key_rst;   				//����һ���Ĵ����ͱ����洢��һ������ʱ�İ���ֵ
	always @(posedge clk  or  negedge rst_n)
		if (!rst_n) 
			key_rst <= {KEY_WIDTH{1'b1}};		//��ʼ��ʱ��key_rst��ֵȫΪ1��{}�б�ʾKEY_WIDTH��1
		else  
			key_rst <=key_n;


	wire  key_an = (key_rst==key_n)? 0:1;		//�����밴���źŽ��б��ؼ��

	reg[18:0]  cnt;								//����һ��������ȥ��ʱ20ms����ʱʱ��
	always @ (posedge clk or negedge rst_n)
		if (!rst_n) 
			cnt <= 19'd0;
		else if(key_an) 
			cnt <=19'd0;
		else 
			cnt <= cnt + 1'b1;

	reg [KEY_WIDTH-1:0] low_sw;					//��ʱ��ɺ�key��ֵ��ֵ��low_sw��
	always @(posedge clk or negedge rst_n)
		if (!rst_n)  
			low_sw <= {KEY_WIDTH{1'b1}};
		else if (cnt == CNT_NUM-1)
			low_sw <= key_n;

	reg [KEY_WIDTH-1:0] low_sw_r;				//��low_sw��ֵ��low_sw_r,	
	always @ (posedge clk or negedge rst_n)
		if (!rst_n) 
			low_sw_r <= {KEY_WIDTH{1'b1}};
		else  
			low_sw_r <= low_sw;

	wire [KEY_WIDTH-1:0] key_pulse;				
	assign key_pulse= low_sw_r & ( ~low_sw);		//������������alwaysģ�������low_sw��low_sw����������ؼ�⡣����⵽�½���ʱ��key_pulse����һ��ʱ�����ڵĸߵ�ƽ

	always @(posedge clk or negedge rst_n)			//����״̬�����ź�
		if (!rst_n) 
			key_state <= {KEY_WIDTH{1'b1}};
		else if(key_pulse) 
			key_state <= key_state^key_pulse;
		else 
			key_state <= key_state;

endmodule

