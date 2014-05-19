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
// 32λ�����첽����˵�D��������
// �����źţ�d,clk,clrn
// ����źţ�q
// dΪ�����32λ���ݣ���clk�������ص���ʱD��������D��ֵ����q�����clrn���½��ص���ʱ�����������0
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