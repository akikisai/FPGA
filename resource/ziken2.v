`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:12 05/07/2021 
// Design Name: 
// Module Name:    ziken2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seg7test(
	input wire[3:0] sw,
	input wire[3:0] ssw,
	output wire[6:0] seg,
	output wire dp,
	output wire[3:0] line
	);
	wire[6:0] code;
	assign seg = code;
	decoder7seg decoder0(.data(ssw),.code(code));
	assign line[3:0] = sw[3:0]^4'b1111;
	assign dp =1'b1;
endmodule

module decoder7seg( input wire [3:0] data, output wire [6:0] code);
	assign code =
		data==4'd0 ? 7'b1111110:
		data==4'd1 ? 7'b0110000:
		data==4'd2 ? 7'b1101101:
		data==4'd3 ? 7'b1111001:
		data==4'd4 ? 7'b0110011:
		data==4'd5 ? 7'b1011011:
		data==4'd6 ? 7'b1011111:
		data==4'd7 ? 7'b1110000:
		data==4'd8 ? 7'b1111111:
		data==4'd9 ? 7'b1111011:
		
		data==5'd10 ? 7'b1110111:
		data==5'd11 ? 7'b0011111:
		data==5'd12 ? 7'b1001110:
		data==5'd13 ? 7'b0111101:
		data==5'd14 ? 7'b1001111:
		7'b1000111;
		
						
endmodule

