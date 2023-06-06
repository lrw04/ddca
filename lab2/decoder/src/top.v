module top (input [1:0] in, output [3:0] out_inv);
    wire [3:0] out;
    decoder dec (.in(in), .out(out));
    assign out_inv = ~out;
endmodule
