//FullAdd.v(1-bit)
//third_level
module FullAdd(sum,carryout,a,b,carryin);//output->left  input->right
input a,b,carryin;
output sum,carryout;
wire sum,carryout;
assign{carryout,sum}=a+b+carryin;//data flow
endmodule