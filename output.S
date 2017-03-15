LUI x2,294142

BLT x2,x2,48

XOR x4,x0,x0

BLT x0,x0,56

BNE x4,x4,-12

OR x22,x2,x2

AND x29,x0,x2

LW x16,0(x0)

SLT x12,x0,x4

XOR x31,x4,x4

SLT x11,x22,x2

BLTU x4,x2,-8

ANDI x19,x29,1947

ANDI x12,x2,1

SRLI x19,x0,16

AUIPC x25,473321

SLL x5,x22,x25

LB x21,0(x0)

SRA x25,x4,x19

BNE x0,x31,-44

li a7, 10
ecall
