`timescale 1ns / 1ps
module full_adder_by_elements(
	input wire x2,x1,x0,
	output wire [1:0] y
);
	assign y[1] = (x0 & x1) | ((x0^x1)&x2);
	assign y[0] = (x0^x1)^x2;
endmodule
