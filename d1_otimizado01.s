	.file	"decode1.c"
	.text
	.globl	decode
	.type	decode, @function
decode:
.LFB22:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	movl	24(%esp), %eax
	movl	(%ecx), %esi
	.cfi_offset 7, -8
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	(%edx), %ebx
	movl	(%eax), %edi
	movl	%edi, (%ecx)
	movl	%esi, (%edx)
	movl	%ebx, (%eax)
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE22:
	.size	decode, .-decode
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a = %d, b = %d, c = %d\n"
	.text
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
	subl	$48, %esp
	movl	$3, 36(%esp)
	movl	$5, 40(%esp)
	movl	$9, 44(%esp)
	leal	44(%esp), %eax
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	call	decode
	movl	44(%esp), %eax
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	36(%esp), %eax
	movl	%eax, 8(%esp)
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
