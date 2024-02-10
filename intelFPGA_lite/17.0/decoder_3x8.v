//Dataflow description of two-to-four-line decoder
//2023/4/18
module decoder_3x8(	
output [0:7] D,
input		  A,B,C,
enable
);
assign 
D[0]=(~A&~B&~C&~enable),
D[1]=(~A&~B&C&~enable),
D[2]=(~A&B&~C&~enable),
D[3]=(~A&B&C&~enable),
D[4]=(A&~B&~C&~enable),
D[5]=(A&~B&C&~enable),
D[6]=(A&B&~C&~enable),
D[7]=(A&B&C&~enable);
endmodule