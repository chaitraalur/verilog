`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:19 03/09/2022 
// Design Name: 
// Module Name:    mux21s 
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
module mux21s(
    input d0,
    input d1,
    input s,
    output y
    );
	 wire t1,t2,sbar;
	 and a1(t1,d1,s);
	 and a2(t2,d0,sbar);
	 not n1(sbar,s);
	 or o1(y,t1,t2);
endmodule
