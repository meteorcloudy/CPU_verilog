`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:15 03/21/2014 
// Design Name: 
// Module Name:    cla32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 32位加法器电路
// 输入信号：a,b,ci
// 输出信号：s
// a,b为参加运算的加数，ci为进位信号输入，s为输出的运算结果
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cla32(a,b,ci,s
    );
	input [31:0] a,b;
	input ci;
	output [31:0] s;
	assign s = a + b +ci;
endmodule
