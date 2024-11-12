`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:33:13 PM
// Design Name: 
// Module Name: fa_test
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
module fa_testbench;
logic a, b,cin , Cout, Sout;

/*
module full_adder(
input logic a,
input logic b,
input logic cin,
output logic Sout,  
output logic Cout  );
*/



full_adder fa(.a(a) , .b(b), .cin(cin), .Sout(Sout) , .Cout(Cout));

initial begin
	a = 1'b0; b = 1'b0; cin=0;
#5
	a = 1'b0; b = 1'b1; cin=0;
#5	
	a = 1'b1; b = 1'b0;cin=0;
#5
	a = 1'b1; b = 1'b1;cin=0;
#5	
	a = 1'b0; b = 1'b0; cin=1;
#5
	a = 1'b0; b = 1'b1;cin=1;
#5	
	a = 1'b1; b = 1'b0;cin=1;
#5
	a = 1'b1; b = 1'b1;	cin=1;
	
	
	
	
end
endmodule
