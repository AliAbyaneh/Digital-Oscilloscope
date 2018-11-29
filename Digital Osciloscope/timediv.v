module timediv (input clk,input [1:0] sel, output clock);
reg [15:0] c;
always@(posedge clk) begin

	c=c+1;
	end
	assign 	clock= (sel==2'b00) ? c[6] :
						 (sel==2'b01) ? c[7] :
						 (sel==2'b10) ? c[8] : c[9];
endmodule
