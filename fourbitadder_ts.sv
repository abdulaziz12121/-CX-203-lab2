`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:09:52 PM
// Design Name: 
// Module Name: fourbitadder_ts
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
/*
module fourbitadder(

input logic Cin,
input logic A[3:0],
input logic B[3:0],

output logic S[3:0],
output logic Cout
    );
*/

module fourbitadder_ts;
logic[3:0]A, B,S;
logic Cout,Cin ;
 
fourbitadder ffa(.Cin(Cin),.A(A), .B(B),.S(S),.Cout(Cout));

initial begin

        A = 4'b0000; B = 4'b0000;Cin = 1'b0 ;  
#5
        A = 4'b0001; B = 4'b0001; Cin = 1'b0 ;  
#5
        A = 4'b0010; B = 4'b0010; Cin = 1'b1 ;  
#5
        A = 4'b0100; B = 4'b0100; Cin = 1'b1 ;  

end
endmodule
