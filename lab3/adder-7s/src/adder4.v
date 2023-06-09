module adder4(input [3:0] a, input [3:0] b, output [4:0] s);
    wire [2:0] c;
    full_adder a1(.a(a[0]), .b(b[0]), .ci(0), .s(s[0]), .co(c[0]));
    full_adder a2(.a(a[1]), .b(b[1]), .ci(c[0]), .s(s[1]), .co(c[1]));
    full_adder a3(.a(a[2]), .b(b[2]), .ci(c[1]), .s(s[2]), .co(c[2]));
    full_adder a4(.a(a[3]), .b(b[3]), .ci(c[2]), .s(s[3]), .co(s[4]));
endmodule
