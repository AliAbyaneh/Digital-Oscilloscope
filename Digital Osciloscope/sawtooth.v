module sawtooth(input clk,output reg[7:0] s);
always @(posedge clk) begin: myloop
	
	s<=s+1;
	end
	
	endmodule
	