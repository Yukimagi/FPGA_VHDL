module RandomDigitGenerator(
  input wire clk,
  input wire reset,
  output reg [1:0] rand_num
);
  reg [3:0] seed;
  reg [3:0] lfsr;
  wire feedback;
  reg [1:0] prev_rand_num;
  
  assign feedback = lfsr[3] ^ lfsr[2];
  
  always @(posedge clk or posedge reset) begin
    if (reset) begin
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