module Finger_Dance(clk, keyc, keyr,rand_num,num,out);
	input [3:0] out;//keyboord輸入值判斷
	input clk; //clock(HZ=1)
	input [1:0] rand_num;//隨機數
	output reg [1:0] num;//當下狀態的隨機數
   output[3:0] keyc; //col
   reg[3:0] keyc;
   output[15:0] keyr; //row
   reg[15:0] keyr;
   reg[3:0] cdount; //row data scan
   reg[8:0] dount; // delay for each word
   reg[3:0] S; 	//sequential words control 

	//always@(*)
	 //num=rand_num;

   always @(posedge clk)
   begin

      if (clk == 1'b1)
      begin
         dount <= dount + 1 ;
			// delay for each word
         if (dount == 255)//設大一點就比較慢
         begin
			//sequential words control 
            num=rand_num;//賦值給當下的num顯示對應的隨機數
				if (S == 1) 
            begin
               S <= 4'b0000 ; //用於結束遊戲的歡呼畫面
            end
            else
            begin
               S <= S + 1 ; 
            end 
         end
         else
         begin
            num=num;
				S=S;
         end 
         if (cdount < 15)
         begin
            cdount <= cdount + 1 ;//row data scan
         end
         else
         begin
            cdount <= 4'b0000 ; 
         end 
      end 
   end 
	
	
	always @(cdount or num)
	begin
      keyc<= cdount;
		
		if(out==4'b1101 )begin
			if(S==0)begin
				case (cdount)
				4'b0000 :keyr <= 16'b1111111111111111 ;//遊戲結束跳舞
				4'b0001 :keyr <= 16'b1101101111111111 ;
				4'b0010 :keyr <= 16'b1110110111100111 ;
				4'b0011 :keyr <= 16'b1111011011011011 ;
				4'b0100 :keyr <= 16'b1111100000011011 ;
				4'b0101 :keyr <= 16'b1111011011011011 ;
				4'b0110 :keyr <= 16'b1110110111100111 ;
				4'b0111 :keyr <= 16'b1101101111111111 ; //7
				4'b1000 :keyr <= 16'b1111111111111111 ;
				4'b1001 :keyr <= 16'b1101111110111111 ;
				4'b1010 :keyr <= 16'b1110111101100111 ;
				4'b1011 :keyr <= 16'b1111011011011011 ;
				4'b1100 :keyr <= 16'b1111100000011011 ;
				4'b1101 :keyr <= 16'b1111011011011011 ;
				4'b1110 :keyr <= 16'b1110111101100111 ;
				4'b1111 :keyr <= 16'b1101111110111111 ;
				default :keyr <= 16'b1111111111111111 ;  
				endcase
			end
			else if(S==1)begin
				case (cdount)
				4'b0000 :keyr <= 16'b1111111111111111 ;//遊戲結束跳舞
				4'b0001 :keyr <= 16'b1101111110111111 ;
				4'b0010 :keyr <= 16'b1110111101100111 ;
				4'b0011 :keyr <= 16'b1111011011011011 ;
				4'b0100 :keyr <= 16'b1111100000011011 ;
				4'b0101 :keyr <= 16'b1111011011011011 ;
				4'b0110 :keyr <= 16'b1110111101100111 ;
				4'b0111 :keyr <= 16'b1101111110111111 ;
				4'b1000 :keyr <= 16'b1111111111111111 ;
				4'b1001 :keyr <= 16'b1101101111111111 ;
				4'b1010 :keyr <= 16'b1110110111100111 ;
				4'b1011 :keyr <= 16'b1111011011011011 ;
				4'b1100 :keyr <= 16'b1111100000011011 ;
				4'b1101 :keyr <= 16'b1111011011011011 ;
				4'b1110 :keyr <= 16'b1110110111100111 ;
				4'b1111 :keyr <= 16'b1101101111111111 ;
				default :keyr <= 16'b1111111111111111 ; 
				endcase
			end
		end
		else if (num == 2'b01)//dispay 2
		begin
			case (cdount)
				4'b0000 :keyr <= 16'b1111111111111111 ;//0
				4'b0001 :keyr <= 16'b1111111111111111 ;
				4'b0010 :keyr <= 16'b1111111111111111 ;
				4'b0011 :keyr <= 16'b1111111111111111 ;
				4'b0100 :keyr <= 16'b1111111111111111 ;
				4'b0101 :keyr <= 16'b1111111111111111 ;
				4'b0110 :keyr <= 16'b1111111111111111 ;
				4'b0111 :keyr <= 16'b1111111111111111 ; //7
				4'b1000 :keyr <= 16'b1111111111111111 ;
				4'b1001 :keyr <= 16'b1111111100011100 ;
				4'b1010 :keyr <= 16'b1111111100011100 ;
				4'b1011 :keyr <= 16'b1111111100100100 ;
				4'b1100 :keyr <= 16'b1111111100100100 ;
				4'b1101 :keyr <= 16'b1111111100111000 ;
				4'b1110 :keyr <= 16'b1111111100111000 ;
				4'b1111 :keyr <= 16'b1111111111111111 ;
				default :keyr <= 16'b1111111111111111 ; 
			endcase 
			end
		else if (num == 2'b10)//display 3
      begin
         case (cdount)
				4'b0000 :keyr <= 16'b1111111111111111 ; //空格
				4'b0001 :keyr <= 16'b0011110011111111 ; 
				4'b0010 :keyr <= 16'b0011110011111111 ; 
				4'b0011 :keyr <= 16'b0010010011111111 ;
				4'b0100 :keyr <= 16'b0010010011111111 ;
				4'b0101 :keyr <= 16'b0001100011111111 ;
				4'b0110 :keyr <= 16'b0001100011111111 ;
				4'b0111 :keyr <= 16'b1111111111111111 ;
				4'b1000 :keyr <= 16'b1111111111111111 ;
				4'b1001 :keyr <= 16'b1111111111111111 ;
				4'b1010 :keyr <= 16'b1111111111111111 ;
				4'b1011 :keyr <= 16'b1111111111111111 ;
				4'b1100 :keyr <= 16'b1111111111111111 ;
				4'b1101 :keyr <= 16'b1111111111111111 ;
				4'b1110 :keyr <= 16'b1111111111111111 ; 
				4'b1111 :keyr <= 16'b1111111111111111 ; 
				default :keyr <= 16'b1111111111111111 ;
			endcase 
		end
		
		 else if (num == 2'b11)//display 4
      begin
         case (cdount)
				4'b0000 :keyr <= 16'b1111111111111111 ;//0
				4'b0001 :keyr <= 16'b1111111111111111 ;
				4'b0010 :keyr <= 16'b1111111111111111 ;
				4'b0011 :keyr <= 16'b1111111111111111 ;
				4'b0100 :keyr <= 16'b1111111111111111 ;
				4'b0101 :keyr <= 16'b1111111111111111 ;
				4'b0110 :keyr <= 16'b1111111111111111 ;
				4'b0111 :keyr <= 16'b1111111111111111 ; //7
				4'b1000 :keyr <= 16'b1111111111111111 ;
				4'b1001 :keyr <= 16'b1100000111111111 ;
				4'b1010 :keyr <= 16'b1100000111111111 ;//10
				4'b1011 :keyr <= 16'b1100111111111111 ;
				4'b1100 :keyr <= 16'b1100111111111111 ;
				4'b1101 :keyr <= 16'b0000000111111111 ;
				4'b1110 :keyr <= 16'b0000000111111111 ;
				4'b1111 :keyr <= 16'b1111111111111111 ;
				default :keyr <= 16'b1111111111111111 ;
			endcase 
		end
		
		else if (num == 2'b00)//display 1
      begin
         case (cdount)
				4'b0000 :keyr <= 16'b1111111111111111 ; //0
				4'b0001 :keyr <= 16'b1111111111111111 ;
				4'b0010 :keyr <= 16'b1111111100111111 ;
				4'b0011 :keyr <= 16'b1111111100111001 ;
				4'b0100 :keyr <= 16'b1111111100000001 ;
				4'b0101 :keyr <= 16'b1111111100000001 ;//5
				4'b0110 :keyr <= 16'b1111111100111111 ;
				4'b0111 :keyr <= 16'b1111111100111111 ;
				4'b1000 :keyr <= 16'b1111111111111111 ;
				4'b1001 :keyr <= 16'b1111111111111111 ;
				4'b1010 :keyr <= 16'b1111111111111111 ;//10
				4'b1011 :keyr <= 16'b1111111111111111 ;
				4'b1100 :keyr <= 16'b1111111111111111 ;
				4'b1101 :keyr <= 16'b1111111111111111 ;
				4'b1110 :keyr <= 16'b1111111111111111 ;
				4'b1111 :keyr <= 16'b1111111111111111 ;
				default :keyr <= 16'b1111111111111111 ;
			endcase 
		end
	end

endmodule
