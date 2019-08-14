`timescale 1ns/1ps
module tri_tb();
	reg clk;
	reg [2:0] ENA;
	reg [7:0] writedata;
	reg [6:0] addr;
	wire [7:0] dout;
always #3 clk=~clk;
initial
	$monitor ("DOUT=%h",dout);
initial begin
	#0 clk=1'b1;
end

initial begin
	#0 ENA=3'b000;
	#5 ENA=3'b001;
	#5 ENA=3'b010;
	#5 ENA=3'b011;
	#5 ENA=3'b100;
	#5 ENA=3'b101;
	#5 ENA=3'b110;
	#5 ENA=3'b111;
	#5 ENA=3'b000;
	#5 ENA=3'b001;
	#5 ENA=3'b010;
	#5 ENA=3'b011;
	#5 ENA=3'b000;
	#5 ENA=3'b001;
	#5 ENA=3'b010;
	#5 ENA=3'b011;
	#5 ENA=3'b000;
	#5 ENA=3'b001;
	#5 ENA=3'b010;
	#5 ENA=3'b011;
	#5 ENA=3'b000;
end

initial begin
	#0 writedata=8'h6;
end

initial begin
	#0 addr=7'h2f;
	#20 addr=7'h32;
end

triBUS4 tri_1(.clk(clk),.IN3(addr),.IN2(addr),.IN1(addr),.IN0(addr),
			.writedata(writedata),.ENA(ENA),.DOUT(dout) );

endmodule