	.file	"fibo.c"
	.text
	.p2align 4,,15
	.globl	_fibo
	.def	_fibo;	.scl	2;	.type	32;	.endef
_fibo:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	movl	144(%esp), %eax
	testl	%eax, %eax
	jle	L38
	cmpl	$1, 144(%esp)
	je	L2
	movl	144(%esp), %eax
	subl	$1, %eax
	movl	%eax, 64(%esp)
	movl	144(%esp), %eax
	movl	$0, 144(%esp)
L4:
	movl	64(%esp), %ecx
	cmpl	$1, %ecx
	movl	%ecx, 48(%esp)
	je	L76
	subl	$2, %eax
	movl	$0, 48(%esp)
	movl	%eax, 88(%esp)
	movl	%eax, 68(%esp)
	movl	64(%esp), %eax
L7:
	movl	68(%esp), %ecx
	cmpl	$1, %ecx
	movl	%ecx, 52(%esp)
	je	L77
	subl	$2, %eax
	movl	$0, 52(%esp)
	movl	%eax, 84(%esp)
	movl	%eax, 72(%esp)
	movl	68(%esp), %eax
L10:
	movl	72(%esp), %edx
	cmpl	$1, %edx
	movl	%edx, 56(%esp)
	je	L78
	subl	$2, %eax
	movl	$0, 56(%esp)
	movl	%eax, 92(%esp)
	movl	%eax, 76(%esp)
	movl	72(%esp), %eax
L13:
	movl	76(%esp), %ecx
	cmpl	$1, %ecx
	movl	%ecx, 60(%esp)
	je	L79
	subl	$2, %eax
	movl	$0, 60(%esp)
	movl	%eax, 96(%esp)
	movl	%eax, 80(%esp)
	movl	76(%esp), %eax
L16:
	movl	80(%esp), %edx
	cmpl	$1, %edx
	movl	%edx, 44(%esp)
	je	L80
	subl	$2, %eax
	movl	$0, 44(%esp)
	movl	%eax, 100(%esp)
	movl	%eax, 108(%esp)
L19:
	movl	108(%esp), %ecx
	cmpl	$1, %ecx
	movl	%ecx, %eax
	je	L81
	leal	-2(%edx), %ecx
	movl	$0, 40(%esp)
	movl	%ecx, 104(%esp)
	movl	%ecx, 36(%esp)
