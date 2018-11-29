module sampling (input [7:0]  datain, input clk, output reg [7:0] data);
always@(posedge clk) begin
data=datain;
end
endmodule
