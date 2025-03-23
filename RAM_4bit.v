`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 21:19:14
// Design Name: 
// Module Name: RAM_4bit
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


module RAM_4bit(input clk,input write_en,input[3:0] data_in,
                input [3:0] address,output reg [3:0] data_out);
                reg [3:0]ram_block[15:0];
                always @(posedge clk)
                begin
                if(write_en)
                ram_block[address]<=data_in;
                else
                data_out<=ram_block[address];
                end
endmodule
