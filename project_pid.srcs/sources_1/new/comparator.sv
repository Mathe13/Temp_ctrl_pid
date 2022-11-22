`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2022 11:06:16
// Design Name: 
// Module Name: comparator
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


module comparator(
    input clk,
    input  [7:0] threshold,
    input  [3:0] tolerance,
    input  [7:0] temperature,
    output reg turn_on
    );
logic [7:0]max_lim;
logic [7:0]min_lim;
always @(posedge clk) begin
     max_lim <= threshold + tolerance;
     min_lim <= threshold - tolerance;

    if(temperature > max_lim)begin
        turn_on <= 0;
    end
    else if(temperature < min_lim) begin
        turn_on <= 1;
    end
end
    
    
endmodule
