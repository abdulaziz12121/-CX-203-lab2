module task1_test;
    logic a, b,c,d;
    logic f;
    task1 dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .f(f)
    );
    initial begin
    $display("Time\t a\t b\t c\t d\t f\t"); 
    $display("------------------------");
    a = 0; b = 0;c=0; d=0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 0; b = 0;c=0; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 0; b = 0;c=1; d=0; #10;
     $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 0; b = 0;c=1; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
        a = 0; b = 1;c=0; d=0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 0; b = 1;c=0; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 0; b =1;c=1; d=0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 0; b = 1;c=1; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 1; b = 0;c=0; d=0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 1; b = 0;c=0; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 1; b = 0;c=1; d=0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
        a = 1; b =0;c=1; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 1; b =1;c=0; d=0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 1; b =1;c=0; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    a = 1; b = 1;c=1; d=0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
     a = 1; b = 1;c=1; d=1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b\t ", $time, a, b,c,d,f);
    $finish;
    end
    endmodule
