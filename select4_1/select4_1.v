module select4_1(S,A,B,C,D,Y);
	input wire [3:0]S;
	input A,B,C,D;
	output Y;
	reg Y;
	always @(*)	begin
		case(S)
			4'b1110:Y=A;
			4'b1101:Y=B;
			4'b1011:Y=C;
			4'b0111:Y=D;
			default:Y=1'bx;
		endcase
	end
endmodule
