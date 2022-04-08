`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:18 03/10/2022
// Design Name:   CLA
// Module Name:   D:/01FE21MVE006/CLA/CLA_TB.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_TB;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CLA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		
		a = 0;
		b = 0;
		cin = 0;
		#100;
		
       a = 0;
		b = 1;
		cin = 0;
		#100;

	   a = 0;
		b = 1;
		cin = 1;
		#100;	
		
		a = 0;
		b = 0;
		cin = 1;
		#100;
		
		a = 1;
		b = 0;
		cin = 0;
		#100;
		
		a = 1;
		b = 0;
		cin = 1;
		#100;
		
		a = 1;
		b = 1;
		cin = 0;
		#100;
		
		a = 1;
		b = 1;
		cin = 1;
		#100;
		
		
		
		
		
		
		

	end
      
endmodule

