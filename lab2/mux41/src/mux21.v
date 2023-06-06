module mux21 (input s, input [1:0] x, output y);
    assign y = (s & x[1]) | ((~s) & x[0]);
endmodule
