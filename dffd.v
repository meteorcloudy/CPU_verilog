`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:27 04/27/2014 
// Design Name: 
// Module Name:    dffd 
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
module dffd(d,clk,clrn,q
    );
	 input [31:0] d;
	 input clk,clrn;
	 output [31:0] q;
    reg [31:0] q;
    always @ (negedge clk or negedge clrn) begin
			if (clrn == 0) q <= 0;
			else				q <= d;
	 end	 

endmodule
