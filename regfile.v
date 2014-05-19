`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:03 10/26/2012 
// Design Name: 
// Module Name:    regfile 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 寄存器堆电路
// 输入信号：rna,rnb,wn,d,we,clk,clrn
// 输出信号：qa,qb
// rna为读端口a的寄存器号
// rnb为读端口b的寄存器号
// wn为写端口的寄存器号
// we为寄存器堆的写使能信号
// clk为时钟信号，clrn为清零信号
// qa为读端口a的32位数据输出
// qb为读端口b的32位数据输出
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module regfile(rna,rnb,d,wn,we,clk,clrn,qa,qb
    );
	 input [4:0] rna,rnb,wn;
    input [31:0] d;
	 input we,clk,clrn;
	 output [31:0] qa,qb;
	 integer i;
	 reg [31:0] register [1:31];		//31 * 32-bit regs
	 assign qa=((rna==0)?0:register[rna]);
	 assign qb=((rnb==0)?0:register[rnb]);
	 always @(negedge clk or negedge clrn)
	     if(clrn==0)
		  begin
		  for(i=1;i<32;i=i+1)
		      register[i]<=0;
		  end
		  else if((wn!=0)&&we)
		     register[wn]<=d;
endmodule
