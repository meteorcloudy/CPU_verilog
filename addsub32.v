`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:48 10/26/2012 
// Design Name: 
// Module Name:    addsub32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 本模块实现32位的加减运算，使用了加法电路cla32实现
// 输入信号：a,b,sub
// 输出信号：s
// a，b为参加运算的两个32位数，sub为1时执行减法运算，否则执行加法运算，s为运算结果
// 原理为：a - b = a + (-b) = a + ~b +1
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module addsub32(a,b,sub,s
    );							
	 input [31:0] a,b;
	 input sub;
	 output [31:0] s;
	 cla32 as32 (a,b^{32{sub}},sub,s);

endmodule
