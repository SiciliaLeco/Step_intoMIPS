`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/24 08:39:29
// Design Name: 
// Module Name: alu
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


module alu(
    input wire [31:0] num1,
    input wire [31:0] num2,
    input wire [2:0] op,
    output reg [31:0] result
    );

    always @(*) begin
        case(op)
            3'b000: result = num1 & num2;
            3'b001: result = num1 | num2;
            3'b010: result = num1 + num2;
            3'b110: result = num1 - num2;
            3'b100: result = num1 & ~num2;
            3'b101: result = num1 | ~num2;
            3'b111: result = (num1 < num2)? 1 : 0;
            default: result = 32'h00000000;
         endcase
     end
            
endmodule

