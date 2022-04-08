`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:25 03/15/2022 
// Design Name: 
// Module Name:    CNTR 
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
module CNTR(dout, din, ld, dec, clk);
    output reg [15:0] dout;
    input[15:0] din;
    input ld;
    input dec;
    input clk;
	 always @ (posedge clk)
	 if (ld) dout <= din;
	 else if (dec) dout <= dout -1;
	 
    


endmodule
