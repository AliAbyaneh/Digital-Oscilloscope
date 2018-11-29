module PWM (input clk,input [7:0]in , output reg out);
reg [7:0]count=0;
always @(posedge clk) begin:myloop
	count=count+1;
	if(count>in)
		out=0;
	else out=1;
end
endmodule 