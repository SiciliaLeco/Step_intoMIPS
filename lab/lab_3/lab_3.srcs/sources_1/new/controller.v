module controller(
	input wire[5:0] opc, funct,
	input wire zero,
	output wire memtoreg, memwrite, pcsrc, alusrc, regdst, 
	regwrite, jump, 
	output wire[2:0] alu_control
	);
	wire [1:0] alu_op;
	wire branch;
	main_decoder md(
		.opcode(opc), //opt
		.jump(jump), .branch(branch), .alusrc(alusrc), .memwrite(memwrite),
		.memtoreg(memtoreg), .regwrite(regwrite), .regdst(regdst), .aluop(alu_op)
		);

	alu_decoder ad(
		.funct(funct), //funct
		.op(alu_op),
		.alu_control(alu_control)
		);

	assign pcsrc = zero & branch;
endmodule