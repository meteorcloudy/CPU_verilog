`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:32 04/26/2014 
// Design Name: 
// Module Name:    dffinst 
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

module dffinst(d,clk,clrn,loaddepend,q
    );
	 input [31:0] d;
	 input clk,clrn,loaddepend;
	 output [31:0] q;
    reg [31:0] q;
    always @ (posedge clk or negedge clrn) begin
			if (clrn == 0) q <= 0;
			else	if (~loaddepend)	q <= d;
	 end	 
endmodule