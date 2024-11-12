`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 12:50:30 PM
// Design Name: 
// Module Name: 4-bit _adder
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

module full_adder(
input logic a,
input logic b,
input logic cin,
output logic Sout,  
output logic Cout  );
*/

//TASK 4
module fourbitadder(

input logic cin,
input logic [3:0]A,
input logic [3:0]B,

output logic [3:0]S,
output logic Cout
    );
logic C[2:0];
    
//full_adder FA1   (.a(),  .b(), .cin(), .Sout(), .Cout()) ;  
    
//full_adder FA1(A[0], B[0], cin, S[0], C[0] );

full_adder FA1(A[0],  B[0], cin, S[0], C[0] ) ; 
full_adder FA2(A[1],  B[1], C[0], S[1], C[1]) ; 
full_adder FA3(A[2],  B[2], C[1], S[2], C[2]) ; 
full_adder FA4(A[3],  B[3], C[2], S[3], Cout) ; 

   
    
    
endmodule
