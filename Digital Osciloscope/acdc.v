module acdc (input [9:0]datain, input select, input clk, output [9:0]dataout);
reg [17:0] sum=18'b0;
wire [9:0] avg;
reg [9:0] count=10'b0;
reg [17:0]count2=18'b0;
reg c=0;
always @(posedge clk) begin
count2=count2+1;
if(count<=640 && c==0) begin
sum=sum+datain;
count=count+1; end
else  begin count=10'b0;  c=1;  end
if(count2==18'b0)begin  c=0; sum=18'b0; end
end
assign avg=sum/640;
assign dataout=(select) ? datain+avg : datain;
endmodule
