`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:09 03/21/2022 
// Design Name: 
// Module Name:    PIPO 
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
module PIPO(data_out,data_in,load,clk);
input[15:0] data_in;
input load,clk;
output reg[15:0] data_out;
always@(posedge clk)
if(load)data_out<=data_in;
endmodule

