module LED (key,sw,led);
 
	input [3:0] key;						//���������ź�
	input [3:0] sw;							//���������ź�
	output [7:0] led;						//����źŵ�LED
 
	assign led = {key,sw};                                          //assign������ֵ����������ƴ�ӷ�����ʾ��key��swƴ�����һ���µ�8λ����ֵ��led
 
endmodule