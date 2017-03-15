// file: MEM.v
// author: @kareefardi

`timescale 1ns/1ns

module MEM (
// mem module used to model inst and data memory in a single unit
    input [31:0] address, dataIn,
    input clk,
    input rst,
    input wEn,
    output [31:0] memOut
);

reg [31 : 0] ram [31 : 0];
integer i;

reg [7 : 0] ram_read [127 : 0];

initial begin
    // ram[0] = 32'b00000000001000000000010100010011; // addi a0, zero, 2
    // ram[1] = 32'h00200593; //93 05 15 00 addi 93 05 20 00 
    // ram[2] = 32'h00B50633; //33 06 B5 00 add
    // ram[0] = 32'h00552583; //83 25 55 00  lw
    // ram[3] = 32'h00B522A3; //A3 22 B5 00 sw a1, 5(a0)
    // ram[4] = 32'h00A58363; //63 83 A5 00  beq
    // ram[0] = 32'h00C0056F; // 6F 05 C0 00 jal
    // ram[0] = 32'h1E0F1517; //17 15 0F 1E AUIPC a0, 123121
    // ram[0] = 32'h1E0F1537; //37 15 0F 1E lui
    // ram[0] = 32'h07058567; //67 85 05 07  jalr
    // ram[0] = 32'h00A582A3; //A3 82 A5 00 sb
    // ram[0] = 32'h0055C503; // 03 C5 55 00   lbu
    //ram[9] = 32'b10000000000000000000000000000010;
    // $monitor("mem[9] %d KONBOOLAAAAAA", ram[4]);
     $readmemh("app.v", ram_read);

end
//sequential logic to model writing to memory
always @(posedge clk)
        if (wEn) begin
            ram_read[address + 3] <= dataIn[31 : 24];
            ram_read[address + 2] <= dataIn[23 : 16];
            ram_read[address + 1] <= dataIn[15 : 8];
            ram_read[address] <= dataIn[7 : 0];
            end
//combinational logic to read from memory
assign memOut = {ram_read[address + 3], ram_read[address + 2], ram_read[address + 1], ram_read[address]};
endmodule
