module Intersection(
    input wire CLK,
    input wire Reset,
    output reg [0:11] LED,
	 output reg [2:0] sel,
    output reg [7:0] seg
);

reg direction;
reg [1:0] state;//紅綠燈狀態
reg [7:0] count;//clock count

reg [3:0]count_10, count_1;//秒的十位與個位數

reg [2:0]tmp;//分配select七段式顯示器的頻率(scanner)

reg cnt;//除完頻的counter
reg dp;//dp點的定義

reg [7:0] mul_out;//輸出的數


initial count_10=4'd1;//初始化十位數為1
initial count_1=4'd9;//初始化個位數為9


//divider
always @ (posedge CLK or negedge Reset) begin
	if (!Reset)
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


always @(posedge clk_10) begin
    if (!Reset) begin
        state <= 2'b00;
		  count_10<=4'b0001;
		  count_1<=4'b1001;
    end 
	 else begin
        case (state)
            2'b00: begin
                LED[0:2] <= 3'b100; // 設置東西向紅燈
                LED[9:11] <= 3'b001; // 設置南北向綠燈
					 direction <= 1'b1; // 南北向
                if (count_10 == 4'b0000 && count_1==4'b0011) begin
                    state <= 2'b01;

                end else begin
						if(count_10==4'b0001&&count_1==4'b0000)begin
							count_1<=4'b1001;
							count_10<=4'b0000;
						end
						else begin
                    count_1 <= count_1 - 1;
						end
                end
            end
            2'b01: begin
                LED[9:11] <= 3'b010; // 設置南北向黃燈
                if (count_10 == 4'b0000 && count_1==4'b0000) begin
                    state <= 2'b10;
						  count_10<=4'b0001;
						  count_1<=4'b1001;
						  LED[0:2] <= 3'b001; // 設置東西向綠燈
						  LED[9:11] <= 3'b100; // 設置南北向紅燈

                end else begin
                    count_1 <= count_1 - 1;
                end
            end
            2'b10: begin
                LED[0:2] <= 3'b001; // 設置東西向綠燈
                LED[9:11] <= 3'b100; // 設置南北向紅燈
					 direction <= 1'b0; // 東西向
                if (count_10 == 4'b0000 && count_1==4'b0011) begin
                    state <= 2'b11;

                end else begin
                  if(count_10==4'b0001&&count_1==4'b0000)begin
							count_1<=4'b1001;
							count_10<=4'b0000;
						end
						else begin
                    count_1 <= count_1 - 1;
						end
                end
            end
            2'b11: begin
                LED[0:2] <= 3'b010; // 設置東西向黃燈
                if (count_10 == 4'b0000 && count_1==4'b0000) begin
                    state <= 2'b00;
						  count_10<=4'b0001;
						  count_1<=4'b1001;
						  LED[0:2] <= 3'b100; // 設置東西向紅燈
						  LED[9:11] <= 3'b001; // 設置南北向綠燈

                end else begin
                    count_1 <= count_1 - 1;
                end
            end
            default: begin
                state <= 2'b00;
					 count_10<=4'b0001;
					 count_1<=4'b1001;

            end
        endcase
    end
end


//multiplexer and scanner
always @ (posedge CLK) begin
	if(tmp==3'b111)//tmp=7
		tmp<=0;//歸零
	else
		tmp<=tmp+1;//否則tmp加一
		
	if(tmp == 3'b000) begin	//tmp=0
		sel <= 3'b110;			//秒十位數設的segment為6
		dp<=1'b0;	 			//dp=0
		mul_out <= count_10;	//傳到對應的值
	end
	
	else if(tmp == 3'b001)begin//tmp=1
		sel <= 3'b111;				//秒個位數設的segment為7
		mul_out <= count_1;		//傳到對應的值
		dp<=1'b1;					//dp=1
	end
	else if(tmp == 3'b010)begin//tmp=2
		sel <= 3'b100;				//方向的segment為4
		dp<=1'b0;					//dp=0
		if(direction==1'b0)begin//WE
		mul_out <= 4'b1010;		//傳到對應的值
		end
		else if(direction==1'b1)begin//NS
		mul_out <= 4'b1011;		//傳到對應的值
		end
	end
	else if(tmp == 3'b011)begin//tmp=3
		sel <= 3'b101;				//方向的segment為5
		dp<=1'b1;					//dp=1
		if(direction==1'b0)begin//WE
		mul_out <= 4'b1010;		//傳到對應的值
		end
		else if(direction==1'b1)begin//NS
		mul_out <= 4'b1011;		//傳到對應的值
		end
	end
	else if(tmp == 3'b100)begin//tmp=4
		sel <= 3'b010;				//秒十位數設的segment為2
		dp<=1'b0;					//dp=0
		mul_out <= count_10;	//傳到對應的值
	end
	else if(tmp == 3'b101)begin//tmp=5
		sel <= 3'b011;				//秒個位數設的segment為3
		mul_out <= count_1;		//傳到對應的值
		dp<=1'b1;					//dp=1
	end
	else if(tmp == 3'b110)begin//tmp=6
		sel <= 3'b001;				//segment為1
		if(direction==1'b0)begin//WE
		mul_out <= 4'b1010;		//傳到對應的值
		end
		else if(direction==1'b1)begin//NS
		mul_out <= 4'b1011;		//傳到對應的值
		dp<=1'b1;					//dp=1
		end
	end
	else if(tmp == 3'b111)begin//tmp=7
		sel <= 3'b000;				//segment為0
		if(direction==1'b0)begin//WE
		mul_out <= 4'b1010;		//傳到對應的值
		end
		else if(direction==1'b1)begin//NS
		mul_out <= 4'b1011;		//傳到對應的值
		dp<=1'b1;					//dp=1
		end
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
			4'b1010: seg = 8'b01001000;//東西
			4'b1011: seg = 8'b00010100;//南北
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
			4'b1010: seg = 8'b11001000;
			4'b1011: seg = 8'b10010100;//東西
			default: seg = 8'b11111001;//南北
		endcase
	end
end

endmodule
