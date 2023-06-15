module top (input reset, input left, input right, input clock, output [5:0] led_inv);

wire slow_clock;
wire [5:0] led;

clock_divider #(.coeff(32'd100)) cd (.clkin(clock), .clkout(slow_clock), .reset(reset));
fsm mach (.reset(reset), .left(left), .right(right), .clock(slow_clock), .led(led));

assign led_inv = ~led;

endmodule
