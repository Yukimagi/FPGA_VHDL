module exp11 (clk, keyc, keyr);
   input clk; 
   output[3:0] keyc; 
   reg[3:0] keyc;
   output[15:0] keyr; 
   reg[15:0] keyr;
   reg[3:0] cdount; 
   reg[8:0] dount; 
   reg[3:0] S; 
   always @(posedge clk)
   begin
      if (clk == 1'b1)
      begin
         dount <= dount + 1 ;
 // delay for each word
         if (dount == 255)
         begin
 //sequential words control 
            if (S == 1) 
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
		
if (S == 4'b0000)//dispay 欢
 begin
 case (cdount)
4'b0000 :keyr <= 16'b1101111111100011 ; 
4'b0001 :keyr <= 16'b1100111111000011 ; 
4'b0010 :keyr <= 16'b1010001110011011 ; 
4'b0011 :keyr <= 16'b1011000000111011 ; 
4'b0100 :keyr <= 16'b1011110000011011 ; 
4'b0101 :keyr <= 16'b1001000010000011 ; 
4'b0110 :keyr <= 16'b1101011111000011 ; 
4'b0111 :keyr <= 16'b1100111111100001 ; 
4'b1000 :keyr <= 16'b1110001111100001 ; 
4'b1001 :keyr <= 16'b1111000000010001 ; 
4'b1010 :keyr <= 16'b1111100000010111 ; 
4'b1011 :keyr <= 16'b1110000111110111 ; 
4'b1100 :keyr <= 16'b1100011111010111 ;
4'b1101 :keyr <= 16'b1000111111000111 ; 
4'b1110 :keyr <= 16'b1001111111100011 ; 
4'b1111 :keyr <= 16'b1001111111110011 ; 
default :keyr <= 16'b1111111111111111 ; 
endcase 
end
 else if (S == 4'b0001)//display 迎
      begin
         case (cdount)
4'b0000 :keyr <= 16'b1101111111100011 ; 
4'b0001 :keyr <= 16'b1100111111000011 ; 
4'b0010 :keyr <= 16'b1010001110011011 ; 
4'b0011 :keyr <= 16'b1011000000111011 ; 
4'b0100 :keyr <= 16'b1011110000011011 ; 
4'b0101 :keyr <= 16'b1001000010000011 ; 
4'b0110 :keyr <= 16'b1101011111000011 ; 
4'b0111 :keyr <= 16'b1100111111100001 ; 
4'b1000 :keyr <= 16'b1110001111100001 ; 
4'b1001 :keyr <= 16'b1111000000010001 ; 
4'b1010 :keyr <= 16'b1111100000010111 ; 
4'b1011 :keyr <= 16'b1110000111110111 ; 
4'b1100 :keyr <= 16'b1100011111010111 ;
4'b1101 :keyr <= 16'b1000111111000111 ; 
4'b1110 :keyr <= 16'b1001111111100011 ; 
4'b1111 :keyr <= 16'b1001111111110011 ; 
default :keyr <= 16'b1111111111111111 ; 
endcase 
		end
end

endmodule

