`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 10:11:13 PM
// Design Name: 
// Module Name: ROM
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

module incrementer_rom (
    input [3:0] in,          
    output reg [3:0] o     
);

    // ROM lookup table
    always @(*) begin
        case (in)
            4'b0000: o = 4'b0001; 
            4'b0001: o = 4'b0010; 
            4'b0010: o = 4'b0011; 
            4'b0011: o = 4'b0100; 
            4'b0100: o = 4'b0101; 
            4'b0101: o = 4'b0110; 
            4'b0110: o = 4'b0111; 
            4'b0111: o = 4'b1000; 
            4'b1000: o = 4'b1001; 
            4'b1001: o = 4'b1010; 
            4'b1010: o = 4'b1011; 
            4'b1011: o = 4'b1100; 
            4'b1100: o = 4'b1101; 
            4'b1101: o = 4'b1110; 
            4'b1110: o = 4'b1111; 
            4'b1111: o = 4'b0000; 
            default: o = 4'b0000; 
        endcase
    end

endmodule

    
