module hw7(col_out, row_out, clk, rst, seg);
input [3:0]row_out;
input clk, rst;
output [3:0]col_out;
output [7:0]seg;
reg [3:0]col_out, mul_out;
reg press;
reg S_row;
reg [1:0]row;
reg [7:0]seg;
reg [1:0]counter;

initial press=0;
initial counter=2'b00;
initial S_row=0;
always@(posedge clk or negedge rst)begin
	if(!rst)begin
		mul_out<=4'b0000;
	end
	else begin
	//if press, s_row=1
	S_row<=~(row_out[0]&row_out[1]&row_out[2]&row_out[3]);
	if(S_row==1'b0)begin
		//S_0
		press<=1'b0;
		col_out<=4'b0000;end
	else begin
		if(counter==2'b00 && press==1'b0)begin
			//S_1
			col_out<=4'b1110;
			if(row_out!=4'b1111)
				press<=1;
			else begin
				press<=0;
				end end
		if(counter==2'b01 && press==1'b0)begin
			//S_2
			col_out<=4'b1101;
			if(row_out!=4'b1111)
				press<=1;
			else begin
				press<=0;
				end end
		if(counter==2'b10 && press==1'b0)begin
			//S_3
			col_out<=4'b1011;
			if(row_out!=4'b1111)
				press<=1;
			else begin
				press<=0;
				end end
		if(counter==2'b11 && press==1'b0)begin
			//S_4
			col_out<=4'b0111;
			if(row_out!=4'b1111)
				press<=1;
			else begin
				press<=0;
				end end
		if(press==1'b1)begin
			//S_5
			if(col_out==4'b1110)begin
				if(!row_out[0])
					mul_out<=4'b1010;
				else if(!row_out[1])
					mul_out<=4'b1011;
				else if(!row_out[2])
					mul_out<=4'b1100;
				else if(!row_out[3])
					mul_out<=4'b1101;end
			else if(col_out==4'b1101)begin
				if(!row_out[0])
					mul_out<=4'b0011;
				else if(!row_out[1])
					mul_out<=4'b0110;
				else if(!row_out[2])
					mul_out<=4'b1001;
				else if(!row_out[3])
					mul_out<=4'b1111;end
			else if(col_out==4'b1011)begin
				if(!row_out[0])
					mul_out<=4'b0010;
				else if(!row_out[1])
					mul_out<=4'b0101;
				else if(!row_out[2])
					mul_out<=4'b1000;
				else if(!row_out[3])
					mul_out<=4'b0000;end
			else if(col_out==4'b0111)begin
				if(!row_out[0])
					mul_out<=4'b0001;
				else if(!row_out[1])
					mul_out<=4'b0100;
				else if(!row_out[2])
					mul_out<=4'b0111;
				else if(!row_out[3])
					mul_out<=4'b1110;end
		end
		counter<=counter+1;
	end
	end
end
//7-seg
always @(mul_out) begin 
case(mul_out)
4'b0000: seg = 8'b00111111;//0
4'b0001: seg = 8'b00000110;//1
4'b0010: seg = 8'b01011011;//2
4'b0011: seg = 8'b01001111;//3
4'b0100: seg = 8'b01100110;//4
4'b0101: seg = 8'b01101101;//5
4'b0110: seg = 8'b01111101;//6
4'b0111: seg = 8'b00000111;//7
4'b1000: seg = 8'b01111111;//8
4'b1001: seg = 8'b01101111;//9
4'b1010: seg = 8'b01110111;//a(A)
4'b1011: seg = 8'b01111100;//b
4'b1100: seg = 8'b00111001;//c(C)
4'b1101: seg = 8'b01011110;//d
4'b1110: seg = 8'b01111001;//*(E)
4'b1111: seg = 8'b01110001;//#(F)
endcase
end

endmodule