module div10(clk_1,clk_10,clk,rst);

input clk,rst;
output clk_10,clk_1;
reg [3:0]cnt;

wire clk_10;

always @ (posedge clk or negedge rst)
 if (!rst)
    cnt<=0;
    else  
       if(cnt==4)
			cnt<=cnt+4;
		else
			if(cnt==12)
				cnt<=0;
			else
				cnt<=cnt+1;

assign clk_1=rst&clk;		 
assign clk_10=cnt[3];
		 
endmodule