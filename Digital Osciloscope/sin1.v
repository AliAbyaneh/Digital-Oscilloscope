module sin1 (input clk,output [7:0] w);
reg [15:0] sinnow=16'b0;
reg [15:0] sinnext;
reg [15:0] cosnow=16'd30000;
reg [15:0] cosnext;
always@(posedge clk)begin:myloop
sinnext=sinnow+{cosnow[15],cosnow[15],cosnow[15],cosnow[15],cosnow[15],cosnow[15],cosnow[15:6]};

cosnext=cosnow-{sinnow[15],sinnow[15],sinnow[15],sinnow[15],sinnow[15],sinnow[15],sinnow[15:6]};
end
assign w=sinnext;
endmodule
