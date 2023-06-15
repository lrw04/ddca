module next_state (input reset, input left, input right, input[2:0] cur, output reg [2:0] next);

always @(*) begin
    if (reset) next <= 3'd0;
    else begin
        if ((3'd1 <= cur && cur <= 3'd2) || (3'd5 <= cur && cur <= 3'd6))
            next <= cur + 1;
        else if (cur == 3'd3 || cur == 3'd7)
            next <= 0;
        else if (left)
            next <= 1;
        else if (right)
            next <= 5;
        else next <= 0;
    end
end

endmodule
