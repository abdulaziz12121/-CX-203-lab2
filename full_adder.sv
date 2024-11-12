`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:13:00 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input logic a,
input logic b,
input logic cin,
output logic Sout,  
output logic Cout  );
    
logic w1, w2,w3; 
    
    half_adder ha1(.a(a), .b(b), .sum(w1), .carry(w2)    );
    half_adder ha2(.a(w1), .b(cin), .sum(Sout), .carry(w3)    );
    or(Cout,w3,w2);
    
    
endmodule
