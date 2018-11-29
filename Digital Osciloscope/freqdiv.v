module freqdiv (input clk, output co);
reg [12:0] pco=13'b0000000000000;
reg c=0;
always @(posedge clk) begin: myloop
pco=pco+1;
if (pco==13'd120) begin
	c=~c;
	pco=13'b0000000000000;
	end
end

assign co=c;
endmodule
