module triangle (input clk,en,output reg [7:0] w);
reg [7:0]count=8'b0;
always @(posedge clk ) begin:myloop
if(en) begin
count=count+1; 
if(count<=8'd127)
	w=w+2;
else w=w-2;	
end
end
endmodule