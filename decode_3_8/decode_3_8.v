module decode_38 (
	input wire[2:0] a,
	output reg[7:0] y
); 
	integer i; 
	always @(*) begin //****** 
	for (i=0;i<8;i=i+1) begin
			if (a==i)
				y[i]<=1; 
			else y[i]<=0; 
			end 
		end 
endmodule
