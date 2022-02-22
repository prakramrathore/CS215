	.file	1 "fib_loop.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	_Z12current_timev
$LFB8512 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12current_timev
	.type	_Z12current_timev, @function
_Z12current_timev:
	.frame	$sp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,40($sp)
	.cfi_offset 16, -8
	lw	$16,%got(__stack_chk_guard)($28)
	lw	$25,%call16(timespec_get)($28)
	lw	$2,0($16)
	.cprestore	16
	addiu	$4,$sp,28
	sw	$31,44($sp)
	.cfi_offset 31, -4
	li	$5,1			# 0x1
	sw	$2,36($sp)
	.reloc	1f,R_MIPS_JALR,timespec_get
1:	jalr	$25
	nop

	lui	$2,%hi($LC0)
	lwc1	$f2,%lo($LC0+4)($2)
	lwc1	$f0,28($sp)
	lwc1	$f3,%lo($LC0)($2)
	cvt.d.w	$f0,$f0
	mul.d	$f0,$f0,$f2
	lwc1	$f2,32($sp)
	lw	$4,36($sp)
	cvt.d.w	$f2,$f2
	lw	$3,0($16)
	add.d	$f0,$f0,$f2
	lw	$28,16($sp)
	.set	macro
	trunc.w.d $f0,$f0,$6
	.set	nomacro
	bne	$4,$3,$L5
	nop

	lw	$31,44($sp)
	lw	$16,40($sp)
	mfc1	$2,$f0
	jr	$31
	addiu	$sp,$sp,48

	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.cfi_restore 16
	.cfi_restore 31
$L5:
	.cfi_restore_state
	lw	$25,%call16(__stack_chk_fail)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	_Z12current_timev
	.cfi_endproc
$LFE8512:
	.size	_Z12current_timev, .-_Z12current_timev
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC1:
	.ascii	" \000"
	.align	2
$LC2:
	.ascii	"Time taken(in ns): \000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
$LFB8514 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,72,$31		# vars= 8, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	.cfi_def_cfa_offset 72
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,64($sp)
	sw	$22,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	16
	sw	$31,68($sp)
	.cfi_offset 23, -8
	.cfi_offset 22, -12
	.cfi_offset 21, -16
	.cfi_offset 20, -20
	.cfi_offset 19, -24
	.cfi_offset 18, -28
	.cfi_offset 17, -32
	.cfi_offset 16, -36
	.cfi_offset 31, -4
	.option	pic0
	jal	_Z12current_timev
	.option	pic2
	lui	$19,%hi($LC1)

	lw	$28,16($sp)
	nop
	lw	$17,%got(_ZSt4cout)($28)
	move	$18,$2
	li	$23,50			# 0x32
	move	$21,$0
	li	$16,1			# 0x1
	move	$20,$0
	move	$22,$0
	addiu	$19,$19,%lo($LC1)
$L7:
	lw	$25,%call16(_ZNSo9_M_insertIyEERSoT_)($28)
	move	$7,$22
	move	$6,$20
	.reloc	1f,R_MIPS_JALR,_ZNSo9_M_insertIyEERSoT_
1:	jalr	$25
	move	$4,$17

	lw	$28,16($sp)
	move	$5,$19
	lw	$25,%call16(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i)($28)
	move	$4,$2
	li	$6,1			# 0x1
	.reloc	1f,R_MIPS_JALR,_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
1:	jalr	$25
	sw	$2,28($sp)

	lw	$28,16($sp)
	lw	$4,28($sp)
	lw	$25,%call16(_ZNSo9_M_insertIyEERSoT_)($28)
	move	$6,$21
	.reloc	1f,R_MIPS_JALR,_ZNSo9_M_insertIyEERSoT_
1:	jalr	$25
	move	$7,$16

	lw	$28,16($sp)
	li	$6,1			# 0x1
	lw	$25,%call16(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i)($28)
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
1:	jalr	$25
	move	$4,$2

	addu	$3,$22,$16
	sltu	$2,$3,$22
	addu	$20,$20,$21
	move	$22,$3
	addu	$20,$2,$20
	addu	$3,$16,$3
	sltu	$16,$3,$16
	addu	$6,$21,$20
	addiu	$23,$23,-1
	addu	$21,$16,$6
	lw	$28,16($sp)
	bne	$23,$0,$L7
	move	$16,$3

	.option	pic0
	jal	_Z12current_timev
	nop

	.option	pic2
	lw	$28,16($sp)
	nop
	lw	$25,%call16(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
	lw	$4,%got(_ZSt4cout)($28)
	.reloc	1f,R_MIPS_JALR,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
1:	jalr	$25
	move	$16,$2

	lw	$28,16($sp)
	lui	$5,%hi($LC2)
	lw	$25,%call16(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i)($28)
	li	$6,19			# 0x13
	move	$4,$2
	sw	$2,28($sp)
	.reloc	1f,R_MIPS_JALR,_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
1:	jalr	$25
	addiu	$5,$5,%lo($LC2)

	lw	$28,16($sp)
	lw	$4,28($sp)
	lw	$25,%call16(_ZNSo9_M_insertIlEERSoT_)($28)
	nop
	.reloc	1f,R_MIPS_JALR,_ZNSo9_M_insertIlEERSoT_
1:	jalr	$25
	subu	$5,$16,$18

	lw	$31,68($sp)
	lw	$23,64($sp)
	lw	$22,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	move	$2,$0
	jr	$31
	addiu	$sp,$sp,72

	.cfi_def_cfa_offset 0
	.cfi_restore 16
	.cfi_restore 17
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE8514:
	.size	main, .-main
	.align	2
$LFB9791 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_GLOBAL__sub_I__Z12current_timev
	.type	_GLOBAL__sub_I__Z12current_timev, @function
_GLOBAL__sub_I__Z12current_timev:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(_ZNSt8ios_base4InitC1Ev)($28)
	sw	$16,24($sp)
	.cfi_offset 16, -8
	lui	$16,%hi(_ZStL8__ioinit)
	sw	$31,28($sp)
	.cfi_offset 31, -4
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,_ZNSt8ios_base4InitC1Ev
1:	jalr	$25
	addiu	$4,$16,%lo(_ZStL8__ioinit)

	lw	$28,16($sp)
	lw	$31,28($sp)
	lui	$6,%hi(__dso_handle)
	addiu	$5,$16,%lo(_ZStL8__ioinit)
	lw	$16,24($sp)
	lw	$4,%got(_ZNSt8ios_base4InitD1Ev)($28)
	lw	$25,%call16(__cxa_atexit)($28)
	addiu	$6,$6,%lo(__dso_handle)
	.cfi_restore 16
	.cfi_restore 31
	.reloc	1f,R_MIPS_JALR,__cxa_atexit
1:	jr	$25
	addiu	$sp,$sp,32

	.cfi_def_cfa_offset 0
	.set	macro
	.set	reorder
	.end	_GLOBAL__sub_I__Z12current_timev
	.cfi_endproc
$LFE9791:
	.size	_GLOBAL__sub_I__Z12current_timev, .-_GLOBAL__sub_I__Z12current_timev
	.section	.ctors,"aw",@progbits
	.align	2
	.word	_GLOBAL__sub_I__Z12current_timev
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC0:
	.word	1104006501
	.word	0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1) 10.3.0"
	.section	.note.GNU-stack,"",@progbits
