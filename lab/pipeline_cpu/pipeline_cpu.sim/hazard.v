`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/20 20:48:09
// Design Name: 
// Module Name: hazard
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

//冒险的解决
module hazard(
    input wire [4:0] rsD,rtD,
    input wire branchD,
    input wire [4:0] writeregM,
    input wire regwriteM,memtoregM,
    input wire [4:0] writeregW,
    input wire regwriteW,
    input wire [4:0] rsE,rtE,writeregE,
    input wire regwriteE,memtoregE,
    output wire stallF,
    output wire forwardaD,forwardbD,stallD,
    output reg [1:0]forwardaE,forwardbE,
    output wire flushE
    );


wire lwstallD,branchstallD;

////// 前推 ///

assign forwardaD = (rsD !=0 & rsD == writeregM & regwriteM);
assign forwardbD = (rtD !=0 & rtD == writeregM & regwriteM);

// forwardaE = 2'b00;
//         forwadrbE = 2'b00;

//         if(rsE != 0) begin
//             if(rsE == writeregM & regwriteM) begin
//                 forwardaE = 2'b10;
//             end else if(rsE == writeregW & regwriteW) begin
//                 forwardaE = 2'b01;
//             end
//         end

//         if(rtE != 0) begin
//             if(rtE == writeregM & regwriteM) begin
//                 forwardbE = 2'b10;
//             end else if(rtE == writeregW & regwriteW) begin
//                 forwardbE = 2'b01;
//             end
//         end

//////数据冒险/////////////
always@(*)
begin
    forwardaE = 2'b00; 
    forwardbE = 2'b00;
    if (rsE != 0)
        if ((rsE == writeregM) & regwriteM)     
            forwardaE = 2'b10;
        
        else if (rsE == writeregW & regwriteW)      
            forwardaE = 2'b01;
        
    if (rtE != 0)
        if (rtE == writeregM & regwriteM)   
            forwardbE = 2'b10;
        
        else if (rtE == writeregW & regwriteW)  
            forwardbE = 2'b01;
end

///流水线暂停（in lw and branch instruction /////////////

assign  lwstallD = memtoregE & (rtE == rsD | rtE == rtD);
assign  branchstallD = (branchD & regwriteE & (writeregE == rsD | writeregE == rtD)) |
             (branchD & memtoregM &(writeregM == rsD | writeregM == rtD));

assign  stallD = lwstallD | branchstallD;
assign  stallF = stallD;
assign  flushE = stallD;

endmodule

