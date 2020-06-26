`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/07 11:54:57
// Design Name: 
// Module Name: top
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


module top(
    input clk, rst,
    output jump, branch, alusrc, memwrite, regwrite, regdst, memtoreg,
	output [2:0] alu_control,
	output [31:0] instr
    );
    
//    wire [31:0] instr;
    wire [31:0] dina;
    wire [31:0] pcout;
    wire ena;
    wire wea = 3'b0;
    wire rsta_busy;
//    assign pcaddr = pcout;
    
    pc prog_count(
	.clk(clk),
	.rst(rst),
	.pc_out(pcout), 
	.inst_ce(ena)
	);

    blk_mem_gen_0 ins_ram (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [3 : 0] wea
  .addra(pcout[7:0]>>2),  // input wire [7 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(instr)  // output wire [31 : 0] douta
);  
//blk_mem_gen_0 your_instance_name (
//  .clka(clk),            // input wire clka
//  .rsta(rst),            // input wire rsta
//  .ena(ena),              // input wire ena
//  .wea(wea),              // input wire [3 : 0] wea
//  .addra(pcout),          // input wire [31 : 0] addra
//  .dina(dina),            // input wire [31 : 0] dina
//  .douta(instr),          // output wire [31 : 0] douta
//  .rsta_busy(rsta_busy)  // output wire rsta_busy
//);
    
    controller controller(
	.inst(instr),
	.jump(jump), .branch(branch), .alusrc(alusrc), 
	.memwrite(memwrite), .regwrite(regwrite), .regdst(regdst), .memtoreg(memtoreg),
	.alu_control(alu_control)
	);
    
endmodule
