`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:48 03/15/2022 
// Design Name: 
// Module Name:    PIPO1 
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
module PIPO1(dout,din,ld,clk);
    output reg [15:0] dout;
    input[15:0] din;
    input ld;
    input clk;
    always@(posedge clk)
	 if (ld) dout <= din;


endmodule
