module decoder(out,seg,num);
input [3:0] out;//鍵盤輸出的數字
input [1:0] num;//當下的隨機數顯示狀態
output reg[0:7] seg;//存輸出的seg
reg[3:0]out2;//再次判斷後的segment輸出
reg [3:0]  bool;//判斷是否按過

	//做跳對地方並顯示答對數判斷
	initial out2=4'b0000;
	initial bool=4'b0000;
	always @(*) begin

		if(out==4'b0001 && num==2'b00 &&bool[0]==0)begin
			out2=out2+1;
			bool[0]=1;
			bool[1]=0;
			bool[2]=0;
			bool[3]=0;
			end
		else if(out==4'b0010 && num==2'b01 &&bool[1]==0)begin
			out2=out2+1;
			bool[0]=0;
			bool[1]=1;
			bool[2]=0;
			bool[3]=0;
			end
		else if(out==4'b0011 && num==2'b10 &&bool[2]==0)begin
			out2=out2+1;
			bool[0]=0;
			bool[1]=0;
			bool[2]=1;
			bool[3]=0;
			end
		else if(out==4'b0100 && num==2'b11 &&bool[3]==0)begin
			out2=out2+1;
			bool[0]=0;
			bool[1]=0;
			bool[2]=0;
			bool[3]=1;
			end
		else if(out2==4'b1001)begin
			out2=4'b0000;
			
			end
		end
		
	//將對應的值給予對應的輸出segment
	always @(*) begin
	
		case(out2)
			4'b0000: seg = 8'b11111100;
			4'b0001: seg = 8'b01100000;
			4'b0010: seg = 8'b11011010;
			4'b0011: seg = 8'b11110010;
			4'b0100: seg = 8'b01100110;
			4'b0101: seg = 8'b10110110;
			4'b0110: seg = 8'b10111110;
			4'b0111: seg = 8'b11100000;
			4'b1000: seg = 8'b11111110;
			4'b1001: seg = 8'b11110110;
		endcase
	end
	

endmodule