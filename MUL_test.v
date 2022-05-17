`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:46 03/16/2022 
// Design Name: 
// Module Name:    MUL_test 
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
/////////////////////////////////////////////////////////////////////////////////module MUL_test;
module MUL_test;
reg [15:0] data_in;
reg clk, start;
wire done;
muldatapath DP (eqz, lda, ldb, ldp, clrp, decb, data_in, clk);
controller CON(lda, ldb, ldp, clrp, decb, done, clk, eqz, start);
initial
begin
clk = 1'b0;
#3 start = 1'b1;
#500 $finish;
end
always #5 clk =~clk;
initial
begin
#17 data_in = 17;
#10 data_in =5;
end
initial
begin
$monitor ($time, " %d %b", DP.y, done);
$dumpfile ("mul.vod"); $dumpvars (0, MUL_test);
end
endmodule
