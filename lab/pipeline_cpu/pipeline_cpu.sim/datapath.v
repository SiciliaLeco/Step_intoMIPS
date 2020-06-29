`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/20 20:48:09
// Design Name: 
// Module Name: datapath
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


module datapath(
	input clk,
	input clkb,
	input rst,
	output[31:0] pcF, // pc in fecth
	input[31:0] instrF,
	input pcsrcD,
	input branchD,
	input jumpD,
	output equalD,
	output[5:0] opD,functD,
	input memtoregE,
	input alusrcE,regdstE,
	input regwriteE,
	input[2:0] alucontrolE,
	output flushE,
	input memtoregM,
	input regwriteM,
	output[31:0] aluoutM,writedataM,
	input[31:0] readdataM,
	input memtoregW,
	input regwriteW
    );
	
	wire [31:0]srca2D, srcb2D;
	wire [31:0] srcaE, srcbE;
	wire stallF;
	wire [31:0] pcnextFD, pcnextbranch, pcadd4F, pcbranchD, pcadd4D, instrD;
	wire forwardaD, forwardbD, flushD, stallD; 
	wire [4:0] rsD, rtD, rdD;
	wire [31:0] imm_extendD,imm_sl2D;

	wire [1:0] forwardaE, forwardbE;
	wire [4:0] rsE, rtE, rdE, writeregE; // excetue
	wire [31:0] imm_extendE;
	
	wire [31:0] aluoutE;
	wire [4:0] writeregM;

	wire [31:0] srcaforwardE;//前推信号控制的3选一选择器选出的结果。作为alu的输入
	wire [31:0] srcbforwardE;//前推信号控制的3选一选择器选出的结果,作为另一个mux的输入，
	wire [31:0] alub;//alu的第二个输入

	wire [4:0] writeregW;
	wire [31:0] aluoutW,readdataW, resultW;
	wire [31:0] srcaD, srcbD;
	/********* hazard unit ***********/
	hazard h(
	.stallF(stallF),
	.rsD(rsD),
	.rtD(rtD),
	.branchD(branchD),
	.forwardaD(forwardaD),
	.forwardbD(forwardbD),
	.stallD(stallD),
	.rsE(rsE),
	.rtE(rtE),
	.writeregE(writeregE),
	.regwriteE(regwriteE),
	.memtoregE(memtoregE),
	.forwardaE(forwardaE),
	.forwardbE(forwardbE),
	.flushE(flushE),
	.writeregM(writeregM),
	.regwriteM(regwriteM),
	.memtoregM(memtoregM),
	.writeregW(writeregW),
	.regwriteW(regwriteW)
	);

/********* fetch to decode ***********/
	//next PC logic (operates in fetch an decode)，根据pcsrcD确定pc是正常加4,还是有分支跳转
	mux2 #(32) mux_branch(
	.a(pcadd4F),
	.b(pcbranchD),
	.s(pcsrcD),
	.y(pcnextbranch)
	);

	mux2 #(32) mux_pc_jump(
	.a(pcnextbranch),
	.b({pcadd4D[31:28],instrD[25:0],2'b00}),
	.s(jumpD),
	.y(pcnextFD)
	);//是否直接跳转,或者加pc+4或者branch

	//regfile decode阶段和写回
	regfile rf(
	.clk(clkb),
	.we3(regwriteW), //regwrite enable
	.ra1(rsD),
	.ra2(rtD),
	.wa3(writeregW),
	.wd3(resultW),
	.rd1(srcaD),
	.rd2(srcbD)
	);

//pc 用输出输入的形式来表示
	flopenr #(32) pcflop(
	.clk(clk),
	.rst(rst),
	.en(~stallF),
	.d(pcnextFD),
	.q(pcF)
	);

	adder pcadder4(
	pcF,
	32'b100,
	pcadd4F
	);
 
/*********decode to execute***********/

	flopenr #(32) pcadd4flopD(
	.clk(clk),
	.rst(rst),
	.en(~stallD), // if not stall, pc的新址得以传递
	.d(pcadd4F),
	.q(pcadd4D)
	);

	flopenrc #(32) instrflopD(
	.clk(clk),
	.rst(rst),
	.en(~stallD), //暂停
	.clear(flushD), //刷新
	.d(instrF),
	.q(instrD)
	);

 	//sign extend
	signext sign_extend(
	instrD[15:0],
	imm_extendD
	);

	sl2 sl2(
	imm_extendD,
	imm_sl2D
	);
/////pc+4+(immediate << 2) //branch address
	adder pc_branch_adder(
	pcadd4D,
	imm_sl2D,
	pcbranchD
	);

//解决数据冒险//
	mux2 #(32) forwardsrca(
	srcaD,
	aluoutM,
	forwardaD, //如果要用到上个指令的值（前推）srca2d被赋值为srcaD
	srca2D
	);

	mux2 #(32) forwardsrcb(
	srcbD,
	aluoutM,
	forwardbD, //same as forwardsrca
	srcb2D
	);

	eqcmp judgeequalD( //judge if equals
	srca2D,
	srcb2D,
	equalD
	);

////这些数据不一定能进入下一阶段（if stall） 
	assign opD = instrD[31:26];
	assign functD = instrD[5:0];
	assign rsD = instrD[25:21];
	assign rtD = instrD[20:16];
	assign rdD = instrD[15:11];

/*********execute to memory***********/

	floprc #(32) srcaflopE(
	.clk(clk),
	.rst(rst),
	.clear(flushE),
	.d(srcaD),
	.q(srcaE)
	);

	floprc #(32) srcbflopE(
	.clk(clk),
	.rst(rst),
	.clear(flushE),
	.d(srcbD),
	.q(srcbE)
	);

	floprc #(32) imm_extendflopE(
	.clk(clk),
	.rst(rst),
	.clear(flushE),
	.d(imm_extendD),
	.q(imm_extendE)
	);

	floprc #(5) ra1flopE(
	.clk(clk),
	.rst(rst),
	.clear(flushE),
	.d(rsD),
	.q(rsE)
	);

	floprc #(5) ra2flopE(
	.clk(clk),
	.rst(rst),
	.clear(flushE),
	.d(rtD),
	.q(rtE)
	);

	floprc #(5) wa3flopE(
	.clk(clk),
	.rst(rst),
	.clear(flushE),
	.d(rdD),
	.q(rdE)
	);

    
	mux3 #(32) mux_forwardaE( //考虑前推结果、运算结果
	.a(srcaE),
	.b(resultW),
	.c(aluoutM),
	.s(forwardaE),
	.result(srcaforwardE)
	);

	mux3 #(32) mux_forwardbE(
	.a(srcbE),
	.b(resultW),
	.c(aluoutM),
	.s(forwardbE),
	.result(srcbforwardE)	
	);

	mux2 #(32) mux_srcb(
	srcbforwardE,
	imm_extendE,
	alusrcE,
	alub
	);

	alu alu(
	srcaforwardE,
	alub,
	alucontrolE,
	aluoutE //aluresult
	);

	mux2 #(5) mux_wa3(
	rtE,
	rdE,
	regdstE,
	writeregE
	);

/*********memory to writeback***********/
	flopr #(32) srcbfolpM(
	clk,
	rst,
	srcbforwardE,
	writedataM
	);

	flopr #(32) aluoutfolpM(
	clk,
	rst,
	aluoutE,
	aluoutM
	);

	flopr #(5) writeregfolpM(
	clk,
	rst,
	writeregE,
	writeregM
	);

	//writeback stage
	flopr #(32) aluresultflopW(
	clk,
	rst,
	aluoutM,
	aluoutW
	);

/*********writeback***********/
	flopr #(32) readdataflopW(
	clk,
	rst,
	readdataM,
	readdataW
	);

	flopr #(5) writeregflopW(
	clk,
	rst,
	writeregM,
	writeregW
	);

	mux2 #(32) mux_wd3(
	aluoutW,
	readdataW,
	memtoregW,
	resultW
	);

endmodule



