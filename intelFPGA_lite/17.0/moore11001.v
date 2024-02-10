//waveform17
//(reference課本程式碼 CH4-fig.4-34(p.262))
module moore11001(out,CLK,RESET,in);
input CLK,RESET,in;
output out;
reg [2:0] state, next_state;
parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011,E=3'b100,F=3'b101;
reg out;
// state register: implements positive edge-triggered 
// state storage with asynchronous reset.
always @(posedge CLK or posedge RESET)
	begin
	if (RESET) state <= A;
	else
	state <= next_state;
	end
//.te function: implements next state as function // of in and state
always @(in or state)
	begin
	case (state)
	A: next_state = in ? B : A;//輸入為1執行右，否則左
	B: next_state = in ? C : A;
	C: next_state = in ? C : D;
	D: next_state = in ? B : E;
	E: next_state = in ? F : A;
	F: next_state = in ? C : A;
	endcase end
// output function: implements output as function // of in and state
always @(in or state)
	begin
	case (state)
	A: out = 1'b0;//輸入為1執行右，否則左
	B: out = 1'b0;
	C: out = 1'b0;
	D: out = 1'b0;
	E: out = 1'b0;
	F: out = 1'b1;
endcase end
endmodule