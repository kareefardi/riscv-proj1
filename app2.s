
app.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <.text>:
   0:	40005fb3          	sra	t6,zero,zero
   4:	000fa533          	sltz	a0,t6
   8:	00002023          	sw	zero,0(zero) # 0x0
   c:	000f9633          	sll	a2,t6,zero
  10:	00002d03          	lw	s10,0(zero) # 0x0
  14:	00a56c33          	or	s8,a0,a0
  18:	000c17b3          	sll	a5,s8,zero
  1c:	00000403          	lb	s0,0(zero) # 0x0
  20:	01800023          	sb	s8,0(zero) # 0x0
  24:	40c652b3          	sra	t0,a2,a2
  28:	00f06ab3          	or	s5,zero,a5
  2c:	400adab3          	sra	s5,s5,zero
  30:	00004483          	lbu	s1,0(zero) # 0x0
  34:	41d2d993          	srai	s3,t0,0x1d
  38:	f0bab493          	sltiu	s1,s5,-245
  3c:	00f05633          	srl	a2,zero,a5
  40:	00978463          	beq	a5,s1,0x48
  44:	0000006f          	j	0x44
  48:	00a00893          	li	a7,10
  4c:	00000073          	ecall
