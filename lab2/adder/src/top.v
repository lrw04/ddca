module toplevel(input a, input b, input ci, output co_inv, output s_inv);

    wire co;
    wire s;
    full_adder adder (.a(a), .b(b), .ci(ci), .co(co), .s(s));
    assign co_inv = ~co;
    assign s_inv = ~s;

endmodule
