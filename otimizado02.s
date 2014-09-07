	.file	"exemplo.c"
	.text
	.p2align 4,,15
	.globl	troca
	.type	troca, @function
troca:
.LFB22:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %ecx
	movl	(%edx), %eax
	movl	%ecx, (%edx)
	ret
	.cfi_endproc
.LFE22:
	.size	troca, .-troca
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a = %d, b = %d\n"
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
	subl	$16, %esp
	movl	$4, 12(%esp)
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
