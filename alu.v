`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:08 03/28/2014 
// Design Name: 
// Module Name:    aluc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies	: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(a,b,aluc,wzero,zero,result);
	input[31:0] a,b;
	input[3:0] aluc;
	input wzero;
	
	output zero;
	reg zero;
	output[31:0] result;	
	reg[31:0] result;
	
	initial begin
		zero = 0;		
	end
	//assign zero = (result==0);
	
	wire right,arith,sub;
	wire [31:0] sh,as_result,and_result,or_result;
	wire slct[1:0];
	
	assign right = ~aluc[3]&aluc[2]&aluc[1];
	assign arith = ~aluc[3]&aluc[2]&aluc[1]&aluc[0];
	assign sub = ~aluc[3]&~aluc[2]&aluc[1]&aluc[0];
	shift shifter(b,a[4:0],right,arith,sh);
	addsub32 as32(a,b,sub,as_result);
	assign and_result = a&b;
	assign or_result = a|b;
	
	function [31:0] select;
	     input [31:0] a0,a1,a2,a3;
	     input [3:0] aluc;
		  case(aluc)
		  0:select=a0;
		  1:select=a1;
		  2:select=a2;
		  3:select=a2;
		  4:select=a2;
		  5:select=a3;
		  6:select=a3;
		  7:select=a3;
		  endcase
	endfunction

	always @(*)
	begin
		#1;
		result = select(and_result,or_result,as_result,sh,aluc);
		
		//if ((aluc==2) || (aluc==3))
			//zero = (result==0);
		//if (~aluc[3] & ~aluc[2] & aluc[1])
		if (wzero)
			zero = (result==0);
		/*case (aluc)
			0: result <= a & b; 
			1: result <= a | b;	
			2:	begin
					result <= a + b;
					zero <= (result==0);
				end
				
			3: begin
					result <= a - b;	
					zero <= (result==0);
				end
				
			4: result <= a + b;
			5: result <= sh;
			6: result <= sh;
			7: result <= sh;
			default : result <= 0;
		endcase*/
	end
	
	

endmodule
