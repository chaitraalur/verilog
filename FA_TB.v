`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:32 03/10/2022
// Design Name:   FAD
// Module Name:   D:/01FE21MVE006/FAD/FA_TB.v
// Project Name:  FAD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FAD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_TB;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	FAD uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.c(c)
	);

	initial begin
	
		a = 0;
		b = 0;
		cin = 0;
		#100;
		
		a = 0;
		b = 0;
		cin = 1;
		#100;
		
		a = 0;
		b = 1;
		cin = 0;
		#100;
		
		
        a = 0;
		b = 1;
		cin = 1;
		#100;
		
        a = 1;
		b = 0;
		cin = 0;
		#100;
		
		a = 1;
		b = 01;
		cin = 0;
		#100;
		
		a = 1;
		b = 0;
		cin = 1;
		#100;
		
		a = 1;
		b = 1;
		cin = 1;
		#100;
        
        
		
        
		
        
        
		
        
		

	end
      
endmodule

