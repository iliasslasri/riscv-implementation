module pc (
    input logic clk,
    input logic Branch,
    input logic Jump,
    input logic Zero,
    input logic [31:0] PC,
    input logic [31:0] ImmExt,
    input logic [31:0] inst
);

    always_ff @(posedge clk)
        if ((Branch & Zero) | Jump)
            PC <= PC + ImmExt;
        else
            PC <= PC + 4;
    
endmodule