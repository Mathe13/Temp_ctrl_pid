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
always @(posedge clk) begin
    if(temperature > (threshold+tolerance))begin
        turn_on <= 0;
    end
    else if(temperature < (threshold-tolerance)) begin
        turn_on <= 1;
    end
end
    
    
endmodule
