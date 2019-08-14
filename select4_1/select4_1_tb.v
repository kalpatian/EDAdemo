`timescale 1ns/1ps
module select4_1_tb;
	wire A,B,C,D;	
	reg E,F,G,H;
	reg A1,B1,C1,D1;
	wire [3:0]S;
	wire Y;
	assign S={E,F,G,H};
	assign A=A1;
	assign B=B1;
	assign C=C1;
	assign D=D1;
	select4_1 sel(.S(S),.A(A),.B(B),.C(C),.D(D),
					.Y(Y)		);
					
	initial begin
	
		A1=0;B1=1;C1=1;D1=1;
		E=1;F=1;G=1;H=0;#5;
		E=1;F=1;G=0;H=1;#5;
		E=1;F=0;G=1;H=1;#5;
		E=0;F=1;G=1;H=1;#5;
		E=0;F=0;G=0;H=0;#5;
		E=1;F=1;G=1;H=1;#5;
		E=0;F=1;G=1;H=0;#5;
		
		A1=1;B1=0;C1=1;D1=0;
		E=1;F=1;G=1;H=0;#5;
		E=1;F=1;G=0;H=1;#5;
		E=1;F=0;G=1;H=1;#5;
		E=0;F=1;G=1;H=1;#5;
		E=0;F=0;G=0;H=0;#5;
		E=1;F=1;G=1;H=1;#5;
		E=0;F=1;G=1;H=0;#5;
		
		
	end
endmodule