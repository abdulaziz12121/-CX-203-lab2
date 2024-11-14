`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 10:57:23 AM
// Design Name: 
// Module Name: task2_ts
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
module mux4(
    input [3:0] A, 
    input [3:0] B,
    input [1:0] S,               // 2-bit select signal
    output reg [3:0] out         // Output alu_out
);
*/

module task2_ts;
    logic [3:0] A, B;
    logic [1:0] S;
    reg [3:0] o;

    mux4 ts(.A(A), .B(B), .S(S), .out(o));

    initial begin
        A = 4'b100; B = 4'b0100; S = 2'b00; #5
        A = 4'b0001; B = 4'b0001; S = 2'b01; #5
        A = 4'b0010; B = 4'b0010; S = 2'b10; #5
        A = 4'b0100; B = 4'b0000; S = 2'b11; 
    end

endmodule

