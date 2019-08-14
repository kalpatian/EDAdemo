`timescale 1ns/1ps
module CNT10_Changed_tb();
	wire cout;
	wire [15:0] dout;//output
	
	reg clk,en,rst;
	reg [15:0] data;//input
always #3 clk=~clk;
initial
	$monitor ("DOUT=%h",dout);//以十六进制打印待测模块DOUT的输出数据
initial	begin
	#0	clk = 1'b0;
	#0	rst=1'b1; 
	#20	rst=1'b1;
end
initial begin
	#0	en=1'b0;
	#5	en=1'b1;
end
initial begin
	#0	data=16'h7;
	#30	data=16'h2;
	#30	data=16'h5;
	#30	data=16'h4;
end

	CNT10_Changed cn(.CLK(clk),.RST(rst),
			.EN(en),.COUT(cout),.DOUT(dout),.DATA(data));
endmodule	