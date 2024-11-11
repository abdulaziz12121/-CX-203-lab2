`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:26:18 PM
// Design Name: 
// Module Name: and4gateSIM
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

module tb_andgate;
// Declare testbench signals
logic a, b, c,d;
logic f;
// Instantiate the andgate module
and4gate dut (
.a(a),
.b(b),
.c(c),
.d(d),
.f(f)
);




// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t c\t d\t f");
$display("------------------------");
// Apply test vectors with $display statements
a = 0; b = 0;c=0;d=0; #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f); //0

a = 0; b = 0;c=0;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//1

a = 0; b = 0;c=1;d=0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//2

a = 0; b = 0;c=1;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//3

a = 0; b = 1;c=0;d=0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//4

a = 0; b = 1;c=0;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//5

a = 0; b = 1;c=1;d=0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//6

a =0 ; b = 1;c=1;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//7

a = 1; b = 0;c=0;d=0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//8

a = 1; b = 0;c=0;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//9

a = 1; b = 0;c=1;d=0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//10

a = 1; b = 0;c=0;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//11

a = 1; b = 1;c=0;d=0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//12


a = 1; b = 1;c=0;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//13

a = 1; b = 1;c=1;d=0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//14

a = 1; b = 1;c=1;d=1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b,c,d, f);//15

// End simulation
$finish;
end
endmodule