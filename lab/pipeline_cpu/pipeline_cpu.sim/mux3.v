`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  2020/06/20 20:48:09
// Design Name: 
// Module Name: mux_3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mux3 #(parameter WIDTH = 8)(
	input wire[WIDTH-1:0] a,b,c,
	input wire[1:0] s,
	output wire[WIDTH-1:0] result
    );

	assign result = (s == 2'b00) ? a :
				(s == 2'b01) ? b:
				(s == 2'b10) ? c: a;
endmodule
