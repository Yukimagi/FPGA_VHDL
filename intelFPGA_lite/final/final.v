module final(sel, seg, mul_out, count_10,clk, rst);

output sel, seg, mul_out, count_10;
input clk, rst;
reg [7:0] seg;
reg [3:0] mul_out, count_10;
reg [2:0] sel;

reg [7:0] count;
reg cnt;

//divider
always @ (posedge clk or negedge rst) begin
	if (!rst)
		cnt <= 0;
	else begin
		count <= count+1;
		if(count[7:0] == 8'b00110001) begin//49//改59看看111011
			cnt <= cnt+1;
			count <= 0;
		end
	end
end

assign clk_10 = cnt;

//counter

always @ (posedge clk_10) begin

	if(count_10 == 4'b0110) begin//6
		count_10 <= 0;
	end
	else
	count_10 <= count_10 + 1;

end


//multiplexer and scanner
always @ (clk) begin
	if(clk == 0) begin
		
	end
	
	else begin
	sel <= 3'b111;
	mul_out <= count_10;
	end
end

always @(*) begin
	case(mul_out)
		4'b0000: seg = 8'b00111111;
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

endmodule