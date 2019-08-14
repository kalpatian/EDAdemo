module decode_3_8_tb;
	reg A,B,C;
	wire [7:0] y;
	wire [2:0] a;
	assign a={A,B,C};
	decode_3_8(.a(a),
							.y(y)
							);//3_8 module
	initial begin
		A=0;B=0;C=0;#100;
		A=0;B=0;C=1;#100;
		A=0;B=1;C=0;#100;
		A=0;B=1;C=1;#100;
		A=1;B=0;C=0;#100;
		A=1;B=0;C=1;#100;
		A=1;B=1;C=0;#100;
		A=1;B=1;C=1;#100;//choose number
	end
endmodule