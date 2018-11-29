module ampsel (input [7:0] data, input [1:0] sel,output[9:0] dataout);
wire [9:0]temp ={2'b00,data[7:0]};
assign dataout= (sel==2'b00) ? temp+10'd112 :
					 (sel==2'b01) ? (temp/2)+10'd176 :
					 (sel==2'b10) ? (temp/4)+10'd208 :
					 (sel==2'b11) ? (temp/8)+10'd224 :0;

endmodule
