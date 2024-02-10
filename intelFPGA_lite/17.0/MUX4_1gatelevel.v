module MUX4_1gatelevel(Y,select,EN,I);//宣告不能用bus
	output Y;//輸出y
	input EN;//enable判斷
	input[1:0]select;//輸入select bus3~0
	input[3:0]I;//input
	tri Y;//因為多個輸入對應一個輸出 use tri做判斷
	wire[3:0]D;//decoder 輸出
	Decoder2_4(D,select[1:0],EN);//呼叫second level decoder
	bufif1(Y,I[0],D[0]),(Y,I[1],D[1]),(Y,I[2],D[2]),(Y,I[3],D[3]);//進行運算
	endmodule//記得不能有分號
	//waveform13
	
	