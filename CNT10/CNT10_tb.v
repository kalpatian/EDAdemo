`timescale 1ns/1ps
module CNT10_tb();
	wire cout;
	wire [7:0] dout;//output
	
	reg clk,en,rst,load;
	reg [7:0] data;//input
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
	#0	load=1'b1;
	#49 load=1'b0;
	#3	load=1'b1;
end
initial begin
	#0	data=8'h7;
	#30	data=8'h2;
	#30	data=8'h5;
	#30	data=8'h4;
end

	CNT10 cn(.CLK(clk),.RST(rst),
			.EN(en),.LOAD(load),.COUT(cout),.DOUT(dout),.DATA(data));
endmodule	