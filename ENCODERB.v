`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:03 03/14/2022 
// Design Name: 
// Module Name:    ENCODERB 
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
module ENCODERB(a0,a1,y0,y1,y2,y3);
  input y0;
  input y1;
  input y2;
  input y3;
  output reg a0,a1;
  always@(y0,y1,y2,y3)
  begin
  a1=y3|y2;
  a0=y3|(y1&~y2);
  end
    
	 


endmodule
