module mux21 (input [1:0] x, input s, output o);
    assign o = (s & x[1]) | ((~s) & x[0]);
endmodule
