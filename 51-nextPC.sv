/*** Computing next PC ***/
module NextPC(
    input wire [31:0] PC,
    input wire [31:0] ImmExt,
    output wire [31:0] nextPC
    );

    assign nextPC = PC + ImmExt;

endmodule