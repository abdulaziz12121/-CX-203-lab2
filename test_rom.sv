`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 10:20:21 PM
// Design Name: 
// Module Name: test_rom
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

module testbench();
    reg [3:0] in;        // Register to hold input values to test
    wire [3:0] o;      // Wire to observe the output from incrementer_rom

    // Instantiate the incrementer_rom module
    incrementer_rom inc(.in(in), .o(o));

    // Test process
    initial begin
        in = 4'b0001;    // Test case 1
        #5;
        in = 4'b0010;    // Test case 2
        #5;
        in = 4'b1000;    // Test case 3
        #5;
        in = 4'b1111;    // Test case 4
        #5;

        $finish;         // End the simulation
    end
endmodule
