`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:33 03/28/2014 
// Design Name: 
// Module Name:    expand 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module expand(in,arith,out);
	input[15:0] in;
	input arith;
	output [31:0] out;
	
	assign out = (arith?{{16{in[15]}},in[15:0]}:{{16{1'b0}},in[15:0]});

endmodule
