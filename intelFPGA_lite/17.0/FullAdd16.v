//already have FullAdd4 at 17.0 file,so can directly use
//top_level
module FullAdd16(sum,carry_out,a,b,carry_in);//output->left  input->right
input [15:0]a,b;//because is 16-bit so use[15:0]bus
input carry_in;
output[15:0]sum;
output carry_out;
wire [15:0]sum;
wire carry_out;
//remember carry_in must to input here
FullAdd4 fa0(sum[3:0],carry_out1,a[3:0],b[3:0],carry_in);//change to 3:0
FullAdd4 fa1(sum[7:4],carry_out2,a[7:4],b[7:4],carry_out1);//change to 7:4
FullAdd4 fa2(sum[11:8],carry_out3,a[11:8],b[11:8],carry_out2);//change to 11:8
FullAdd4 fa3(sum[15:12],carry_out,a[15:12],b[15:12],carry_out3);//change to 15:12
//remember carry_out must to output here
endmodule
//waveform9