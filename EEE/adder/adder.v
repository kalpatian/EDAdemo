module adder(a,b,cin,s,cout);
	input [3:0] a,b;
	input cin;
	output [3:0] s;
	output cout;
	wire [4:0] DATA;
	assign DATA = a+b+cin;
	assign cout = DATA[4];
	assign s = DATA[3:0];
endmodule