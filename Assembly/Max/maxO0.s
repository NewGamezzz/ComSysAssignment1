	.file	"max.c"
	.text
	.globl	_max1
	.def	_max1;	.scl	2;	.type	32;	.endef
_max1:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	cmpl	%edx, %eax
	jge	L3
	movl	%edx, %eax
L3:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_max2
	.def	_max2;	.scl	2;	.type	32;	.endef
_max2:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	L5
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	L6
L5:
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
L6:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
