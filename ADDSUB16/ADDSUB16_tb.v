`timescale 1ns/1ps
module ADDSUB16_tb();
	wire [15:0] dout;//output
	reg clk,en,rst,set;
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
	#0		data=16'h7;
	#100	data=16'h2;
	#100	data=16'h5;
	#100	data=16'h4;
	#100	data=16'h1;
	#100	data=16'h9;
end
initial begin
	#0	set=1'b0;
	#30	set=1'b1;
	#40 set=1'b0;
	#30 set=1'b1;
end
	ADDSUB16 cn(.CLK(clk),.EN(en),.RST(rst),.SET(set),.DATA(data),.OUTPUT(dout));
endmodule	