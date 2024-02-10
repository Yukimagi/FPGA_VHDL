module carryla_4bit(sum,c4,a,b,c_in);//waveform14
//data flow
	input [3:0] a; 
	input [3:0] b; 
	input c_in;
	output [3:0] sum;
	output c4;//c4額外寫

   wire [3:0] p;  /* Carry Propagate */
   wire [3:0] g;  /* Carry Generate */
   wire [4:0] c;  /* Intermediate Carry */

   assign p[3:0] = a[3:0] ^ b[3:0];//a xor b
   assign g[3:0] = a[3:0] & b[3:0];//a and b
	
	assign sum[3:0] = p[3:0] ^ c[3:0];//si=pi xor ci

   assign c[0] = c_in;

   assign c[1] = g[0] | (p[0] & c[0]);//ci+1=gi+pici

   assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);

   assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0])| (p[2] & p[1] & p[0] & c_in);

   assign c4 = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1])| (p[3] & p[2] & p[1] & g[0])| (p[3] & p[2] & p[1] & p[0] & c_in);

endmodule // cla_4bit(carryla_4bit)