/**** This file is tha ALU module. It is responsible for performing the arithmetic and logical operations. ****/
/// Written by: Iliass Lasri

module ALU(
    input [31:0] SrcA,
    input [31:0] SrcB,
    input [2:0] ALUControl, // ALUControl will come from the ALU Decoder file 00-aludec.sv
    output reg [31:0] ALUResult,
    output reg Zero
);

always_comb
    case(ALUControl)
        3'b000: ALUResult = SrcA + SrcB; // addition
        3'b001: ALUResult = SrcA - SrcB; // subtraction
        3'b010: ALUResult = SrcA & SrcB; // and
        3'b011: ALUResult = SrcA | SrcB; // or
        3'b101: ALUResult = (SrcA < SrcB) ? 32'b1 : 32'b0; // set less then
        default: ALUResult = '0; // ????
    endcase

assign Zero = (ALUResult == 0) ? 1 : 0;
endmodule