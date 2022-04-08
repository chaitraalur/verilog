`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:06 03/09/2022 
// Design Name: 
// Module Name:    mux41b 
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
module mux41b(
    input [3:0] i,
    input [1:0] s,
    output reg y
    );
	 always@(i,s)
	 begin
	 case(s)
	 2'b00:y=i[0];
	 2'b01:y=i[1];
	 2'b10:y=i[2];
	 2'b11:y=i[3];
	 default:y=1'bz;
	 endcase
	 end
	endmodule
