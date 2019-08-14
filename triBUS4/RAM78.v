module RAM78 (	output reg [7:0] Q,	//out
				input [7:0] D,  //writedata
				input [6:0] A,  //addr
				input CLK,
				input WREN );	//控制信号
	reg[7:0] mem[127:0] /* synthesis ram_init_file="Mif2.mif" */;
//	reg [7:0] Q;
	always @(posedge CLK)
		if (WREN) mem[A] <=D;
		else	Q <= mem[A];	//WREN为1时，写入RAM；WREN为0时，从RAM读出
//	assign Q = mem[A];
endmodule