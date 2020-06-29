`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/20 11:36:28
// Design Name: 
// Module Name: aludecode
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

module aludecode(
	input [5:0] funct,
	input [1:0] op,
	output [2:0] alu_control
	);

	reg [2:0] alu_control_reg;
	assign alu_control = alu_control_reg;

	always @(*) begin
		case(op)
			2'b00: begin
				alu_control_reg <= 3'b010; //lw / sw
			end 
			2'b01: begin
				alu_control_reg <= 3'b110; //beq
			end
			2'b10: begin
				case(funct)
					6'b100000: begin
						alu_control_reg <= 3'b010; //add
					end
					6'b100010: begin
						alu_control_reg <= 3'b110; //sub
					end
					6'b100100: begin
						alu_control_reg <= 3'b000;
					end
					6'b100101: begin
						alu_control_reg <= 3'b001;
					end
					6'b101010: begin
						alu_control_reg <= 3'b111;
					end
					default: begin
						alu_control_reg <= 3'b000;
					end
				endcase
			end
			default: begin
				alu_control_reg <= 3'b000;
			end
		endcase
	end

endmodule
