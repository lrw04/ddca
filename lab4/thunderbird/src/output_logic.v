module output_logic (input [2:0] state, output reg [5:0] led);

always @(*) begin
    if (state == 3'd0) led <= 6'b000000;
    else if (state == 3'd1) led <= 6'b001000;
    else if (state == 3'd2) led <= 6'b011000;
    else if (state == 3'd3) led <= 6'b111000;
    else if (state == 3'd4) led <= 6'b101010;
    else if (state == 3'd5) led <= 6'b000100;
    else if (state == 3'd6) led <= 6'b000110;
    else led <= 6'b000111;
end

endmodule
