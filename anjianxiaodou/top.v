// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : top.v
// Module name  : top
// Author       : STEP
// Description  : 
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:�����������������led��ʾ��ת
 
module top (clk,rst,key,led);
 
        input             clk;
        input             rst;
        input 	          key;                      				
	output   reg      led;        
 
        wire              key_pulse;
 
        //����������ʱ����һ�������壬��תһ��led
        always @(posedge clk  or  negedge rst)
           begin
             if (!rst) 
		led <= 1'b1;
	     else if (key_pulse)
		led <= ~led;
	     else
                led <= led;
	   end    
         //��������module������û�д��ݲ���N��������Ĭ�ϵ�N=1     
         debounce  u1 (                               
                       .clk (clk),
                       .rst (rst),
                       .key (key),
                       .key_pulse (key_pulse)
                       );
 endmodule