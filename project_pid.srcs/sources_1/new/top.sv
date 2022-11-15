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
    
logic [7:0] trheshold_out;
logic [7:0] trheshold_data_in;
logic [3:0] tolerance_out;
logic [3:0] tolerance_data_in;
logic comparator_out;

logic [7:0] temperature_out;



always_ff @(posedge clk) begin

end
    
threshold_ff threshold_ff(trheshold_data_in,
                          clk,
                          rst,
                          threshold_out);
                              
tolerance_ff tolerance_ff(tolerance_data_in,
                          clk,
                          rst,
                          tolerance_out);

comparator comparator(threshold_out,
                      tolerance_out,
                      temperature_out,
                      comparator_out);                          

endmodule
