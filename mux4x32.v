`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:48 10/25/2012 
// Design Name: 
// Module Name:    mux4x32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 4x32位多路选择器
// 输入信号：a0,a1,a2,a3,s
// 输出信号：y
// 根据s信号的值来选择将a0或a1或a2或a3作为s的输出值，
// s为00时选择a0,为01时选择a1,为10时选择a2,为11时选择a3.
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux4x32(a0,a1,a2,a3,s,y
    );
	 input [31:0] a0,a1,a2,a3;
	 input [1:0] s;
	 output [31:0] y;
	 function [31:0] select;
	     input [31:0] a0,a1,a2,a3;
	     input [1:0] s;
		  case(s)
		  2'b00:select=a0;
		  2'b01:select=a1;
		  2'b10:select=a2;
		  2'b11:select=a3;
		  endcase
	endfunction
	assign y=select(a0,a1,a2,a3,s);
endmodule
