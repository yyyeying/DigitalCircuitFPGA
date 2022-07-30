module tail_lamp
(
input	sys_clk,	//系统时钟 
input	sys_rst_n,	//系统复位 
input	[3:0]	state_in,	//拨码开关输入 

output	reg	[2:0]	led_left,	//左侧尾灯 [msb~lsb] = [R,G,B]
output	reg	[2:0]	led_right,	//右侧尾灯 [msb~lsb] = [R,G,B]
output	reg	[7:0]	led_out		//流水灯输出 
);

parameter	CNT_NUM = 6_000_000; //计数器实现分频的分频系数

localparam	STOP	= 4'b0000;
localparam	GO		= 4'b0001;
localparam	LEFT	= 4'b0010;
localparam	RIGHT	= 4'b0100;
localparam	BACK	= 4'b1000;

wire		[2:0]	tail_on;	//尾灯点亮状态
wire		[2:0]	tail_off;	//尾灯熄灭状态
wire		[2:0]	tail_shin;	//尾灯闪烁状态
wire		[7:0]	_left;		//左转时单色LED的状态
wire		[7:0]	_rignt;		//右转时单色LED的状态
wire		[7:0]	_stop;		//停止时单色LED的状态

reg		[23:0]	cnt;		//计数器，
reg		[3:0]	current_state;//当前状态
reg		[3:0]	next_state;	//下一个状态
reg		clk_1hz;	//1Hz分频信号
reg		[7:0]	_go;		//前进时单色LED的状态
reg		[7:0]	_back;		//倒车时单色LED的状态

/*计数器实现0.5秒的周期*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		cnt <= 1'b0;
	else if(cnt >= CNT_NUM-1) 
		cnt <= 1'b0;
	else 
		cnt <= cnt + 1'b1;
		
/*根据计数器的周期实现1Hz信号分频*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		clk_1hz <= 1'b0;
	else if(cnt == CNT_NUM-1) 
		clk_1hz <= ~clk_1hz;
	else 
		clk_1hz <= clk_1hz;
		
/*尾灯的三种状态，RGB灯只使用红色*/
assign	tail_on = 3'b011;		//[msb~lsb] = [R,G,B]
assign	tail_off = 3'b111;		//[msb~lsb] = [R,G,B]
assign	tail_shin = {clk_1hz,2'b11};	//[msb~lsb] = [R,G,B]

/*车辆前进时，流水灯向上流水*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		_go <= 8'h7f;
	else if(cnt == CNT_NUM-1) 
		_go <= {_go[0],_go[7:1]};
	else 
		_go <= _go;
		
/*车辆倒车时，流水灯向下流水*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		_back <= 8'hfe;
	else if(cnt == CNT_NUM-1) 
		_back <= {_back[6:0],_back[7]};
	else 
		_back <= _back;

/*车辆左转、右转、停止时，流水灯的状态*/
assign	_left = 8'hf0;
assign	_rignt = 8'h0f;
assign	_stop = 8'h00;

/*将次态赋值给当前状态*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		current_state <= STOP;
	else 
		current_state <= next_state;

/*车辆次态完全由人为通过拨码开关控制*/
always@(*) 
	next_state = state_in;

/*车辆处于不同状态时，尾灯及流水灯的输出*/
always@(current_state or sys_rst_n)
	if(!sys_rst_n) begin
		led_left = tail_shin; 
		led_right = tail_shin; 
		led_out = _stop ;
		end
	else
	case(current_state)
		STOP	: begin led_left = tail_shin; led_right = tail_shin; led_out = _stop ; end
		GO		: begin led_left = tail_off ; led_right = tail_off ; led_out = _go   ; end
               LEFT	: begin led_left = tail_shin; led_right = tail_off ; led_out = _left ; end
	       RIGHT	: begin led_left = tail_off ; led_right = tail_shin; led_out = _rignt; end
		BACK	: begin led_left = tail_on  ; led_right = tail_on  ; led_out = _back ; end
		default	: begin led_left = tail_shin; led_right = tail_shin; led_out = _stop ; end
	endcase
endmodule
