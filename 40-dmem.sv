/*** Data memory **/
module dmem #(parameter N = 8) (
    input wire clk,
    input wire we,
    input wire [N:0] addr,
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