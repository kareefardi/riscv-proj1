
app.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	e5010113          	addi	sp,sp,-432
   4:	1a812623          	sw	s0,428(sp)
   8:	1b010413          	addi	s0,sp,432
   c:	fe042623          	sw	zero,-20(s0)
  10:	0280006f          	j	38 <main+0x38>
  14:	fec42783          	lw	a5,-20(s0)
  18:	00279793          	slli	a5,a5,0x2
  1c:	ff040713          	addi	a4,s0,-16
  20:	00f707b3          	add	a5,a4,a5
  24:	fec42703          	lw	a4,-20(s0)
  28:	e6e7a023          	sw	a4,-416(a5)
  2c:	fec42783          	lw	a5,-20(s0)
  30:	00178793          	addi	a5,a5,1
  34:	fef42623          	sw	a5,-20(s0)
  38:	fec42703          	lw	a4,-20(s0)
  3c:	fe442783          	lw	a5,-28(s0)
  40:	fcf74ae3          	blt	a4,a5,14 <main+0x14>
  44:	fe042623          	sw	zero,-20(s0)
  48:	0cc0006f          	j	114 <main+0x114>
  4c:	fe042423          	sw	zero,-24(s0)
  50:	0a00006f          	j	f0 <main+0xf0>
  54:	fe842783          	lw	a5,-24(s0)
  58:	00279793          	slli	a5,a5,0x2
  5c:	ff040713          	addi	a4,s0,-16
  60:	00f707b3          	add	a5,a4,a5
  64:	e607a703          	lw	a4,-416(a5)
  68:	fe842783          	lw	a5,-24(s0)
  6c:	00178793          	addi	a5,a5,1
  70:	00279793          	slli	a5,a5,0x2
  74:	ff040693          	addi	a3,s0,-16
  78:	00f687b3          	add	a5,a3,a5
  7c:	e607a783          	lw	a5,-416(a5)
  80:	06e7d263          	ble	a4,a5,e4 <main+0xe4>
  84:	fe842783          	lw	a5,-24(s0)
  88:	00279793          	slli	a5,a5,0x2
  8c:	ff040713          	addi	a4,s0,-16
  90:	00f707b3          	add	a5,a4,a5
  94:	e607a783          	lw	a5,-416(a5)
  98:	fef42023          	sw	a5,-32(s0)
  9c:	fe842783          	lw	a5,-24(s0)
  a0:	00178793          	addi	a5,a5,1
  a4:	00279793          	slli	a5,a5,0x2
  a8:	ff040713          	addi	a4,s0,-16
  ac:	00f707b3          	add	a5,a4,a5
  b0:	e607a703          	lw	a4,-416(a5)
  b4:	fe842783          	lw	a5,-24(s0)
  b8:	00279793          	slli	a5,a5,0x2
  bc:	ff040693          	addi	a3,s0,-16
  c0:	00f687b3          	add	a5,a3,a5
  c4:	e6e7a023          	sw	a4,-416(a5)
  c8:	fe842783          	lw	a5,-24(s0)
  cc:	00178793          	addi	a5,a5,1
  d0:	00279793          	slli	a5,a5,0x2
  d4:	ff040713          	addi	a4,s0,-16
  d8:	00f707b3          	add	a5,a4,a5
  dc:	fe042703          	lw	a4,-32(s0)
  e0:	e6e7a023          	sw	a4,-416(a5)
  e4:	fe842783          	lw	a5,-24(s0)
  e8:	00178793          	addi	a5,a5,1
  ec:	fef42423          	sw	a5,-24(s0)
  f0:	fe442703          	lw	a4,-28(s0)
  f4:	fec42783          	lw	a5,-20(s0)
  f8:	40f707b3          	sub	a5,a4,a5
  fc:	fff78793          	addi	a5,a5,-1
 100:	fe842703          	lw	a4,-24(s0)
 104:	f4f748e3          	blt	a4,a5,54 <main+0x54>
 108:	fec42783          	lw	a5,-20(s0)
 10c:	00178793          	addi	a5,a5,1
 110:	fef42623          	sw	a5,-20(s0)
 114:	fe442783          	lw	a5,-28(s0)
 118:	fff78793          	addi	a5,a5,-1
 11c:	fec42703          	lw	a4,-20(s0)
 120:	f2f746e3          	blt	a4,a5,4c <main+0x4c>
 124:	00000793          	li	a5,0
 128:	00078513          	mv	a0,a5
 12c:	1ac12403          	lw	s0,428(sp)
 130:	1b010113          	addi	sp,sp,432
 134:	00008067          	ret

00000138 <_start>:
 138:	00010137          	lui	sp,0x10
 13c:	ffc10113          	addi	sp,sp,-4 # fffc <_fstack>
 140:	ec1ff0ef          	jal	ra,0 <main>

00000144 <loopf>:
 144:	0000006f          	j	144 <loopf>
