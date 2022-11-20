`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2022 15:16:17
// Design Name: 
// Module Name: threshold_ff_tb
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


module threshold_ff_tb;

logic rst; 
logic clk;

logic [7:0] threshold_out;
logic [7:0] threshold_data_in;
logic enable_threshold;

threshold_ff threshold_ff(threshold_data_in,
                          clk,
                          rst,
                          enable_threshold,
                          threshold_out);
initial begin
    clk = 0;
    rst = 0;
    #10
    threshold_data_in <= "00000001";
    enable_threshold  <= "1";
    #10
    enable_threshold  <= "0";
    threshold_data_in <= "00011001";
    #10
    threshold_data_in <= "00011111";
    #10
    enable_threshold  <= "1";
    #10 
    enable_threshold  <= "0";
    rst <= "1";


end

always 
   #10 clk <= ~clk;
   


endmodule
