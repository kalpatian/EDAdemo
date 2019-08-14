module MUXK(a,s,y);
	input wire [2:0]a;
	input wire [1:0]s;
	output y;
	reg y;
	reg x;
	always @(*) begin
	case(s[0])
		0:x=a[1];
		1:x=a[2];
	endcase
	
	case(s[1])
		0:y=a[0];
		1:y=x;
	endcase
	end
	
endmodule