L22:
	movl	36(%esp), %edx
	cmpl	$1, %edx
	movl	%edx, %esi
	je	L82
	subl	$2, %eax
	movl	$0, 28(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, %edi
	.p2align 4,,10
L25:
	cmpl	$1, %edi
	movl	%edi, %ebp
	je	L41
	xorl	%ebx, %ebx
	jmp	L28
	.p2align 4,,10
L29:
	cmpl	$1, %ebp
	je	L83
L28:
	leal	-1(%ebp), %eax
	movl	%eax, (%esp)
	call	_fibo
	addl	%eax, %ebx
	subl	$2, %ebp
	jne	L29
L26:
	addl	%ebx, 28(%esp)
	subl	$2, %esi
	je	L84
L30:
	subl	$2, %edi
	cmpl	$1, %esi
	jne	L25
	addl	$1, 28(%esp)
	movl	32(%esp), %edx
L23:
	movl	28(%esp), %esi
	addl	%esi, 40(%esp)
	testl	%edx, %edx
	movl	%edx, %eax
	je	L85
L31:
	subl	$2, 36(%esp)
	cmpl	$1, 32(%esp)
	jne	L22
	addl	$1, 40(%esp)
	movl	104(%esp), %ecx
L20:
	movl	40(%esp), %esi
	addl	%esi, 44(%esp)
	testl	%ecx, %ecx
	movl	%ecx, %edx
	je	L17
	subl	$2, 108(%esp)
	cmpl	$1, 104(%esp)
	jne	L19
	addl	$1, 44(%esp)
L17:
	movl	100(%esp), %ecx
	movl	44(%esp), %esi
	addl	%esi, 60(%esp)
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	L14
	subl	$2, 80(%esp)
	cmpl	$1, 100(%esp)
	jne	L16
	addl	$1, 60(%esp)
L14:
	movl	96(%esp), %ecx
	movl	60(%esp), %esi
	addl	%esi, 56(%esp)
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	L11
	subl	$2, 76(%esp)
	cmpl	$1, 96(%esp)
	jne	L13
	addl	$1, 56(%esp)
	jmp	L11
	.p2align 4,,10
L83:
	addl	$1, %ebx
	addl	%ebx, 28(%esp)
	subl	$2, %esi
	jne	L30
L84:
	movl	32(%esp), %edx
	movl	28(%esp), %esi
	addl	%esi, 40(%esp)
	testl	%edx, %edx
	movl	%edx, %eax
	jne	L31
L85:
	movl	104(%esp), %ecx
	jmp	L20
L41:
	movl	$1, %ebx
	jmp	L26
L82:
	subl	$2, %eax
	movl	$1, 28(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, %edx
	jmp	L23
L38:
	movl	$0, 144(%esp)
L2:
	movl	144(%esp), %eax
	addl	$124, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L81:
	.cfi_restore_state
	leal	-2(%edx), %eax
	movl	$1, 40(%esp)
	movl	%eax, 104(%esp)
	movl	%eax, %ecx
	jmp	L20
L80:
	subl	$2, %eax
	movl	%eax, 100(%esp)
	jmp	L17
L79:
	subl	$2, %eax
	movl	%eax, 96(%esp)
	jmp	L14
L76:
	subl	$2, %eax
	movl	%eax, 88(%esp)
L5:
	movl	88(%esp), %edx
	movl	48(%esp), %ecx
	addl	%ecx, 144(%esp)
	testl	%edx, %edx
	movl	%edx, %eax
	je	L2
	subl	$2, 64(%esp)
	cmpl	$1, 88(%esp)
	jne	L4
	addl	$1, 144(%esp)
	jmp	L2
L78:
	subl	$2, %eax
	movl	%eax, 92(%esp)
L11:
	movl	92(%esp), %ecx
	movl	56(%esp), %esi
	addl	%esi, 52(%esp)
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	L8
	subl	$2, 72(%esp)
	cmpl	$1, 92(%esp)
	jne	L10
	addl	$1, 52(%esp)
	jmp	L8
L77:
	subl	$2, %eax
	movl	%eax, 84(%esp)
L8:
	movl	84(%esp), %ecx
	movl	52(%esp), %esi
	addl	%esi, 48(%esp)
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	L5
	subl	$2, 68(%esp)
	cmpl	$1, 84(%esp)
	jne	L7
	addl	$1, 48(%esp)
	jmp	L5
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
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	___main
	call	_clock
	movl	$2, 28(%esp)
	movl	%eax, 24(%esp)
	movl	28(%esp), %eax
	leal	-1(%eax), %edi
	cmpl	$1, %edi
	je	L92
	.p2align 4,,10
L100:
	movl	%edi, %esi
	xorl	%ebx, %ebx
	jmp	L89
	.p2align 4,,10
L90:
	cmpl	$1, %esi
	je	L88
L89:
	leal	-1(%esi), %eax
	movl	%eax, (%esp)
	call	_fibo
	addl	%eax, %ebx
	subl	$2, %esi
	jne	L90
L88:
	addl	%esi, %ebx
	movl	%edi, 4(%esp)
	movl	$LC0, (%esp)
	movl	%ebx, 8(%esp)
	call	_printf
	cmpl	$45, 28(%esp)
	je	L91
L94:
	addl	$1, 28(%esp)
	movl	28(%esp), %eax
	leal	-1(%eax), %edi
	cmpl	$1, %edi
	jne	L100
L92:
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	jmp	L94
L91:
	call	_clock
	subl	24(%esp), %eax
	movl	$LC2, (%esp)
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fdivs	LC1
	fstpl	4(%esp)
	call	_printf
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
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
