module CNT10 (CLK,RST,EN,LOAD,COUT,DOUT,DATA);
	input CLK,EN,RST,LOAD;
	input [7:0] DATA;
	output [7:0] DOUT;
	output COUT;
	reg [7:0] Q1;
	reg COUT;
	assign DOUT = Q1;
	
	always @ (posedge CLK or negedge RST or negedge LOAD)
	begin
		if (!RST)	Q1<=0;
		else
			if (!LOAD)	
				if(EN)	Q1<=DATA;
				else	Q1<=Q1;
			else
				if (EN)	begin
					if (Q1<9)	Q1 <= Q1+1;
					else	Q1 <= 8'b00000000; 		
				end
			//else(en)
	end
	
	always @ (Q1)
		if (Q1==8'h9)	COUT = 1'b1;	
		else	COUT = 1'b0;
endmodule