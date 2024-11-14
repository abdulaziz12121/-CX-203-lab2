module sev_seg_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW     
);


logic reset_n;
logic clk;

assign reset_n = CPU_RESETN;
assign clk = CLK100MHZ;


// Seven segments Controller
wire [6:0] Seg;
wire [3:0] digits[0:7];

/*

module mux4(
    input [3:0] A, 
    input [3:0] B,
    input [1:0] S,               // 2-bit select signal
    output reg [3:0] out 
);
*/
logic [3:0]A;
assign A = SW[3:0];

logic [3:0]B;
assign B = SW[7:4];

logic [1:0]S;
assign S = SW[9:8];

logic [3:0]o;

mux4 m1(.A(A),.B(B),.S(S),.out(o));


assign digits[0] = A[3:0];
assign digits[1] = B[3:0];
assign digits[2] = o[3:0];
assign digits[3] = S[1:0];
assign digits[4] = 4'b1111;
assign digits[5] = 4'b1111;
assign digits[6] = 4'b1111;
assign digits[7] = 4'b1111;



sev_seg_controller ssc(
    .clk(clk),
    .resetn(reset_n),
    .digits(digits),
    .Seg(Seg),
    .AN(AN)
);


assign CA = Seg[0];
assign CB = Seg[1];
assign CC = Seg[2];
assign CD = Seg[3];
assign CE = Seg[4];
assign CF = Seg[5];
assign CG = Seg[6];
assign DP = 1'b1; // turn off the dot point on seven segs


endmodule : sev_seg_top