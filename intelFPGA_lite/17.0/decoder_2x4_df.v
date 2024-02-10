//Dataflow description of two-to-four-line decoder

module decoder_2x4_df(	
 output [0:3] D,
 input		  A,B,
				  enable
);
 assign D[0]=~(~A&~B&~enable),
		  D[1]=~(~A&B&~enable),
		  D[2]=~(A&~B&~enable),
		  D[3]=~(A&B&~enable);
endmodule