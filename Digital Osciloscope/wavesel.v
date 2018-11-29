module wavesel(input[2:0] sel,input [7:0] w1,w2,w3,w4,w5, output [7:0]wo);
assign wo=(sel==3'b000)? w1 :
			 (sel==3'b001)? w2 :	
			 (sel==3'b010)? w3 :
			 (sel==3'b011)? w4 :
		    (sel==3'b100)? w5 :0;
			
			
			endmodule
