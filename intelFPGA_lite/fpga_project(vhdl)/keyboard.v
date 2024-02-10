module keyboard(rst,clk,row, col,out,press,num);

input rst;//reset
input clk;//clock
input [1:0] num;
input[3:0] row;//存row input值
output reg[3:0] col;//存column output值
output reg[3:0] out;//存輸出的seg
output reg press;//press事件
	
	
reg[1:0] tmp;
initial tmp = 2'b00;

	always@(posedge clk) begin
		if(tmp==2'b00) begin 
		 col = 4'b0000;
		 press = !(row[0]&row[1]&row[2]&row[3]);
		end
		
		if(press) begin
			case(tmp)
				2'b00: col = 4'b1110;//state1
				2'b01: col = 4'b1101;//state2
				2'b10: col = 4'b1011;//state3
				2'b11: col = 4'b0111;//state4
			endcase

			if(col==4'b1110)begin //state1
				case(row) //ppt有誤它會對應成:
					4'b0111: out = 4'b0001;//1
					4'b1011: out = 4'b0010;//2
					4'b1101: out = 4'b0011;//3
					4'b1110: out = 4'b1010;//a
					//default:	out=4'b0000;//0
				endcase
			end
			else if(col==4'b0111)begin //state2
				case(row) //ppt有誤它會對應成:
				4'b0111: out = 4'b0100;//4
				4'b1011: out = 4'b0101;//5
				4'b1101: out = 4'b0110;//6
				4'b1110: out = 4'b1011; //b
				//default:	out=4'b0000;//0
				endcase
			end
			else if(col==4'b1011)begin //state3
				case(row) //ppt有誤它會對應成:
				4'b0111: out = 4'b0111;//7
				4'b1011: out = 4'b1000;//8
				4'b1101: out = 4'b1001;//9
				4'b1110: out = 4'b1100; //c
				//default:	out=4'b0000;//0
				endcase
			end
			else if(col==4'b1101)begin //state4
				case(row) //ppt有誤它會對應成:
				4'b0111: out = 4'b1110;//e
				4'b1011: out = 4'b0000;//0
				4'b1101: out = 4'b1111;//f
				4'b1110: out = 4'b1101; //d
				//default:	out=4'b0000;//0
				endcase
			end
				
			tmp=tmp+1;//可以到下一col檢查
									
		end
	end
endmodule 
