module rhomboid(input clk,output  [7:0] w);
reg [7:0]count=8'b00000000;
reg [7:0]w1=8'b10000000;
reg [7:0]w2=8'b10000000;
reg [7:0]w3;
reg a=0;
always @(posedge clk ) begin:myloop
count=count+1;
a=~a;
if(count<=8'd127)begin
	w2=w2-1;
	w1=w1+1;
	end
else  begin 
			w1=w1-1;
			w2=w2+1;
		end
	
	if (a)
	w3=w1;
	else w3=w2;
end
assign w=w3;
endmodule
