`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/30 23:47:42
// Design Name: 
// Module Name: tops
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


module tops(
    input wire clk, rst,
    output wire jump, branch, alusrc, memwrite, regwrite, regdst, memtoreg,
    output [2:0] alu_control,
    output wire [6:0]seg,
    output wire [7:0]ans
    );
    
    wire [31:0] pcaddr;
    integer cnt; //count
    reg clk_1hz;
    
    always@(posedge clk) begin
        if(cnt == 32'd100000000) begin
            cnt <= 1'b0;
            clk_1hz <= ~clk_1hz;
        end
        else cnt <= cnt + 1'b1;
    end
    
    top top(
    .clk(clk_1hz), 
    .rst(rst),
    .jump(jump), 
    .branch(branch), 
    .alusrc(alusrc), 
    .memwrite(memwrite), 
    .regwrite(regwrite),
    .regdst(regdst), 
    .memtoreg(memtoreg),
	.alu_control(alu_control),
	.instr(pcaddr));
	
	display display(
	.clk(clk),
    .rst(rst),
    .s(pcaddr),
    .seg(seg),
    .ans(ans));

endmodule
