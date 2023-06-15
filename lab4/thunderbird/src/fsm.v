module fsm(input reset, input left, input right, input clock, output [5:0] led);

reg [2:0] state;
wire [2:0] next;

next_state ns(.reset(reset), .left(left), .right(right), .cur(state), .next(next));
output_logic ol(.state(state), .led(led));

always @(posedge clock) begin
    state <= next;
end

endmodule
