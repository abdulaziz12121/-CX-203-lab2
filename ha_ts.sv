`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:27:08 PM
// Design Name: 
// Module Name: ha_ts
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

`timescale 1ns / 1ps
module h1_testbench;
logic a, b, sum, carry;
half_adder h1(a, b, sum, carry);
initial begin
	a = 1'b0; b = 1'b0;
#5
	a = 1'b0; b = 1'b1;
#5	
	a = 1'b1; b = 1'b0;
#5
	a = 1'b1; b = 1'b1;
	
end
endmodule

