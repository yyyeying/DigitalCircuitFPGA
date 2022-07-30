// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Timer_60s
// 
// Author: Step
// 
// Description: 60���ʱ����K1Ϊ��λ������K2Ϊ��ͣ/�ָ�����.
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/04/25   |Initial ver
// --------------------------------------------------------------------
/*Function��60�뵹��ʱ������
	1����һ���������Ƽ�ʱ������������ͣ
	2������λ�������µȴ�����ʱ�������ص�59
	3�����߶��������ʾ��ʱ,����ʱ��������LEDȫ��
*/
	
module Timer_60s
(
input					clk_in,				//ϵͳʱ������
input					rst_n_in,			//ϵͳ��λ����
input					pause,				//��ͣ/���������ź�
output			[8:0]	segment_led_1,		//�����1��ʾ�źţ�MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output			[8:0]	segment_led_2,		//�����2��ʾ�źţ�MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output		reg	[13:0]	led					//������ɫ����ɫLED
);

localparam				NUM_1S	=	24'd12_000_000;	//ϵͳ����ʱ��=12M��1s�����12M��
//localparam			NUM_1S	=	24'd20;			//����ʱ�Ӳ���

				
wire				pause_state;
	
	//��������ģ�� 
	Debounce Debounce_uut
	(
	.clk					(clk_in			),		//ϵͳʱ��
	.rst_n					(rst_n_in		),		//ϵͳ��λ
	.key_n					(pause			),		//��������
	.key_pulse				(				),		//���������������
	.key_state				(pause_state	)		//��������״̬���
	);
	

	reg				[23:0]	cnt;					//����1�����ڵļ���������������NUM_1S				
	always @(posedge clk_in or negedge rst_n_in) begin
		if(!rst_n_in) 
			cnt <= 1'b0;
		else if(pause_state) 						//�������Ƽ���������������ͣ
			cnt <= cnt;
		else begin
			if(cnt >= NUM_1S-1) 
				cnt <= 1'b0;
			else 
				cnt <= cnt + 1'b1;
		end
	end

	reg				[7:0]	seg_data;
	always @(posedge clk_in  or negedge rst_n_in) begin		//������ʾ����ģ��
		if(!rst_n_in) begin
			seg_data <= 8'h59;						//��λ����ֵ59
			led <= 14'b11_1111_1111_1111;			//�ر�LED��ʾ
			end
		else if(cnt == NUM_1S-1) begin				
			if(seg_data == 8'h00) begin				//����ʱ��0ʱֹͣ��������������LED
				seg_data <= seg_data;
				led <= 14'b0;
			end 
			else if(seg_data[3:0] == 4'd0) begin	//��λ������0ʱ����λ��Ϊ9��ʮλ��һ
				seg_data[3:0] <= 4'd9;
				seg_data[7:4] <= seg_data[7:4] - 1'b1;
			end 
			else begin								//��λ��Ϊ0ʱ����λ��һ
				seg_data[3:0] <= seg_data[3:0] - 1'b1;
			end
		end
	end

	Segment_led Segment_led_uut						//�����������ʾģ��
	(
	.seg_data_1				(seg_data[7:4]		),  //�����1��ʾ��������
	.seg_data_2				(seg_data[3:0]		),  //�����2��ʾ��������
	.segment_led_1			(segment_led_1	),  	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	.segment_led_2			(segment_led_2	)   	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	);

endmodule
