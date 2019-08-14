module ADDSUB16(CLK,EN,RST,SET,DATA,OUTPUT);
	input CLK,EN,RST,SET;
	input [15:0] DATA;
	output [15:0] OUTPUT;
	reg [15:0] Q;
	assign OUTPUT = Q;
	always @ (posedge CLK or negedge RST)	begin
		if(!RST)	Q<=15'h0000;
		else begin
			if(EN) begin
				if(SET)	begin
					if(Q<16'hffff)	Q<=Q+1;
					else	Q<=16'h0000;
				end
				else	begin
					if(Q>16'h0000)	Q<=Q-1;
					else	Q<=16'h0000;
				end
			end
			else	Q<=Q;
		end
	end
endmodule