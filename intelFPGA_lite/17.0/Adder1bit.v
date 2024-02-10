module Adder1bit(CY,SUM,A,B,CIN);
	output CY,SUM;
	input A,B,CIN;
	and(out1,A,B);
	xor(out2,A,B);
	and(out3,CIN,out2);
	or(CY,out1,out3);
	xor(SUM,CIN,out2);
endmodule
//waveform12
