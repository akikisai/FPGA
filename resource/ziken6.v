`timescale 1ns / 1ps
module bit2_adder(
	input wire [1:0] x1,
	input wire [1:0] x0,
	output wire [2:0] y
);
	assign y= x1+x0;
endmodule