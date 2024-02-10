//4-bit FullAdder use FullAdd(1-bit)
//second_level
module FullAdd4(sum,carry_out,a,b,carry_in);//output->left  input->right
input [3:0]a,b;
input carry_in;
output[3:0]sum;
output carry_out;
wire [3:0]sum;
wire carry_out;
FullAdd fa0(sum[0],carry_out1,a[0],b[0],carry_in);//remember carry_in must to input here
FullAdd fa1(sum[1],carry_out2,a[1],b[1],carry_out1);
FullAdd fa2(sum[2],carry_out3,a[2],b[2],carry_out2);
FullAdd fa3(sum[3],carry_out,a[3],b[3],carry_out3);//remember carry_out must to output here
endmodule
//waveform8