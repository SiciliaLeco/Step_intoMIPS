/// 寄存器堆： 0号寄存器是不能写入的，在写入前要进行判断
module datapath(
	input wire clk, rst,
	input wire memtoreg, pcsrc, alusrc, regdst, regwrite,
	jump, 
	input wire [2:0]alucontrol, 
	output overflow, zero, 
	output wire [31:0]pc, 
	input wire [31:0]instr, 
	output wire [31:0]alu_result, mem_wdata, 
	input wire [31:0]mem_rdata

	);

	wire [31:0] pc1;
	wire [31:0] rd1;
	wire [31:0] imm_extend; //扩展结果
	wire [31:0] alu_srcb;
	wire [31:0] pcout;
	wire [31:0] pc_branch;
	wire [27:0] pc_jump;
	wire [31:0] pc_next;
	wire [31:0] imm_sl2;
	wire [4:0] write2reg;
	wire [31:0] wd3;
    wire [31:0] pcadd4;
	
	
//mux for pc_next or pc_branch
	mux2 #(32) mux_branch(
	.a(pc_branch),
	.b(pcadd4),
	.s(pcsrc), 
	.y(pc_next)
	);

// sl2 for instr[25:0]
sl2 sl2_instr(
	.a(instr[25:0]),
	.b(pc_jump)
	);

//mux for pc_jump
	mux2 #(32) mux_pc_jump(
	.a({pcadd4[31:28], pc_jump}),
	.b(pc_next),
	.s(jump),
	.y(pc1)
	);

//PC 用输入输出的形式表示
	pc pctry(
	.clk(clk),
	.rst(rst),
	.in(pc1),
	.pcout(pc)
		);

//PC地址+4
	adder pcadder4(
	.a(pc),
	.b(32'b100),
	.y(pcadd4));


/// sl2
	sl2 sl2(
	.a(imm_extend),
	.b(imm_sl2)
	);

//pc_branch = imm_extend << 2 + (pc + 4)
	adder pc_branch_adder(
	.a(pcadd4),
	.b(imm_sl2),
	.y(pc_branch)
	);



//imm extend
	sign_extend sign_extend(
	.a(instr[15:0]),
	.extd(imm_extend)
	);
	
// mux for wa3, 5 bit
	mux2 #(5) mux_wa3(
	.a(instr[15:11]),
	.b(instr[20:16]),
	.s(regdst), //regdst
	.y(write2reg)
	);

// regfile
	regfiles regfiles (
	.clk(clk),
	.we3(regwrite),
	.ra1(instr[25:21]),
	.ra2(instr[20:16]), // sw load from rt
	.wa3(write2reg), //lw, store to rt
	.wd3(wd3),
	.rd1(rd1),
	.rd2(mem_wdata)
    );

// mux2

	
mux2 #(32) mux_alu_srcb(
	.a(imm_extend),
	.b(mem_wdata),
	.s(alusrc),  //alusrc
	.y(alu_srcb)
	);


// alu
alu alu(
 	.a(rd1),
 	.b(alu_srcb),
 	.op(alucontrol), //alu control
 	.y(alu_result),
 	.overflow(overflow), //判断是否有异常的时候用到
 	.zero(zero)
	);
		


//mux2
mux2 #(32) mux_wd3(
	.a(mem_rdata),
	.b(alu_result),
	.s(memtoreg), //memtoreg
	.y(wd3)
	);

endmodule