`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:20 04/07/2022
// Design Name:   demus_datapath
// Module Name:   D:/01FE21MVE006/demux_beh/demux_tb.v
// Project Name:  demux_beh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demus_datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_tb;

	// Inputs
	reg d;
	reg [1:0] s;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	demus_datapath uut (
		.d(d), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

