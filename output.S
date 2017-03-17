SRA x31,x0,x0
SLT x10,x31,x0
SW x0,0(x0)
SLL x12,x31,x0
LW x26,0(x0)
OR x24,x10,x10
SLL x15,x24,x0
LB x8,0(x0)
SB x24,0(x0)
SRA x5,x12,x12
OR x21,x0,x15
SRA x21,x21,x0
LBU x9,0(x0)
SRAI x19,x5,29
SLTIU x9,x21,-245
SRL x12,x0,x15
BNE x15,x9,-16
li a7, 10
ecall
