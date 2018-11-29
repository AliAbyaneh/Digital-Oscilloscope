module controller (input [2:0]RGB,input clock, output [9:0] x, output [9:0] y,output  R,G,B,h_sync,v_sync);
reg [9:0]y1=10'b0,x1=10'b0;
always @(posedge clock) begin
/*
if (c<=10'd639) begin
	R=RGB[0]; G=RGB[1]; B=RGB[2];
end
else if (>=10'd639)
  begin
	R=0; G=0; B=0;
  end*/
if(x1>=799) begin
			x1=10'b0000000000;
			
end
if(x1==699) y1=y1+1;
if(y1>=524) begin  y1=0; end
x1=x1+1;
end
assign R=(x1<639&&y1<524)?RGB[0]:0;
assign G=(x1<639&&y1<524)?RGB[1]:0;
assign B=(x1<639&&y1<524)?RGB[2]:0;
assign h_sync=(x1<=659)?1:(x1>=755)?1:0;
assign v_sync=(y1<496 && y1>493)?0:1;
assign y=y1;
assign x=x1;

endmodule
