/** Register File ***/
// written by : Iliass Lasri
// This file is the register file module. It is responsible for storing the data in the registers and reading the data from the registers.

module register_file (
  input logic [4:0] raddr1,
  input logic [4:0] raddr2,
  input logic [4:0] waddr,
  input logic [31:0] wdata,
  input logic wen,
  output logic [31:0] rdata1,
  output logic [31:0] rdata2
);

logic [31:0] registers [31:0];

always_ff @(posedge clk) begin
    if (wen) begin
        registers[waddr] <= rdata2;
    end
end

assign rdata1 = registers[raddr1];
assign rdata2 = registers[raddr2];

endmodule