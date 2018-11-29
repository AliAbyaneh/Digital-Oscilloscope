module addgen (input clk, rst, output [9:0] add, output write_en);
reg [9:0] write_add=10'b0000000000;
always@(posedge clk)begin
	if (rst==1 && write_add>=640)  begin write_add=10'b0000000000;  end
	write_add=write_add+1;
end
assign write_en =(write_add<=640)? 1 :0;
assign add=write_add;
endmodule
