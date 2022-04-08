`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:27 03/09/2022 
// Design Name: 
// Module Name:    mux21 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux21(
    input d0,
    input d1,
    input s,
    output y
    );
	 assign y=(d0&~s)|(d1&s);
endmodule
