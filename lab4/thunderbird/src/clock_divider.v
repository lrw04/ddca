module clock_divider
    #(parameter width = 32,
      parameter coeff = 32'h100000)
    (input clkin, input reset, output clkout);

reg [width - 1:0] counter;

always @(posedge clkin) begin
    if (reset)
        counter <= 0;
    else
        counter <= (counter + 1) % coeff;
end

assign clkout = counter == 0;

endmodule
