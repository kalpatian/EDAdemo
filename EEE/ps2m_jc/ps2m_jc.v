module ps2m_jc(clkin,kbdata,kbclk,rst,dout,jgout,flag);
	input clkin,kbdata,kbclk;
	input rst,flag;
	output[7:0] dout;
	output [3:0] jgout;
	reg [7:0] dout;
	reg [9:0] m,s,set;
	reg [3:0] jgout;
	reg clk1,q;

	
	always @(posedge clkin)
	begin
		if(!rst)	clk1<=1;
		else if(!kbclk)	clk1<=kbclk;
			else clk1<=1;
	end
	
	always@ (negedge clk1)
	begin
		m[9:0]<={kbdata,s[9:1]};
	end
	
	always@ (posedge clk1)
	begin
		 s<=m;
	end
	
	always @(clk1,m,s)
	begin
		case(s[7:0])
			8'b00010110:dout[7:0]<=8'b00000110;
			8'b00011110:dout[7:0]<=8'b01011011;
			8'b00100110:dout[7:0]<=8'b01001111;
			8'b00100101:dout[7:0]<=8'b01100110;
			8'b00101110:dout[7:0]<=8'b01101101;//5
			8'b00110110:dout[7:0]<=8'b01111101;
			8'b00111101:dout[7:0]<=8'b00000111;
			8'b00111110:dout[7:0]<=8'b01111111;
			8'b01000110:dout[7:0]<=8'b01101111;
			8'b01000101:dout[7:0]<=8'b00111111;//0
			8'b00011100:dout[7:0]<=8'b01110111;
			8'b00110010:dout[7:0]<=8'b01111100;
			8'b00100001:dout[7:0]<=8'b00111001;
			8'b00100011:dout[7:0]<=8'b01011110;
			8'b00100100:dout[7:0]<=8'b01111001;
			8'b00101011:dout[7:0]<=8'b01110001;//f
			default:dout[7:0]<=8'b00000000;
		endcase
	end
	
	always@(*)
	begin
	 if(flag==1) set<=m;
	end
	
	always@ (q)
	begin
		if(s[7:0]==set[7:0])
			begin jgout<=4'b1010;
			q=1;
			end
		else begin
			jgout=4'b1011;
			q=0;
			end
		end
endmodule