module tria (input clk,output reg [7:0] w);
reg [7:0]count=8'b0;
always @(posedge clk ) begin:myloop
count=count+1; 
if(count<=8'd127)
	w=w+2;
else w=w-2;	
end

endmodule