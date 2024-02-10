module DotArray (clk, keyc, keyr);
   input clk; //clock(HZ=1)
   output[3:0] keyc; //col
   reg[3:0] keyc;
   output[15:0] keyr; //row
   reg[15:0] keyr;
   reg[3:0] cdount; //row data scan
   reg[8:0] dount; // delay for each word
   reg[3:0] S; 	//sequential words control 
	
   always @(posedge clk)
   begin
      if (clk == 1'b1)
      begin
         dount <= dount + 1 ;
			// delay for each word
         if (dount == 255)//設大一點就比較慢
         begin
			//sequential words control 
            if (S == 2) 
            begin
               S <= 4'b0000 ; 
            end
            else
            begin
               S <= S + 1 ; 
            end 
         end
         else
         begin
            S <= S ; 
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
	
	always @(cdount or S)
	begin
      keyc<= cdount;
		
		if (S == 4'b0000)//dispay 第
		begin
			case (cdount)
				4'b0000 :keyr <= 16'b1110011111001111 ; 
				4'b0001 :keyr <= 16'b1110000001000000 ; 
				4'b0010 :keyr <= 16'b1100000000000000 ; 
				4'b0011 :keyr <= 16'b1001100110011001 ; 
				4'b0100 :keyr <= 16'b1110000000000011 ; 
				4'b0101 :keyr <= 16'b1110000000000011 ; 
				4'b0110 :keyr <= 16'b1111111100110011 ; 
				4'b0111 :keyr <= 16'b1110000000000011 ; 
				4'b1000 :keyr <= 16'b1110000000000011 ; 
				4'b1001 :keyr <= 16'b1110011100111111 ; 
				4'b1010 :keyr <= 16'b1110000000000001 ; 
				4'b1011 :keyr <= 16'b1111110000111001 ; 
				4'b1100 :keyr <= 16'b1111100100100001 ;
				4'b1101 :keyr <= 16'b1100001100100011 ; 
				4'b1110 :keyr <= 16'b1100111100111111 ; 
				4'b1111 :keyr <= 16'b1111111111111111 ; 
				default :keyr <= 16'b1111111111111111 ; 
			endcase 
		end
		else if (S == 4'b0001)//display 6
      begin
         case (cdount)
				4'b0000 :keyr <= 16'b1111111111111111 ; //空格
				4'b0001 :keyr <= 16'b1111111111111111 ; //空格
				4'b0010 :keyr <= 16'b1111111111111111 ; //空格
				4'b0011 :keyr <= 16'b1111111000111111 ; 
				4'b0100 :keyr <= 16'b1111110111011111 ; 
				4'b0101 :keyr <= 16'b1111101111011111 ; 
				4'b0110 :keyr <= 16'b1111101111111111 ; 
				4'b0111 :keyr <= 16'b1111101000111111 ; 
				4'b1000 :keyr <= 16'b1111100110011111 ; 
				4'b1001 :keyr <= 16'b1111101111011111 ; 
				4'b1010 :keyr <= 16'b1111101111011111 ; 
				4'b1011 :keyr <= 16'b1111101111011111 ; 
				4'b1100 :keyr <= 16'b1111110110011111 ;
				4'b1101 :keyr <= 16'b1111111000111111 ; 
				4'b1110 :keyr <= 16'b1111111111111111 ; //空格
				4'b1111 :keyr <= 16'b1111111111111111; //空格
				default :keyr <= 16'b1111111111111111 ; 
			endcase 
		end
		
		 else if (S == 4'b0010)//display 組
      begin
         case (cdount)
				4'b0000 :keyr <= 16'b1110011111111111 ; //0
				4'b0001 :keyr <= 16'b1110011000000011 ; 
				4'b0010 :keyr <= 16'b1100111000000011 ; 
				4'b0011 :keyr <= 16'b1100111001110011 ; 
				4'b0100 :keyr <= 16'b1001001001110011 ; 
				4'b0101 :keyr <= 16'b1000001000000011 ;//5 
				4'b0110 :keyr <= 16'b1110011000000011 ; 
				4'b0111 :keyr <= 16'b1100101001110011 ; 
				4'b1000 :keyr <= 16'b1000001001110011 ; 
				4'b1001 :keyr <= 16'b1000001000000011 ; 
				4'b1010 :keyr <= 16'b1111111000000011 ;//10 
				4'b1011 :keyr <= 16'b1010101001110011 ; 
				4'b1100 :keyr <= 16'b1010101001110011 ;
				4'b1101 :keyr <= 16'b0010100000000001 ; 
				4'b1110 :keyr <= 16'b0111110000000001 ; 
				4'b1111 :keyr <= 16'b1111111111111111 ; 
				default :keyr <= 16'b1111111111111111 ; 
			endcase 
		end
	end

endmodule
