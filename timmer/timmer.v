module segment_counter
(
	clk				,
	rst				,
	hold			,
	seg_led_1		,
	seg_led_2		,
);
 
	input 	clk,rst;
	input	hold;
 
	output reg	[8:0]	seg_led_1,seg_led_2;
 
	reg			clk_divided;
	reg			hold_flag;
	reg					back_to_zero_flag	=	0;
	reg   		[6:0]   seg		[9:0];  
	reg 		[23:0]	cnt;
	reg			[3:0]	cnt_ge;
	reg			[3:0]	cnt_shi;
 
	parameter	PERIOD=6000000;	//1秒
 
	initial 
	begin
		seg[0] = 7'h3f;	   //  0
		seg[1] = 7'h06;	   //  1
		seg[2] = 7'h5b;	   //  2
		seg[3] = 7'h4f;	   //  3
		seg[4] = 7'h66;	   //  4
		seg[5] = 7'h6d;	   //  5
		seg[6] = 7'h7d;	   //  6
		seg[7] = 7'h07;	   //  7
		seg[8] = 7'h7f;	   //  8
		seg[9] = 7'h6f;	   //  9
/*若需要显示A-F,解除此段注释即可
		seg[10]= 7'hf7;	   //  A
		seg[11]= 7'h7c;	   //  b
		seg[12]= 7'h39;    //  C
		seg[13]= 7'h5e;    //  d
		seg[14]= 7'h79;    //  E
		seg[15]= 7'h71;    //  F*/
	end
 
	always @ (posedge clk) begin		// 用于分出一个1Hz的频率
			if (!rst == 1) begin
				cnt <= 0;
				clk_divided <= 0; end
			else begin
				if (cnt < PERIOD-1)
					cnt <= cnt + 1;
				else begin
					cnt <= 0;
					clk_divided <= ~clk_divided; end
				end
		end
 
	always @ (*) begin
		if (!rst == 1)
			back_to_zero_flag <= 1;
		else if (((cnt_shi*10) + cnt_ge)==24)
			back_to_zero_flag <= 1;
		else
			back_to_zero_flag <= 0;
		end
 
	always @ (posedge hold)
		hold_flag <= ~hold_flag;
 
	always @ (posedge clk_divided or posedge back_to_zero_flag) begin
		if (back_to_zero_flag == 1) begin
			cnt_ge <= 0;
			cnt_shi <= 0; end
		else if (cnt_ge == 9) begin
			cnt_ge <= 0;
			cnt_shi <= cnt_shi + 1; end
		else if (hold_flag == 1)
			cnt_ge <= cnt_ge;
		else
			cnt_ge <= cnt_ge + 1;
		end
 
	always @ (cnt_ge) begin
		seg_led_1[8:0] <= {2'b00,seg[cnt_ge]};
	 	end
 
	always @ (cnt_shi) begin
		seg_led_2[8:0] <= {2'b00,seg[cnt_shi]};
	 	end
 
endmodule