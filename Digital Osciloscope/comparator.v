module comparator (input [9:0]data, input [9:0] y,x, input [1:0]select,input [1:0]ampselect,output [2:0] RGB,input [7:0]dataf ,output [10:0]addrc,input clk);
reg[17:0] cnt;
reg [9:0]x1=9'b0;
always @(posedge clk) begin
cnt=cnt+1;
if (cnt==17'b0)
	x1=x1+64;
if(x1>=640) x1=0;	
end
assign addrc=(x>=x1&& x<=x1+7 && y>=32 && y<=47 )? 11'd1344+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=32 && y<=47 && select==2'b00) ? 11'd768+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=32 && y<=47 && select==2'b01) ? 11'd784+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=32 && y<=47 && select==2'b10) ? 11'd800+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=32 && y<=47 && select==2'b11) ? 11'd816+(y%16):
				 (x>=x1&& x<=x1+7 && y>=64 && y<=79 )? 11'd1040+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=64 && y<=79 && ampselect==2'b00) ? 11'd768+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=64 && y<=79 && ampselect==2'b01) ? 11'd784+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=64 && y<=79 && ampselect==2'b10) ? 11'd800+(y%16):
				 (x>=x1+16&& x<=x1+23 && y>=64 && y<=79 && ampselect==2'b11) ? 11'd816+(y%16):0;

assign RGB=(x>=x1&& x<=x1+23 && y>=32 && y<=47 && dataf[x%16]==1 ) ? 3'b100:
			  (x>=x1&& x<=x1+23 && y>=64 && y<=79 && dataf[x%16]==1 ) ? 3'b100:
			  (y%60==0)? 3'b000 :
			  (x%80==0)? 3'b000 :
			  (data==y)? 3'b001 :3'b111;
endmodule
