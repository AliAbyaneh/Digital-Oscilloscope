module mirror (input [7:0] datain ,output [7:0] dataout);
assign dataout[7]=datain[0];
assign dataout[6]=datain[1];
assign dataout[5]=datain[2];
assign dataout[4]=datain[3];
assign dataout[3]=datain[4];
assign dataout[2]=datain[5];
assign dataout[1]=datain[6];
assign dataout[0]=datain[7];
endmodule
