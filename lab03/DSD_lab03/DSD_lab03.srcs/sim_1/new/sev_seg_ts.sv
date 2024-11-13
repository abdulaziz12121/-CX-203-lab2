`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 02:46:14 PM
// Design Name: 
// Module Name: sev_seg_ts
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
/*module seven_seg_decoder(
    input  wire [3:0] bin,      // 4-bit binary input (0–F)
    output reg  [6:0] seg       // 7-bit output for segments a-g
);*/

module sev_seg_ts;
logic [3:0] bin ; 
logic [6:0]seg ; 
seven_seg_decoder sts1(bin,seg) ; 


initial begin
		bin = 4'b0000;//0
#5
	bin = 4'b0001;//1
#5
	bin = 4'b0010;//2
	#5
	bin = 4'b0011;//3
	#5
	bin = 4'b0100;//4
	#5
	bin = 4'b0101;//5
	#5
	bin = 4'b0110;//6
	#5
	bin = 4'b0111;//7
	#5
	bin = 4'b1000;//8
	#5
	bin = 4'b1001;//9
	#5
	bin = 4'b1010;//A
	#5
	bin = 4'b1011;//B
	#5
	bin = 4'b1100;//C
	#5
	bin = 4'b1101;//D
	#5
	bin = 4'b1110;//E
	#5
	bin = 4'b1111;//F
	
	
end


    
endmodule
