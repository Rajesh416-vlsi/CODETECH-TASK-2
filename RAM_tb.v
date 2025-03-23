`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 21:35:55
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb();
reg clk;
reg [3:0]data_in;
reg [3:0]address;
reg write_en;
wire [3:0]data_out;
RAM_4bit a1( clk, write_en,data_in,address, data_out);
initial begin
 clk=0;
 end
 always #10 clk=~clk;
 initial begin
 $monitor($time,"clk=%d,write_en=%d,address=%h,data_in=%h,data_out=%h",clk,write_en,address,data_in,data_out);
 write_en=0;
 address=0;
 data_in=0;
 #10 write_en=1;
 

    address = 4'h0; data_in = 4'hE;
#6  address = 4'h1; data_in = 4'hC; 
#6  address = 4'h2; data_in = 4'hB; 
#6  address = 4'h3; data_in = 4'hD; 
#6  address = 4'h4; data_in = 4'h9; 
#6  address = 4'h5; data_in = 4'hF; 
#6  address = 4'h6; data_in = 4'h4; 
#6  address = 4'h7; data_in = 4'h6;
#6  address = 4'h8; data_in = 4'h3;  
#6  address = 4'h9; data_in = 4'h1; 
#6  address = 4'hA; data_in = 4'h7; 
#6  address = 4'hB; data_in = 4'h3; 
#6  address = 4'hC; data_in = 4'h8; 
#6  address = 4'hD; data_in = 4'hA; 
#6  address = 4'hE; data_in = 4'hF; 
#6  address = 4'hF; data_in = 4'h0; 
    write_en=0;
    address = 4'h0; 
#10 $display("Read addr 0: data_out = %h", data_out);
    address = 4'hA;
#10 $display("Read addr 1: data_out = %h", data_out);
    address = 4'h4; 
#10 $display("Read addr 2: data_out = %h", data_out);
    address = 4'h6;
#10 $display("Read addr 3: data_out = %h", data_out);
    address = 4'h9;
#10 $display("Read addr 4: data_out = %h", data_out);
    address = 4'h5;
#10 $display("Read addr 5: data_out = %h", data_out);
    write_en = 1;
    address = 4'h1; data_in = 4'h1; 
    #10;
    address = 4'h3; data_in = 4'h2;
     #10;
    address = 4'h8; data_in = 4'hB;
     #10;
    write_en = 0;
    address = 4'h3; #10; $display("Read addr 3 : data_out = %h", data_out);
  $stop;  
  end              
endmodule
