// Verilog code for Multiplexer implementation using assign
// File name: mux1.v 
// by Harsha Perla for http://electrosofts.com
// harsha@electrosofts.com
// Available at http://electrosofts.com/verilog
module mux1_wire(select,d,q);

input [1:0] select;
input [3:0] d;
output q;
wire q;
wire[1:0] select;
wire[3:0] d;

assign q = d[select];

endmodule