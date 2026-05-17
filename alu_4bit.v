`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 20:13:59
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] operation,
    output reg [3:0] Y,
    output reg carry
    );
    
    always @(*) begin
         carry =0;
    case(operation)
         3'b000:begin
                    {carry,Y}=A+B;
                end
         3'b001:begin
                {carry,Y}=A-B;
                end
         3'b010: begin
                     Y = A & B;
                 end
         
         3'b011: begin
                     Y = A | B;
                 end
         
         3'b100: begin
                     Y = A ^ B;
                 end
         
         3'b101: begin
                     Y = ~A;
                 end
         
         3'b110: begin
                     Y = A << 1;
                 end
         
         3'b111: begin
                     Y = A >> 1;
                 end
      default:begin
           Y= 4'b0000;
      end
  endcase
    
end
endmodule
