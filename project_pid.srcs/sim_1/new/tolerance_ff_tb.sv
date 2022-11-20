`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2022 14:09:47
// Design Name: 
// Module Name: tolerance_ff_tb
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


module tolerance_ff_tb;

logic rst; 
logic clk;

logic [3:0] tolerance_out;
logic [3:0] tolerance_data_in;
logic enable_tolerance;

tolerance_ff tolerance_ff(tolerance_data_in,
                          clk,
                          rst,
                          enable_tolerance,
                          tolerance_out);
initial begin
    clk = 0;
    rst = 0;
    #10
    tolerance_data_in <= "0001";
    enable_tolerance  <= "1";
    #10
    enable_tolerance  <= "0";
    tolerance_data_in <= "0000";
    #10
    tolerance_data_in <= "0001";
    #10
    enable_tolerance  <= "1";


end

always 
   #10 clk <= ~clk;
   


endmodule
