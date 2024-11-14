module seven_seg_decoder(
    input  wire [3:0] bin,      // 4-bit binary input (0-F)
    output reg  [6:0] seg       // 7-bit output for segments a-g
);


wire a ,b,c,d ; 
// Add your code here -----------------------------------



assign a = bin[3];
assign b = bin[2];
assign c = bin[1];
assign d = bin[0];



assign seg[0] = (b & ~c & ~d) | (a&b & ~c) | (~a & ~b & ~c&d) | (a & ~b & c & d);
assign seg[1] =  (b & c & ~d) | (a & b & ~d) |(~a& b & ~c& d)|(a&~b&c&d)  ;  
assign seg[2] = (a & b & ~d) | (~a & ~b & c&~d);
assign seg[3]= (~b&~c&d)| (b&c&d) | (~a &b&~c&~d) | (a&~b&c&~d);
assign seg[4]= (~a&d)|(~a&b&~c) | (~b& ~c&d) | (b&c&d);
assign seg[5] = (a&b&~c)| (~a&~b&d) | (~a&~b&c) | (b&c&d);
assign seg[6]= (~a&~b&~c) | (~a&b&c&d);



endmodule