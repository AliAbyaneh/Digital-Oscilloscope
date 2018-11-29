module clk25 (input clk , output reg clock);
reg [1:0] c=2'b00;
always @(posedge clk) begin
	clock=c[0];
	c=c+1;
end

endmodule
