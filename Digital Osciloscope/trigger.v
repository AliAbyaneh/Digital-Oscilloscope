module trigger(input slope,input[7:0] level,input clk,input[7:0] sample,output reg trig);
reg [7:0] psample;
always @(posedge clk) begin
 psample=sample;
 end
 always@(posedge clk) begin
 trig=0;
 if(sample< level+20 && sample> level-20)
	begin
	if(slope==1)
		if(psample<sample)
			trig=1;
	if(slope==0)
		if(psample>sample)
			trig=1;
	end
 end


endmodule
