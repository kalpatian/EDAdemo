module LS160(D,ENP,ENT,CLK,LOAD,CLR,COUT,RCO);
	input [3:0] D; //DATA
	input ENP,ENT,CLK,LOAD,CLR;
	output [3:0] COUT; //RESULT
	output RCO;
	reg [3:0] Q;
	reg RCO;
	assign COUT = Q;
	always @ (posedge CLK or negedge CLR)	begin
		if(!CLR)	Q<=0;
		else	begin
			if(!LOAD)	Q<=D;
			else	begin
				if(ENP ==1 & ENT ==1)
					if(Q<9)	Q<=Q+1;
					else Q<=4'b0000;
				else	Q<=Q;
			end
		end
	end
	always @ (Q)	begin
		if (Q == 4'h9)	RCO = 1'b1;
		else	RCO = 1'b0;
	end
endmodule