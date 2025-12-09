	.file	"HW4.c"
	.text
	.globl	matmult
	.type	matmult, @function
matmult:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L7:
	movl	$0, -8(%rbp)
	jmp	.L3
.L6:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	imull	%eax, %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	addl	%esi, %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -4(%rbp)
.L4:
	cmpl	$2, -4(%rbp)
	jle	.L5
	addl	$1, -8(%rbp)
.L3:
	cmpl	$2, -8(%rbp)
	jle	.L6
	addl	$1, -12(%rbp)
.L2:
	cmpl	$2, -12(%rbp)
	jle	.L7
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	matmult, .-matmult
	.globl	matadd
	.type	matadd, @function
matadd:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L9
.L12:
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	addl	%esi, %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -4(%rbp)
.L10:
	cmpl	$2, -4(%rbp)
	jle	.L11
	addl	$1, -8(%rbp)
.L9:
	cmpl	$2, -8(%rbp)
	jle	.L12
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	matadd, .-matadd
	.section	.rodata
.LC0:
	.string	"%c = [%d %d %d]\n"
.LC1:
	.string	"    |%d %d %d|\n"
.LC2:
	.string	"    [%d %d %d]\n\n"
	.text
	.globl	printMatrix
	.type	printMatrix, @function
printMatrix:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movsbl	-4(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	printMatrix, .-printMatrix
	.section	.rodata
.LC3:
	.string	"        [%d %d %d]\n"
.LC4:
	.string	"A*B+A = |%d %d %d|\n"
	.text
	.globl	printResult
	.type	printResult, @function
printResult:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	printResult, .-printResult
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -192(%rbp)
	movl	$2, -188(%rbp)
	movl	$3, -184(%rbp)
	movl	$4, -180(%rbp)
	movl	$5, -176(%rbp)
	movl	$6, -172(%rbp)
	movl	$7, -168(%rbp)
	movl	$8, -164(%rbp)
	movl	$9, -160(%rbp)
	movl	$1, -144(%rbp)
	movl	$2, -140(%rbp)
	movl	$0, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$4, -128(%rbp)
	movl	$5, -124(%rbp)
	movl	$0, -120(%rbp)
	movl	$6, -116(%rbp)
	movl	$7, -112(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matmult
	leaq	-192(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matadd
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$65, %edi
	call	printMatrix
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$66, %edi
	call	printMatrix
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	printResult
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
