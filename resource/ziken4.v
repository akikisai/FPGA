`timescale 1ns / 1ps
module half_adder(
	input wire x1,
	input wire x0,
	output wire [1:0] y
);
	assign y[1] = x1 & x0;
	assign y[0] = (!(x1&x0)) & (x1|x0);
endmodule
