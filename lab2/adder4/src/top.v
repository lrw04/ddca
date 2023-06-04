module top (input [3:0] a, input [3:0] b, output [4:0] s_inv);

    wire [4:0] s;
    adder4 adder(.a(a), .b(b), .s(s));
    assign s_inv = ~s;

endmodule
