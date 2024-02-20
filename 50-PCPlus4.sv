/**** Incrementing PC by 4 ****/
module PCPlus4(
    input wire [31:0] PC,
    output wire [31:0] PCPlus4
    );

    assign PCPlus4 = PC + 4;

endmodule