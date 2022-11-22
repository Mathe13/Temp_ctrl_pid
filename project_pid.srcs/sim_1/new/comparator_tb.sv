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
    threshold_out   = 8'b10100; /*20*/
    tolerance_out   = 4'b1010;  /*10*/
    temperature_out = 8'b11110;; /*30*/
    #20
    temperature_out = 8'b1; /*23*/
    #30
    temperature_out = 8'b111; /*7*/
    #20
    temperature_out = 8'b11110;; /*30*/
    tolerance_out   = 4'b0010;  /*2*/
    #20
    threshold_out   = 8'b11110; /*30*/





end

always 
   #10 clk <= ~clk;
   


endmodule
