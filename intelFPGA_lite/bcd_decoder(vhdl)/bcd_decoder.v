module bcd_decoder(select,cntin,bcdout);
	input [3:0]cntin;
	input [2:0]select;
	output reg [6:0]bcdout;
	always@(cntin)
		begin
			case(cntin)
				4'b0000:bcdout=7'b0111111;//0   //g->a
				4'b0001:bcdout=7'b0000110;//1
				4'b0010:bcdout=7'b1011011;//2
				4'b0011:bcdout=7'b1001111;//3
				4'b0100:bcdout=7'b1100110;//4
				4'b0101:bcdout=7'b1101101;//5
				4'b0110:bcdout=7'b1111101;//6
				4'b0111:bcdout=7'b0000111;//7
				4'b1000:bcdout=7'b1111111;//8
				4'b1001:bcdout=7'b1101111;//9
			default:bcdout=7'b1111001;//E
	endcase
	end

	endmodule