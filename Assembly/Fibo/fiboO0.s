	.file	"fibo.c"
	.text
	.globl	_fibo
	.def	_fibo;	.scl	2;	.type	32;	.endef
_fibo:
LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	cmpl	$0, 8(%ebp)
	jg	L2
	movl	$0, %eax
	jmp	L3
L2:
	cmpl	$1, 8(%ebp)
	jne	L4
	movl	$1, %eax
	jmp	L3
L4:
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	call	_fibo
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, (%esp)
	call	_fibo
	addl	%ebx, %eax
L3:
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "fibo of %ld is %ld\12\0"
LC2:
	.ascii "Elapsed: %lf\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	call	_clock
	movl	%eax, 56(%esp)
	movl	$1, 60(%esp)
	jmp	L6
L7:
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_fibo
	movl	%eax, 52(%esp)
	movl	52(%esp), %eax
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, 60(%esp)
L6:
	cmpl	$44, 60(%esp)
	jle	L7
	call	_clock
	movl	%eax, 48(%esp)
	movl	48(%esp), %eax
	subl	56(%esp), %eax
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fldl	LC1
	fdivrp	%st, %st(1)
	fstpl	40(%esp)
	fldl	40(%esp)
	fstpl	4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
	.align 8
LC1:
	.long	0
	.long	1083129856
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_clock;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
