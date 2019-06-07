module chip (clk, reset, a, x, y);
    input clk, reset, a;
    output x, y;

    wire clk_int, reset_int, a_int;
    wire x_int, y_int;

    top main_block(.clk(clk_int), .reset(reset_int), .a(a_int), .x(x_int), .y(y_int));

    // left
    PRDW08DGZ_H_G pad_clk(.I(1'b0), .OEN(1'b1), .REN(1'b1), .PAD(clk), .C(clk_int));
    PRDW08DGZ_H_G pad_reset(.I(1'b0), .OEN(1'b1), .REN(1'b1), .PAD(reset), .C(reset_int));
    PRDW08DGZ_H_G pad_a(.I(1'b0), .OEN(1'b1), .REN(1'b1), .PAD(a), .C(a_int));

    // right
    PRDW08DGZ_H_G pad_x(.I(x_int), .OEN(1'b0), .REN(1'b1), .PAD(x), .C());
    PRDW08DGZ_H_G pad_y(.I(y_int), .OEN(1'b0), .REN(1'b1), .PAD(y), .C());
endmodule
