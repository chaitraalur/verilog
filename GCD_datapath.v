`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:33 03/21/2022 
// Design Name: 
// Module Name:    GCD_datapath 
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
module GCD_datapath( gt, lt, eq,lda,ldb,sel1,sel2,sel_in,data_in,clk);
	 input lda,ldb,sel1,sel2,sel_in,clk;
	 input [15:0] data_in;
	 output gt,lt,eq;
	 wire [15:0] aout,bout,X,Y,bus,subout;
	 PIPO A(aout,data_in,lda,clk);
	 PIPO B(bout,data_in,ldb,clk);
	 MUX MUX_in1(X,aout,bout,sel1);
	 MUX MUX_in2(Y,aout,bout,sel2);
	 MUX MUX_load(bus,subout,data_in,sel_in);
	 SUB SB(subout, X, Y);
	 COMPARE COMP  (lt, gt, eq, aout, bout);
	 


endmodule
