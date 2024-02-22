/** instruction memory ***/
module imem #(parameter N = 5) (
    input wire clk,
    input wire we,
    input wire [N-1:0] addr,
    input wire [31:0] data_in,
    output wire [31:0] data_out
);
    reg [2**N-1:0] mem [0:31];

    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= data_in;
        end
        data_out <= mem[addr];
    end
endmodule