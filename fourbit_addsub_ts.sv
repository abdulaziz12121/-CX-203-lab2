`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:49:17 PM
// Design Name: 
// Module Name: fourbit_addsub_ts
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
module fourbit_addsub(
input logic M,
input logic [3:0]A,
input logic [3:0]B,

output logic [3:0]S,
output logic Cout
    );
*/

module fourbit_addsub_ts;

 logic [3:0]A, B,S;
    logic Cout,M ;
     
    fourbit_addsub ffa(.M(M), .A(A), .B(B),.S(S),.Cout(Cout)  );
    
    initial begin
    
            A = 4'b0010; B = 4'b1000;  M=0;
    #5
            A = 4'b0001; B = 4'b110;  M=0;
    #5
            A = 4'b1011; B = 4'b0010;  M=1;
    #5
            A = 4'b1100; B = 4'b0100;  M=1;
    
    end
    endmodule
