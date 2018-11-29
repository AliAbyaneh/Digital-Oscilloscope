module square (input clk, output [7:0]o);
reg [7:0] count=8'b00000000;
reg [7:0] w=8'b00000000;
always @(posedge clk) begin: myloop

 count=count+1;
 if(count<=8'd127)
	w=8'b11111111;
	else w=8'b00000000;
 end

assign o=w;
endmodule