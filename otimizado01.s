	.file	"exemplo.c"
	.text
	.globl	troca
	.type	troca, @function
troca:
.LFB22:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	(%edx), %eax
	movl	8(%esp), %ecx
	movl	%ecx, (%edx)
	ret
	.cfi_endproc
.LFE22:
	.size	troca, .-troca
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a = %d, b = %d\n"
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
	subl	$32, %esp
	movl	$4, 28(%esp)
	movl	$3, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	troca
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
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
