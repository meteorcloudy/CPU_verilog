`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:29 03/22/2014 
// Design Name: 
// Module Name:    mux2x32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 2x32位多路选择器
// 输入信号：a0,a1,s
// 输出信号：y
// 根据s信号的值来选择将a0或a1作为s的输出值，
// s为0时选择a0,为1时选择a1.
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2x32(a0,a1,s,y
    );
	input [31:0] a0,a1;
	input 	s;
	output [31:0] y;
	assign	y = s? a1 : a0;
endmodule
