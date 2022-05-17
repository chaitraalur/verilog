`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:25 03/09/2022 
// Design Name: 
// Module Name:    mux21b 
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
module mux21b(
    input d0,
    input d1,
    input s,
    output reg y
    );
	 always@(d0,d1,s)
	 begin
	 y=(d0&~s)|(d1&s);
	 end
endmodule
