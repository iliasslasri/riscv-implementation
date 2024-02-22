/**** Sign Extender ****/
// See Table 7.5 in the book, This module immplement the sign extender and select the ImmSrc
// instr decoder

module sign_extender #(parameter WIDTH = 16) (
    input logic [31:0] instr,
    input logic [1:0] ImmSrc,
    output logic [31:0] Imm
);

    always_comb
        case(ImmSrc)
            2'b00: Imm = {{20{instr[31]}}, instr[31:20]}; // I-type
            2'b01: Imm = {{20{instr[31]}}, instr[31:25], instr[11:7]}; // S-type
            2'b10: Imm = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0}; // B-type
            2'b11: Imm = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0}; // J-type
            default: Imm = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx; // ????
        endcase
endmodule