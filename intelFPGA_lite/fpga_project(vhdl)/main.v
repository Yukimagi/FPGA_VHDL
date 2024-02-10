module main(
	input wire clk,//clock
	input wire reset,//reset
	output [3:0] keyc, //col
   output [15:0] keyr, //row
	input[3:0] row,//存row input值 
	output[3:0] col,//存column output值
	output[0:7] seg,//存輸出的seg
	output press//press事件
);

wire [1:0] rand_num;//隨機數
wire [1:0] num;//當下的隨機數顯示狀態
wire[3:0] out;//鍵盤輸出的數字

//呼叫各func
RandomDigitGenerator rand(clk,reset,rand_num);

Finger_Dance dance(clk, keyc, keyr,rand_num,num,out);

keyboard key_test(reset,clk,row,col,out,press,num);

decoder d_out(out,seg,num);

endmodule