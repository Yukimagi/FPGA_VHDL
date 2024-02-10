//waveform 19-除頻程式
module div(clk_2,clk_4,clk_8,clk,rst);

input clk,rst;
output clk_2,clk_4,clk_8;

reg [2:0]cnt;

wire clk_2,clk_4,clk_8;

always @ (posedge clk or negedge rst)
 if (!rst)
    cnt<=0;
    else 
       cnt<=cnt+1;
assign clk_2=cnt[0];
assign clk_4=cnt[1];
assign clk_8=cnt[2];
endmodule
