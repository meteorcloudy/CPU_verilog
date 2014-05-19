`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:42:44 03/18/2013 
// Design Name: 
// Module Name:    dff32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 32位带有异步清零端的D触发器。
// 输入信号：d,clk,clrn
// 输出信号：q
// d为输入的32位数据，在clk的上升沿到来时D触发器将D的值打入q输出，clrn的下降沿到来时触发器会输出0
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff1(d,clk,clrn,q
    );
	 input  d;
	 input clk,clrn;
	 output  q;
    reg  q;
    always @ (posedge clk or negedge clrn) begin
			if (clrn == 0) q <= 0;
			else				q <= d;
	 end	 
endmodule