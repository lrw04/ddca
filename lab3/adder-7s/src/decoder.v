module decoder (input [3:0] x, output [6:0] led);
    reg [6:0] led_reg;
    always @(*) begin
        if (x[3:0] == 4'd0) led_reg <= 7'b0111111;
        else if (x[3:0] == 4'd1) led_reg <= 7'b0000110;
        else if (x[3:0] == 4'd2) led_reg <= 7'b1011011;
        else if (x[3:0] == 4'd3) led_reg <= 7'b1001111;
        else if (x[3:0] == 4'd4) led_reg <= 7'b1100110;
        else if (x[3:0] == 4'd5) led_reg <= 7'b1101101;
        else if (x[3:0] == 4'd6) led_reg <= 7'b1111101;
        else if (x[3:0] == 4'd7) led_reg <= 7'b0000111;
        else if (x[3:0] == 4'd8) led_reg <= 7'b1111111;
        else if (x[3:0] == 4'd9) led_reg <= 7'b1101111;
        else if (x[3:0] == 4'd10) led_reg <= 7'b1110111;
        else if (x[3:0] == 4'd11) led_reg <= 7'b1111100;
        else if (x[3:0] == 4'd12) led_reg <= 7'b0111001;
        else if (x[3:0] == 4'd13) led_reg <= 7'b1011110;
        else if (x[3:0] == 4'd14) led_reg <= 7'b1111001;
        else led_reg <= 7'b1110001;
    end
    assign led = led_reg;
endmodule
