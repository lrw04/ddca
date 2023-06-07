module led (input [3:0] a, input [3:0] b, output [6:0] led);
    wire [4:0] s;
    adder4 add(.a(a), .b(b), .s(s));
    decoder dec(.x(s[3:0]), .led(led));
endmodule
