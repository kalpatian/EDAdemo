module y2_10(a,s1,s2,data);
	input [3:0] a;
	input s1,s2;
	output [7:0] data; //
	reg [7:0] data;
	always@ (a,s1,s2)
		begin
			if(s1==0)
				data<=8'b00000000;
			else if(s2==1)
				data<=8'b00000000;
			else
				begin
					case(a)
				4'b0000:data<=8'b00111111;
				4'b0001:data<=8'b00000110;
				4'b0010:data<=8'b01011011;
				4'b0011:data<=8'b01001111;
				4'b0100:data<=8'b01100110;
				4'b0101:data<=8'b01101101;
				4'b0110:data<=8'b01111101;
				4'b0111:data<=8'b00000111;
				4'b1000:data<=8'b01111111;
				4'b1001:data<=8'b01101111;
				default:data<=8'b00000000;
					endcase
				end
		end
endmodule