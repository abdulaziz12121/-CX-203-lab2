`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:45:38 PM
// Design Name: 
// Module Name: fourbit_addsub
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


module fourbit_addsub(
input logic M,
input logic [3:0]A,
input logic [3:0]B,

output logic [3:0]S,
output logic Cout
    );
logic C[2:0];
logic w[3:0]; 
    
//full_adder FA1   (.a(),  .b(), .cin(), .Sout(), .Cout()) ;  
    
//full_adder FA1(A[0], B[0], cin, S[0], C[0] );

xor (w[0],B[0],M);
xor (w[1],B[1],M);
xor (w[2],B[2],M);
xor (w[3],B[3],M);


full_adder FA1(A[0],  w[0], M, S[0], C[0] ) ; 
full_adder FA2(A[1],  w[1], C[0], S[1], C[1]) ; 
full_adder FA3(A[2],  w[2], C[1], S[2], C[2]) ; 
full_adder FA4(A[3],  w[3], C[2], S[3], Cout) ; 

   
    
    
endmodule
