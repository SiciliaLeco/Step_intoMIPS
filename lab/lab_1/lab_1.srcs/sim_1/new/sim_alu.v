`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 19:50:49
// Design Name: 
// Module Name: sim_alu
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


module sim_alu();
reg [31:0] num1;
reg [31:0] num2;
reg [2:0] op;
wire [31:0] data;

alu myalu(num1, num2, op, data); 

initial 
begin
    num1 = 8'b00000010;
    num2 = 32'h01;
    op = 3'b000;
    #10
    num1 = 8'b11111111;
    op = 3'b001;
    #10
    num1 = 8'b11111110;
    op = 3'b010;
    #10
    num1 = 8'b10101010;
    op = 3'b011;
    #10
    num1 = 32'b1000_0000_1000_0000_1000_0000_1000_0000;
    op = 3'b100;
    #10
    num1 = 8'b10000001;
    op = 3'b101;
    
end

endmodule
