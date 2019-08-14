module CNT10_Changed (CLK,RST,EN,COUT,DOUT,DATA);
	input CLK,EN,RST;
	input [15:0] DATA;
	output [15:0] DOUT;
	output COUT;
	reg [15:0] Q1;
	reg COUT;
	wire LOAD;
	assign DOUT = Q1;
	assign LOAD = ~COUT;
	
	always@(posedge CLK or negedge RST or negedge LOAD)
		begin
		if (!RST)	Q1<=0;
		else	begin
			if(!LOAD)	begin 
				if(EN)	Q1<=DATA;
				else	Q1<=Q1;
				end
			else 
				if (EN)	begin
				if (!LOAD)	Q1<=DATA;
				else if (Q1<16'h1E3F)	Q1 <= Q1+1;
				else	Q1 <= 16'h0000; 
				end
			end
		end
	always@(Q1)
		if (Q1==16'h1E3F)	COUT = 1'b1;	
		else	COUT = 1'b0;
endmodule