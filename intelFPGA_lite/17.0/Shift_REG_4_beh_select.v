//Behavioral description of a 4-bit universal shift register
//waveform15(用規律的clock)
module Shift_REG_4_beh_select(
output reg	[3:0] A_par,//reg output
input 		[3:0]	I_par,//parallel input
input 		s1,s0,
				MSB_in,LSB_in,//serial input
				CLK,Clear
);
always@(posedge CLK,negedge Clear)
if(~Clear)A_par <= 4'b0000;
else
	case({s1,s0})
		2'b00:A_par<=A_par;//no change
		
		//2'b01:A_par<={MSB_in,A_par[3:1]};//shift right
		2'b01:A_par<={~A_par[3],~A_par[2],~A_par[1],~A_par[0]};//complement output
		
		//2'b10:A_par<={A_par[2:0],LSB_in};//shift left
		2'b10:A_par<=I_par;//parallel load of input
		
		//2'b11:A_par<=I_par;//parallel load of input
		2'b11:A_par<=0;//claer reg to 0
		endcase
	endmodule