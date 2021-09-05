	.file	"fibo.c"
	.text
	.p2align 4,,15
	.globl	_fibo
	.def	_fibo;	.scl	2;	.type	32;	.endef
_fibo:
LFB14:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	testl	%ebx, %ebx
	jle	L6
	cmpl	$1, %ebx
	je	L7
	xorl	%esi, %esi
	jmp	L4
	.p2align 4,,10
############ Decrease Call ###
L5:
	cmpl	$1, %ebx
	je	L11
L4:
	leal	-1(%ebx), %eax
	movl	%eax, (%esp)
	call	_fibo
	addl	%eax, %esi
	subl	$2, %ebx
	jne	L5
##############################
L1:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L11:
	.cfi_restore_state
	addl	$1, %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L6:
	.cfi_restore_state
	xorl	%esi, %esi
	jmp	L1
L7:
	movl	$1, %esi
	jmp	L1
	.cfi_endproc
LFE14:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "fibo of %ld is %ld\12\0"
LC2:
	.ascii "Elapsed: %lf\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$1, %ebx
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	call	_clock
	movl	%eax, %esi
	.p2align 4,,10
L13:
	movl	%ebx, (%esp)
	call	_fibo
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	addl	$1, %ebx
	movl	$LC0, (%esp)
	call	_printf
	cmpl	$45, %ebx
	jne	L13
	call	_clock
	subl	%esi, %eax
	movl	$LC2, (%esp)
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fdivs	LC1
	fstpl	4(%esp)
	call	_printf
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
	.align 4
LC1:
	.long	1148846080
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_clock;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
