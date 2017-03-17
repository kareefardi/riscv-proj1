#! /bin/sh
# change -o0 to -o2 for better compiler optimization
/opt/riscv5/riscv32-unknown-elf/bin/as output.S -march=rv32g -o app.elf
/opt/riscv5/riscv32-unknown-elf/bin/objcopy -O verilog app.elf app.v
/opt/riscv5/riscv32-unknown-elf/bin/objcopy -O binary app.elf app2.bin
/opt/riscv5/riscv32-unknown-elf/bin/objdump -d app.elf > app2.s
