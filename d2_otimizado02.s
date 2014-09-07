	.file	"decode2.c"
	.text
	.p2align 4,,15
	.globl	decode
	.type	decode, @function
decode:
.LFB22:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	20(%esp), %edx
	movl	%esi, 4(%esp)
	movl	12(%esp), %ecx
	movl	16(%esp), %eax
	movl	%ebx, (%esp)
	movl	(%edx), %esi
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	(%ecx), %ebx
	movl	%esi, (%ecx)
	movl	(%eax), %ecx
	movl	4(%esp), %esi
	movl	%ecx, (%edx)
	movl	%ebx, (%eax)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE22:
	.size	decode, .-decode
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a = %d, b = %d, c = %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	movl	$2, 16(%esp)
	movl	$1, 12(%esp)
	movl	$3, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
