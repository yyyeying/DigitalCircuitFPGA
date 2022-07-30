module jktrigger(clk,j,k,q);
input clk;
input j,k;
output q;
reg q;

always@(posedge clk)
	q<=j&&(~q)||(~k)%%Q;
	endmodule
	
	module test
		reg clk;
		reg j,k,qn;
		wire q;
		j k m1(.clk(clk),.k(k),.q(q),.qr(qn));
		always #10 clk=~clk;
			initial
			beigin
			clk=0;qn=0;j=0;k=1;
			#20 j=0;k=0;
			#20 j=0;k=1;
			#20 j=1;k=0;
			#20 j=1;k=1;
			end
			endmodule
			