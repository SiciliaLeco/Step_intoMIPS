module maindecode(
	input [5:0] opcode,
	output jump,
	output branch,
	output alusrc,
	output memwrite,
	output regwrite, 
	output memtoreg,
	output regdst,
	output [1:0] aluop
	);
	
	reg [1:0] alu_op_reg;
	reg [6:0] sign; //save signal info

	assign aluop = alu_op_reg;
	assign {jump, regwrite, regdst, alusrc, branch, memwrite, memtoreg} = sign;

	always@(*) begin
		case(opcode) 
			6'b000000: begin //r_type
				alu_op_reg <= 2'b10;
				sign <= 7'b0110000;
			end
			6'b100011: begin //lw
				alu_op_reg <= 2'b00;
				sign <= 7'b0101001;
			end
			6'b101011: begin //sw
				alu_op_reg <= 2'b00;
				sign <= 7'b0001010;
			end
			6'b000100: begin //beq
				alu_op_reg <= 2'b01;
				sign <= 7'b0000100;
			end
			6'b001000: begin //addi
				alu_op_reg <= 2'b00;
				sign <= 7'b0101000;
			end
			6'b000010: begin //jump
				alu_op_reg <= 2'b00;
				sign <= 7'b1000000;
			end
			default: begin 
				alu_op_reg <= 2'b10;
				sign <= 7'b0000000;
			end
		endcase
	end

endmodule