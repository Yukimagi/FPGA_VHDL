module clock_24hr(sel, seg, mul_out, h_2, h_4,m_10, m_6,count_10, count_6, clk, rst);

output sel, //七段式顯示器 selection
		 seg, //七段式顯示器(7個位元)
		 mul_out, //multiplexer結果輸出
		 count_10,//秒個位數
		 count_6,//秒十位數
		 h_4,		//時個位數
		 h_2, 	//時十位數
		 m_10, 	//分個位數
		 m_6;		//分十位數
		 
input clk, rst;//clock & reset

//因為要用於always因此設reg
reg [7:0] seg;
//因為要用於always因此設reg
reg [3:0] mul_out, 
			 count_10, 
			 count_6,
			 h_2, 
			 h_4,
			 m_10, 
			 m_6;
//因為要用於always因此設reg			 
reg [2:0] sel;

reg [7:0] count;//此是除頻器的counter

reg cnt;//除完頻的counter

reg [2:0]tmp;//分配select七段式顯示器的頻率(scanner)

reg dp;//dp點的定義

//divider
always @ (posedge clk or negedge rst) begin
	if (!rst)
		cnt <= 0;
	else begin
		count <= count+1;
		if(count[7:0] == 8'b00110001) begin//49 ((49+1)*2=100(每秒跑一個數字))
			cnt <= cnt+1;
			count <= 0;
		end
	end
end

assign clk_10 = cnt;


//counter
always @ (posedge clk_10) begin
	//讓秒不斷重複數直到9歸0並進位
	if(count_10 == 4'b1001) begin//9
		count_6 <= count_6 + 1;
		count_10 <= 0;
	end
	else
	//讓秒不斷重複數
	count_10 <= count_10 + 1;

	if(count_6 == 4'b0101 && count_10 == 4'b1001) begin//當秒為5 9
		count_6 <= 0;//秒十位數歸零
		count_10 <= 0;//秒個位數歸零
		if(m_10 == 4'b1001) begin//當分的個位數為9
			if(m_6== 4'b0101)begin//當分的十位數為5
				m_6<=0;//分十位數歸零
				m_10<=0;//分個位數歸零
				if(h_2 == 4'b0010 && h_4 == 4'b0011) begin//當時為2 3
					h_2<=0;//時十位數歸零
					h_4<=0;//時個位數歸零
					end
				else if(h_4==4'b1001)begin//當時為9
					h_2<=h_2+1;//十位數加一
					h_4<=0;//個位數歸零
					end
				else 
					h_4<=h_4+1;//時個位數++
			end
			else begin
			m_10<=0;//分的個位數歸0
			m_6<=m_6+1;//分的十位數+1
			end
		end
		else
		m_10<=m_10+1;//分的個位數+1
		
	end
	
end


//multiplexer and scanner
always @ (posedge clk) begin
	if(tmp==3'b101)//tmp=5
		tmp<=0;//歸零
	else
		tmp<=tmp+1;//否則tmp加一
		
	if(tmp == 3'b000) begin	//tmp=0
		sel <= 3'b110;			//秒十位數設的segment為6
		dp<=1'b0;	 			//dp=0
		mul_out <= count_6;	//傳到對應的值
	end
	
	else if(tmp == 3'b001)begin//tmp=1
		sel <= 3'b111;				//秒個位數設的segment為7
		mul_out <= count_10;		//傳到對應的值
		dp<=1'b1;					//dp=1
	end
	
	else if(tmp == 3'b010)begin//tmp=2
		sel <= 3'b100;				//分十位數設的segment為4
		dp<=1'b0;					//dp=0
		mul_out <= m_6;			//傳到對應的值
	end
	else if(tmp == 3'b011)begin//tmp=3
		sel <= 3'b101;				//分個位數設的segment為5
		mul_out <= m_10;			//傳到對應的值
		dp<=1'b1;					//dp=1
	end
	else if(tmp == 3'b100)begin//tmp=4
		sel <= 3'b010;				//時十位數設的segment為2
		dp<=1'b0;					//dp=0
		mul_out <= h_2;			//傳到對應的值
	end
	else if(tmp == 3'b101)begin//tmp=5
		sel <= 3'b011;				//時個位數設的segment為3
		mul_out <= h_4;			//傳到對應的值
		dp<=1'b1;					//dp=1
	end
end

always @(sel) begin
	if(dp==0)begin//如果是十位數dp==0則下面為指派對應的數字對應的值
		case(mul_out)
			4'b0000: seg = 8'b00111111;//dp->g->a
			4'b0001: seg = 8'b00000110;
			4'b0010: seg = 8'b01011011;
			4'b0011: seg = 8'b01001111;
			4'b0100: seg = 8'b01100110;
			4'b0101: seg = 8'b01101101;
			4'b0110: seg = 8'b01111101;
			4'b0111: seg = 8'b00000111;
			4'b1000: seg = 8'b01111111;
			4'b1001: seg = 8'b01101111;
			default: seg = 8'b01111001;
		endcase
	end
	else begin//如果是個位數dp==1則下面為指派對應的數字對應的值
		case(mul_out)
			4'b0000: seg = 8'b10111111;
			4'b0001: seg = 8'b10000110;
			4'b0010: seg = 8'b11011011;
			4'b0011: seg = 8'b11001111;
			4'b0100: seg = 8'b11100110;
			4'b0101: seg = 8'b11101101;
			4'b0110: seg = 8'b11111101;
			4'b0111: seg = 8'b10000111;
			4'b1000: seg = 8'b11111111;
			4'b1001: seg = 8'b11101111;
			default: seg = 8'b11111001;
		endcase
	end
end

endmodule