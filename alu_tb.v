`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2026 11:26:07
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] operation;
wire [3:0] Y;

// DUT (your ALU)
alu dut (
    .A(A),
    .B(B),
    .operation(operation),
    .Y(Y)
);

initial begin
    $monitor("A=%b B=%b operation=%b Y=%b", A, B, operation, Y);

    // Fix inputs
    A = 4'b1010;   // 10
    B = 4'b0011;   // 3

    // ---- Test different operations ----

    // ADD: 10 + 3 = 13 ? 1101
    operation = 3'b000;
    #10;

    // SUB: 10 - 3 = 7 ? 0111
    operation = 3'b001;
    #10;

    // AND: 1010 & 0011 = 0010
    operation = 3'b010;
    #10;

    // OR: 1010 | 0011 = 1011
    operation = 3'b011;
    #10;

    // XOR: 1010 ^ 0011 = 1001
    operation = 3'b100;
    #10;

    $finish;
end

endmodule
