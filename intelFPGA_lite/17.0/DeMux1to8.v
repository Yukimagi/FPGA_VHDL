//demultiplexer是輸入會給予對應的選擇有相對的輸出
module DeMux1to8(out,select,in);//定義demultiplexer 1 to 8 module
input [2:0] select;//choose bus
input in;//一位元輸入
output [7:0] out;//對應的輸出
//將對應的結果依照對應的位元輸出，並使其中一個輸出為1時其他為0
assign	out[0]=(in & ~select[2] & ~select[1] & ~select[0]),
			out[1]=(in & ~select[2] & ~select[1] &  select[0]),
			out[2]=(in & ~select[2] &  select[1] & ~select[0]),
			out[3]=(in & ~select[2] &  select[1] &  select[0]),
			out[4]=(in &  select[2] & ~select[1] & ~select[0]),
			out[5]=(in &  select[2] & ~select[1] &  select[0]),
			out[6]=(in &  select[2] &  select[1] & ~select[0]),
			out[7]=(in &  select[2] &  select[1] &  select[0]);
endmodule
//waveform11