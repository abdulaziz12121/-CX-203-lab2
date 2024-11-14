`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 10:33:57 AM
// Design Name: 
// Module Name: mux4
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


module mux4(
    input [3:0] A, 
    input [3:0] B,
    input [1:0] S,               
    output reg [3:0] out 
);
    logic [3:0] shift,andr;
assign shift = A << B;
assign andr = A & B;
wire [3:0]o1;
wire c;
wire [3:0] fb;
fourbit_addsub fa(.M(S[0]), .A(A), .B(B), .S(fb), .Cout(c)    ); 
mux m1(.A(shift),.B(andr),.S(S[0]), .Z(o1));
mux m2(.A(fb),.B(o1),.S(S[1]),.Z(out));         
endmodule