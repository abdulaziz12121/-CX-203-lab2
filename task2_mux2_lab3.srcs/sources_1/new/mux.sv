`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 10:29:56 AM
// Design Name: 
// Module Name: mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module mux(
input [3:0]A
,input [3:0]B,
                input S, 
		    output [3:0]Z);
assign Z =S ?B:A ; 



/*
logic S_Not;
logic [3:0]t1, t2;

not (S_Not, S);
assign t1= A & S_Not;
assign t2= B &S; 
assign Z= t1|t2;
*/
endmodule