`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2022 20:51:21
// Design Name: 
// Module Name: xadc
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


module xadc(
    input clk,
    input vn_in,
    input vp_in,
    output [15:0] voltage_out
    );
    
logic diff_voltage;

always @(posedge clk) begin
    diff_voltage <= vp_in - vn_in;
    
end

endmodule