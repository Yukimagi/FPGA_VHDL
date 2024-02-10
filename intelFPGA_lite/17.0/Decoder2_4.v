module Decoder2_4(D,select,EN);//宣告不能用bus
	output[3:0]D;//BUS寫前
	input EN;//enable
	input[1:0]select;
	
	not(s0BAR,select[0]);//not s0
	not(s1BAR,select[1]);//not s1
	
	and(t0,s0BAR,s1BAR);//0
	and(t1,s1BAR,select[0]);//1
	and(t2,select[1],s0BAR);//2
	and(t3,select[0],select[1]);//3
	
	and(D[0],t0,EN);//enable test with decoder output
	and(D[1],t1,EN);//if en=1 output=1 then result=1
	and(D[2],t2,EN);//else if en=0 output=1 then result=Hi-Z
	and(D[3],t3,EN);//else if en=0 output=0 then result=0
	endmodule