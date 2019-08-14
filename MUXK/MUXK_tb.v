`timescale 1ns/1ps
module MUXK_tb;
	reg A,B,C,D,E;
	wire [2:0] a;
	wire [1:0] s;
	wire y;
	assign a={A,B,C};
	assign s={D,E};
	MUXK ut(.a(a),			.s(s),
					.y(y)	
							);
			
	initial begin
		D=0;E=0;
		A=0;B=0;C=0;#5;		
		A=0;B=0;C=1;#5;		
		A=0;B=1;C=0;#5;		
		A=0;B=1;C=1;#5;		
		A=1;B=0;C=0;#5;		
		A=1;B=0;C=1;#5;
		A=1;B=1;C=0;#5;
		A=1;B=1;C=1;#5;	
		
	end
endmodule