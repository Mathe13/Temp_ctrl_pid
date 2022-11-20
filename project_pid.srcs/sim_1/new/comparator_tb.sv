`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2022 16:31:35
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb;

logic clk;
logic [3:0]tolerance_out;
logic [7:0]threshold_out;
logic [7:0]temperature_out;
logic comparator_out;

comparator comparator(clk,
                     threshold_out,
                     tolerance_out,
                     temperature_out,
                     comparator_out);    

initial begin
    clk = 0;
    #10
    temperature_out = "00000000"; 
    #10
    temperature_out = "11111111"; 




end

always 
   #10 clk <= ~clk;
   


endmodule
