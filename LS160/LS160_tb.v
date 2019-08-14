`timescale 1ns/1ps
module LS160_tb();
	wire rco;
	wire [3:0] cout;//output
	
	reg clk,enp,ent,load,rst;
	reg [3:0] d;//input
always #3 clk=~clk;
initial
	$monitor ("cout=%h",cout);
initial	begin
	#0	clk = 1'b0;
	#0	rst=1'b1; 
	#20	rst=1'b1;
end
initial begin
	#0	enp=1'b0;
	#20	enp=1'b1;
end
initial begin
	#0	ent=1'b0;
	#30	ent=1'b1;
end
initial begin
	#0	load=1'b1;
	#49 load=1'b0;
	#3	load=1'b1;
	#5	load=1'b0;
	#10	load=1'b1;
end
initial begin
	#0	d=8'h7;
	#30	d=8'h2;
	#30	d=8'h5;
	#30	d=8'h4;
end

	LS160 ls(.D(d),.ENP(enp),.ENT(ent),.CLK(clk),.LOAD(load),.CLR(rst),
				.COUT(cout),.RCO(rco));
endmodule	
