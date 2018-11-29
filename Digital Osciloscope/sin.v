module sin(input clk, output [7:0] out);
reg [15:0] sin1=16'd510, sin2=0, cos1=16'd29700, cos2=16'd30000, sin, cos;
always@(posedge clk)
begin
	sin = sin2+ {cos1[15],cos1[15],cos1[15],cos1[15],cos1[15],cos1[15:5]};
	cos = cos2- {sin1[15],sin1[15],sin1[15],sin1[15],sin1[15],sin1[15:5]};
	sin1= sin2+ {cos1[15],cos1[15],cos1[15],cos1[15],cos1[15],cos1[15:5]};
	cos1= cos2- {sin1[15],sin1[15],sin1[15],sin1[15],sin1[15],sin1[15:5]};
	sin2=sin1;
	cos2=cos1;
end
assign out= sin[15:8] + 127;
endmodule