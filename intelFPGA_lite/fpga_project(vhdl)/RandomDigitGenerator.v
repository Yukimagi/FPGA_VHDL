module RandomDigitGenerator(
  input wire clk,//clock
  input wire reset,//reset
  output reg [1:0] rand_num//產生的隨機數
);

  reg [3:0] seed;//隨機數種子
  reg [3:0] lfsr;// (Linear Feedback Shift Register)
  wire feedback;//回饋操作
  reg [1:0] prev_rand_num;//前一個的random number
  
  assign feedback = lfsr[3] ^ lfsr[2];
  
  always @(posedge clk or negedge reset) begin
    if (!reset) begin
      seed <= 4'b1001; // 初始種子值
      lfsr <= seed;
    end else begin
      lfsr <= {lfsr[2:0], feedback};
    end
  end
  
  always @(posedge clk) begin
    if (lfsr[1:0] != prev_rand_num) begin
      rand_num <= lfsr[1:0];
      prev_rand_num <= lfsr[1:0];
    end
  end

endmodule