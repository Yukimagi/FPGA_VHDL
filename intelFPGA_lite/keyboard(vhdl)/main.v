module main(clk,rst,row, col,seg, press);

	input clk;//clock
	input rst;//reset
	input[3:0] row;//存row input值 
	output[3:0] col;//存column output值
	output[0:7] seg;//存輸出的seg
	output press;//press事件
	
	wire[3:0] out;
	//呼叫各func
	keyboard key_test(rst,clk,row,col,out,press);
	decoder d_out(out,seg);
endmodule 
