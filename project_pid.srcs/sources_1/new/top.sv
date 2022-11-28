`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2022 11:47:23
// Design Name: 
// Module Name: top
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


module top(
    input  logic rst, 
    input  logic clk,
    output logic running, 
    output logic power_on, 
    output logic ready
    );
    
logic [7:0] threshold_out;
logic [7:0] threshold_data_in;
logic enable_threshold;
logic [3:0] tolerance_out;
logic [3:0] tolerance_data_in;
logic enable_tolerance;
logic comparator_out;

logic [7:0] temperature_out;
logic vn_in;
logic vp_in;
logic [15:0] voltage_out;

threshold_ff threshold_ff(threshold_data_in,
                          clk,
                          rst,
                          enable_threshold,
                          threshold_out);
                              
tolerance_ff tolerance_ff(tolerance_data_in,
                          clk,
                          rst,
                          enable_tolerance,
                          tolerance_out);

comparator comparator(clk,
                     threshold_out,
                     tolerance_out,
                     temperature_out,
                      comparator_out);                          

xadc xadc(
    clk,
    vn_in,
    vp_in,
    voltage_out);

endmodule
