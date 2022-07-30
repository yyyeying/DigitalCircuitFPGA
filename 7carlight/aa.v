module tail_lamp
(
input	sys_clk,	//ϵͳʱ�� 
input	sys_rst_n,	//ϵͳ��λ 
input	[3:0]	state_in,	//���뿪������ 

output	reg	[2:0]	led_left,	//���β�� [msb~lsb] = [R,G,B]
output	reg	[2:0]	led_right,	//�Ҳ�β�� [msb~lsb] = [R,G,B]
output	reg	[7:0]	led_out		//��ˮ����� 
);

parameter	CNT_NUM = 6_000_000; //������ʵ�ַ�Ƶ�ķ�Ƶϵ��

localparam	STOP	= 4'b0000;
localparam	GO		= 4'b0001;
localparam	LEFT	= 4'b0010;
localparam	RIGHT	= 4'b0100;
localparam	BACK	= 4'b1000;

wire		[2:0]	tail_on;	//β�Ƶ���״̬
wire		[2:0]	tail_off;	//β��Ϩ��״̬
wire		[2:0]	tail_shin;	//β����˸״̬
wire		[7:0]	_left;		//��תʱ��ɫLED��״̬
wire		[7:0]	_rignt;		//��תʱ��ɫLED��״̬
wire		[7:0]	_stop;		//ֹͣʱ��ɫLED��״̬

reg		[23:0]	cnt;		//��������
reg		[3:0]	current_state;//��ǰ״̬
reg		[3:0]	next_state;	//��һ��״̬
reg		clk_1hz;	//1Hz��Ƶ�ź�
reg		[7:0]	_go;		//ǰ��ʱ��ɫLED��״̬
reg		[7:0]	_back;		//����ʱ��ɫLED��״̬

/*������ʵ��0.5�������*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		cnt <= 1'b0;
	else if(cnt >= CNT_NUM-1) 
		cnt <= 1'b0;
	else 
		cnt <= cnt + 1'b1;
		
/*���ݼ�����������ʵ��1Hz�źŷ�Ƶ*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		clk_1hz <= 1'b0;
	else if(cnt == CNT_NUM-1) 
		clk_1hz <= ~clk_1hz;
	else 
		clk_1hz <= clk_1hz;
		
/*β�Ƶ�����״̬��RGB��ֻʹ�ú�ɫ*/
assign	tail_on = 3'b011;		//[msb~lsb] = [R,G,B]
assign	tail_off = 3'b111;		//[msb~lsb] = [R,G,B]
assign	tail_shin = {clk_1hz,2'b11};	//[msb~lsb] = [R,G,B]

/*����ǰ��ʱ����ˮ��������ˮ*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		_go <= 8'h7f;
	else if(cnt == CNT_NUM-1) 
		_go <= {_go[0],_go[7:1]};
	else 
		_go <= _go;
		
/*��������ʱ����ˮ��������ˮ*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		_back <= 8'hfe;
	else if(cnt == CNT_NUM-1) 
		_back <= {_back[6:0],_back[7]};
	else 
		_back <= _back;

/*������ת����ת��ֹͣʱ����ˮ�Ƶ�״̬*/
assign	_left = 8'hf0;
assign	_rignt = 8'h0f;
assign	_stop = 8'h00;

/*����̬��ֵ����ǰ״̬*/
always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) 
		current_state <= STOP;
	else 
		current_state <= next_state;

/*������̬��ȫ����Ϊͨ�����뿪�ؿ���*/
always@(*) 
	next_state = state_in;

/*�������ڲ�ͬ״̬ʱ��β�Ƽ���ˮ�Ƶ����*/
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
