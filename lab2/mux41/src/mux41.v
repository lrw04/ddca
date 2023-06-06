module mux41 (input [3:0] x, input [1:0] s, output y);
    wire [1:0] intermediate;
    mux21 a(.x({x[1], x[0]}), .s(s[0]), .y(intermediate[0]));
    mux21 b(.x({x[3], x[2]}), .s(s[0]), .y(intermediate[1]));
    mux21 c(.x(intermediate), .s(s[1]), .y(y));
endmodule
