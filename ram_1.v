`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:10 04/06/2022 
// Design Name: 
// Module Name:    ram_1 
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

module ram_1(addr,data_in,clk,rd,wr,cs,d_out);
input[9:0]addr;
input clk,rd,wr,cs;
input[7:0] data_in;
reg[7:0] mem[1023:0];
output[7:0] d_out;
reg [7:0] d_out;

assign data=(cs && rd) ? d_out : 8'bz;
always @(posedge clk)
  if(cs && wr && !rd) mem[addr]=data;
always @(posedge clk)
if ( cs && wr && !wr) d_out=mem[addr];


endmodule





