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
// �Ĵ����ѵ�·
// �����źţ�rna,rnb,wn,d,we,clk,clrn
// ����źţ�qa,qb
// rnaΪ���˿�a�ļĴ�����
// rnbΪ���˿�b�ļĴ�����
// wnΪд�˿ڵļĴ�����
// weΪ�Ĵ����ѵ�дʹ���ź�
// clkΪʱ���źţ�clrnΪ�����ź�
// qaΪ���˿�a��32λ�������
// qbΪ���˿�b��32λ�������
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
