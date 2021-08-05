	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	_stbi_failure_reason            ## -- Begin function stbi_failure_reason
	.p2align	4, 0x90
_stbi_failure_reason:                   ## @stbi_failure_reason
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_stbi__g_failure_reason@TLVP(%rip), %rdi
	callq	*(%rdi)
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_image_free                ## -- Begin function stbi_image_free
	.p2align	4, 0x90
_stbi_image_free:                       ## @stbi_image_free
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_set_flip_vertically_on_load ## -- Begin function stbi_set_flip_vertically_on_load
	.p2align	4, 0x90
_stbi_set_flip_vertically_on_load:      ## @stbi_set_flip_vertically_on_load
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, _stbi__vertically_flip_on_load_global(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_set_flip_vertically_on_load_thread ## -- Begin function stbi_set_flip_vertically_on_load_thread
	.p2align	4, 0x90
_stbi_set_flip_vertically_on_load_thread: ## @stbi_set_flip_vertically_on_load_thread
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	_stbi__vertically_flip_on_load_local@TLVP(%rip), %rdi
	movl	%eax, -8(%rbp)                  ## 4-byte Spill
	callq	*(%rdi)
	movl	-8(%rbp), %ecx                  ## 4-byte Reload
	movl	%ecx, (%rax)
	movq	_stbi__vertically_flip_on_load_set@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	$1, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load                      ## -- Begin function stbi_load
	.p2align	4, 0x90
_stbi_load:                             ## @stbi_load
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_stbi__fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	LBB4_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -8(%rbp)
	jmp	LBB4_3
LBB4_2:
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	_stbi_load_from_file
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	_fclose
	movq	-64(%rbp), %rcx
	movq	%rcx, -8(%rbp)
LBB4_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__fopen
_stbi__fopen:                           ## @stbi__fopen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_fopen
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__err
_stbi__err:                             ## @stbi__err
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	_stbi__g_failure_reason@TLVP(%rip), %rdi
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	movq	%rcx, -24(%rbp)                 ## 8-byte Spill
	callq	*(%rdi)
	movq	-24(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, (%rax)
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load_from_file            ## -- Begin function stbi_load_from_file
	.p2align	4, 0x90
_stbi_load_from_file:                   ## @stbi_load_from_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movl	%r8d, -268(%rbp)
	movq	-240(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_file
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movl	-268(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__load_and_postprocess_8bit
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	je	LBB7_2
## %bb.1:
	xorl	%eax, %eax
	movq	-240(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	subq	%rdx, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	subl	%ecx, %eax
	movslq	%eax, %rsi
	movl	$1, %edx
	callq	_fseek
LBB7_2:
	movq	-280(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB7_4
## %bb.3:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB7_4:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__start_file
_stbi__start_file:                      ## @stbi__start_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	leaq	_stbi__stdio_callbacks(%rip), %rsi
	movq	%rax, %rdx
	callq	_stbi__start_callbacks
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__load_and_postprocess_8bit
_stbi__load_and_postprocess_8bit:       ## @stbi__load_and_postprocess_8bit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	leaq	-56(%rbp), %r9
	movl	$8, (%rsp)
	callq	_stbi__load_main
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	LBB9_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB9_20
LBB9_2:
	cmpl	$8, -56(%rbp)
	movb	$1, %al
	movb	%al, -69(%rbp)                  ## 1-byte Spill
	je	LBB9_4
## %bb.3:
	cmpl	$16, -56(%rbp)
	sete	%al
	movb	%al, -69(%rbp)                  ## 1-byte Spill
LBB9_4:
	movb	-69(%rbp), %al                  ## 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	cmpq	$0, %rdx
	je	LBB9_6
## %bb.5:
	leaq	L___func__.stbi__load_and_postprocess_8bit(%rip), %rdi
	leaq	L_.str.12(%rip), %rsi
	leaq	L_.str.13(%rip), %rcx
	movl	$797, %edx                      ## imm = 0x31D
	callq	___assert_rtn
LBB9_6:
	jmp	LBB9_7
LBB9_7:
	cmpl	$8, -56(%rbp)
	je	LBB9_12
## %bb.8:
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	cmpl	$0, -44(%rbp)
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	movl	%esi, -84(%rbp)                 ## 4-byte Spill
	movl	%edx, -88(%rbp)                 ## 4-byte Spill
	jne	LBB9_10
## %bb.9:
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)                 ## 4-byte Spill
	jmp	LBB9_11
LBB9_10:
	movl	-44(%rbp), %eax
	movl	%eax, -92(%rbp)                 ## 4-byte Spill
LBB9_11:
	movl	-92(%rbp), %eax                 ## 4-byte Reload
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movl	-84(%rbp), %esi                 ## 4-byte Reload
	movl	-88(%rbp), %edx                 ## 4-byte Reload
	movl	%eax, %ecx
	callq	_stbi__convert_16_to_8
	movq	%rax, -64(%rbp)
	movl	$8, -56(%rbp)
LBB9_12:
	movq	_stbi__vertically_flip_on_load_set@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB9_14
## %bb.13:
	movq	_stbi__vertically_flip_on_load_local@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB9_15
	jmp	LBB9_19
LBB9_14:
	cmpl	$0, _stbi__vertically_flip_on_load_global(%rip)
	je	LBB9_19
LBB9_15:
	cmpl	$0, -44(%rbp)
	je	LBB9_17
## %bb.16:
	movl	-44(%rbp), %eax
	movl	%eax, -96(%rbp)                 ## 4-byte Spill
	jmp	LBB9_18
LBB9_17:
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)                 ## 4-byte Spill
LBB9_18:
	movl	-96(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movslq	-68(%rbp), %rcx
	shlq	$0, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	callq	_stbi__vertical_flip
LBB9_19:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB9_20:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load_from_file_16         ## -- Begin function stbi_load_from_file_16
	.p2align	4, 0x90
_stbi_load_from_file_16:                ## @stbi_load_from_file_16
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movl	%r8d, -268(%rbp)
	movq	-240(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_file
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movl	-268(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__load_and_postprocess_16bit
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	je	LBB10_2
## %bb.1:
	xorl	%eax, %eax
	movq	-240(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	subq	%rdx, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	subl	%ecx, %eax
	movslq	%eax, %rsi
	movl	$1, %edx
	callq	_fseek
LBB10_2:
	movq	-280(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB10_4
## %bb.3:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB10_4:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__load_and_postprocess_16bit
_stbi__load_and_postprocess_16bit:      ## @stbi__load_and_postprocess_16bit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	leaq	-56(%rbp), %r9
	movl	$16, (%rsp)
	callq	_stbi__load_main
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	LBB11_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB11_20
LBB11_2:
	cmpl	$8, -56(%rbp)
	movb	$1, %al
	movb	%al, -69(%rbp)                  ## 1-byte Spill
	je	LBB11_4
## %bb.3:
	cmpl	$16, -56(%rbp)
	sete	%al
	movb	%al, -69(%rbp)                  ## 1-byte Spill
LBB11_4:
	movb	-69(%rbp), %al                  ## 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	cmpq	$0, %rdx
	je	LBB11_6
## %bb.5:
	leaq	L___func__.stbi__load_and_postprocess_16bit(%rip), %rdi
	leaq	L_.str.12(%rip), %rsi
	leaq	L_.str.13(%rip), %rcx
	movl	$823, %edx                      ## imm = 0x337
	callq	___assert_rtn
LBB11_6:
	jmp	LBB11_7
LBB11_7:
	cmpl	$16, -56(%rbp)
	je	LBB11_12
## %bb.8:
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	cmpl	$0, -44(%rbp)
	movq	%rdi, -80(%rbp)                 ## 8-byte Spill
	movl	%esi, -84(%rbp)                 ## 4-byte Spill
	movl	%edx, -88(%rbp)                 ## 4-byte Spill
	jne	LBB11_10
## %bb.9:
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)                 ## 4-byte Spill
	jmp	LBB11_11
LBB11_10:
	movl	-44(%rbp), %eax
	movl	%eax, -92(%rbp)                 ## 4-byte Spill
LBB11_11:
	movl	-92(%rbp), %eax                 ## 4-byte Reload
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movl	-84(%rbp), %esi                 ## 4-byte Reload
	movl	-88(%rbp), %edx                 ## 4-byte Reload
	movl	%eax, %ecx
	callq	_stbi__convert_8_to_16
	movq	%rax, -64(%rbp)
	movl	$16, -56(%rbp)
LBB11_12:
	movq	_stbi__vertically_flip_on_load_set@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB11_14
## %bb.13:
	movq	_stbi__vertically_flip_on_load_local@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB11_15
	jmp	LBB11_19
LBB11_14:
	cmpl	$0, _stbi__vertically_flip_on_load_global(%rip)
	je	LBB11_19
LBB11_15:
	cmpl	$0, -44(%rbp)
	je	LBB11_17
## %bb.16:
	movl	-44(%rbp), %eax
	movl	%eax, -96(%rbp)                 ## 4-byte Spill
	jmp	LBB11_18
LBB11_17:
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)                 ## 4-byte Spill
LBB11_18:
	movl	-96(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movslq	-68(%rbp), %rcx
	shlq	$1, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	callq	_stbi__vertical_flip
LBB11_19:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB11_20:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load_16                   ## -- Begin function stbi_load_16
	.p2align	4, 0x90
_stbi_load_16:                          ## @stbi_load_16
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_stbi__fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	LBB12_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -8(%rbp)
	jmp	LBB12_3
LBB12_2:
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	_stbi_load_from_file_16
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	_fclose
	movq	-64(%rbp), %rcx
	movq	%rcx, -8(%rbp)
LBB12_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load_16_from_memory       ## -- Begin function stbi_load_16_from_memory
	.p2align	4, 0x90
_stbi_load_16_from_memory:              ## @stbi_load_16_from_memory
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movl	%esi, -244(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movl	%r9d, -276(%rbp)
	movq	-240(%rbp), %rsi
	movl	-244(%rbp), %edx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_mem
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movl	-276(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__load_and_postprocess_16bit
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB13_2
## %bb.1:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB13_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__start_mem
_stbi__start_mem:                       ## @stbi__start_mem
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load_16_from_callbacks    ## -- Begin function stbi_load_16_from_callbacks
	.p2align	4, 0x90
_stbi_load_16_from_callbacks:           ## @stbi_load_16_from_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movl	%r9d, -276(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_callbacks
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movl	-276(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__load_and_postprocess_16bit
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB15_2
## %bb.1:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB15_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__start_callbacks
_stbi__start_callbacks:                 ## @stbi__start_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 24(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movl	$128, 52(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rdi
	callq	_stbi__refill_buffer
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load_from_memory          ## -- Begin function stbi_load_from_memory
	.p2align	4, 0x90
_stbi_load_from_memory:                 ## @stbi_load_from_memory
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movl	%esi, -244(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movl	%r9d, -276(%rbp)
	movq	-240(%rbp), %rsi
	movl	-244(%rbp), %edx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_mem
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movl	-276(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__load_and_postprocess_8bit
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB17_2
## %bb.1:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB17_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_load_from_callbacks       ## -- Begin function stbi_load_from_callbacks
	.p2align	4, 0x90
_stbi_load_from_callbacks:              ## @stbi_load_from_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movl	%r9d, -276(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_callbacks
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movl	-276(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__load_and_postprocess_8bit
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB18_2
## %bb.1:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB18_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_loadf_from_memory         ## -- Begin function stbi_loadf_from_memory
	.p2align	4, 0x90
_stbi_loadf_from_memory:                ## @stbi_loadf_from_memory
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movl	%esi, -244(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movl	%r9d, -276(%rbp)
	movq	-240(%rbp), %rsi
	movl	-244(%rbp), %edx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_mem
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movl	-276(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__loadf_main
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB19_2
## %bb.1:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB19_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__loadf_main
_stbi__loadf_main:                      ## @stbi__loadf_main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	_stbi__hdr_test
	cmpl	$0, %eax
	je	LBB20_4
## %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	leaq	-72(%rbp), %r9
	callq	_stbi__hdr_load
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	LBB20_3
## %bb.2:
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	_stbi__float_postprocess
LBB20_3:
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB20_5
LBB20_4:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	_stbi__load_and_postprocess_8bit
	movq	%rax, -56(%rbp)
	leaq	L_.str.14(%rip), %rdi
	callq	_stbi__err
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	cmpl	$0, %eax
	cmovneq	%rcx, %rcx
	movq	%rcx, -8(%rbp)
LBB20_5:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_loadf_from_callbacks      ## -- Begin function stbi_loadf_from_callbacks
	.p2align	4, 0x90
_stbi_loadf_from_callbacks:             ## @stbi_loadf_from_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movl	%r9d, -276(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_callbacks
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movl	-276(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__loadf_main
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jne	LBB21_2
## %bb.1:
	movq	-288(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB21_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_loadf                     ## -- Begin function stbi_loadf
	.p2align	4, 0x90
_stbi_loadf:                            ## @stbi_loadf
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_stbi__fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	LBB22_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -8(%rbp)
	jmp	LBB22_3
LBB22_2:
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	_stbi_loadf_from_file
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	callq	_fclose
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
LBB22_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_loadf_from_file           ## -- Begin function stbi_loadf_from_file
	.p2align	4, 0x90
_stbi_loadf_from_file:                  ## @stbi_loadf_from_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movl	%r8d, -268(%rbp)
	movq	-240(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_file
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movl	-268(%rbp), %r8d
	leaq	-232(%rbp), %rdi
	callq	_stbi__loadf_main
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -280(%rbp)                ## 8-byte Spill
	jne	LBB23_2
## %bb.1:
	movq	-280(%rbp), %rax                ## 8-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB23_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_hdr_from_memory        ## -- Begin function stbi_is_hdr_from_memory
	.p2align	4, 0x90
_stbi_is_hdr_from_memory:               ## @stbi_is_hdr_from_memory
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp                      ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movl	%esi, -244(%rbp)
	movq	-240(%rbp), %rsi
	movl	-244(%rbp), %edx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_mem
	leaq	-232(%rbp), %rdi
	callq	_stbi__hdr_test
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rcx
	movl	%eax, -248(%rbp)                ## 4-byte Spill
	jne	LBB24_2
## %bb.1:
	movl	-248(%rbp), %eax                ## 4-byte Reload
	addq	$256, %rsp                      ## imm = 0x100
	popq	%rbp
	retq
LBB24_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__hdr_test
_stbi__hdr_test:                        ## @stbi__hdr_test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	L_.str.58(%rip), %rsi
	callq	_stbi__hdr_test_core
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	_stbi__rewind
	cmpl	$0, -12(%rbp)
	jne	LBB25_2
## %bb.1:
	movq	-8(%rbp), %rdi
	leaq	L_.str.59(%rip), %rsi
	callq	_stbi__hdr_test_core
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	_stbi__rewind
LBB25_2:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_hdr                    ## -- Begin function stbi_is_hdr
	.p2align	4, 0x90
_stbi_is_hdr:                           ## @stbi_is_hdr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_stbi__fopen
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB26_2
## %bb.1:
	movq	-16(%rbp), %rdi
	callq	_stbi_is_hdr_from_file
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	_fclose
LBB26_2:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_hdr_from_file          ## -- Begin function stbi_is_hdr_from_file
	.p2align	4, 0x90
_stbi_is_hdr_from_file:                 ## @stbi_is_hdr_from_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp                      ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	_ftell
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_file
	leaq	-232(%rbp), %rdi
	callq	_stbi__hdr_test
	xorl	%edx, %edx
	movl	%eax, -252(%rbp)
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	_fseek
	movl	-252(%rbp), %ecx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rsi
	movl	%ecx, -256(%rbp)                ## 4-byte Spill
	jne	LBB27_2
## %bb.1:
	movl	-256(%rbp), %eax                ## 4-byte Reload
	addq	$256, %rsp                      ## imm = 0x100
	popq	%rbp
	retq
LBB27_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_hdr_from_callbacks     ## -- Begin function stbi_is_hdr_from_callbacks
	.p2align	4, 0x90
_stbi_is_hdr_from_callbacks:            ## @stbi_is_hdr_from_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp                      ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_callbacks
	leaq	-232(%rbp), %rdi
	callq	_stbi__hdr_test
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -252(%rbp)                ## 4-byte Spill
	jne	LBB28_2
## %bb.1:
	movl	-252(%rbp), %eax                ## 4-byte Reload
	addq	$256, %rsp                      ## imm = 0x100
	popq	%rbp
	retq
LBB28_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_ldr_to_hdr_gamma          ## -- Begin function stbi_ldr_to_hdr_gamma
	.p2align	4, 0x90
_stbi_ldr_to_hdr_gamma:                 ## @stbi_ldr_to_hdr_gamma
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, _stbi__l2h_gamma(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_ldr_to_hdr_scale          ## -- Begin function stbi_ldr_to_hdr_scale
	.p2align	4, 0x90
_stbi_ldr_to_hdr_scale:                 ## @stbi_ldr_to_hdr_scale
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, _stbi__l2h_scale(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function stbi_hdr_to_ldr_gamma
LCPI31_0:
	.long	0x3f800000                      ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_stbi_hdr_to_ldr_gamma
	.p2align	4, 0x90
_stbi_hdr_to_ldr_gamma:                 ## @stbi_hdr_to_ldr_gamma
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	LCPI31_0(%rip), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	divss	-4(%rbp), %xmm1
	movss	%xmm1, _stbi__h2l_gamma_i(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function stbi_hdr_to_ldr_scale
LCPI32_0:
	.long	0x3f800000                      ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_stbi_hdr_to_ldr_scale
	.p2align	4, 0x90
_stbi_hdr_to_ldr_scale:                 ## @stbi_hdr_to_ldr_scale
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	LCPI32_0(%rip), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	divss	-4(%rbp), %xmm1
	movss	%xmm1, _stbi__h2l_scale_i(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_info                      ## -- Begin function stbi_info
	.p2align	4, 0x90
_stbi_info:                             ## @stbi_info
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_stbi__fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB33_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB33_3
LBB33_2:
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_stbi_info_from_file
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	_fclose
	movl	-52(%rbp), %r8d
	movl	%r8d, -4(%rbp)
LBB33_3:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_info_from_file            ## -- Begin function stbi_info_from_file
	.p2align	4, 0x90
_stbi_info_from_file:                   ## @stbi_info_from_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	-240(%rbp), %rdi
	callq	_ftell
	movq	%rax, -280(%rbp)
	movq	-240(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_file
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-264(%rbp), %rcx
	leaq	-232(%rbp), %rdi
	callq	_stbi__info_main
	xorl	%edx, %edx
	movl	%eax, -268(%rbp)
	movq	-240(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	_fseek
	movl	-268(%rbp), %edx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rcx
	movl	%edx, -284(%rbp)                ## 4-byte Spill
	jne	LBB34_2
## %bb.1:
	movl	-284(%rbp), %eax                ## 4-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB34_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__info_main
_stbi__info_main:                       ## @stbi__info_main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_stbi__jpeg_info
	cmpl	$0, %eax
	je	LBB35_2
## %bb.1:
	movl	$1, -4(%rbp)
	jmp	LBB35_5
LBB35_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_stbi__hdr_info
	cmpl	$0, %eax
	je	LBB35_4
## %bb.3:
	movl	$1, -4(%rbp)
	jmp	LBB35_5
LBB35_4:
	leaq	L_.str.14(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
LBB35_5:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_16_bit                 ## -- Begin function stbi_is_16_bit
	.p2align	4, 0x90
_stbi_is_16_bit:                        ## @stbi_is_16_bit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_stbi__fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB36_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB36_3
LBB36_2:
	movq	-24(%rbp), %rdi
	callq	_stbi_is_16_bit_from_file
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	_fclose
	movl	-28(%rbp), %ecx
	movl	%ecx, -4(%rbp)
LBB36_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_16_bit_from_file       ## -- Begin function stbi_is_16_bit_from_file
	.p2align	4, 0x90
_stbi_is_16_bit_from_file:              ## @stbi_is_16_bit_from_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp                      ## imm = 0x110
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	_ftell
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_file
	leaq	-232(%rbp), %rdi
	callq	_stbi__is_16_main
	xorl	%edx, %edx
	movl	%eax, -244(%rbp)
	movq	-240(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	_fseek
	movl	-244(%rbp), %ecx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rsi
	movl	%ecx, -260(%rbp)                ## 4-byte Spill
	jne	LBB37_2
## %bb.1:
	movl	-260(%rbp), %eax                ## 4-byte Reload
	addq	$272, %rsp                      ## imm = 0x110
	popq	%rbp
	retq
LBB37_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__is_16_main
_stbi__is_16_main:                      ## @stbi__is_16_main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_info_from_memory          ## -- Begin function stbi_info_from_memory
	.p2align	4, 0x90
_stbi_info_from_memory:                 ## @stbi_info_from_memory
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movl	%esi, -244(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movq	-240(%rbp), %rsi
	movl	-244(%rbp), %edx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_mem
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	leaq	-232(%rbp), %rdi
	callq	_stbi__info_main
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -276(%rbp)                ## 4-byte Spill
	jne	LBB39_2
## %bb.1:
	movl	-276(%rbp), %eax                ## 4-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB39_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_info_from_callbacks       ## -- Begin function stbi_info_from_callbacks
	.p2align	4, 0x90
_stbi_info_from_callbacks:              ## @stbi_info_from_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -272(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_callbacks
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	leaq	-232(%rbp), %rdi
	callq	_stbi__info_main
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -276(%rbp)                ## 4-byte Spill
	jne	LBB40_2
## %bb.1:
	movl	-276(%rbp), %eax                ## 4-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB40_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_16_bit_from_memory     ## -- Begin function stbi_is_16_bit_from_memory
	.p2align	4, 0x90
_stbi_is_16_bit_from_memory:            ## @stbi_is_16_bit_from_memory
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp                      ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movl	%esi, -244(%rbp)
	movq	-240(%rbp), %rsi
	movl	-244(%rbp), %edx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_mem
	leaq	-232(%rbp), %rdi
	callq	_stbi__is_16_main
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rcx
	movl	%eax, -248(%rbp)                ## 4-byte Spill
	jne	LBB41_2
## %bb.1:
	movl	-248(%rbp), %eax                ## 4-byte Reload
	addq	$256, %rsp                      ## imm = 0x100
	popq	%rbp
	retq
LBB41_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_is_16_bit_from_callbacks  ## -- Begin function stbi_is_16_bit_from_callbacks
	.p2align	4, 0x90
_stbi_is_16_bit_from_callbacks:         ## @stbi_is_16_bit_from_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp                      ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdx
	leaq	-232(%rbp), %rdi
	callq	_stbi__start_callbacks
	leaq	-232(%rbp), %rdi
	callq	_stbi__is_16_main
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -252(%rbp)                ## 4-byte Spill
	jne	LBB42_2
## %bb.1:
	movl	-252(%rbp), %eax                ## 4-byte Reload
	addq	$256, %rsp                      ## imm = 0x100
	popq	%rbp
	retq
LBB42_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_flip_vertically_on_write  ## -- Begin function stbi_flip_vertically_on_write
	.p2align	4, 0x90
_stbi_flip_vertically_on_write:         ## @stbi_flip_vertically_on_write
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, _stbi__flip_vertically_on_write(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_write_hdr_to_func         ## -- Begin function stbi_write_hdr_to_func
	.p2align	4, 0x90
_stbi_write_hdr_to_func:                ## @stbi_write_hdr_to_func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	%r8d, -124(%rbp)
	movq	%r9, -136(%rbp)
	leaq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -144(%rbp)                ## 8-byte Spill
	movl	%eax, %esi
	movl	$88, %edx
	callq	_memset
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-144(%rbp), %rdi                ## 8-byte Reload
	callq	_stbi__start_write_callbacks
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movq	-136(%rbp), %r8
	leaq	-96(%rbp), %rdi
	callq	_stbi_write_hdr_core
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r8
	cmpq	%r8, %rdi
	movl	%eax, -148(%rbp)                ## 4-byte Spill
	jne	LBB44_2
## %bb.1:
	movl	-148(%rbp), %eax                ## 4-byte Reload
	addq	$160, %rsp
	popq	%rbp
	retq
LBB44_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__start_write_callbacks
_stbi__start_write_callbacks:           ## @stbi__start_write_callbacks
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi_write_hdr_core
_stbi_write_hdr_core:                   ## @stbi_write_hdr_core
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      ## imm = 0x160
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movl	%esi, -244(%rbp)
	movl	%edx, -248(%rbp)
	movl	%ecx, -252(%rbp)
	movq	%r8, -264(%rbp)
	cmpl	$0, -248(%rbp)
	jle	LBB46_3
## %bb.1:
	cmpl	$0, -244(%rbp)
	jle	LBB46_3
## %bb.2:
	cmpq	$0, -264(%rbp)
	jne	LBB46_4
LBB46_3:
	movl	$0, -228(%rbp)
	jmp	LBB46_12
LBB46_4:
	movl	-244(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	_malloc
	leaq	-224(%rbp), %rcx
	movq	%rax, -272(%rbp)
	movq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L___const.stbi_write_hdr_core.header(%rip), %rsi
	movl	$66, %edx
	movq	%rcx, -288(%rbp)                ## 8-byte Spill
	callq	_memcpy
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-288(%rbp), %rsi                ## 8-byte Reload
	movl	$65, %edx
	callq	*%rax
	xorl	%esi, %esi
	leaq	-144(%rbp), %rdi
	movl	-248(%rbp), %r8d
	movl	-244(%rbp), %r9d
	movl	$128, %edx
	leaq	L_.str.60(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	leaq	-144(%rbp), %rsi
	movl	%eax, -280(%rbp)
	movq	-240(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-240(%rbp), %rdx
	movq	8(%rdx), %rdi
	movl	-280(%rbp), %edx
	callq	*%rcx
	movl	$0, -276(%rbp)
LBB46_5:                                ## =>This Inner Loop Header: Depth=1
	movl	-276(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jge	LBB46_11
## %bb.6:                               ##   in Loop: Header=BB46_5 Depth=1
	movq	-240(%rbp), %rdi
	movl	-244(%rbp), %esi
	movl	-252(%rbp), %edx
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rax
	movl	-252(%rbp), %r8d
	imull	-244(%rbp), %r8d
	cmpl	$0, _stbi__flip_vertically_on_write(%rip)
	movq	%rdi, -296(%rbp)                ## 8-byte Spill
	movl	%esi, -300(%rbp)                ## 4-byte Spill
	movl	%edx, -304(%rbp)                ## 4-byte Spill
	movq	%rcx, -312(%rbp)                ## 8-byte Spill
	movq	%rax, -320(%rbp)                ## 8-byte Spill
	movl	%r8d, -324(%rbp)                ## 4-byte Spill
	je	LBB46_8
## %bb.7:                               ##   in Loop: Header=BB46_5 Depth=1
	movl	-248(%rbp), %eax
	subl	$1, %eax
	subl	-276(%rbp), %eax
	movl	%eax, -328(%rbp)                ## 4-byte Spill
	jmp	LBB46_9
LBB46_8:                                ##   in Loop: Header=BB46_5 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -328(%rbp)                ## 4-byte Spill
LBB46_9:                                ##   in Loop: Header=BB46_5 Depth=1
	movl	-328(%rbp), %eax                ## 4-byte Reload
	movl	-324(%rbp), %ecx                ## 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	movq	-320(%rbp), %rsi                ## 8-byte Reload
	addq	%rdx, %rsi
	movq	-296(%rbp), %rdi                ## 8-byte Reload
	movl	-300(%rbp), %eax                ## 4-byte Reload
	movq	%rsi, -336(%rbp)                ## 8-byte Spill
	movl	%eax, %esi
	movl	-304(%rbp), %edx                ## 4-byte Reload
	movq	-312(%rbp), %rcx                ## 8-byte Reload
	movq	-336(%rbp), %r8                 ## 8-byte Reload
	callq	_stbiw__write_hdr_scanline
## %bb.10:                              ##   in Loop: Header=BB46_5 Depth=1
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	LBB46_5
LBB46_11:
	movq	-272(%rbp), %rdi
	callq	_free
	movl	$1, -228(%rbp)
LBB46_12:
	movl	-228(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -340(%rbp)                ## 4-byte Spill
	jne	LBB46_14
## %bb.13:
	movl	-340(%rbp), %eax                ## 4-byte Reload
	addq	$352, %rsp                      ## imm = 0x160
	popq	%rbp
	retq
LBB46_14:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_write_hdr                 ## -- Begin function stbi_write_hdr
	.p2align	4, 0x90
_stbi_write_hdr:                        ## @stbi_write_hdr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movq	%rdi, -112(%rbp)
	movl	%esi, -116(%rbp)
	movl	%edx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movq	%r8, -136(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -152(%rbp)                ## 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %esi
	movl	$88, %edx
	callq	_memset
	movq	-112(%rbp), %rsi
	movq	-152(%rbp), %rdi                ## 8-byte Reload
	callq	_stbi__start_write_file
	cmpl	$0, %eax
	je	LBB47_2
## %bb.1:
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movq	-136(%rbp), %r8
	leaq	-96(%rbp), %rdi
	callq	_stbi_write_hdr_core
	movl	%eax, -140(%rbp)
	leaq	-96(%rbp), %rdi
	callq	_stbi__end_write_file
	movl	-140(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	LBB47_3
LBB47_2:
	movl	$0, -100(%rbp)
LBB47_3:
	movl	-100(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -156(%rbp)                ## 4-byte Spill
	jne	LBB47_5
## %bb.4:
	movl	-156(%rbp), %eax                ## 4-byte Reload
	addq	$160, %rsp
	popq	%rbp
	retq
LBB47_5:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__start_write_file
_stbi__start_write_file:                ## @stbi__start_write_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str.64(%rip), %rsi
	callq	_stbiw__fopen
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	leaq	_stbi__stdio_write(%rip), %rsi
	movq	%rax, %rdx
	callq	_stbi__start_write_callbacks
	cmpq	$0, -24(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__end_write_file
_stbi__end_write_file:                  ## @stbi__end_write_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_fclose
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_write_jpg_to_func         ## -- Begin function stbi_write_jpg_to_func
	.p2align	4, 0x90
_stbi_write_jpg_to_func:                ## @stbi_write_jpg_to_func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	16(%rbp), %eax
	xorl	%r10d, %r10d
	movq	___stack_chk_guard@GOTPCREL(%rip), %r11
	movq	(%r11), %r11
	movq	%r11, -8(%rbp)
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	%r8d, -124(%rbp)
	movq	%r9, -136(%rbp)
	leaq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -144(%rbp)                ## 8-byte Spill
	movl	%r10d, %esi
	movl	$88, %edx
	movl	%eax, -148(%rbp)                ## 4-byte Spill
	callq	_memset
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-144(%rbp), %rdi                ## 8-byte Reload
	callq	_stbi__start_write_callbacks
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movq	-136(%rbp), %r8
	movl	16(%rbp), %r9d
	leaq	-96(%rbp), %rdi
	callq	_stbi_write_jpg_core
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r8
	cmpq	%r8, %rdi
	movl	%eax, -152(%rbp)                ## 4-byte Spill
	jne	LBB50_2
## %bb.1:
	movl	-152(%rbp), %eax                ## 4-byte Reload
	addq	$160, %rsp
	popq	%rbp
	retq
LBB50_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function stbi_write_jpg_core
LCPI51_0:
	.long	0x3da685db                      ## float 0.0813099965
LCPI51_1:
	.long	0x3ed65e89                      ## float 0.418689996
LCPI51_2:
	.long	0x3f000000                      ## float 0.5
LCPI51_3:
	.long	0x3ea99ae9                      ## float 0.331259996
LCPI51_4:
	.long	0xbe2cca2e                      ## float -0.168740004
LCPI51_5:
	.long	0x43000000                      ## float 128
LCPI51_6:
	.long	0x3de978d5                      ## float 0.114
LCPI51_7:
	.long	0x3f1645a2                      ## float 0.587000012
LCPI51_8:
	.long	0x3e991687                      ## float 0.298999995
LCPI51_9:
	.long	0x3e800000                      ## float 0.25
LCPI51_10:
	.long	0x3f800000                      ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_stbi_write_jpg_core:                   ## @stbi_write_jpg_core
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	movl	$5552, %eax                     ## imm = 0x15B0
	callq	____chkstk_darwin
	subq	%rax, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%rdi, -5072(%rbp)
	movl	%esi, -5076(%rbp)
	movl	%edx, -5080(%rbp)
	movl	%ecx, -5084(%rbp)
	movq	%r8, -5096(%rbp)
	movl	%r9d, -5100(%rbp)
	cmpq	$0, -5096(%rbp)
	je	LBB51_5
## %bb.1:
	cmpl	$0, -5076(%rbp)
	je	LBB51_5
## %bb.2:
	cmpl	$0, -5080(%rbp)
	je	LBB51_5
## %bb.3:
	cmpl	$4, -5084(%rbp)
	jg	LBB51_5
## %bb.4:
	cmpl	$1, -5084(%rbp)
	jge	LBB51_6
LBB51_5:
	movl	$0, -5060(%rbp)
	jmp	LBB51_104
LBB51_6:
	cmpl	$0, -5100(%rbp)
	je	LBB51_8
## %bb.7:
	movl	-5100(%rbp), %eax
	movl	%eax, -5260(%rbp)               ## 4-byte Spill
	jmp	LBB51_9
LBB51_8:
	movl	$90, %eax
	movl	%eax, -5260(%rbp)               ## 4-byte Spill
	jmp	LBB51_9
LBB51_9:
	movl	-5260(%rbp), %eax               ## 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -5100(%rbp)
	movl	-5100(%rbp), %eax
	cmpl	$90, %eax
	movl	$1, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, -5120(%rbp)
	cmpl	$1, -5100(%rbp)
	jge	LBB51_11
## %bb.10:
	movl	$1, %eax
	movl	%eax, -5264(%rbp)               ## 4-byte Spill
	jmp	LBB51_15
LBB51_11:
	cmpl	$100, -5100(%rbp)
	jle	LBB51_13
## %bb.12:
	movl	$100, %eax
	movl	%eax, -5268(%rbp)               ## 4-byte Spill
	jmp	LBB51_14
LBB51_13:
	movl	-5100(%rbp), %eax
	movl	%eax, -5268(%rbp)               ## 4-byte Spill
LBB51_14:
	movl	-5268(%rbp), %eax               ## 4-byte Reload
	movl	%eax, -5264(%rbp)               ## 4-byte Spill
LBB51_15:
	movl	-5264(%rbp), %eax               ## 4-byte Reload
	movl	%eax, -5100(%rbp)
	cmpl	$50, -5100(%rbp)
	jge	LBB51_17
## %bb.16:
	movl	$5000, %eax                     ## imm = 0x1388
	cltd
	idivl	-5100(%rbp)
	movl	%eax, -5272(%rbp)               ## 4-byte Spill
	jmp	LBB51_18
LBB51_17:
	movl	-5100(%rbp), %eax
	shll	$1, %eax
	movl	$200, %ecx
	subl	%eax, %ecx
	movl	%ecx, -5272(%rbp)               ## 4-byte Spill
LBB51_18:
	movl	-5272(%rbp), %eax               ## 4-byte Reload
	movl	%eax, -5100(%rbp)
	movl	$0, -5112(%rbp)
LBB51_19:                               ## =>This Inner Loop Header: Depth=1
	cmpl	$64, -5112(%rbp)
	jge	LBB51_34
## %bb.20:                              ##   in Loop: Header=BB51_19 Depth=1
	movslq	-5112(%rbp), %rax
	leaq	_stbi_write_jpg_core.YQT(%rip), %rcx
	movl	(%rcx,%rax,4), %edx
	imull	-5100(%rbp), %edx
	addl	$50, %edx
	movl	%edx, %eax
	cltd
	movl	$100, %esi
	idivl	%esi
	movl	%eax, -5128(%rbp)
	cmpl	$1, -5128(%rbp)
	jge	LBB51_22
## %bb.21:                              ##   in Loop: Header=BB51_19 Depth=1
	movl	$1, %eax
	movl	%eax, -5276(%rbp)               ## 4-byte Spill
	jmp	LBB51_26
LBB51_22:                               ##   in Loop: Header=BB51_19 Depth=1
	cmpl	$255, -5128(%rbp)
	jle	LBB51_24
## %bb.23:                              ##   in Loop: Header=BB51_19 Depth=1
	movl	$255, %eax
	movl	%eax, -5280(%rbp)               ## 4-byte Spill
	jmp	LBB51_25
LBB51_24:                               ##   in Loop: Header=BB51_19 Depth=1
	movl	-5128(%rbp), %eax
	movl	%eax, -5280(%rbp)               ## 4-byte Spill
LBB51_25:                               ##   in Loop: Header=BB51_19 Depth=1
	movl	-5280(%rbp), %eax               ## 4-byte Reload
	movl	%eax, -5276(%rbp)               ## 4-byte Spill
LBB51_26:                               ##   in Loop: Header=BB51_19 Depth=1
	movl	-5276(%rbp), %eax               ## 4-byte Reload
                                        ## kill: def $al killed $al killed $eax
	movslq	-5112(%rbp), %rcx
	leaq	_stbiw__jpg_ZigZag(%rip), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movb	%al, -608(%rbp,%rcx)
	movslq	-5112(%rbp), %rcx
	leaq	_stbi_write_jpg_core.UVQT(%rip), %rdx
	movl	(%rdx,%rcx,4), %esi
	imull	-5100(%rbp), %esi
	addl	$50, %esi
	movl	%esi, %eax
	cltd
	movl	$100, %esi
	idivl	%esi
	movl	%eax, -5124(%rbp)
	cmpl	$1, -5124(%rbp)
	jge	LBB51_28
## %bb.27:                              ##   in Loop: Header=BB51_19 Depth=1
	movl	$1, %eax
	movl	%eax, -5284(%rbp)               ## 4-byte Spill
	jmp	LBB51_32
LBB51_28:                               ##   in Loop: Header=BB51_19 Depth=1
	cmpl	$255, -5124(%rbp)
	jle	LBB51_30
## %bb.29:                              ##   in Loop: Header=BB51_19 Depth=1
	movl	$255, %eax
	movl	%eax, -5288(%rbp)               ## 4-byte Spill
	jmp	LBB51_31
LBB51_30:                               ##   in Loop: Header=BB51_19 Depth=1
	movl	-5124(%rbp), %eax
	movl	%eax, -5288(%rbp)               ## 4-byte Spill
LBB51_31:                               ##   in Loop: Header=BB51_19 Depth=1
	movl	-5288(%rbp), %eax               ## 4-byte Reload
	movl	%eax, -5284(%rbp)               ## 4-byte Spill
LBB51_32:                               ##   in Loop: Header=BB51_19 Depth=1
	movl	-5284(%rbp), %eax               ## 4-byte Reload
                                        ## kill: def $al killed $al killed $eax
	movslq	-5112(%rbp), %rcx
	leaq	_stbiw__jpg_ZigZag(%rip), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movb	%al, -672(%rbp,%rcx)
## %bb.33:                              ##   in Loop: Header=BB51_19 Depth=1
	movl	-5112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5112(%rbp)
	jmp	LBB51_19
LBB51_34:
	movl	$0, -5104(%rbp)
	movl	$0, -5116(%rbp)
LBB51_35:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB51_37 Depth 2
	cmpl	$8, -5104(%rbp)
	jge	LBB51_42
## %bb.36:                              ##   in Loop: Header=BB51_35 Depth=1
	movl	$0, -5108(%rbp)
LBB51_37:                               ##   Parent Loop BB51_35 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$8, -5108(%rbp)
	jge	LBB51_40
## %bb.38:                              ##   in Loop: Header=BB51_37 Depth=2
	movss	LCPI51_10(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movslq	-5116(%rbp), %rax
	leaq	_stbiw__jpg_ZigZag(%rip), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movzbl	-608(%rbp,%rax), %edx
	cvtsi2ss	%edx, %xmm1
	movslq	-5104(%rbp), %rax
	leaq	_stbi_write_jpg_core.aasf(%rip), %rsi
	mulss	(%rsi,%rax,4), %xmm1
	movslq	-5108(%rbp), %rax
	mulss	(%rsi,%rax,4), %xmm1
	movaps	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	movslq	-5116(%rbp), %rax
	movss	%xmm2, -288(%rbp,%rax,4)
	movslq	-5116(%rbp), %rax
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movzbl	-672(%rbp,%rax), %edx
	cvtsi2ss	%edx, %xmm1
	movslq	-5104(%rbp), %rax
	mulss	(%rsi,%rax,4), %xmm1
	movslq	-5108(%rbp), %rax
	mulss	(%rsi,%rax,4), %xmm1
	divss	%xmm1, %xmm0
	movslq	-5116(%rbp), %rax
	movss	%xmm0, -544(%rbp,%rax,4)
## %bb.39:                              ##   in Loop: Header=BB51_37 Depth=2
	movl	-5108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5108(%rbp)
	movl	-5116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5116(%rbp)
	jmp	LBB51_37
LBB51_40:                               ##   in Loop: Header=BB51_35 Depth=1
	jmp	LBB51_41
LBB51_41:                               ##   in Loop: Header=BB51_35 Depth=1
	movl	-5104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5104(%rbp)
	jmp	LBB51_35
LBB51_42:
	movb	$-1, -704(%rbp)
	movb	$-64, -703(%rbp)
	movb	$0, -702(%rbp)
	movb	$17, -701(%rbp)
	movb	$8, -700(%rbp)
	movl	-5080(%rbp), %eax
	sarl	$8, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -699(%rbp)
	movl	-5080(%rbp), %ecx
	andl	$255, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movb	%cl, -698(%rbp)
	movl	-5076(%rbp), %edx
	sarl	$8, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movb	%dl, -697(%rbp)
	movl	-5076(%rbp), %esi
	andl	$255, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movb	%sil, -696(%rbp)
	movb	$3, -695(%rbp)
	movb	$1, -694(%rbp)
	movl	-5120(%rbp), %edi
	cmpl	$0, %edi
	movl	$34, %edi
	movl	$17, %r8d
	cmovnel	%edi, %r8d
                                        ## kill: def $r8b killed $r8b killed $r8d
	movb	%r8b, -693(%rbp)
	movb	$0, -692(%rbp)
	movb	$2, -691(%rbp)
	movb	$17, -690(%rbp)
	movb	$1, -689(%rbp)
	movb	$3, -688(%rbp)
	movb	$17, -687(%rbp)
	movb	$1, -686(%rbp)
	movb	$-1, -685(%rbp)
	movb	$-60, -684(%rbp)
	movb	$1, -683(%rbp)
	movb	$-94, -682(%rbp)
	movb	$0, -681(%rbp)
	movq	-5072(%rbp), %r9
	movq	(%r9), %r9
	movq	-5072(%rbp), %r10
	movq	8(%r10), %rdi
	leaq	_stbi_write_jpg_core.head0(%rip), %rsi
	movl	$25, %edx
	callq	*%r9
	leaq	-608(%rbp), %rsi
	movq	-5072(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-5072(%rbp), %r9
	movq	8(%r9), %r9
	movq	%rdi, -5296(%rbp)               ## 8-byte Spill
	movq	%r9, %rdi
	movl	$64, %edx
	movq	-5296(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	movq	-5072(%rbp), %rdi
	movl	$1, %esi
	callq	_stbiw__putc
	leaq	-672(%rbp), %rsi
	movq	-5072(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-5072(%rbp), %r9
	movq	8(%r9), %r9
	movq	%rdi, -5304(%rbp)               ## 8-byte Spill
	movq	%r9, %rdi
	movl	$64, %edx
	movq	-5304(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	leaq	-704(%rbp), %rsi
	movq	-5072(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-5072(%rbp), %r9
	movq	8(%r9), %r9
	movq	%rdi, -5312(%rbp)               ## 8-byte Spill
	movq	%r9, %rdi
	movl	$24, %edx
	movq	-5312(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	leaq	_stbi_write_jpg_core.std_dc_luminance_nrcodes(%rip), %rsi
	addq	$1, %rsi
	movq	-5072(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-5072(%rbp), %r9
	movq	8(%r9), %r9
	movq	%rdi, -5320(%rbp)               ## 8-byte Spill
	movq	%r9, %rdi
	movl	$16, %edx
	movq	-5320(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	movq	-5072(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-5072(%rbp), %rdi
	movq	8(%rdi), %rdi
	leaq	_stbi_write_jpg_core.std_dc_luminance_values(%rip), %r9
	movq	%rsi, -5328(%rbp)               ## 8-byte Spill
	movq	%r9, %rsi
	movl	$12, %edx
	movq	-5328(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	movq	-5072(%rbp), %rdi
	movl	$16, %esi
	callq	_stbiw__putc
	leaq	_stbi_write_jpg_core.std_ac_luminance_nrcodes(%rip), %rdi
	addq	$1, %rdi
	movq	-5072(%rbp), %r9
	movq	(%r9), %r9
	movq	-5072(%rbp), %r10
	movq	8(%r10), %r10
	movq	%rdi, -5336(%rbp)               ## 8-byte Spill
	movq	%r10, %rdi
	movq	-5336(%rbp), %rsi               ## 8-byte Reload
	movl	$16, %edx
	callq	*%r9
	movq	-5072(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-5072(%rbp), %rdi
	movq	8(%rdi), %rdi
	leaq	_stbi_write_jpg_core.std_ac_luminance_values(%rip), %r9
	movq	%rsi, -5344(%rbp)               ## 8-byte Spill
	movq	%r9, %rsi
	movl	$162, %edx
	movq	-5344(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	movq	-5072(%rbp), %rdi
	movl	$1, %esi
	callq	_stbiw__putc
	leaq	_stbi_write_jpg_core.std_dc_chrominance_nrcodes(%rip), %rdi
	addq	$1, %rdi
	movq	-5072(%rbp), %r9
	movq	(%r9), %r9
	movq	-5072(%rbp), %r10
	movq	8(%r10), %r10
	movq	%rdi, -5352(%rbp)               ## 8-byte Spill
	movq	%r10, %rdi
	movq	-5352(%rbp), %rsi               ## 8-byte Reload
	movl	$16, %edx
	callq	*%r9
	movq	-5072(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-5072(%rbp), %rdi
	movq	8(%rdi), %rdi
	leaq	_stbi_write_jpg_core.std_dc_chrominance_values(%rip), %r9
	movq	%rsi, -5360(%rbp)               ## 8-byte Spill
	movq	%r9, %rsi
	movl	$12, %edx
	movq	-5360(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	movq	-5072(%rbp), %rdi
	movl	$17, %esi
	callq	_stbiw__putc
	leaq	_stbi_write_jpg_core.std_ac_chrominance_nrcodes(%rip), %rdi
	addq	$1, %rdi
	movq	-5072(%rbp), %r9
	movq	(%r9), %r9
	movq	-5072(%rbp), %r10
	movq	8(%r10), %r10
	movq	%rdi, -5368(%rbp)               ## 8-byte Spill
	movq	%r10, %rdi
	movq	-5368(%rbp), %rsi               ## 8-byte Reload
	movl	$16, %edx
	callq	*%r9
	movq	-5072(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-5072(%rbp), %rdi
	movq	8(%rdi), %rdi
	leaq	_stbi_write_jpg_core.std_ac_chrominance_values(%rip), %r9
	movq	%rsi, -5376(%rbp)               ## 8-byte Spill
	movq	%r9, %rsi
	movl	$162, %edx
	movq	-5376(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	movq	-5072(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-5072(%rbp), %rdi
	movq	8(%rdi), %rdi
	leaq	_stbi_write_jpg_core.head2(%rip), %r9
	movq	%rsi, -5384(%rbp)               ## 8-byte Spill
	movq	%r9, %rsi
	movl	$14, %edx
	movq	-5384(%rbp), %r9                ## 8-byte Reload
	callq	*%r9
	xorl	%edx, %edx
	movl	$0, -5132(%rbp)
	movl	$0, -5136(%rbp)
	movl	$0, -5140(%rbp)
	movl	$0, -5144(%rbp)
	movl	$0, -5148(%rbp)
	movl	-5084(%rbp), %r11d
	cmpl	$2, %r11d
	movl	$1, %r11d
	movl	%edx, %ebx
	cmovgl	%r11d, %ebx
	movl	%ebx, -5152(%rbp)
	movl	-5084(%rbp), %r11d
	cmpl	$2, %r11d
	movl	$2, %r11d
	cmovgl	%r11d, %edx
	movl	%edx, -5156(%rbp)
	movq	-5096(%rbp), %rsi
	movq	%rsi, -5168(%rbp)
	movq	-5168(%rbp), %rsi
	movslq	-5152(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -5176(%rbp)
	movq	-5168(%rbp), %rsi
	movslq	-5156(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -5184(%rbp)
	cmpl	$0, -5120(%rbp)
	je	LBB51_77
## %bb.43:
	movl	$0, -5192(%rbp)
LBB51_44:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB51_46 Depth 2
                                        ##       Child Loop BB51_48 Depth 3
                                        ##         Child Loop BB51_56 Depth 4
                                        ##       Child Loop BB51_65 Depth 3
                                        ##         Child Loop BB51_67 Depth 4
	movl	-5192(%rbp), %eax
	cmpl	-5080(%rbp), %eax
	jge	LBB51_76
## %bb.45:                              ##   in Loop: Header=BB51_44 Depth=1
	movl	$0, -5188(%rbp)
LBB51_46:                               ##   Parent Loop BB51_44 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB51_48 Depth 3
                                        ##         Child Loop BB51_56 Depth 4
                                        ##       Child Loop BB51_65 Depth 3
                                        ##         Child Loop BB51_67 Depth 4
	movl	-5188(%rbp), %eax
	cmpl	-5076(%rbp), %eax
	jge	LBB51_74
## %bb.47:                              ##   in Loop: Header=BB51_46 Depth=2
	movl	-5192(%rbp), %eax
	movl	%eax, -5104(%rbp)
	movl	$0, -5196(%rbp)
LBB51_48:                               ##   Parent Loop BB51_44 Depth=1
                                        ##     Parent Loop BB51_46 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB51_56 Depth 4
	movl	-5104(%rbp), %eax
	movl	-5192(%rbp), %ecx
	addl	$16, %ecx
	cmpl	%ecx, %eax
	jge	LBB51_64
## %bb.49:                              ##   in Loop: Header=BB51_48 Depth=3
	movl	-5104(%rbp), %eax
	cmpl	-5080(%rbp), %eax
	jge	LBB51_51
## %bb.50:                              ##   in Loop: Header=BB51_48 Depth=3
	movl	-5104(%rbp), %eax
	movl	%eax, -5388(%rbp)               ## 4-byte Spill
	jmp	LBB51_52
LBB51_51:                               ##   in Loop: Header=BB51_48 Depth=3
	movl	-5080(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -5388(%rbp)               ## 4-byte Spill
LBB51_52:                               ##   in Loop: Header=BB51_48 Depth=3
	movl	-5388(%rbp), %eax               ## 4-byte Reload
	movl	%eax, -5200(%rbp)
	cmpl	$0, _stbi__flip_vertically_on_write(%rip)
	je	LBB51_54
## %bb.53:                              ##   in Loop: Header=BB51_48 Depth=3
	movl	-5080(%rbp), %eax
	subl	$1, %eax
	subl	-5200(%rbp), %eax
	movl	%eax, -5392(%rbp)               ## 4-byte Spill
	jmp	LBB51_55
LBB51_54:                               ##   in Loop: Header=BB51_48 Depth=3
	movl	-5200(%rbp), %eax
	movl	%eax, -5392(%rbp)               ## 4-byte Spill
LBB51_55:                               ##   in Loop: Header=BB51_48 Depth=3
	movl	-5392(%rbp), %eax               ## 4-byte Reload
	imull	-5076(%rbp), %eax
	imull	-5084(%rbp), %eax
	movl	%eax, -5204(%rbp)
	movl	-5188(%rbp), %eax
	movl	%eax, -5108(%rbp)
LBB51_56:                               ##   Parent Loop BB51_44 Depth=1
                                        ##     Parent Loop BB51_46 Depth=2
                                        ##       Parent Loop BB51_48 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	-5108(%rbp), %eax
	movl	-5188(%rbp), %ecx
	addl	$16, %ecx
	cmpl	%ecx, %eax
	jge	LBB51_62
## %bb.57:                              ##   in Loop: Header=BB51_56 Depth=4
	movl	-5204(%rbp), %eax
	movl	-5108(%rbp), %ecx
	cmpl	-5076(%rbp), %ecx
	movl	%eax, -5396(%rbp)               ## 4-byte Spill
	jge	LBB51_59
## %bb.58:                              ##   in Loop: Header=BB51_56 Depth=4
	movl	-5108(%rbp), %eax
	movl	%eax, -5400(%rbp)               ## 4-byte Spill
	jmp	LBB51_60
LBB51_59:                               ##   in Loop: Header=BB51_56 Depth=4
	movl	-5076(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -5400(%rbp)               ## 4-byte Spill
LBB51_60:                               ##   in Loop: Header=BB51_56 Depth=4
	movl	-5400(%rbp), %eax               ## 4-byte Reload
	movss	LCPI51_0(%rip), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI51_1(%rip), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI51_2(%rip), %xmm2           ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI51_3(%rip), %xmm3           ## xmm3 = mem[0],zero,zero,zero
	movss	LCPI51_4(%rip), %xmm4           ## xmm4 = mem[0],zero,zero,zero
	movss	LCPI51_5(%rip), %xmm5           ## xmm5 = mem[0],zero,zero,zero
	movss	LCPI51_6(%rip), %xmm6           ## xmm6 = mem[0],zero,zero,zero
	movss	LCPI51_7(%rip), %xmm7           ## xmm7 = mem[0],zero,zero,zero
	movss	LCPI51_8(%rip), %xmm8           ## xmm8 = mem[0],zero,zero,zero
	movl	-5084(%rbp), %ecx
	imull	%ecx, %eax
	movl	-5396(%rbp), %ecx               ## 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -5208(%rbp)
	movq	-5168(%rbp), %rdx
	movslq	-5208(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	cvtsi2ss	%eax, %xmm9
	movss	%xmm9, -5212(%rbp)
	movq	-5176(%rbp), %rdx
	movslq	-5208(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	cvtsi2ss	%eax, %xmm9
	movss	%xmm9, -5216(%rbp)
	movq	-5184(%rbp), %rdx
	movslq	-5208(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	cvtsi2ss	%eax, %xmm9
	movss	%xmm9, -5220(%rbp)
	mulss	-5212(%rbp), %xmm8
	mulss	-5216(%rbp), %xmm7
	addss	%xmm7, %xmm8
	mulss	-5220(%rbp), %xmm6
	addss	%xmm6, %xmm8
	subss	%xmm5, %xmm8
	movslq	-5196(%rbp), %rdx
	movss	%xmm8, -1728(%rbp,%rdx,4)
	mulss	-5212(%rbp), %xmm4
	mulss	-5216(%rbp), %xmm3
	subss	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	mulss	-5220(%rbp), %xmm3
	addss	%xmm3, %xmm4
	movslq	-5196(%rbp), %rdx
	movss	%xmm4, -2752(%rbp,%rdx,4)
	mulss	-5212(%rbp), %xmm2
	mulss	-5216(%rbp), %xmm1
	subss	%xmm1, %xmm2
	mulss	-5220(%rbp), %xmm0
	subss	%xmm0, %xmm2
	movslq	-5196(%rbp), %rdx
	movss	%xmm2, -3776(%rbp,%rdx,4)
## %bb.61:                              ##   in Loop: Header=BB51_56 Depth=4
	movl	-5108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5108(%rbp)
	movl	-5196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5196(%rbp)
	jmp	LBB51_56
LBB51_62:                               ##   in Loop: Header=BB51_48 Depth=3
	jmp	LBB51_63
LBB51_63:                               ##   in Loop: Header=BB51_48 Depth=3
	movl	-5104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5104(%rbp)
	jmp	LBB51_48
LBB51_64:                               ##   in Loop: Header=BB51_46 Depth=2
	leaq	_stbi_write_jpg_core.YDC_HT(%rip), %rax
	leaq	-288(%rbp), %r9
	leaq	-1728(%rbp), %rcx
	movq	-5072(%rbp), %rdi
	movl	-5132(%rbp), %edx
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r8
	movl	%edx, -5404(%rbp)               ## 4-byte Spill
	movq	%r8, %rdx
	movl	$16, %r8d
	movl	-5404(%rbp), %r10d              ## 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	_stbi_write_jpg_core.YAC_HT(%rip), %rax
	movq	%rax, 16(%rsp)
	callq	_stbiw__jpg_processDU
	leaq	_stbi_write_jpg_core.YDC_HT(%rip), %rcx
	leaq	-288(%rbp), %r9
	leaq	-1728(%rbp), %rdx
	movl	%eax, -5132(%rbp)
	movq	-5072(%rbp), %rdi
	addq	$32, %rdx
	movl	-5132(%rbp), %eax
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r11
	movq	%rdx, -5416(%rbp)               ## 8-byte Spill
	movq	%r11, %rdx
	movq	-5416(%rbp), %r11               ## 8-byte Reload
	movq	%rcx, -5424(%rbp)               ## 8-byte Spill
	movq	%r11, %rcx
	movl	$16, %r8d
	movl	%eax, (%rsp)
	movq	-5424(%rbp), %rbx               ## 8-byte Reload
	movq	%rbx, 8(%rsp)
	leaq	_stbi_write_jpg_core.YAC_HT(%rip), %r14
	movq	%r14, 16(%rsp)
	callq	_stbiw__jpg_processDU
	leaq	_stbi_write_jpg_core.YDC_HT(%rip), %rcx
	leaq	-288(%rbp), %r9
	leaq	-1728(%rbp), %rdx
	movl	%eax, -5132(%rbp)
	movq	-5072(%rbp), %rdi
	addq	$512, %rdx                      ## imm = 0x200
	movl	-5132(%rbp), %eax
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r11
	movq	%rdx, -5432(%rbp)               ## 8-byte Spill
	movq	%r11, %rdx
	movq	-5432(%rbp), %r11               ## 8-byte Reload
	movq	%rcx, -5440(%rbp)               ## 8-byte Spill
	movq	%r11, %rcx
	movl	$16, %r8d
	movl	%eax, (%rsp)
	movq	-5440(%rbp), %rbx               ## 8-byte Reload
	movq	%rbx, 8(%rsp)
	leaq	_stbi_write_jpg_core.YAC_HT(%rip), %r14
	movq	%r14, 16(%rsp)
	callq	_stbiw__jpg_processDU
	leaq	_stbi_write_jpg_core.YDC_HT(%rip), %rcx
	leaq	-288(%rbp), %r9
	leaq	-1728(%rbp), %rdx
	movl	%eax, -5132(%rbp)
	movq	-5072(%rbp), %rdi
	addq	$544, %rdx                      ## imm = 0x220
	movl	-5132(%rbp), %eax
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r11
	movq	%rdx, -5448(%rbp)               ## 8-byte Spill
	movq	%r11, %rdx
	movq	-5448(%rbp), %r11               ## 8-byte Reload
	movq	%rcx, -5456(%rbp)               ## 8-byte Spill
	movq	%r11, %rcx
	movl	$16, %r8d
	movl	%eax, (%rsp)
	movq	-5456(%rbp), %rbx               ## 8-byte Reload
	movq	%rbx, 8(%rsp)
	leaq	_stbi_write_jpg_core.YAC_HT(%rip), %r14
	movq	%r14, 16(%rsp)
	callq	_stbiw__jpg_processDU
	movl	%eax, -5132(%rbp)
	movl	$0, -5224(%rbp)
	movl	$0, -5196(%rbp)
LBB51_65:                               ##   Parent Loop BB51_44 Depth=1
                                        ##     Parent Loop BB51_46 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB51_67 Depth 4
	cmpl	$8, -5224(%rbp)
	jge	LBB51_72
## %bb.66:                              ##   in Loop: Header=BB51_65 Depth=3
	movl	$0, -5228(%rbp)
LBB51_67:                               ##   Parent Loop BB51_44 Depth=1
                                        ##     Parent Loop BB51_46 Depth=2
                                        ##       Parent Loop BB51_65 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpl	$8, -5228(%rbp)
	jge	LBB51_70
## %bb.68:                              ##   in Loop: Header=BB51_67 Depth=4
	movss	LCPI51_9(%rip), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movl	-5224(%rbp), %eax
	shll	$5, %eax
	movl	-5228(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -5232(%rbp)
	movl	-5232(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movss	-2752(%rbp,%rdx,4), %xmm1       ## xmm1 = mem[0],zero,zero,zero
	movl	-5232(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	addss	-2752(%rbp,%rdx,4), %xmm1
	movl	-5232(%rbp), %eax
	addl	$16, %eax
	movslq	%eax, %rdx
	addss	-2752(%rbp,%rdx,4), %xmm1
	movl	-5232(%rbp), %eax
	addl	$17, %eax
	movslq	%eax, %rdx
	addss	-2752(%rbp,%rdx,4), %xmm1
	mulss	%xmm0, %xmm1
	movslq	-5196(%rbp), %rdx
	movss	%xmm1, -4032(%rbp,%rdx,4)
	movl	-5232(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movss	-3776(%rbp,%rdx,4), %xmm1       ## xmm1 = mem[0],zero,zero,zero
	movl	-5232(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	addss	-3776(%rbp,%rdx,4), %xmm1
	movl	-5232(%rbp), %eax
	addl	$16, %eax
	movslq	%eax, %rdx
	addss	-3776(%rbp,%rdx,4), %xmm1
	movl	-5232(%rbp), %eax
	addl	$17, %eax
	movslq	%eax, %rdx
	addss	-3776(%rbp,%rdx,4), %xmm1
	mulss	%xmm0, %xmm1
	movslq	-5196(%rbp), %rdx
	movss	%xmm1, -4288(%rbp,%rdx,4)
## %bb.69:                              ##   in Loop: Header=BB51_67 Depth=4
	movl	-5228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5228(%rbp)
	movl	-5196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5196(%rbp)
	jmp	LBB51_67
LBB51_70:                               ##   in Loop: Header=BB51_65 Depth=3
	jmp	LBB51_71
LBB51_71:                               ##   in Loop: Header=BB51_65 Depth=3
	movl	-5224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5224(%rbp)
	jmp	LBB51_65
LBB51_72:                               ##   in Loop: Header=BB51_46 Depth=2
	leaq	_stbi_write_jpg_core.UVDC_HT(%rip), %rax
	leaq	-544(%rbp), %r9
	leaq	-4032(%rbp), %rcx
	movq	-5072(%rbp), %rdi
	movl	-5136(%rbp), %edx
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r8
	movl	%edx, -5460(%rbp)               ## 4-byte Spill
	movq	%r8, %rdx
	movl	$8, %r8d
	movl	-5460(%rbp), %r10d              ## 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	_stbi_write_jpg_core.UVAC_HT(%rip), %rax
	movq	%rax, 16(%rsp)
	callq	_stbiw__jpg_processDU
	leaq	_stbi_write_jpg_core.UVDC_HT(%rip), %rcx
	leaq	-544(%rbp), %r9
	leaq	-4288(%rbp), %rdx
	movl	%eax, -5136(%rbp)
	movq	-5072(%rbp), %rdi
	movl	-5140(%rbp), %eax
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r11
	movq	%rdx, -5472(%rbp)               ## 8-byte Spill
	movq	%r11, %rdx
	movq	-5472(%rbp), %r11               ## 8-byte Reload
	movq	%rcx, -5480(%rbp)               ## 8-byte Spill
	movq	%r11, %rcx
	movl	$8, %r8d
	movl	%eax, (%rsp)
	movq	-5480(%rbp), %rbx               ## 8-byte Reload
	movq	%rbx, 8(%rsp)
	leaq	_stbi_write_jpg_core.UVAC_HT(%rip), %r14
	movq	%r14, 16(%rsp)
	callq	_stbiw__jpg_processDU
	movl	%eax, -5140(%rbp)
## %bb.73:                              ##   in Loop: Header=BB51_46 Depth=2
	movl	-5188(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -5188(%rbp)
	jmp	LBB51_46
LBB51_74:                               ##   in Loop: Header=BB51_44 Depth=1
	jmp	LBB51_75
LBB51_75:                               ##   in Loop: Header=BB51_44 Depth=1
	movl	-5192(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -5192(%rbp)
	jmp	LBB51_44
LBB51_76:
	jmp	LBB51_103
LBB51_77:
	movl	$0, -5192(%rbp)
LBB51_78:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB51_80 Depth 2
                                        ##       Child Loop BB51_82 Depth 3
                                        ##         Child Loop BB51_90 Depth 4
	movl	-5192(%rbp), %eax
	cmpl	-5080(%rbp), %eax
	jge	LBB51_102
## %bb.79:                              ##   in Loop: Header=BB51_78 Depth=1
	movl	$0, -5188(%rbp)
LBB51_80:                               ##   Parent Loop BB51_78 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB51_82 Depth 3
                                        ##         Child Loop BB51_90 Depth 4
	movl	-5188(%rbp), %eax
	cmpl	-5076(%rbp), %eax
	jge	LBB51_100
## %bb.81:                              ##   in Loop: Header=BB51_80 Depth=2
	movl	-5192(%rbp), %eax
	movl	%eax, -5104(%rbp)
	movl	$0, -5196(%rbp)
LBB51_82:                               ##   Parent Loop BB51_78 Depth=1
                                        ##     Parent Loop BB51_80 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB51_90 Depth 4
	movl	-5104(%rbp), %eax
	movl	-5192(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	LBB51_98
## %bb.83:                              ##   in Loop: Header=BB51_82 Depth=3
	movl	-5104(%rbp), %eax
	cmpl	-5080(%rbp), %eax
	jge	LBB51_85
## %bb.84:                              ##   in Loop: Header=BB51_82 Depth=3
	movl	-5104(%rbp), %eax
	movl	%eax, -5484(%rbp)               ## 4-byte Spill
	jmp	LBB51_86
LBB51_85:                               ##   in Loop: Header=BB51_82 Depth=3
	movl	-5080(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -5484(%rbp)               ## 4-byte Spill
LBB51_86:                               ##   in Loop: Header=BB51_82 Depth=3
	movl	-5484(%rbp), %eax               ## 4-byte Reload
	movl	%eax, -5236(%rbp)
	cmpl	$0, _stbi__flip_vertically_on_write(%rip)
	je	LBB51_88
## %bb.87:                              ##   in Loop: Header=BB51_82 Depth=3
	movl	-5080(%rbp), %eax
	subl	$1, %eax
	subl	-5236(%rbp), %eax
	movl	%eax, -5488(%rbp)               ## 4-byte Spill
	jmp	LBB51_89
LBB51_88:                               ##   in Loop: Header=BB51_82 Depth=3
	movl	-5236(%rbp), %eax
	movl	%eax, -5488(%rbp)               ## 4-byte Spill
LBB51_89:                               ##   in Loop: Header=BB51_82 Depth=3
	movl	-5488(%rbp), %eax               ## 4-byte Reload
	imull	-5076(%rbp), %eax
	imull	-5084(%rbp), %eax
	movl	%eax, -5240(%rbp)
	movl	-5188(%rbp), %eax
	movl	%eax, -5108(%rbp)
LBB51_90:                               ##   Parent Loop BB51_78 Depth=1
                                        ##     Parent Loop BB51_80 Depth=2
                                        ##       Parent Loop BB51_82 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	-5108(%rbp), %eax
	movl	-5188(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	LBB51_96
## %bb.91:                              ##   in Loop: Header=BB51_90 Depth=4
	movl	-5240(%rbp), %eax
	movl	-5108(%rbp), %ecx
	cmpl	-5076(%rbp), %ecx
	movl	%eax, -5492(%rbp)               ## 4-byte Spill
	jge	LBB51_93
## %bb.92:                              ##   in Loop: Header=BB51_90 Depth=4
	movl	-5108(%rbp), %eax
	movl	%eax, -5496(%rbp)               ## 4-byte Spill
	jmp	LBB51_94
LBB51_93:                               ##   in Loop: Header=BB51_90 Depth=4
	movl	-5076(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -5496(%rbp)               ## 4-byte Spill
LBB51_94:                               ##   in Loop: Header=BB51_90 Depth=4
	movl	-5496(%rbp), %eax               ## 4-byte Reload
	movss	LCPI51_0(%rip), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI51_1(%rip), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI51_2(%rip), %xmm2           ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI51_3(%rip), %xmm3           ## xmm3 = mem[0],zero,zero,zero
	movss	LCPI51_4(%rip), %xmm4           ## xmm4 = mem[0],zero,zero,zero
	movss	LCPI51_5(%rip), %xmm5           ## xmm5 = mem[0],zero,zero,zero
	movss	LCPI51_6(%rip), %xmm6           ## xmm6 = mem[0],zero,zero,zero
	movss	LCPI51_7(%rip), %xmm7           ## xmm7 = mem[0],zero,zero,zero
	movss	LCPI51_8(%rip), %xmm8           ## xmm8 = mem[0],zero,zero,zero
	movl	-5084(%rbp), %ecx
	imull	%ecx, %eax
	movl	-5492(%rbp), %ecx               ## 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -5244(%rbp)
	movq	-5168(%rbp), %rdx
	movslq	-5244(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	cvtsi2ss	%eax, %xmm9
	movss	%xmm9, -5248(%rbp)
	movq	-5176(%rbp), %rdx
	movslq	-5244(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	cvtsi2ss	%eax, %xmm9
	movss	%xmm9, -5252(%rbp)
	movq	-5184(%rbp), %rdx
	movslq	-5244(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	cvtsi2ss	%eax, %xmm9
	movss	%xmm9, -5256(%rbp)
	mulss	-5248(%rbp), %xmm8
	mulss	-5252(%rbp), %xmm7
	addss	%xmm7, %xmm8
	mulss	-5256(%rbp), %xmm6
	addss	%xmm6, %xmm8
	subss	%xmm5, %xmm8
	movslq	-5196(%rbp), %rdx
	movss	%xmm8, -4544(%rbp,%rdx,4)
	mulss	-5248(%rbp), %xmm4
	mulss	-5252(%rbp), %xmm3
	subss	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	mulss	-5256(%rbp), %xmm3
	addss	%xmm3, %xmm4
	movslq	-5196(%rbp), %rdx
	movss	%xmm4, -4800(%rbp,%rdx,4)
	mulss	-5248(%rbp), %xmm2
	mulss	-5252(%rbp), %xmm1
	subss	%xmm1, %xmm2
	mulss	-5256(%rbp), %xmm0
	subss	%xmm0, %xmm2
	movslq	-5196(%rbp), %rdx
	movss	%xmm2, -5056(%rbp,%rdx,4)
## %bb.95:                              ##   in Loop: Header=BB51_90 Depth=4
	movl	-5108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5108(%rbp)
	movl	-5196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5196(%rbp)
	jmp	LBB51_90
LBB51_96:                               ##   in Loop: Header=BB51_82 Depth=3
	jmp	LBB51_97
LBB51_97:                               ##   in Loop: Header=BB51_82 Depth=3
	movl	-5104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5104(%rbp)
	jmp	LBB51_82
LBB51_98:                               ##   in Loop: Header=BB51_80 Depth=2
	leaq	_stbi_write_jpg_core.YDC_HT(%rip), %rax
	leaq	-288(%rbp), %r9
	leaq	-4544(%rbp), %rcx
	movq	-5072(%rbp), %rdi
	movl	-5132(%rbp), %edx
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r8
	movl	%edx, -5500(%rbp)               ## 4-byte Spill
	movq	%r8, %rdx
	movl	$8, %r8d
	movl	-5500(%rbp), %r10d              ## 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	_stbi_write_jpg_core.YAC_HT(%rip), %rax
	movq	%rax, 16(%rsp)
	callq	_stbiw__jpg_processDU
	leaq	_stbi_write_jpg_core.UVDC_HT(%rip), %rcx
	leaq	-544(%rbp), %r9
	leaq	-4800(%rbp), %rdx
	movl	%eax, -5132(%rbp)
	movq	-5072(%rbp), %rdi
	movl	-5136(%rbp), %eax
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r11
	movq	%rdx, -5512(%rbp)               ## 8-byte Spill
	movq	%r11, %rdx
	movq	-5512(%rbp), %r11               ## 8-byte Reload
	movq	%rcx, -5520(%rbp)               ## 8-byte Spill
	movq	%r11, %rcx
	movl	$8, %r8d
	movl	%eax, (%rsp)
	movq	-5520(%rbp), %rbx               ## 8-byte Reload
	movq	%rbx, 8(%rsp)
	leaq	_stbi_write_jpg_core.UVAC_HT(%rip), %r14
	movq	%r14, 16(%rsp)
	callq	_stbiw__jpg_processDU
	leaq	_stbi_write_jpg_core.UVDC_HT(%rip), %rcx
	leaq	-544(%rbp), %r9
	leaq	-5056(%rbp), %rdx
	movl	%eax, -5136(%rbp)
	movq	-5072(%rbp), %rdi
	movl	-5140(%rbp), %eax
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %r11
	movq	%rdx, -5528(%rbp)               ## 8-byte Spill
	movq	%r11, %rdx
	movq	-5528(%rbp), %r11               ## 8-byte Reload
	movq	%rcx, -5536(%rbp)               ## 8-byte Spill
	movq	%r11, %rcx
	movl	$8, %r8d
	movl	%eax, (%rsp)
	movq	-5536(%rbp), %rbx               ## 8-byte Reload
	movq	%rbx, 8(%rsp)
	leaq	_stbi_write_jpg_core.UVAC_HT(%rip), %r14
	movq	%r14, 16(%rsp)
	callq	_stbiw__jpg_processDU
	movl	%eax, -5140(%rbp)
## %bb.99:                              ##   in Loop: Header=BB51_80 Depth=2
	movl	-5188(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -5188(%rbp)
	jmp	LBB51_80
LBB51_100:                              ##   in Loop: Header=BB51_78 Depth=1
	jmp	LBB51_101
LBB51_101:                              ##   in Loop: Header=BB51_78 Depth=1
	movl	-5192(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -5192(%rbp)
	jmp	LBB51_78
LBB51_102:
	jmp	LBB51_103
LBB51_103:
	movq	-5072(%rbp), %rdi
	leaq	-5144(%rbp), %rsi
	leaq	-5148(%rbp), %rdx
	leaq	_stbi_write_jpg_core.fillBits(%rip), %rcx
	callq	_stbiw__jpg_writeBits
	movq	-5072(%rbp), %rdi
	movl	$255, %esi
	callq	_stbiw__putc
	movq	-5072(%rbp), %rdi
	movl	$217, %esi
	callq	_stbiw__putc
	movl	$1, -5060(%rbp)
LBB51_104:
	movl	-5060(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -5540(%rbp)               ## 4-byte Spill
	jne	LBB51_106
## %bb.105:
	movl	-5540(%rbp), %eax               ## 4-byte Reload
	addq	$5552, %rsp                     ## imm = 0x15B0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB51_106:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_stbi_write_jpg                 ## -- Begin function stbi_write_jpg
	.p2align	4, 0x90
_stbi_write_jpg:                        ## @stbi_write_jpg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movq	%rdi, -112(%rbp)
	movl	%esi, -116(%rbp)
	movl	%edx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movq	%r8, -136(%rbp)
	movl	%r9d, -140(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -152(%rbp)                ## 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %esi
	movl	$88, %edx
	callq	_memset
	movq	-112(%rbp), %rsi
	movq	-152(%rbp), %rdi                ## 8-byte Reload
	callq	_stbi__start_write_file
	cmpl	$0, %eax
	je	LBB52_2
## %bb.1:
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movq	-136(%rbp), %r8
	movl	-140(%rbp), %r9d
	leaq	-96(%rbp), %rdi
	callq	_stbi_write_jpg_core
	movl	%eax, -144(%rbp)
	leaq	-96(%rbp), %rdi
	callq	_stbi__end_write_file
	movl	-144(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	LBB52_3
LBB52_2:
	movl	$0, -100(%rbp)
LBB52_3:
	movl	-100(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -156(%rbp)                ## 4-byte Spill
	jne	LBB52_5
## %bb.4:
	movl	-156(%rbp), %eax                ## 4-byte Reload
	addq	$160, %rsp
	popq	%rbp
	retq
LBB52_5:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI53_0:
	.quad	0x3fbd2f1a9fbe76c9              ## double 0.114
LCPI53_1:
	.quad	0x3fe2c8b439581062              ## double 0.58699999999999997
LCPI53_2:
	.quad	0x3fd322d0e5604189              ## double 0.29899999999999999
LCPI53_3:
	.quad	0xbfe0000000000000              ## double -0.5
LCPI53_4:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI53_5:
	.quad	0x3fd52f1a9fbe76c9              ## double 0.33100000000000002
LCPI53_6:
	.quad	0x4060000000000000              ## double 128
LCPI53_7:
	.quad	0x3fc5a1cac083126f              ## double 0.16900000000000001
LCPI53_8:
	.quad	0xbfc5a1cac083126f              ## double -0.16900000000000001
LCPI53_9:
	.quad	0xbfd52f1a9fbe76c9              ## double -0.33100000000000002
LCPI53_10:
	.quad	0x3fb4bc6a7ef9db23              ## double 0.081000000000000003
LCPI53_11:
	.quad	0x3fdad0e560418937              ## double 0.41899999999999998
LCPI53_12:
	.quad	0xbfdad0e560418937              ## double -0.41899999999999998
LCPI53_13:
	.quad	0xbfb4bc6a7ef9db23              ## double -0.081000000000000003
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	xorl	%r8d, %r8d
	movl	$0, -4(%rbp)
	leaq	L_.str.2(%rip), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	callq	_stbi_load
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB53_2
## %bb.1:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	callq	_printf
	movl	$1, %edi
	movl	%eax, -92(%rbp)                 ## 4-byte Spill
	callq	_exit
LBB53_2:
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-8(%rbp), %ecx
	imull	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	%eax, -96(%rbp)                 ## 4-byte Spill
	callq	_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB53_4
## %bb.3:
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	callq	_printf
	movl	$1, %edi
	movl	%eax, -100(%rbp)                ## 4-byte Spill
	callq	_exit
LBB53_4:
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
LBB53_5:                                ## =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB53_17
## %bb.6:                               ##   in Loop: Header=BB53_5 Depth=1
	movsd	LCPI53_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	movsd	LCPI53_1(%rip), %xmm1           ## xmm1 = mem[0],zero
	movsd	LCPI53_2(%rip), %xmm2           ## xmm2 = mem[0],zero
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sd	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sd	%ecx, %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jb	LBB53_8
## %bb.7:                               ##   in Loop: Header=BB53_5 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	LCPI53_2(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_1(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_0(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	LCPI53_4(%rip), %xmm1           ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edx
	movl	%edx, -104(%rbp)                ## 4-byte Spill
	jmp	LBB53_9
LBB53_8:                                ##   in Loop: Header=BB53_5 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	LCPI53_2(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_1(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_0(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	LCPI53_3(%rip), %xmm1           ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edx
	movl	%edx, -104(%rbp)                ## 4-byte Spill
LBB53_9:                                ##   in Loop: Header=BB53_5 Depth=1
	movl	-104(%rbp), %eax                ## 4-byte Reload
	movsd	LCPI53_4(%rip), %xmm0           ## xmm0 = mem[0],zero
	movsd	LCPI53_5(%rip), %xmm1           ## xmm1 = mem[0],zero
	movsd	LCPI53_6(%rip), %xmm2           ## xmm2 = mem[0],zero
	movsd	LCPI53_7(%rip), %xmm3           ## xmm3 = mem[0],zero
                                        ## kill: def $al killed $al killed $eax
	movq	-56(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	cvtsi2sd	%edx, %xmm4
	mulsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	movq	-48(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	movq	-48(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cvtsi2sd	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jb	LBB53_11
## %bb.10:                              ##   in Loop: Header=BB53_5 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	LCPI53_8(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	LCPI53_6(%rip), %xmm1           ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_9(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_4(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edx
	movl	%edx, -108(%rbp)                ## 4-byte Spill
	jmp	LBB53_12
LBB53_11:                               ##   in Loop: Header=BB53_5 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	LCPI53_8(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	LCPI53_6(%rip), %xmm1           ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_9(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	LCPI53_4(%rip), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edx
	movl	%edx, -108(%rbp)                ## 4-byte Spill
LBB53_12:                               ##   in Loop: Header=BB53_5 Depth=1
	movl	-108(%rbp), %eax                ## 4-byte Reload
	movsd	LCPI53_10(%rip), %xmm0          ## xmm0 = mem[0],zero
	movsd	LCPI53_11(%rip), %xmm1          ## xmm1 = mem[0],zero
	movsd	LCPI53_6(%rip), %xmm2           ## xmm2 = mem[0],zero
	movsd	LCPI53_4(%rip), %xmm3           ## xmm3 = mem[0],zero
                                        ## kill: def $al killed $al killed $eax
	movq	-56(%rbp), %rcx
	movb	%al, 1(%rcx)
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	cvtsi2sd	%edx, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	movq	-48(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	movq	-48(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cvtsi2sd	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jb	LBB53_14
## %bb.13:                              ##   in Loop: Header=BB53_5 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	LCPI53_4(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	LCPI53_6(%rip), %xmm2           ## xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sd	%ecx, %xmm2
	movsd	LCPI53_12(%rip), %xmm3          ## xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sd	%ecx, %xmm2
	movsd	LCPI53_13(%rip), %xmm3          ## xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edx
	movl	%edx, -112(%rbp)                ## 4-byte Spill
	jmp	LBB53_15
LBB53_14:                               ##   in Loop: Header=BB53_5 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	LCPI53_4(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	LCPI53_6(%rip), %xmm2           ## xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sd	%ecx, %xmm2
	movsd	LCPI53_12(%rip), %xmm3          ## xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sd	%ecx, %xmm2
	movsd	LCPI53_13(%rip), %xmm3          ## xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edx
	movl	%edx, -112(%rbp)                ## 4-byte Spill
LBB53_15:                               ##   in Loop: Header=BB53_5 Depth=1
	movl	-112(%rbp), %eax                ## 4-byte Reload
                                        ## kill: def $al killed $al killed $eax
	movq	-56(%rbp), %rcx
	movb	%al, 2(%rcx)
## %bb.16:                              ##   in Loop: Header=BB53_5 Depth=1
	movl	-16(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movl	-16(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	LBB53_5
LBB53_17:
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-40(%rbp), %r8
	leaq	L_.str.7(%rip), %rdi
	movl	$100, %r9d
	movl	%eax, -116(%rbp)                ## 4-byte Spill
	callq	_stbi_write_jpg
	leaq	L_.str.8(%rip), %rdi
	movl	%eax, -120(%rbp)                ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	LBB53_19
## %bb.18:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	callq	_printf
	movl	$1, %edi
	movl	%eax, -124(%rbp)                ## 4-byte Spill
	callq	_exit
LBB53_19:
	movq	-32(%rbp), %rdi
	callq	_malloc
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
LBB53_20:                               ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	addq	-32(%rbp), %rsi
	movslq	-16(%rbp), %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rsi
	cmpq	%rsi, %rdx
	je	LBB53_23
## %bb.21:                              ##   in Loop: Header=BB53_20 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$22, %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	subl	$128, %edx
	imull	$5872026, %edx, %edx            ## imm = 0x59999A
	addl	%edx, %ecx
	sarl	$22, %ecx
	movl	$255, %edi
	movl	%ecx, %esi
	callq	_Min
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	_Max
                                        ## kill: def $al killed $al killed $eax
	movq	-88(%rbp), %r8
	movb	%al, (%r8)
	movq	-80(%rbp), %r8
	movzbl	(%r8), %ecx
	shll	$22, %ecx
	movq	-80(%rbp), %r8
	movzbl	2(%r8), %edx
	subl	$128, %edx
	imull	$2982150, %edx, %edx            ## imm = 0x2D8106
	subl	%edx, %ecx
	movq	-80(%rbp), %r8
	movzbl	1(%r8), %edx
	subl	$128, %edx
	imull	$1438646, %edx, %edx            ## imm = 0x15F3B6
	subl	%edx, %ecx
	sarl	$22, %ecx
	movl	$255, %edi
	movl	%ecx, %esi
	callq	_Min
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	_Max
                                        ## kill: def $al killed $al killed $eax
	movq	-88(%rbp), %r8
	movb	%al, 1(%r8)
	movq	-80(%rbp), %r8
	movzbl	(%r8), %ecx
	shll	$22, %ecx
	movq	-80(%rbp), %r8
	movzbl	1(%r8), %edx
	subl	$128, %edx
	imull	$7402947, %edx, %edx            ## imm = 0x70F5C3
	addl	%edx, %ecx
	sarl	$22, %ecx
	movl	$255, %edi
	movl	%ecx, %esi
	callq	_Min
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	_Max
                                        ## kill: def $al killed $al killed $eax
	movq	-88(%rbp), %r8
	movb	%al, 2(%r8)
	movq	-80(%rbp), %r8
	movzbl	(%r8), %ecx
	addl	-16(%rbp), %ecx
	shll	$22, %ecx
	movq	-80(%rbp), %r8
	movslq	-16(%rbp), %r9
	movzbl	2(%r8,%r9), %edx
	subl	$128, %edx
	imull	$5872026, %edx, %edx            ## imm = 0x59999A
	addl	%edx, %ecx
	sarl	$22, %ecx
	movl	$255, %edi
	movl	%ecx, %esi
	callq	_Min
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	_Max
                                        ## kill: def $al killed $al killed $eax
	movq	-88(%rbp), %r8
	movslq	-16(%rbp), %r9
	movb	%al, (%r8,%r9)
	movq	-80(%rbp), %r8
	movzbl	(%r8), %ecx
	addl	-16(%rbp), %ecx
	shll	$22, %ecx
	movq	-80(%rbp), %r8
	movslq	-16(%rbp), %r9
	movzbl	2(%r8,%r9), %edx
	subl	$128, %edx
	imull	$2982150, %edx, %edx            ## imm = 0x2D8106
	subl	%edx, %ecx
	movq	-80(%rbp), %r8
	movslq	-16(%rbp), %r9
	movzbl	1(%r8,%r9), %edx
	subl	$128, %edx
	imull	$1438646, %edx, %edx            ## imm = 0x15F3B6
	subl	%edx, %ecx
	sarl	$22, %ecx
	movl	$255, %edi
	movl	%ecx, %esi
	callq	_Min
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	_Max
                                        ## kill: def $al killed $al killed $eax
	movq	-88(%rbp), %r8
	movslq	-16(%rbp), %r9
	movb	%al, 1(%r8,%r9)
	movq	-80(%rbp), %r8
	movzbl	(%r8), %ecx
	addl	-16(%rbp), %ecx
	shll	$22, %ecx
	movq	-80(%rbp), %r8
	movslq	-16(%rbp), %r9
	movzbl	1(%r8,%r9), %edx
	subl	$128, %edx
	imull	$7402947, %edx, %edx            ## imm = 0x70F5C3
	addl	%edx, %ecx
	sarl	$22, %ecx
	movl	$255, %edi
	movl	%ecx, %esi
	callq	_Min
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	_Max
                                        ## kill: def $al killed $al killed $eax
	movq	-88(%rbp), %r8
	movslq	-16(%rbp), %r9
	movb	%al, 2(%r8,%r9)
## %bb.22:                              ##   in Loop: Header=BB53_20 Depth=1
	movl	-16(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movl	-16(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	jmp	LBB53_20
LBB53_23:
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-72(%rbp), %r8
	leaq	L_.str.10(%rip), %rdi
	movl	$100, %r9d
	movl	%eax, -128(%rbp)                ## 4-byte Spill
	callq	_stbi_write_jpg
	leaq	L_.str.11(%rip), %rdi
	movl	%eax, -132(%rbp)                ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movl	%eax, -136(%rbp)                ## 4-byte Spill
	callq	_stbi_image_free
	movq	-40(%rbp), %rdi
	callq	_free
	movq	-72(%rbp), %rdi
	callq	_free
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function Max
_Max:                                   ## @Max
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	LBB54_2
## %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	jmp	LBB54_3
LBB54_2:
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
LBB54_3:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function Min
_Min:                                   ## @Min
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB55_2
## %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	jmp	LBB55_3
LBB55_2:
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
LBB55_3:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__stdio_read
_stbi__stdio_read:                      ## @stbi__stdio_read
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rcx
	callq	_fread
                                        ## kill: def $eax killed $eax killed $rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__stdio_skip
_stbi__stdio_skip:                      ## @stbi__stdio_skip
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %edx
	callq	_fseek
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	callq	_fgetc
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	je	LBB57_2
## %bb.1:
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	_ungetc
LBB57_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__stdio_eof
_stbi__stdio_eof:                       ## @stbi__stdio_eof
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_feof
	cmpl	$0, %eax
	movb	$1, %cl
	movb	%cl, -9(%rbp)                   ## 1-byte Spill
	jne	LBB58_2
## %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ferror
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -9(%rbp)                   ## 1-byte Spill
LBB58_2:
	movb	-9(%rbp), %al                   ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__load_main
_stbi__load_main:                       ## @stbi__load_main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	16(%rbp), %eax
	xorl	%r10d, %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%r10d, %esi
	movl	$12, %edx
	movq	$-1, %rcx
	movl	%eax, -60(%rbp)                 ## 4-byte Spill
	callq	___memset_chk
	movq	-56(%rbp), %rcx
	movl	$8, (%rcx)
	movq	-56(%rbp), %rcx
	movl	$0, 8(%rcx)
	movq	-56(%rbp), %rcx
	movl	$0, 4(%rcx)
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	callq	_stbi__jpeg_test
	cmpl	$0, %eax
	je	LBB59_2
## %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	_stbi__jpeg_load
	movq	%rax, -8(%rbp)
	jmp	LBB59_3
LBB59_2:
	leaq	L_.str.14(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -8(%rbp)
LBB59_3:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__convert_16_to_8
_stbi__convert_16_to_8:                 ## @stbi__convert_16_to_8
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rdi
	callq	_stbi__malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB60_2
## %bb.1:
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -8(%rbp)
	jmp	LBB60_7
LBB60_2:
	movl	$0, -32(%rbp)
LBB60_3:                                ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB60_6
## %bb.4:                               ##   in Loop: Header=BB60_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	sarl	$8, %edx
	andl	$255, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
## %bb.5:                               ##   in Loop: Header=BB60_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB60_3
LBB60_6:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB60_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__vertical_flip
_stbi__vertical_flip:                   ## @stbi__vertical_flip
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2160, %rsp                     ## imm = 0x870
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -2072(%rbp)
	movl	%esi, -2076(%rbp)
	movl	%edx, -2080(%rbp)
	movl	%ecx, -2084(%rbp)
	movslq	-2076(%rbp), %rax
	movslq	-2084(%rbp), %rdi
	imulq	%rdi, %rax
	movq	%rax, -2096(%rbp)
	movq	-2072(%rbp), %rax
	movq	%rax, -2104(%rbp)
	movl	$0, -2088(%rbp)
LBB61_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB61_3 Depth 2
	movl	-2088(%rbp), %eax
	movl	-2080(%rbp), %ecx
	sarl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB61_10
## %bb.2:                               ##   in Loop: Header=BB61_1 Depth=1
	movq	-2104(%rbp), %rax
	movslq	-2088(%rbp), %rcx
	imulq	-2096(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -2112(%rbp)
	movq	-2104(%rbp), %rax
	movl	-2080(%rbp), %edx
	subl	-2088(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	imulq	-2096(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -2120(%rbp)
	movq	-2096(%rbp), %rax
	movq	%rax, -2128(%rbp)
LBB61_3:                                ##   Parent Loop BB61_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2128(%rbp)
	je	LBB61_8
## %bb.4:                               ##   in Loop: Header=BB61_3 Depth=2
	cmpq	$2048, -2128(%rbp)              ## imm = 0x800
	jae	LBB61_6
## %bb.5:                               ##   in Loop: Header=BB61_3 Depth=2
	movq	-2128(%rbp), %rax
	movq	%rax, -2144(%rbp)               ## 8-byte Spill
	jmp	LBB61_7
LBB61_6:                                ##   in Loop: Header=BB61_3 Depth=2
	movl	$2048, %eax                     ## imm = 0x800
	movq	%rax, -2144(%rbp)               ## 8-byte Spill
	jmp	LBB61_7
LBB61_7:                                ##   in Loop: Header=BB61_3 Depth=2
	movq	-2144(%rbp), %rax               ## 8-byte Reload
	leaq	-2064(%rbp), %rdi
	movq	%rax, -2136(%rbp)
	movq	-2112(%rbp), %rsi
	movq	-2136(%rbp), %rdx
	movl	$2048, %ecx                     ## imm = 0x800
	callq	___memcpy_chk
	movq	-2112(%rbp), %rdi
	movq	-2120(%rbp), %rsi
	movq	-2136(%rbp), %rdx
	movq	$-1, %rcx
	movq	%rax, -2152(%rbp)               ## 8-byte Spill
	callq	___memcpy_chk
	leaq	-2064(%rbp), %rsi
	movq	-2120(%rbp), %rdi
	movq	-2136(%rbp), %rdx
	movq	$-1, %rcx
	movq	%rax, -2160(%rbp)               ## 8-byte Spill
	callq	___memcpy_chk
	movq	-2136(%rbp), %rcx
	addq	-2112(%rbp), %rcx
	movq	%rcx, -2112(%rbp)
	movq	-2136(%rbp), %rcx
	addq	-2120(%rbp), %rcx
	movq	%rcx, -2120(%rbp)
	movq	-2136(%rbp), %rcx
	movq	-2128(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -2128(%rbp)
	jmp	LBB61_3
LBB61_8:                                ##   in Loop: Header=BB61_1 Depth=1
	jmp	LBB61_9
LBB61_9:                                ##   in Loop: Header=BB61_1 Depth=1
	movl	-2088(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2088(%rbp)
	jmp	LBB61_1
LBB61_10:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB61_12
## %bb.11:
	addq	$2160, %rsp                     ## imm = 0x870
	popq	%rbp
	retq
LBB61_12:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_test
_stbi__jpeg_test:                       ## @stbi__jpeg_test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$18568, %edi                    ## imm = 0x4888
	callq	_stbi__malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB62_2
## %bb.1:
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB62_3
LBB62_2:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rdi
	callq	_stbi__setup_jpeg
	movq	-32(%rbp), %rdi
	movl	$1, %esi
	callq	_stbi__decode_jpeg_header
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	_stbi__rewind
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_free
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB62_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_load
_stbi__jpeg_load:                       ## @stbi__jpeg_load
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movl	$18568, %edi                    ## imm = 0x4888
	callq	_stbi__malloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	LBB63_2
## %bb.1:
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -8(%rbp)
	jmp	LBB63_3
LBB63_2:
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rdi
	callq	_stbi__setup_jpeg
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	_load_jpeg_image
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB63_3:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__malloc
_stbi__malloc:                          ## @stbi__malloc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_malloc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__setup_jpeg
_stbi__setup_jpeg:                      ## @stbi__setup_jpeg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	_stbi__idct_block(%rip), %rcx
	movq	%rcx, 18544(%rax)
	movq	-8(%rbp), %rax
	leaq	_stbi__YCbCr_to_RGB_row(%rip), %rcx
	movq	%rcx, 18552(%rax)
	movq	-8(%rbp), %rax
	leaq	_stbi__resample_row_hv_2(%rip), %rcx
	movq	%rcx, 18560(%rax)
	callq	_stbi__sse2_available
	cmpl	$0, %eax
	je	LBB65_2
## %bb.1:
	movq	-8(%rbp), %rax
	leaq	_stbi__idct_simd(%rip), %rcx
	movq	%rcx, 18544(%rax)
	movq	-8(%rbp), %rax
	leaq	_stbi__YCbCr_to_RGB_simd(%rip), %rcx
	movq	%rcx, 18552(%rax)
	movq	-8(%rbp), %rax
	leaq	_stbi__resample_row_hv_2_simd(%rip), %rcx
	movq	%rcx, 18560(%rax)
LBB65_2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__decode_jpeg_header
_stbi__decode_jpeg_header:              ## @stbi__decode_jpeg_header
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 18504(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 18508(%rax)
	movq	-16(%rbp), %rax
	movb	$-1, 18472(%rax)
	movq	-16(%rbp), %rdi
	callq	_stbi__get_marker
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$216, -24(%rbp)
	je	LBB66_2
## %bb.1:
	leaq	L_.str.16(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB66_20
LBB66_2:
	cmpl	$1, -20(%rbp)
	jne	LBB66_4
## %bb.3:
	movl	$1, -4(%rbp)
	jmp	LBB66_20
LBB66_4:
	movq	-16(%rbp), %rdi
	callq	_stbi__get_marker
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
LBB66_5:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB66_12 Depth 2
	cmpl	$192, -24(%rbp)
	movb	$1, %al
	movb	%al, -25(%rbp)                  ## 1-byte Spill
	je	LBB66_8
## %bb.6:                               ##   in Loop: Header=BB66_5 Depth=1
	cmpl	$193, -24(%rbp)
	movb	$1, %al
	movb	%al, -25(%rbp)                  ## 1-byte Spill
	je	LBB66_8
## %bb.7:                               ##   in Loop: Header=BB66_5 Depth=1
	cmpl	$194, -24(%rbp)
	sete	%al
	movb	%al, -25(%rbp)                  ## 1-byte Spill
LBB66_8:                                ##   in Loop: Header=BB66_5 Depth=1
	movb	-25(%rbp), %al                  ## 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	LBB66_9
	jmp	LBB66_17
LBB66_9:                                ##   in Loop: Header=BB66_5 Depth=1
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	_stbi__process_marker
	cmpl	$0, %eax
	jne	LBB66_11
## %bb.10:
	movl	$0, -4(%rbp)
	jmp	LBB66_20
LBB66_11:                               ##   in Loop: Header=BB66_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__get_marker
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
LBB66_12:                               ##   Parent Loop BB66_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$255, -24(%rbp)
	jne	LBB66_16
## %bb.13:                              ##   in Loop: Header=BB66_12 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__at_eof
	cmpl	$0, %eax
	je	LBB66_15
## %bb.14:
	leaq	L_.str.17(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB66_20
LBB66_15:                               ##   in Loop: Header=BB66_12 Depth=2
	movq	-16(%rbp), %rdi
	callq	_stbi__get_marker
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
	jmp	LBB66_12
LBB66_16:                               ##   in Loop: Header=BB66_5 Depth=1
	jmp	LBB66_5
LBB66_17:
	cmpl	$194, -24(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 18480(%rdx)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_stbi__process_frame_header
	cmpl	$0, %eax
	jne	LBB66_19
## %bb.18:
	movl	$0, -4(%rbp)
	jmp	LBB66_20
LBB66_19:
	movl	$1, -4(%rbp)
LBB66_20:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__rewind
_stbi__rewind:                          ## @stbi__rewind
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__idct_block
_stbi__idct_block:                      ## @stbi__idct_block
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp                      ## imm = 0x1C0
	leaq	-272(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -280(%rbp)
	movl	%esi, -284(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rax, -312(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -328(%rbp)
	movl	$0, -300(%rbp)
LBB68_1:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -300(%rbp)
	jge	LBB68_13
## %bb.2:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	16(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB68_10
## %bb.3:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	32(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB68_10
## %bb.4:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	48(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB68_10
## %bb.5:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	64(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB68_10
## %bb.6:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	80(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB68_10
## %bb.7:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	96(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB68_10
## %bb.8:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	112(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB68_10
## %bb.9:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	(%rax), %ecx
	shll	$2, %ecx
	movl	%ecx, -332(%rbp)
	movl	-332(%rbp), %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 224(%rax)
	movq	-312(%rbp), %rax
	movl	%ecx, 192(%rax)
	movq	-312(%rbp), %rax
	movl	%ecx, 160(%rax)
	movq	-312(%rbp), %rax
	movl	%ecx, 128(%rax)
	movq	-312(%rbp), %rax
	movl	%ecx, 96(%rax)
	movq	-312(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-312(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-312(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	LBB68_11
LBB68_10:                               ##   in Loop: Header=BB68_1 Depth=1
	movq	-328(%rbp), %rax
	movswl	32(%rax), %ecx
	movl	%ecx, -356(%rbp)
	movq	-328(%rbp), %rax
	movswl	96(%rax), %ecx
	movl	%ecx, -360(%rbp)
	movl	-356(%rbp), %ecx
	addl	-360(%rbp), %ecx
	imull	$2217, %ecx, %ecx               ## imm = 0x8A9
	movl	%ecx, -352(%rbp)
	movl	-352(%rbp), %ecx
	imull	$-7567, -360(%rbp), %edx        ## imm = 0xE271
	addl	%edx, %ecx
	movl	%ecx, -344(%rbp)
	movl	-352(%rbp), %ecx
	imull	$3135, -356(%rbp), %edx         ## imm = 0xC3F
	addl	%edx, %ecx
	movl	%ecx, -348(%rbp)
	movq	-328(%rbp), %rax
	movswl	(%rax), %ecx
	movl	%ecx, -356(%rbp)
	movq	-328(%rbp), %rax
	movswl	64(%rax), %ecx
	movl	%ecx, -360(%rbp)
	movl	-356(%rbp), %ecx
	addl	-360(%rbp), %ecx
	shll	$12, %ecx
	movl	%ecx, -336(%rbp)
	movl	-356(%rbp), %ecx
	subl	-360(%rbp), %ecx
	shll	$12, %ecx
	movl	%ecx, -340(%rbp)
	movl	-336(%rbp), %ecx
	addl	-348(%rbp), %ecx
	movl	%ecx, -372(%rbp)
	movl	-336(%rbp), %ecx
	subl	-348(%rbp), %ecx
	movl	%ecx, -384(%rbp)
	movl	-340(%rbp), %ecx
	addl	-344(%rbp), %ecx
	movl	%ecx, -376(%rbp)
	movl	-340(%rbp), %ecx
	subl	-344(%rbp), %ecx
	movl	%ecx, -380(%rbp)
	movq	-328(%rbp), %rax
	movswl	112(%rax), %ecx
	movl	%ecx, -336(%rbp)
	movq	-328(%rbp), %rax
	movswl	80(%rax), %ecx
	movl	%ecx, -340(%rbp)
	movq	-328(%rbp), %rax
	movswl	48(%rax), %ecx
	movl	%ecx, -344(%rbp)
	movq	-328(%rbp), %rax
	movswl	16(%rax), %ecx
	movl	%ecx, -348(%rbp)
	movl	-336(%rbp), %ecx
	addl	-344(%rbp), %ecx
	movl	%ecx, -360(%rbp)
	movl	-340(%rbp), %ecx
	addl	-348(%rbp), %ecx
	movl	%ecx, -364(%rbp)
	movl	-336(%rbp), %ecx
	addl	-348(%rbp), %ecx
	movl	%ecx, -352(%rbp)
	movl	-340(%rbp), %ecx
	addl	-344(%rbp), %ecx
	movl	%ecx, -356(%rbp)
	movl	-360(%rbp), %ecx
	addl	-364(%rbp), %ecx
	imull	$4816, %ecx, %ecx               ## imm = 0x12D0
	movl	%ecx, -368(%rbp)
	imull	$1223, -336(%rbp), %ecx         ## imm = 0x4C7
	movl	%ecx, -336(%rbp)
	imull	$8410, -340(%rbp), %ecx         ## imm = 0x20DA
	movl	%ecx, -340(%rbp)
	imull	$12586, -344(%rbp), %ecx        ## imm = 0x312A
	movl	%ecx, -344(%rbp)
	imull	$6149, -348(%rbp), %ecx         ## imm = 0x1805
	movl	%ecx, -348(%rbp)
	movl	-368(%rbp), %ecx
	imull	$-3685, -352(%rbp), %edx        ## imm = 0xF19B
	addl	%edx, %ecx
	movl	%ecx, -352(%rbp)
	movl	-368(%rbp), %ecx
	imull	$-10497, -356(%rbp), %edx       ## imm = 0xD6FF
	addl	%edx, %ecx
	movl	%ecx, -356(%rbp)
	imull	$-8034, -360(%rbp), %ecx        ## imm = 0xE09E
	movl	%ecx, -360(%rbp)
	imull	$-1597, -364(%rbp), %ecx        ## imm = 0xF9C3
	movl	%ecx, -364(%rbp)
	movl	-352(%rbp), %ecx
	addl	-364(%rbp), %ecx
	addl	-348(%rbp), %ecx
	movl	%ecx, -348(%rbp)
	movl	-356(%rbp), %ecx
	addl	-360(%rbp), %ecx
	addl	-344(%rbp), %ecx
	movl	%ecx, -344(%rbp)
	movl	-356(%rbp), %ecx
	addl	-364(%rbp), %ecx
	addl	-340(%rbp), %ecx
	movl	%ecx, -340(%rbp)
	movl	-352(%rbp), %ecx
	addl	-360(%rbp), %ecx
	addl	-336(%rbp), %ecx
	movl	%ecx, -336(%rbp)
	movl	-372(%rbp), %ecx
	addl	$512, %ecx                      ## imm = 0x200
	movl	%ecx, -372(%rbp)
	movl	-376(%rbp), %ecx
	addl	$512, %ecx                      ## imm = 0x200
	movl	%ecx, -376(%rbp)
	movl	-380(%rbp), %ecx
	addl	$512, %ecx                      ## imm = 0x200
	movl	%ecx, -380(%rbp)
	movl	-384(%rbp), %ecx
	addl	$512, %ecx                      ## imm = 0x200
	movl	%ecx, -384(%rbp)
	movl	-372(%rbp), %ecx
	addl	-348(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-372(%rbp), %ecx
	subl	-348(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 224(%rax)
	movl	-376(%rbp), %ecx
	addl	-344(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	-376(%rbp), %ecx
	subl	-344(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 192(%rax)
	movl	-380(%rbp), %ecx
	addl	-340(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 64(%rax)
	movl	-380(%rbp), %ecx
	subl	-340(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 160(%rax)
	movl	-384(%rbp), %ecx
	addl	-336(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 96(%rax)
	movl	-384(%rbp), %ecx
	subl	-336(%rbp), %ecx
	sarl	$10, %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, 128(%rax)
LBB68_11:                               ##   in Loop: Header=BB68_1 Depth=1
	jmp	LBB68_12
LBB68_12:                               ##   in Loop: Header=BB68_1 Depth=1
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	movq	-328(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -328(%rbp)
	movq	-312(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -312(%rbp)
	jmp	LBB68_1
LBB68_13:
	leaq	-272(%rbp), %rax
	movl	$0, -300(%rbp)
	movq	%rax, -312(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -320(%rbp)
LBB68_14:                               ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -300(%rbp)
	jge	LBB68_17
## %bb.15:                              ##   in Loop: Header=BB68_14 Depth=1
	movq	-312(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -408(%rbp)
	movq	-312(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -412(%rbp)
	movl	-408(%rbp), %ecx
	addl	-412(%rbp), %ecx
	imull	$2217, %ecx, %ecx               ## imm = 0x8A9
	movl	%ecx, -404(%rbp)
	movl	-404(%rbp), %ecx
	imull	$-7567, -412(%rbp), %edx        ## imm = 0xE271
	addl	%edx, %ecx
	movl	%ecx, -396(%rbp)
	movl	-404(%rbp), %ecx
	imull	$3135, -408(%rbp), %edx         ## imm = 0xC3F
	addl	%edx, %ecx
	movl	%ecx, -400(%rbp)
	movq	-312(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -408(%rbp)
	movq	-312(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -412(%rbp)
	movl	-408(%rbp), %ecx
	addl	-412(%rbp), %ecx
	shll	$12, %ecx
	movl	%ecx, -388(%rbp)
	movl	-408(%rbp), %ecx
	subl	-412(%rbp), %ecx
	shll	$12, %ecx
	movl	%ecx, -392(%rbp)
	movl	-388(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movl	%ecx, -424(%rbp)
	movl	-388(%rbp), %ecx
	subl	-400(%rbp), %ecx
	movl	%ecx, -436(%rbp)
	movl	-392(%rbp), %ecx
	addl	-396(%rbp), %ecx
	movl	%ecx, -428(%rbp)
	movl	-392(%rbp), %ecx
	subl	-396(%rbp), %ecx
	movl	%ecx, -432(%rbp)
	movq	-312(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -388(%rbp)
	movq	-312(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -392(%rbp)
	movq	-312(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -396(%rbp)
	movq	-312(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -400(%rbp)
	movl	-388(%rbp), %ecx
	addl	-396(%rbp), %ecx
	movl	%ecx, -412(%rbp)
	movl	-392(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movl	%ecx, -416(%rbp)
	movl	-388(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movl	%ecx, -404(%rbp)
	movl	-392(%rbp), %ecx
	addl	-396(%rbp), %ecx
	movl	%ecx, -408(%rbp)
	movl	-412(%rbp), %ecx
	addl	-416(%rbp), %ecx
	imull	$4816, %ecx, %ecx               ## imm = 0x12D0
	movl	%ecx, -420(%rbp)
	imull	$1223, -388(%rbp), %ecx         ## imm = 0x4C7
	movl	%ecx, -388(%rbp)
	imull	$8410, -392(%rbp), %ecx         ## imm = 0x20DA
	movl	%ecx, -392(%rbp)
	imull	$12586, -396(%rbp), %ecx        ## imm = 0x312A
	movl	%ecx, -396(%rbp)
	imull	$6149, -400(%rbp), %ecx         ## imm = 0x1805
	movl	%ecx, -400(%rbp)
	movl	-420(%rbp), %ecx
	imull	$-3685, -404(%rbp), %edx        ## imm = 0xF19B
	addl	%edx, %ecx
	movl	%ecx, -404(%rbp)
	movl	-420(%rbp), %ecx
	imull	$-10497, -408(%rbp), %edx       ## imm = 0xD6FF
	addl	%edx, %ecx
	movl	%ecx, -408(%rbp)
	imull	$-8034, -412(%rbp), %ecx        ## imm = 0xE09E
	movl	%ecx, -412(%rbp)
	imull	$-1597, -416(%rbp), %ecx        ## imm = 0xF9C3
	movl	%ecx, -416(%rbp)
	movl	-404(%rbp), %ecx
	addl	-416(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movl	%ecx, -400(%rbp)
	movl	-408(%rbp), %ecx
	addl	-412(%rbp), %ecx
	addl	-396(%rbp), %ecx
	movl	%ecx, -396(%rbp)
	movl	-408(%rbp), %ecx
	addl	-416(%rbp), %ecx
	addl	-392(%rbp), %ecx
	movl	%ecx, -392(%rbp)
	movl	-404(%rbp), %ecx
	addl	-412(%rbp), %ecx
	addl	-388(%rbp), %ecx
	movl	%ecx, -388(%rbp)
	movl	-424(%rbp), %ecx
	addl	$16842752, %ecx                 ## imm = 0x1010000
	movl	%ecx, -424(%rbp)
	movl	-428(%rbp), %ecx
	addl	$16842752, %ecx                 ## imm = 0x1010000
	movl	%ecx, -428(%rbp)
	movl	-432(%rbp), %ecx
	addl	$16842752, %ecx                 ## imm = 0x1010000
	movl	%ecx, -432(%rbp)
	movl	-436(%rbp), %ecx
	addl	$16842752, %ecx                 ## imm = 0x1010000
	movl	%ecx, -436(%rbp)
	movl	-424(%rbp), %ecx
	addl	-400(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, (%rsi)
	movl	-424(%rbp), %ecx
	subl	-400(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, 7(%rsi)
	movl	-428(%rbp), %ecx
	addl	-396(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, 1(%rsi)
	movl	-428(%rbp), %ecx
	subl	-396(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, 6(%rsi)
	movl	-432(%rbp), %ecx
	addl	-392(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, 2(%rsi)
	movl	-432(%rbp), %ecx
	subl	-392(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, 5(%rsi)
	movl	-436(%rbp), %ecx
	addl	-388(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, 3(%rsi)
	movl	-436(%rbp), %ecx
	subl	-388(%rbp), %ecx
	sarl	$17, %ecx
	movl	%ecx, %edi
	callq	_stbi__clamp
	movq	-320(%rbp), %rsi
	movb	%al, 4(%rsi)
## %bb.16:                              ##   in Loop: Header=BB68_14 Depth=1
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	movq	-312(%rbp), %rcx
	addq	$32, %rcx
	movq	%rcx, -312(%rbp)
	movl	-284(%rbp), %eax
	movq	-320(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -320(%rbp)
	jmp	LBB68_14
LBB68_17:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB68_19
## %bb.18:
	addq	$448, %rsp                      ## imm = 0x1C0
	popq	%rbp
	retq
LBB68_19:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__YCbCr_to_RGB_row
_stbi__YCbCr_to_RGB_row:                ## @stbi__YCbCr_to_RGB_row
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	$0, -44(%rbp)
LBB69_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB69_19
## %bb.2:                               ##   in Loop: Header=BB69_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	shll	$20, %edx
	addl	$524288, %edx                   ## imm = 0x80000
	movl	%edx, -48(%rbp)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	subl	$128, %edx
	movl	%edx, -64(%rbp)
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	subl	$128, %edx
	movl	%edx, -68(%rbp)
	movl	-48(%rbp), %edx
	imull	$1470208, -64(%rbp), %esi       ## imm = 0x166F00
	addl	%esi, %edx
	movl	%edx, -52(%rbp)
	movl	-48(%rbp), %edx
	imull	$-748800, -64(%rbp), %esi       ## imm = 0xFFF49300
	addl	%esi, %edx
	imull	$-360960, -68(%rbp), %esi       ## imm = 0xFFFA7E00
	andl	$-65536, %esi                   ## imm = 0xFFFF0000
	addl	%esi, %edx
	movl	%edx, -56(%rbp)
	movl	-48(%rbp), %edx
	imull	$1858048, -68(%rbp), %esi       ## imm = 0x1C5A00
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	movl	-52(%rbp), %edx
	sarl	$20, %edx
	movl	%edx, -52(%rbp)
	movl	-56(%rbp), %edx
	sarl	$20, %edx
	movl	%edx, -56(%rbp)
	movl	-60(%rbp), %edx
	sarl	$20, %edx
	movl	%edx, -60(%rbp)
	cmpl	$255, -52(%rbp)
	jbe	LBB69_7
## %bb.3:                               ##   in Loop: Header=BB69_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	LBB69_5
## %bb.4:                               ##   in Loop: Header=BB69_1 Depth=1
	movl	$0, -52(%rbp)
	jmp	LBB69_6
LBB69_5:                                ##   in Loop: Header=BB69_1 Depth=1
	movl	$255, -52(%rbp)
LBB69_6:                                ##   in Loop: Header=BB69_1 Depth=1
	jmp	LBB69_7
LBB69_7:                                ##   in Loop: Header=BB69_1 Depth=1
	cmpl	$255, -56(%rbp)
	jbe	LBB69_12
## %bb.8:                               ##   in Loop: Header=BB69_1 Depth=1
	cmpl	$0, -56(%rbp)
	jge	LBB69_10
## %bb.9:                               ##   in Loop: Header=BB69_1 Depth=1
	movl	$0, -56(%rbp)
	jmp	LBB69_11
LBB69_10:                               ##   in Loop: Header=BB69_1 Depth=1
	movl	$255, -56(%rbp)
LBB69_11:                               ##   in Loop: Header=BB69_1 Depth=1
	jmp	LBB69_12
LBB69_12:                               ##   in Loop: Header=BB69_1 Depth=1
	cmpl	$255, -60(%rbp)
	jbe	LBB69_17
## %bb.13:                              ##   in Loop: Header=BB69_1 Depth=1
	cmpl	$0, -60(%rbp)
	jge	LBB69_15
## %bb.14:                              ##   in Loop: Header=BB69_1 Depth=1
	movl	$0, -60(%rbp)
	jmp	LBB69_16
LBB69_15:                               ##   in Loop: Header=BB69_1 Depth=1
	movl	$255, -60(%rbp)
LBB69_16:                               ##   in Loop: Header=BB69_1 Depth=1
	jmp	LBB69_17
LBB69_17:                               ##   in Loop: Header=BB69_1 Depth=1
	movl	-52(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
	movl	-56(%rbp), %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-8(%rbp), %rcx
	movb	%dl, 1(%rcx)
	movl	-60(%rbp), %esi
                                        ## kill: def $sil killed $sil killed $esi
	movq	-8(%rbp), %rcx
	movb	%sil, 2(%rcx)
	movq	-8(%rbp), %rcx
	movb	$-1, 3(%rcx)
	movl	-40(%rbp), %edi
	movq	-8(%rbp), %rcx
	movslq	%edi, %r8
	addq	%r8, %rcx
	movq	%rcx, -8(%rbp)
## %bb.18:                              ##   in Loop: Header=BB69_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB69_1
LBB69_19:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__resample_row_hv_2
_stbi__resample_row_hv_2:               ## @stbi__resample_row_hv_2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	cmpl	$1, -36(%rbp)
	jne	LBB70_2
## %bb.1:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB70_7
LBB70_2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movl	$1, -44(%rbp)
LBB70_3:                                ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB70_6
## %bb.4:                               ##   in Loop: Header=BB70_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %eax
	imull	$3, %eax, %eax
	movq	-32(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	addl	%esi, %eax
	movl	%eax, -52(%rbp)
	imull	$3, -48(%rbp), %eax
	addl	-52(%rbp), %eax
	addl	$8, %eax
	sarl	$4, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movl	-44(%rbp), %esi
	shll	$1, %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	movb	%al, (%rcx,%rdx)
	imull	$3, -52(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$8, %esi
	sarl	$4, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movq	-16(%rbp), %rcx
	movl	-44(%rbp), %edi
	shll	$1, %edi
	movslq	%edi, %rdx
	movb	%sil, (%rcx,%rdx)
## %bb.5:                               ##   in Loop: Header=BB70_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB70_3
LBB70_6:
	movl	-52(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	shll	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	movb	%al, (%rcx,%rsi)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
LBB70_7:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__sse2_available
_stbi__sse2_available:                  ## @stbi__sse2_available
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__idct_simd
_stbi__idct_simd:                       ## @stbi__idct_simd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$11312, %eax                    ## imm = 0x2C30
	callq	____chkstk_darwin
	subq	%rax, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -8648(%rbp)
	movl	%esi, -8652(%rbp)
	movq	%rdx, -8664(%rbp)
	movw	$2217, -8626(%rbp)              ## imm = 0x8A9
	movw	$-5350, -8628(%rbp)             ## imm = 0xEB1A
	movw	$2217, -8630(%rbp)              ## imm = 0x8A9
	movw	$-5350, -8632(%rbp)             ## imm = 0xEB1A
	movw	$2217, -8634(%rbp)              ## imm = 0x8A9
	movw	$-5350, -8636(%rbp)             ## imm = 0xEB1A
	movw	$2217, -8638(%rbp)              ## imm = 0x8A9
	movw	$-5350, -8640(%rbp)             ## imm = 0xEB1A
	movw	-8640(%rbp), %ax
	movw	-8638(%rbp), %cx
	movw	-8636(%rbp), %r8w
	movw	-8634(%rbp), %r9w
	movw	-8632(%rbp), %r10w
	movw	-8630(%rbp), %r11w
	movw	-8628(%rbp), %bx
	movw	-8626(%rbp), %r14w
	movw	%ax, -8594(%rbp)
	movw	%cx, -8596(%rbp)
	movw	%r8w, -8598(%rbp)
	movw	%r9w, -8600(%rbp)
	movw	%r10w, -8602(%rbp)
	movw	%r11w, -8604(%rbp)
	movw	%bx, -8606(%rbp)
	movw	%r14w, -8608(%rbp)
	movzwl	-8608(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-8606(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-8604(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-8602(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-8600(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-8598(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-8596(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-8594(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -8624(%rbp)
	movaps	-8624(%rbp), %xmm0
	movaps	%xmm0, -8832(%rbp)
	movw	$5352, -66(%rbp)                ## imm = 0x14E8
	movw	$2217, -68(%rbp)                ## imm = 0x8A9
	movw	$5352, -70(%rbp)                ## imm = 0x14E8
	movw	$2217, -72(%rbp)                ## imm = 0x8A9
	movw	$5352, -74(%rbp)                ## imm = 0x14E8
	movw	$2217, -76(%rbp)                ## imm = 0x8A9
	movw	$5352, -78(%rbp)                ## imm = 0x14E8
	movw	$2217, -80(%rbp)                ## imm = 0x8A9
	movw	-80(%rbp), %ax
	movw	-78(%rbp), %cx
	movw	-76(%rbp), %r8w
	movw	-74(%rbp), %r9w
	movw	-72(%rbp), %r10w
	movw	-70(%rbp), %r11w
	movw	-68(%rbp), %bx
	movw	-66(%rbp), %r14w
	movw	%ax, -34(%rbp)
	movw	%cx, -36(%rbp)
	movw	%r8w, -38(%rbp)
	movw	%r9w, -40(%rbp)
	movw	%r10w, -42(%rbp)
	movw	%r11w, -44(%rbp)
	movw	%bx, -46(%rbp)
	movw	%r14w, -48(%rbp)
	movzwl	-48(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-46(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-44(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-42(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-40(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-38(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-36(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-34(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	-64(%rbp), %xmm0
	movaps	%xmm0, -8848(%rbp)
	movw	$1131, -114(%rbp)               ## imm = 0x46B
	movw	$4816, -116(%rbp)               ## imm = 0x12D0
	movw	$1131, -118(%rbp)               ## imm = 0x46B
	movw	$4816, -120(%rbp)               ## imm = 0x12D0
	movw	$1131, -122(%rbp)               ## imm = 0x46B
	movw	$4816, -124(%rbp)               ## imm = 0x12D0
	movw	$1131, -126(%rbp)               ## imm = 0x46B
	movw	$4816, -128(%rbp)               ## imm = 0x12D0
	movw	-128(%rbp), %ax
	movw	-126(%rbp), %cx
	movw	-124(%rbp), %r8w
	movw	-122(%rbp), %r9w
	movw	-120(%rbp), %r10w
	movw	-118(%rbp), %r11w
	movw	-116(%rbp), %bx
	movw	-114(%rbp), %r14w
	movw	%ax, -82(%rbp)
	movw	%cx, -84(%rbp)
	movw	%r8w, -86(%rbp)
	movw	%r9w, -88(%rbp)
	movw	%r10w, -90(%rbp)
	movw	%r11w, -92(%rbp)
	movw	%bx, -94(%rbp)
	movw	%r14w, -96(%rbp)
	movzwl	-96(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-94(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-92(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-90(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-88(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-86(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-84(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-82(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	-112(%rbp), %xmm0
	movaps	%xmm0, -8864(%rbp)
	movw	$4816, -162(%rbp)               ## imm = 0x12D0
	movw	$-5681, -164(%rbp)              ## imm = 0xE9CF
	movw	$4816, -166(%rbp)               ## imm = 0x12D0
	movw	$-5681, -168(%rbp)              ## imm = 0xE9CF
	movw	$4816, -170(%rbp)               ## imm = 0x12D0
	movw	$-5681, -172(%rbp)              ## imm = 0xE9CF
	movw	$4816, -174(%rbp)               ## imm = 0x12D0
	movw	$-5681, -176(%rbp)              ## imm = 0xE9CF
	movw	-176(%rbp), %ax
	movw	-174(%rbp), %cx
	movw	-172(%rbp), %r8w
	movw	-170(%rbp), %r9w
	movw	-168(%rbp), %r10w
	movw	-166(%rbp), %r11w
	movw	-164(%rbp), %bx
	movw	-162(%rbp), %r14w
	movw	%ax, -130(%rbp)
	movw	%cx, -132(%rbp)
	movw	%r8w, -134(%rbp)
	movw	%r9w, -136(%rbp)
	movw	%r10w, -138(%rbp)
	movw	%r11w, -140(%rbp)
	movw	%bx, -142(%rbp)
	movw	%r14w, -144(%rbp)
	movzwl	-144(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-142(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-140(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-138(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-136(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-134(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-132(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-130(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	-160(%rbp), %xmm0
	movaps	%xmm0, -8880(%rbp)
	movw	$-6811, -210(%rbp)              ## imm = 0xE565
	movw	$-8034, -212(%rbp)              ## imm = 0xE09E
	movw	$-6811, -214(%rbp)              ## imm = 0xE565
	movw	$-8034, -216(%rbp)              ## imm = 0xE09E
	movw	$-6811, -218(%rbp)              ## imm = 0xE565
	movw	$-8034, -220(%rbp)              ## imm = 0xE09E
	movw	$-6811, -222(%rbp)              ## imm = 0xE565
	movw	$-8034, -224(%rbp)              ## imm = 0xE09E
	movw	-224(%rbp), %ax
	movw	-222(%rbp), %cx
	movw	-220(%rbp), %r8w
	movw	-218(%rbp), %r9w
	movw	-216(%rbp), %r10w
	movw	-214(%rbp), %r11w
	movw	-212(%rbp), %bx
	movw	-210(%rbp), %r14w
	movw	%ax, -178(%rbp)
	movw	%cx, -180(%rbp)
	movw	%r8w, -182(%rbp)
	movw	%r9w, -184(%rbp)
	movw	%r10w, -186(%rbp)
	movw	%r11w, -188(%rbp)
	movw	%bx, -190(%rbp)
	movw	%r14w, -192(%rbp)
	movzwl	-192(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-190(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-188(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-186(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-184(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-182(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-180(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-178(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	-208(%rbp), %xmm0
	movaps	%xmm0, -8896(%rbp)
	movw	$-8034, -258(%rbp)              ## imm = 0xE09E
	movw	$4552, -260(%rbp)               ## imm = 0x11C8
	movw	$-8034, -262(%rbp)              ## imm = 0xE09E
	movw	$4552, -264(%rbp)               ## imm = 0x11C8
	movw	$-8034, -266(%rbp)              ## imm = 0xE09E
	movw	$4552, -268(%rbp)               ## imm = 0x11C8
	movw	$-8034, -270(%rbp)              ## imm = 0xE09E
	movw	$4552, -272(%rbp)               ## imm = 0x11C8
	movw	-272(%rbp), %ax
	movw	-270(%rbp), %cx
	movw	-268(%rbp), %r8w
	movw	-266(%rbp), %r9w
	movw	-264(%rbp), %r10w
	movw	-262(%rbp), %r11w
	movw	-260(%rbp), %bx
	movw	-258(%rbp), %r14w
	movw	%ax, -226(%rbp)
	movw	%cx, -228(%rbp)
	movw	%r8w, -230(%rbp)
	movw	%r9w, -232(%rbp)
	movw	%r10w, -234(%rbp)
	movw	%r11w, -236(%rbp)
	movw	%bx, -238(%rbp)
	movw	%r14w, -240(%rbp)
	movzwl	-240(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-238(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-236(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-234(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-232(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-230(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-228(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-226(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	-256(%rbp), %xmm0
	movaps	%xmm0, -8912(%rbp)
	movw	$6813, -306(%rbp)               ## imm = 0x1A9D
	movw	$-1597, -308(%rbp)              ## imm = 0xF9C3
	movw	$6813, -310(%rbp)               ## imm = 0x1A9D
	movw	$-1597, -312(%rbp)              ## imm = 0xF9C3
	movw	$6813, -314(%rbp)               ## imm = 0x1A9D
	movw	$-1597, -316(%rbp)              ## imm = 0xF9C3
	movw	$6813, -318(%rbp)               ## imm = 0x1A9D
	movw	$-1597, -320(%rbp)              ## imm = 0xF9C3
	movw	-320(%rbp), %ax
	movw	-318(%rbp), %cx
	movw	-316(%rbp), %r8w
	movw	-314(%rbp), %r9w
	movw	-312(%rbp), %r10w
	movw	-310(%rbp), %r11w
	movw	-308(%rbp), %bx
	movw	-306(%rbp), %r14w
	movw	%ax, -274(%rbp)
	movw	%cx, -276(%rbp)
	movw	%r8w, -278(%rbp)
	movw	%r9w, -280(%rbp)
	movw	%r10w, -282(%rbp)
	movw	%r11w, -284(%rbp)
	movw	%bx, -286(%rbp)
	movw	%r14w, -288(%rbp)
	movzwl	-288(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-286(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-284(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-282(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-280(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-278(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-276(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-274(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -304(%rbp)
	movaps	-304(%rbp), %xmm0
	movaps	%xmm0, -8928(%rbp)
	movw	$-1597, -354(%rbp)              ## imm = 0xF9C3
	movw	$4552, -356(%rbp)               ## imm = 0x11C8
	movw	$-1597, -358(%rbp)              ## imm = 0xF9C3
	movw	$4552, -360(%rbp)               ## imm = 0x11C8
	movw	$-1597, -362(%rbp)              ## imm = 0xF9C3
	movw	$4552, -364(%rbp)               ## imm = 0x11C8
	movw	$-1597, -366(%rbp)              ## imm = 0xF9C3
	movw	$4552, -368(%rbp)               ## imm = 0x11C8
	movw	-368(%rbp), %ax
	movw	-366(%rbp), %cx
	movw	-364(%rbp), %r8w
	movw	-362(%rbp), %r9w
	movw	-360(%rbp), %r10w
	movw	-358(%rbp), %r11w
	movw	-356(%rbp), %bx
	movw	-354(%rbp), %r14w
	movw	%ax, -322(%rbp)
	movw	%cx, -324(%rbp)
	movw	%r8w, -326(%rbp)
	movw	%r9w, -328(%rbp)
	movw	%r10w, -330(%rbp)
	movw	%r11w, -332(%rbp)
	movw	%bx, -334(%rbp)
	movw	%r14w, -336(%rbp)
	movzwl	-336(%rbp), %esi
	movd	%esi, %xmm0
	movzwl	-334(%rbp), %esi
	pinsrw	$1, %esi, %xmm0
	movzwl	-332(%rbp), %esi
	pinsrw	$2, %esi, %xmm0
	movzwl	-330(%rbp), %esi
	pinsrw	$3, %esi, %xmm0
	movzwl	-328(%rbp), %esi
	pinsrw	$4, %esi, %xmm0
	movzwl	-326(%rbp), %esi
	pinsrw	$5, %esi, %xmm0
	movzwl	-324(%rbp), %esi
	pinsrw	$6, %esi, %xmm0
	movzwl	-322(%rbp), %esi
	pinsrw	$7, %esi, %xmm0
	movaps	%xmm0, -352(%rbp)
	movaps	-352(%rbp), %xmm0
	movaps	%xmm0, -8944(%rbp)
	movl	$512, -404(%rbp)                ## imm = 0x200
	movl	-404(%rbp), %esi
	movl	%esi, -372(%rbp)
	movl	%esi, -376(%rbp)
	movl	%esi, -380(%rbp)
	movl	%esi, -384(%rbp)
	movl	-380(%rbp), %esi
	movl	-376(%rbp), %r15d
	movl	-372(%rbp), %r12d
	movd	-384(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	pinsrd	$1, %esi, %xmm0
	pinsrd	$2, %r15d, %xmm0
	pinsrd	$3, %r12d, %xmm0
	movaps	%xmm0, -400(%rbp)
	movaps	-400(%rbp), %xmm0
	movaps	%xmm0, -8960(%rbp)
	movl	$16842752, -452(%rbp)           ## imm = 0x1010000
	movl	-452(%rbp), %esi
	movl	%esi, -408(%rbp)
	movl	%esi, -412(%rbp)
	movl	%esi, -416(%rbp)
	movl	%esi, -420(%rbp)
	movl	-416(%rbp), %esi
	movl	-412(%rbp), %r15d
	movl	-408(%rbp), %r12d
	movd	-420(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	pinsrd	$1, %esi, %xmm0
	pinsrd	$2, %r15d, %xmm0
	pinsrd	$3, %r12d, %xmm0
	movaps	%xmm0, -448(%rbp)
	movaps	-448(%rbp), %xmm0
	movaps	%xmm0, -8976(%rbp)
	movq	-8664(%rbp), %rdx
	movq	%rdx, -464(%rbp)
	movq	-464(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8688(%rbp)
	movq	-8664(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8704(%rbp)
	movq	-8664(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, -480(%rbp)
	movq	-480(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8720(%rbp)
	movq	-8664(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdx, -488(%rbp)
	movq	-488(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8736(%rbp)
	movq	-8664(%rbp), %rdx
	addq	$64, %rdx
	movq	%rdx, -496(%rbp)
	movq	-496(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8752(%rbp)
	movq	-8664(%rbp), %rdx
	addq	$80, %rdx
	movq	%rdx, -504(%rbp)
	movq	-504(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8768(%rbp)
	movq	-8664(%rbp), %rdx
	addq	$96, %rdx
	movq	%rdx, -512(%rbp)
	movq	-512(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8784(%rbp)
	movq	-8664(%rbp), %rdx
	addq	$112, %rdx
	movq	%rdx, -520(%rbp)
	movq	-520(%rbp), %rdx
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -8800(%rbp)
	movaps	-8720(%rbp), %xmm0
	movaps	-8784(%rbp), %xmm1
	movaps	%xmm0, -544(%rbp)
	movaps	%xmm1, -560(%rbp)
	movaps	-544(%rbp), %xmm0
	movaps	-560(%rbp), %xmm1
	punpcklwd	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movaps	%xmm0, -8992(%rbp)
	movaps	-8720(%rbp), %xmm0
	movaps	-8784(%rbp), %xmm1
	movaps	%xmm0, -576(%rbp)
	movaps	%xmm1, -592(%rbp)
	movaps	-576(%rbp), %xmm0
	movaps	-592(%rbp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -9008(%rbp)
	movaps	-8992(%rbp), %xmm0
	movaps	-8832(%rbp), %xmm1
	movaps	%xmm0, -608(%rbp)
	movaps	%xmm1, -624(%rbp)
	movaps	-608(%rbp), %xmm0
	movaps	-624(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9024(%rbp)
	movaps	-9008(%rbp), %xmm0
	movaps	-8832(%rbp), %xmm1
	movaps	%xmm0, -640(%rbp)
	movaps	%xmm1, -656(%rbp)
	movaps	-640(%rbp), %xmm0
	movaps	-656(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9040(%rbp)
	movaps	-8992(%rbp), %xmm0
	movaps	-8848(%rbp), %xmm1
	movaps	%xmm0, -672(%rbp)
	movaps	%xmm1, -688(%rbp)
	movaps	-672(%rbp), %xmm0
	movaps	-688(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9056(%rbp)
	movaps	-9008(%rbp), %xmm0
	movaps	-8848(%rbp), %xmm1
	movaps	%xmm0, -704(%rbp)
	movaps	%xmm1, -720(%rbp)
	movaps	-704(%rbp), %xmm0
	movaps	-720(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9072(%rbp)
	movaps	-8688(%rbp), %xmm0
	movaps	-8752(%rbp), %xmm1
	movaps	%xmm0, -736(%rbp)
	movaps	%xmm1, -752(%rbp)
	movaps	-736(%rbp), %xmm0
	movaps	-752(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -9088(%rbp)
	movaps	-8688(%rbp), %xmm0
	movaps	-8752(%rbp), %xmm1
	movaps	%xmm0, -768(%rbp)
	movaps	%xmm1, -784(%rbp)
	movaps	-768(%rbp), %xmm0
	movaps	-784(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -9104(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -800(%rbp)
	movaps	-800(%rbp), %xmm1
	movaps	-9088(%rbp), %xmm2
	movaps	%xmm1, -816(%rbp)
	movaps	%xmm2, -832(%rbp)
	movaps	-816(%rbp), %xmm1
	movaps	-832(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -848(%rbp)
	movl	$4, -852(%rbp)
	movaps	-848(%rbp), %xmm1
	movd	-852(%rbp), %xmm2               ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm1, -9120(%rbp)
	movaps	%xmm0, -880(%rbp)
	movaps	-880(%rbp), %xmm1
	movaps	-9088(%rbp), %xmm2
	movaps	%xmm1, -896(%rbp)
	movaps	%xmm2, -912(%rbp)
	movaps	-896(%rbp), %xmm1
	movaps	-912(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -928(%rbp)
	movl	$4, -932(%rbp)
	movaps	-928(%rbp), %xmm1
	movd	-932(%rbp), %xmm2               ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm1, -9136(%rbp)
	movaps	%xmm0, -960(%rbp)
	movaps	-960(%rbp), %xmm1
	movaps	-9104(%rbp), %xmm2
	movaps	%xmm1, -976(%rbp)
	movaps	%xmm2, -992(%rbp)
	movaps	-976(%rbp), %xmm1
	movaps	-992(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -1008(%rbp)
	movl	$4, -1012(%rbp)
	movaps	-1008(%rbp), %xmm1
	movd	-1012(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm1, -9152(%rbp)
	movaps	%xmm0, -1040(%rbp)
	movaps	-1040(%rbp), %xmm1
	movaps	-9104(%rbp), %xmm2
	movaps	%xmm1, -1056(%rbp)
	movaps	%xmm2, -1072(%rbp)
	movaps	-1056(%rbp), %xmm1
	movaps	-1072(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -1088(%rbp)
	movl	$4, -1092(%rbp)
	movaps	-1088(%rbp), %xmm1
	movd	-1092(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm1, -9168(%rbp)
	movaps	-9120(%rbp), %xmm1
	movaps	-9056(%rbp), %xmm2
	movaps	%xmm1, -1120(%rbp)
	movaps	%xmm2, -1136(%rbp)
	movaps	-1120(%rbp), %xmm1
	movaps	-1136(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9184(%rbp)
	movaps	-9136(%rbp), %xmm1
	movaps	-9072(%rbp), %xmm2
	movaps	%xmm1, -1152(%rbp)
	movaps	%xmm2, -1168(%rbp)
	movaps	-1152(%rbp), %xmm1
	movaps	-1168(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9200(%rbp)
	movaps	-9120(%rbp), %xmm1
	movaps	-9056(%rbp), %xmm2
	movaps	%xmm1, -1184(%rbp)
	movaps	%xmm2, -1200(%rbp)
	movaps	-1184(%rbp), %xmm1
	movaps	-1200(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9216(%rbp)
	movaps	-9136(%rbp), %xmm1
	movaps	-9072(%rbp), %xmm2
	movaps	%xmm1, -1216(%rbp)
	movaps	%xmm2, -1232(%rbp)
	movaps	-1216(%rbp), %xmm1
	movaps	-1232(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9232(%rbp)
	movaps	-9152(%rbp), %xmm1
	movaps	-9024(%rbp), %xmm2
	movaps	%xmm1, -1248(%rbp)
	movaps	%xmm2, -1264(%rbp)
	movaps	-1248(%rbp), %xmm1
	movaps	-1264(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9248(%rbp)
	movaps	-9168(%rbp), %xmm1
	movaps	-9040(%rbp), %xmm2
	movaps	%xmm1, -1280(%rbp)
	movaps	%xmm2, -1296(%rbp)
	movaps	-1280(%rbp), %xmm1
	movaps	-1296(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9264(%rbp)
	movaps	-9152(%rbp), %xmm1
	movaps	-9024(%rbp), %xmm2
	movaps	%xmm1, -1312(%rbp)
	movaps	%xmm2, -1328(%rbp)
	movaps	-1312(%rbp), %xmm1
	movaps	-1328(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9280(%rbp)
	movaps	-9168(%rbp), %xmm1
	movaps	-9040(%rbp), %xmm2
	movaps	%xmm1, -1344(%rbp)
	movaps	%xmm2, -1360(%rbp)
	movaps	-1344(%rbp), %xmm1
	movaps	-1360(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9296(%rbp)
	movaps	-8800(%rbp), %xmm1
	movaps	-8736(%rbp), %xmm2
	movaps	%xmm1, -1376(%rbp)
	movaps	%xmm2, -1392(%rbp)
	movaps	-1376(%rbp), %xmm1
	movaps	-1392(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -9312(%rbp)
	movaps	-8800(%rbp), %xmm1
	movaps	-8736(%rbp), %xmm2
	movaps	%xmm1, -1408(%rbp)
	movaps	%xmm2, -1424(%rbp)
	movaps	-1408(%rbp), %xmm1
	movaps	-1424(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -9328(%rbp)
	movaps	-9312(%rbp), %xmm1
	movaps	-8896(%rbp), %xmm2
	movaps	%xmm1, -1440(%rbp)
	movaps	%xmm2, -1456(%rbp)
	movaps	-1440(%rbp), %xmm1
	movaps	-1456(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9344(%rbp)
	movaps	-9328(%rbp), %xmm1
	movaps	-8896(%rbp), %xmm2
	movaps	%xmm1, -1472(%rbp)
	movaps	%xmm2, -1488(%rbp)
	movaps	-1472(%rbp), %xmm1
	movaps	-1488(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9360(%rbp)
	movaps	-9312(%rbp), %xmm1
	movaps	-8912(%rbp), %xmm2
	movaps	%xmm1, -1504(%rbp)
	movaps	%xmm2, -1520(%rbp)
	movaps	-1504(%rbp), %xmm1
	movaps	-1520(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9376(%rbp)
	movaps	-9328(%rbp), %xmm1
	movaps	-8912(%rbp), %xmm2
	movaps	%xmm1, -1536(%rbp)
	movaps	%xmm2, -1552(%rbp)
	movaps	-1536(%rbp), %xmm1
	movaps	-1552(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9392(%rbp)
	movaps	-8768(%rbp), %xmm1
	movaps	-8704(%rbp), %xmm2
	movaps	%xmm1, -1568(%rbp)
	movaps	%xmm2, -1584(%rbp)
	movaps	-1568(%rbp), %xmm1
	movaps	-1584(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -9408(%rbp)
	movaps	-8768(%rbp), %xmm1
	movaps	-8704(%rbp), %xmm2
	movaps	%xmm1, -1600(%rbp)
	movaps	%xmm2, -1616(%rbp)
	movaps	-1600(%rbp), %xmm1
	movaps	-1616(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -9424(%rbp)
	movaps	-9408(%rbp), %xmm1
	movaps	-8928(%rbp), %xmm2
	movaps	%xmm1, -1632(%rbp)
	movaps	%xmm2, -1648(%rbp)
	movaps	-1632(%rbp), %xmm1
	movaps	-1648(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9440(%rbp)
	movaps	-9424(%rbp), %xmm1
	movaps	-8928(%rbp), %xmm2
	movaps	%xmm1, -1664(%rbp)
	movaps	%xmm2, -1680(%rbp)
	movaps	-1664(%rbp), %xmm1
	movaps	-1680(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9456(%rbp)
	movaps	-9408(%rbp), %xmm1
	movaps	-8944(%rbp), %xmm2
	movaps	%xmm1, -1696(%rbp)
	movaps	%xmm2, -1712(%rbp)
	movaps	-1696(%rbp), %xmm1
	movaps	-1712(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9472(%rbp)
	movaps	-9424(%rbp), %xmm1
	movaps	-8944(%rbp), %xmm2
	movaps	%xmm1, -1728(%rbp)
	movaps	%xmm2, -1744(%rbp)
	movaps	-1728(%rbp), %xmm1
	movaps	-1744(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9488(%rbp)
	movaps	-8704(%rbp), %xmm1
	movaps	-8800(%rbp), %xmm2
	movaps	%xmm1, -1760(%rbp)
	movaps	%xmm2, -1776(%rbp)
	movaps	-1760(%rbp), %xmm1
	movaps	-1776(%rbp), %xmm2
	paddw	%xmm2, %xmm1
	movaps	%xmm1, -9504(%rbp)
	movaps	-8736(%rbp), %xmm1
	movaps	-8768(%rbp), %xmm2
	movaps	%xmm1, -1792(%rbp)
	movaps	%xmm2, -1808(%rbp)
	movaps	-1792(%rbp), %xmm1
	movaps	-1808(%rbp), %xmm2
	paddw	%xmm2, %xmm1
	movaps	%xmm1, -9520(%rbp)
	movaps	-9504(%rbp), %xmm1
	movaps	-9520(%rbp), %xmm2
	movaps	%xmm1, -1824(%rbp)
	movaps	%xmm2, -1840(%rbp)
	movaps	-1824(%rbp), %xmm1
	movaps	-1840(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -9536(%rbp)
	movaps	-9504(%rbp), %xmm1
	movaps	-9520(%rbp), %xmm2
	movaps	%xmm1, -1856(%rbp)
	movaps	%xmm2, -1872(%rbp)
	movaps	-1856(%rbp), %xmm1
	movaps	-1872(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -9552(%rbp)
	movaps	-9536(%rbp), %xmm1
	movaps	-8864(%rbp), %xmm2
	movaps	%xmm1, -1888(%rbp)
	movaps	%xmm2, -1904(%rbp)
	movaps	-1888(%rbp), %xmm1
	movaps	-1904(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9568(%rbp)
	movaps	-9552(%rbp), %xmm1
	movaps	-8864(%rbp), %xmm2
	movaps	%xmm1, -1920(%rbp)
	movaps	%xmm2, -1936(%rbp)
	movaps	-1920(%rbp), %xmm1
	movaps	-1936(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9584(%rbp)
	movaps	-9536(%rbp), %xmm1
	movaps	-8880(%rbp), %xmm2
	movaps	%xmm1, -1952(%rbp)
	movaps	%xmm2, -1968(%rbp)
	movaps	-1952(%rbp), %xmm1
	movaps	-1968(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9600(%rbp)
	movaps	-9552(%rbp), %xmm1
	movaps	-8880(%rbp), %xmm2
	movaps	%xmm1, -1984(%rbp)
	movaps	%xmm2, -2000(%rbp)
	movaps	-1984(%rbp), %xmm1
	movaps	-2000(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -9616(%rbp)
	movaps	-9344(%rbp), %xmm1
	movaps	-9568(%rbp), %xmm2
	movaps	%xmm1, -2016(%rbp)
	movaps	%xmm2, -2032(%rbp)
	movaps	-2016(%rbp), %xmm1
	movaps	-2032(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9632(%rbp)
	movaps	-9360(%rbp), %xmm1
	movaps	-9584(%rbp), %xmm2
	movaps	%xmm1, -2048(%rbp)
	movaps	%xmm2, -2064(%rbp)
	movaps	-2048(%rbp), %xmm1
	movaps	-2064(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9648(%rbp)
	movaps	-9440(%rbp), %xmm1
	movaps	-9600(%rbp), %xmm2
	movaps	%xmm1, -2080(%rbp)
	movaps	%xmm2, -2096(%rbp)
	movaps	-2080(%rbp), %xmm1
	movaps	-2096(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9664(%rbp)
	movaps	-9456(%rbp), %xmm1
	movaps	-9616(%rbp), %xmm2
	movaps	%xmm1, -2112(%rbp)
	movaps	%xmm2, -2128(%rbp)
	movaps	-2112(%rbp), %xmm1
	movaps	-2128(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9680(%rbp)
	movaps	-9376(%rbp), %xmm1
	movaps	-9600(%rbp), %xmm2
	movaps	%xmm1, -2144(%rbp)
	movaps	%xmm2, -2160(%rbp)
	movaps	-2144(%rbp), %xmm1
	movaps	-2160(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9696(%rbp)
	movaps	-9392(%rbp), %xmm1
	movaps	-9616(%rbp), %xmm2
	movaps	%xmm1, -2176(%rbp)
	movaps	%xmm2, -2192(%rbp)
	movaps	-2176(%rbp), %xmm1
	movaps	-2192(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9712(%rbp)
	movaps	-9472(%rbp), %xmm1
	movaps	-9568(%rbp), %xmm2
	movaps	%xmm1, -2208(%rbp)
	movaps	%xmm2, -2224(%rbp)
	movaps	-2208(%rbp), %xmm1
	movaps	-2224(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9728(%rbp)
	movaps	-9488(%rbp), %xmm1
	movaps	-9584(%rbp), %xmm2
	movaps	%xmm1, -2240(%rbp)
	movaps	%xmm2, -2256(%rbp)
	movaps	-2240(%rbp), %xmm1
	movaps	-2256(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9744(%rbp)
	movaps	-9184(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -2272(%rbp)
	movaps	%xmm2, -2288(%rbp)
	movaps	-2272(%rbp), %xmm1
	movaps	-2288(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9760(%rbp)
	movaps	-9200(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -2304(%rbp)
	movaps	%xmm2, -2320(%rbp)
	movaps	-2304(%rbp), %xmm1
	movaps	-2320(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9776(%rbp)
	movaps	-9760(%rbp), %xmm1
	movaps	-9728(%rbp), %xmm2
	movaps	%xmm1, -2336(%rbp)
	movaps	%xmm2, -2352(%rbp)
	movaps	-2336(%rbp), %xmm1
	movaps	-2352(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9792(%rbp)
	movaps	-9776(%rbp), %xmm1
	movaps	-9744(%rbp), %xmm2
	movaps	%xmm1, -2368(%rbp)
	movaps	%xmm2, -2384(%rbp)
	movaps	-2368(%rbp), %xmm1
	movaps	-2384(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9808(%rbp)
	movaps	-9760(%rbp), %xmm1
	movaps	-9728(%rbp), %xmm2
	movaps	%xmm1, -2400(%rbp)
	movaps	%xmm2, -2416(%rbp)
	movaps	-2400(%rbp), %xmm1
	movaps	-2416(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9824(%rbp)
	movaps	-9776(%rbp), %xmm1
	movaps	-9744(%rbp), %xmm2
	movaps	%xmm1, -2432(%rbp)
	movaps	%xmm2, -2448(%rbp)
	movaps	-2432(%rbp), %xmm1
	movaps	-2448(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9840(%rbp)
	movaps	-9792(%rbp), %xmm1
	movaps	%xmm1, -2464(%rbp)
	movl	$10, -2468(%rbp)
	movaps	-2464(%rbp), %xmm1
	movd	-2468(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-9808(%rbp), %xmm2
	movaps	%xmm2, -2496(%rbp)
	movl	$10, -2500(%rbp)
	movaps	-2496(%rbp), %xmm2
	movd	-2500(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -2528(%rbp)
	movaps	%xmm2, -2544(%rbp)
	movaps	-2528(%rbp), %xmm1
	movaps	-2544(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8688(%rbp)
	movaps	-9824(%rbp), %xmm1
	movaps	%xmm1, -2560(%rbp)
	movl	$10, -2564(%rbp)
	movaps	-2560(%rbp), %xmm1
	movd	-2564(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-9840(%rbp), %xmm2
	movaps	%xmm2, -2592(%rbp)
	movl	$10, -2596(%rbp)
	movaps	-2592(%rbp), %xmm2
	movd	-2596(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -2624(%rbp)
	movaps	%xmm2, -2640(%rbp)
	movaps	-2624(%rbp), %xmm1
	movaps	-2640(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8800(%rbp)
	movaps	-9248(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -2656(%rbp)
	movaps	%xmm2, -2672(%rbp)
	movaps	-2656(%rbp), %xmm1
	movaps	-2672(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9856(%rbp)
	movaps	-9264(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -2688(%rbp)
	movaps	%xmm2, -2704(%rbp)
	movaps	-2688(%rbp), %xmm1
	movaps	-2704(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9872(%rbp)
	movaps	-9856(%rbp), %xmm1
	movaps	-9696(%rbp), %xmm2
	movaps	%xmm1, -2720(%rbp)
	movaps	%xmm2, -2736(%rbp)
	movaps	-2720(%rbp), %xmm1
	movaps	-2736(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9888(%rbp)
	movaps	-9872(%rbp), %xmm1
	movaps	-9712(%rbp), %xmm2
	movaps	%xmm1, -2752(%rbp)
	movaps	%xmm2, -2768(%rbp)
	movaps	-2752(%rbp), %xmm1
	movaps	-2768(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9904(%rbp)
	movaps	-9856(%rbp), %xmm1
	movaps	-9696(%rbp), %xmm2
	movaps	%xmm1, -2784(%rbp)
	movaps	%xmm2, -2800(%rbp)
	movaps	-2784(%rbp), %xmm1
	movaps	-2800(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9920(%rbp)
	movaps	-9872(%rbp), %xmm1
	movaps	-9712(%rbp), %xmm2
	movaps	%xmm1, -2816(%rbp)
	movaps	%xmm2, -2832(%rbp)
	movaps	-2816(%rbp), %xmm1
	movaps	-2832(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -9936(%rbp)
	movaps	-9888(%rbp), %xmm1
	movaps	%xmm1, -2848(%rbp)
	movl	$10, -2852(%rbp)
	movaps	-2848(%rbp), %xmm1
	movd	-2852(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-9904(%rbp), %xmm2
	movaps	%xmm2, -2880(%rbp)
	movl	$10, -2884(%rbp)
	movaps	-2880(%rbp), %xmm2
	movd	-2884(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -2912(%rbp)
	movaps	%xmm2, -2928(%rbp)
	movaps	-2912(%rbp), %xmm1
	movaps	-2928(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8704(%rbp)
	movaps	-9920(%rbp), %xmm1
	movaps	%xmm1, -2944(%rbp)
	movl	$10, -2948(%rbp)
	movaps	-2944(%rbp), %xmm1
	movd	-2948(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-9936(%rbp), %xmm2
	movaps	%xmm2, -2976(%rbp)
	movl	$10, -2980(%rbp)
	movaps	-2976(%rbp), %xmm2
	movd	-2980(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -3008(%rbp)
	movaps	%xmm2, -3024(%rbp)
	movaps	-3008(%rbp), %xmm1
	movaps	-3024(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8784(%rbp)
	movaps	-9280(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -3040(%rbp)
	movaps	%xmm2, -3056(%rbp)
	movaps	-3040(%rbp), %xmm1
	movaps	-3056(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9952(%rbp)
	movaps	-9296(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -3072(%rbp)
	movaps	%xmm2, -3088(%rbp)
	movaps	-3072(%rbp), %xmm1
	movaps	-3088(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9968(%rbp)
	movaps	-9952(%rbp), %xmm1
	movaps	-9664(%rbp), %xmm2
	movaps	%xmm1, -3104(%rbp)
	movaps	%xmm2, -3120(%rbp)
	movaps	-3104(%rbp), %xmm1
	movaps	-3120(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -9984(%rbp)
	movaps	-9968(%rbp), %xmm1
	movaps	-9680(%rbp), %xmm2
	movaps	%xmm1, -3136(%rbp)
	movaps	%xmm2, -3152(%rbp)
	movaps	-3136(%rbp), %xmm1
	movaps	-3152(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -10000(%rbp)
	movaps	-9952(%rbp), %xmm1
	movaps	-9664(%rbp), %xmm2
	movaps	%xmm1, -3168(%rbp)
	movaps	%xmm2, -3184(%rbp)
	movaps	-3168(%rbp), %xmm1
	movaps	-3184(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -10016(%rbp)
	movaps	-9968(%rbp), %xmm1
	movaps	-9680(%rbp), %xmm2
	movaps	%xmm1, -3200(%rbp)
	movaps	%xmm2, -3216(%rbp)
	movaps	-3200(%rbp), %xmm1
	movaps	-3216(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -10032(%rbp)
	movaps	-9984(%rbp), %xmm1
	movaps	%xmm1, -3232(%rbp)
	movl	$10, -3236(%rbp)
	movaps	-3232(%rbp), %xmm1
	movd	-3236(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-10000(%rbp), %xmm2
	movaps	%xmm2, -3264(%rbp)
	movl	$10, -3268(%rbp)
	movaps	-3264(%rbp), %xmm2
	movd	-3268(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -3296(%rbp)
	movaps	%xmm2, -3312(%rbp)
	movaps	-3296(%rbp), %xmm1
	movaps	-3312(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8720(%rbp)
	movaps	-10016(%rbp), %xmm1
	movaps	%xmm1, -3328(%rbp)
	movl	$10, -3332(%rbp)
	movaps	-3328(%rbp), %xmm1
	movd	-3332(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-10032(%rbp), %xmm2
	movaps	%xmm2, -3360(%rbp)
	movl	$10, -3364(%rbp)
	movaps	-3360(%rbp), %xmm2
	movd	-3364(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -3392(%rbp)
	movaps	%xmm2, -3408(%rbp)
	movaps	-3392(%rbp), %xmm1
	movaps	-3408(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8768(%rbp)
	movaps	-9216(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -3424(%rbp)
	movaps	%xmm2, -3440(%rbp)
	movaps	-3424(%rbp), %xmm1
	movaps	-3440(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -10048(%rbp)
	movaps	-9232(%rbp), %xmm1
	movaps	-8960(%rbp), %xmm2
	movaps	%xmm1, -3456(%rbp)
	movaps	%xmm2, -3472(%rbp)
	movaps	-3456(%rbp), %xmm1
	movaps	-3472(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -10064(%rbp)
	movaps	-10048(%rbp), %xmm1
	movaps	-9632(%rbp), %xmm2
	movaps	%xmm1, -3488(%rbp)
	movaps	%xmm2, -3504(%rbp)
	movaps	-3488(%rbp), %xmm1
	movaps	-3504(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -10080(%rbp)
	movaps	-10064(%rbp), %xmm1
	movaps	-9648(%rbp), %xmm2
	movaps	%xmm1, -3520(%rbp)
	movaps	%xmm2, -3536(%rbp)
	movaps	-3520(%rbp), %xmm1
	movaps	-3536(%rbp), %xmm2
	paddd	%xmm2, %xmm1
	movaps	%xmm1, -10096(%rbp)
	movaps	-10048(%rbp), %xmm1
	movaps	-9632(%rbp), %xmm2
	movaps	%xmm1, -3552(%rbp)
	movaps	%xmm2, -3568(%rbp)
	movaps	-3552(%rbp), %xmm1
	movaps	-3568(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -10112(%rbp)
	movaps	-10064(%rbp), %xmm1
	movaps	-9648(%rbp), %xmm2
	movaps	%xmm1, -3584(%rbp)
	movaps	%xmm2, -3600(%rbp)
	movaps	-3584(%rbp), %xmm1
	movaps	-3600(%rbp), %xmm2
	psubd	%xmm2, %xmm1
	movaps	%xmm1, -10128(%rbp)
	movaps	-10080(%rbp), %xmm1
	movaps	%xmm1, -3616(%rbp)
	movl	$10, -3620(%rbp)
	movaps	-3616(%rbp), %xmm1
	movd	-3620(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-10096(%rbp), %xmm2
	movaps	%xmm2, -3648(%rbp)
	movl	$10, -3652(%rbp)
	movaps	-3648(%rbp), %xmm2
	movd	-3652(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -3680(%rbp)
	movaps	%xmm2, -3696(%rbp)
	movaps	-3680(%rbp), %xmm1
	movaps	-3696(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8736(%rbp)
	movaps	-10112(%rbp), %xmm1
	movaps	%xmm1, -3712(%rbp)
	movl	$10, -3716(%rbp)
	movaps	-3712(%rbp), %xmm1
	movd	-3716(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	-10128(%rbp), %xmm2
	movaps	%xmm2, -3744(%rbp)
	movl	$10, -3748(%rbp)
	movaps	-3744(%rbp), %xmm2
	movd	-3748(%rbp), %xmm3              ## xmm3 = mem[0],zero,zero,zero
	psrad	%xmm3, %xmm2
	movaps	%xmm1, -3776(%rbp)
	movaps	%xmm2, -3792(%rbp)
	movaps	-3776(%rbp), %xmm1
	movaps	-3792(%rbp), %xmm2
	packssdw	%xmm2, %xmm1
	movaps	%xmm1, -8752(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	-8752(%rbp), %xmm2
	movaps	%xmm1, -3808(%rbp)
	movaps	%xmm2, -3824(%rbp)
	movaps	-3808(%rbp), %xmm1
	movaps	-3824(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8688(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8752(%rbp), %xmm2
	movaps	%xmm1, -3840(%rbp)
	movaps	%xmm2, -3856(%rbp)
	movaps	-3840(%rbp), %xmm1
	movaps	-3856(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8752(%rbp)
	movaps	-8704(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8704(%rbp), %xmm1
	movaps	-8768(%rbp), %xmm2
	movaps	%xmm1, -3872(%rbp)
	movaps	%xmm2, -3888(%rbp)
	movaps	-3872(%rbp), %xmm1
	movaps	-3888(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8704(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8768(%rbp), %xmm2
	movaps	%xmm1, -3904(%rbp)
	movaps	%xmm2, -3920(%rbp)
	movaps	-3904(%rbp), %xmm1
	movaps	-3920(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8768(%rbp)
	movaps	-8720(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8720(%rbp), %xmm1
	movaps	-8784(%rbp), %xmm2
	movaps	%xmm1, -3936(%rbp)
	movaps	%xmm2, -3952(%rbp)
	movaps	-3936(%rbp), %xmm1
	movaps	-3952(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8720(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8784(%rbp), %xmm2
	movaps	%xmm1, -3968(%rbp)
	movaps	%xmm2, -3984(%rbp)
	movaps	-3968(%rbp), %xmm1
	movaps	-3984(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8784(%rbp)
	movaps	-8736(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8736(%rbp), %xmm1
	movaps	-8800(%rbp), %xmm2
	movaps	%xmm1, -4000(%rbp)
	movaps	%xmm2, -4016(%rbp)
	movaps	-4000(%rbp), %xmm1
	movaps	-4016(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8736(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8800(%rbp), %xmm2
	movaps	%xmm1, -4032(%rbp)
	movaps	%xmm2, -4048(%rbp)
	movaps	-4032(%rbp), %xmm1
	movaps	-4048(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8800(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	-8720(%rbp), %xmm2
	movaps	%xmm1, -4064(%rbp)
	movaps	%xmm2, -4080(%rbp)
	movaps	-4064(%rbp), %xmm1
	movaps	-4080(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8688(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8720(%rbp), %xmm2
	movaps	%xmm1, -4096(%rbp)
	movaps	%xmm2, -4112(%rbp)
	movaps	-4096(%rbp), %xmm1
	movaps	-4112(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8720(%rbp)
	movaps	-8704(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8704(%rbp), %xmm1
	movaps	-8736(%rbp), %xmm2
	movaps	%xmm1, -4128(%rbp)
	movaps	%xmm2, -4144(%rbp)
	movaps	-4128(%rbp), %xmm1
	movaps	-4144(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8704(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8736(%rbp), %xmm2
	movaps	%xmm1, -4160(%rbp)
	movaps	%xmm2, -4176(%rbp)
	movaps	-4160(%rbp), %xmm1
	movaps	-4176(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8736(%rbp)
	movaps	-8752(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8752(%rbp), %xmm1
	movaps	-8784(%rbp), %xmm2
	movaps	%xmm1, -4192(%rbp)
	movaps	%xmm2, -4208(%rbp)
	movaps	-4192(%rbp), %xmm1
	movaps	-4208(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8752(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8784(%rbp), %xmm2
	movaps	%xmm1, -4224(%rbp)
	movaps	%xmm2, -4240(%rbp)
	movaps	-4224(%rbp), %xmm1
	movaps	-4240(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8784(%rbp)
	movaps	-8768(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8768(%rbp), %xmm1
	movaps	-8800(%rbp), %xmm2
	movaps	%xmm1, -4256(%rbp)
	movaps	%xmm2, -4272(%rbp)
	movaps	-4256(%rbp), %xmm1
	movaps	-4272(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8768(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8800(%rbp), %xmm2
	movaps	%xmm1, -4288(%rbp)
	movaps	%xmm2, -4304(%rbp)
	movaps	-4288(%rbp), %xmm1
	movaps	-4304(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8800(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	-8704(%rbp), %xmm2
	movaps	%xmm1, -4320(%rbp)
	movaps	%xmm2, -4336(%rbp)
	movaps	-4320(%rbp), %xmm1
	movaps	-4336(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8688(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8704(%rbp), %xmm2
	movaps	%xmm1, -4352(%rbp)
	movaps	%xmm2, -4368(%rbp)
	movaps	-4352(%rbp), %xmm1
	movaps	-4368(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8704(%rbp)
	movaps	-8720(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8720(%rbp), %xmm1
	movaps	-8736(%rbp), %xmm2
	movaps	%xmm1, -4384(%rbp)
	movaps	%xmm2, -4400(%rbp)
	movaps	-4384(%rbp), %xmm1
	movaps	-4400(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8720(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8736(%rbp), %xmm2
	movaps	%xmm1, -4416(%rbp)
	movaps	%xmm2, -4432(%rbp)
	movaps	-4416(%rbp), %xmm1
	movaps	-4432(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8736(%rbp)
	movaps	-8752(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8752(%rbp), %xmm1
	movaps	-8768(%rbp), %xmm2
	movaps	%xmm1, -4448(%rbp)
	movaps	%xmm2, -4464(%rbp)
	movaps	-4448(%rbp), %xmm1
	movaps	-4464(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8752(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8768(%rbp), %xmm2
	movaps	%xmm1, -4480(%rbp)
	movaps	%xmm2, -4496(%rbp)
	movaps	-4480(%rbp), %xmm1
	movaps	-4496(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8768(%rbp)
	movaps	-8784(%rbp), %xmm1
	movaps	%xmm1, -8816(%rbp)
	movaps	-8784(%rbp), %xmm1
	movaps	-8800(%rbp), %xmm2
	movaps	%xmm1, -4512(%rbp)
	movaps	%xmm2, -4528(%rbp)
	movaps	-4512(%rbp), %xmm1
	movaps	-4528(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -8784(%rbp)
	movaps	-8816(%rbp), %xmm1
	movaps	-8800(%rbp), %xmm2
	movaps	%xmm1, -4544(%rbp)
	movaps	%xmm2, -4560(%rbp)
	movaps	-4544(%rbp), %xmm1
	movaps	-4560(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -8800(%rbp)
	movaps	-8720(%rbp), %xmm1
	movaps	-8784(%rbp), %xmm2
	movaps	%xmm1, -4576(%rbp)
	movaps	%xmm2, -4592(%rbp)
	movaps	-4576(%rbp), %xmm1
	movaps	-4592(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -10144(%rbp)
	movaps	-8720(%rbp), %xmm1
	movaps	-8784(%rbp), %xmm2
	movaps	%xmm1, -4608(%rbp)
	movaps	%xmm2, -4624(%rbp)
	movaps	-4608(%rbp), %xmm1
	movaps	-4624(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -10160(%rbp)
	movaps	-10144(%rbp), %xmm1
	movaps	-8832(%rbp), %xmm2
	movaps	%xmm1, -4640(%rbp)
	movaps	%xmm2, -4656(%rbp)
	movaps	-4640(%rbp), %xmm1
	movaps	-4656(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -10176(%rbp)
	movaps	-10160(%rbp), %xmm1
	movaps	-8832(%rbp), %xmm2
	movaps	%xmm1, -4672(%rbp)
	movaps	%xmm2, -4688(%rbp)
	movaps	-4672(%rbp), %xmm1
	movaps	-4688(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -10192(%rbp)
	movaps	-10144(%rbp), %xmm1
	movaps	-8848(%rbp), %xmm2
	movaps	%xmm1, -4704(%rbp)
	movaps	%xmm2, -4720(%rbp)
	movaps	-4704(%rbp), %xmm1
	movaps	-4720(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -10208(%rbp)
	movaps	-10160(%rbp), %xmm1
	movaps	-8848(%rbp), %xmm2
	movaps	%xmm1, -4736(%rbp)
	movaps	%xmm2, -4752(%rbp)
	movaps	-4736(%rbp), %xmm1
	movaps	-4752(%rbp), %xmm2
	pmaddwd	%xmm2, %xmm1
	movaps	%xmm1, -10224(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	-8752(%rbp), %xmm2
	movaps	%xmm1, -4768(%rbp)
	movaps	%xmm2, -4784(%rbp)
	movaps	-4768(%rbp), %xmm1
	movaps	-4784(%rbp), %xmm2
	paddw	%xmm2, %xmm1
	movaps	%xmm1, -10240(%rbp)
	movaps	-8688(%rbp), %xmm1
	movaps	-8752(%rbp), %xmm2
	movaps	%xmm1, -4800(%rbp)
	movaps	%xmm2, -4816(%rbp)
	movaps	-4800(%rbp), %xmm1
	movaps	-4816(%rbp), %xmm2
	psubw	%xmm2, %xmm1
	movaps	%xmm1, -10256(%rbp)
	movaps	%xmm0, -4832(%rbp)
	movaps	-4832(%rbp), %xmm1
	movaps	-10240(%rbp), %xmm2
	movaps	%xmm1, -4848(%rbp)
	movaps	%xmm2, -4864(%rbp)
	movaps	-4848(%rbp), %xmm1
	movaps	-4864(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -4880(%rbp)
	movl	$4, -4884(%rbp)
	movaps	-4880(%rbp), %xmm1
	movd	-4884(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm1, -10272(%rbp)
	movaps	%xmm0, -4912(%rbp)
	movaps	-4912(%rbp), %xmm1
	movaps	-10240(%rbp), %xmm2
	movaps	%xmm1, -4928(%rbp)
	movaps	%xmm2, -4944(%rbp)
	movaps	-4928(%rbp), %xmm1
	movaps	-4944(%rbp), %xmm2
	punpckhwd	%xmm2, %xmm1            ## xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -4960(%rbp)
	movl	$4, -4964(%rbp)
	movaps	-4960(%rbp), %xmm1
	movd	-4964(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm1, -10288(%rbp)
	movaps	%xmm0, -4992(%rbp)
	movaps	-4992(%rbp), %xmm1
	movaps	-10256(%rbp), %xmm2
	movaps	%xmm1, -5008(%rbp)
	movaps	%xmm2, -5024(%rbp)
	movaps	-5008(%rbp), %xmm1
	movaps	-5024(%rbp), %xmm2
	punpcklwd	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, -5040(%rbp)
	movl	$4, -5044(%rbp)
	movaps	-5040(%rbp), %xmm1
	movd	-5044(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm1, -10304(%rbp)
	movaps	%xmm0, -5072(%rbp)
	movaps	-5072(%rbp), %xmm0
	movaps	-10256(%rbp), %xmm1
	movaps	%xmm0, -5088(%rbp)
	movaps	%xmm1, -5104(%rbp)
	movaps	-5088(%rbp), %xmm0
	movaps	-5104(%rbp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -5120(%rbp)
	movl	$4, -5124(%rbp)
	movaps	-5120(%rbp), %xmm0
	movd	-5124(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	%xmm0, -10320(%rbp)
	movaps	-10272(%rbp), %xmm0
	movaps	-10208(%rbp), %xmm1
	movaps	%xmm0, -5152(%rbp)
	movaps	%xmm1, -5168(%rbp)
	movaps	-5152(%rbp), %xmm0
	movaps	-5168(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10336(%rbp)
	movaps	-10288(%rbp), %xmm0
	movaps	-10224(%rbp), %xmm1
	movaps	%xmm0, -5184(%rbp)
	movaps	%xmm1, -5200(%rbp)
	movaps	-5184(%rbp), %xmm0
	movaps	-5200(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10352(%rbp)
	movaps	-10272(%rbp), %xmm0
	movaps	-10208(%rbp), %xmm1
	movaps	%xmm0, -5216(%rbp)
	movaps	%xmm1, -5232(%rbp)
	movaps	-5216(%rbp), %xmm0
	movaps	-5232(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -10368(%rbp)
	movaps	-10288(%rbp), %xmm0
	movaps	-10224(%rbp), %xmm1
	movaps	%xmm0, -5248(%rbp)
	movaps	%xmm1, -5264(%rbp)
	movaps	-5248(%rbp), %xmm0
	movaps	-5264(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -10384(%rbp)
	movaps	-10304(%rbp), %xmm0
	movaps	-10176(%rbp), %xmm1
	movaps	%xmm0, -5280(%rbp)
	movaps	%xmm1, -5296(%rbp)
	movaps	-5280(%rbp), %xmm0
	movaps	-5296(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10400(%rbp)
	movaps	-10320(%rbp), %xmm0
	movaps	-10192(%rbp), %xmm1
	movaps	%xmm0, -5312(%rbp)
	movaps	%xmm1, -5328(%rbp)
	movaps	-5312(%rbp), %xmm0
	movaps	-5328(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10416(%rbp)
	movaps	-10304(%rbp), %xmm0
	movaps	-10176(%rbp), %xmm1
	movaps	%xmm0, -5344(%rbp)
	movaps	%xmm1, -5360(%rbp)
	movaps	-5344(%rbp), %xmm0
	movaps	-5360(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -10432(%rbp)
	movaps	-10320(%rbp), %xmm0
	movaps	-10192(%rbp), %xmm1
	movaps	%xmm0, -5376(%rbp)
	movaps	%xmm1, -5392(%rbp)
	movaps	-5376(%rbp), %xmm0
	movaps	-5392(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -10448(%rbp)
	movaps	-8800(%rbp), %xmm0
	movaps	-8736(%rbp), %xmm1
	movaps	%xmm0, -5408(%rbp)
	movaps	%xmm1, -5424(%rbp)
	movaps	-5408(%rbp), %xmm0
	movaps	-5424(%rbp), %xmm1
	punpcklwd	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movaps	%xmm0, -10464(%rbp)
	movaps	-8800(%rbp), %xmm0
	movaps	-8736(%rbp), %xmm1
	movaps	%xmm0, -5440(%rbp)
	movaps	%xmm1, -5456(%rbp)
	movaps	-5440(%rbp), %xmm0
	movaps	-5456(%rbp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -10480(%rbp)
	movaps	-10464(%rbp), %xmm0
	movaps	-8896(%rbp), %xmm1
	movaps	%xmm0, -5472(%rbp)
	movaps	%xmm1, -5488(%rbp)
	movaps	-5472(%rbp), %xmm0
	movaps	-5488(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10496(%rbp)
	movaps	-10480(%rbp), %xmm0
	movaps	-8896(%rbp), %xmm1
	movaps	%xmm0, -5504(%rbp)
	movaps	%xmm1, -5520(%rbp)
	movaps	-5504(%rbp), %xmm0
	movaps	-5520(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10512(%rbp)
	movaps	-10464(%rbp), %xmm0
	movaps	-8912(%rbp), %xmm1
	movaps	%xmm0, -5536(%rbp)
	movaps	%xmm1, -5552(%rbp)
	movaps	-5536(%rbp), %xmm0
	movaps	-5552(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10528(%rbp)
	movaps	-10480(%rbp), %xmm0
	movaps	-8912(%rbp), %xmm1
	movaps	%xmm0, -5568(%rbp)
	movaps	%xmm1, -5584(%rbp)
	movaps	-5568(%rbp), %xmm0
	movaps	-5584(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10544(%rbp)
	movaps	-8768(%rbp), %xmm0
	movaps	-8704(%rbp), %xmm1
	movaps	%xmm0, -5600(%rbp)
	movaps	%xmm1, -5616(%rbp)
	movaps	-5600(%rbp), %xmm0
	movaps	-5616(%rbp), %xmm1
	punpcklwd	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movaps	%xmm0, -10560(%rbp)
	movaps	-8768(%rbp), %xmm0
	movaps	-8704(%rbp), %xmm1
	movaps	%xmm0, -5632(%rbp)
	movaps	%xmm1, -5648(%rbp)
	movaps	-5632(%rbp), %xmm0
	movaps	-5648(%rbp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -10576(%rbp)
	movaps	-10560(%rbp), %xmm0
	movaps	-8928(%rbp), %xmm1
	movaps	%xmm0, -5664(%rbp)
	movaps	%xmm1, -5680(%rbp)
	movaps	-5664(%rbp), %xmm0
	movaps	-5680(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10592(%rbp)
	movaps	-10576(%rbp), %xmm0
	movaps	-8928(%rbp), %xmm1
	movaps	%xmm0, -5696(%rbp)
	movaps	%xmm1, -5712(%rbp)
	movaps	-5696(%rbp), %xmm0
	movaps	-5712(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10608(%rbp)
	movaps	-10560(%rbp), %xmm0
	movaps	-8944(%rbp), %xmm1
	movaps	%xmm0, -5728(%rbp)
	movaps	%xmm1, -5744(%rbp)
	movaps	-5728(%rbp), %xmm0
	movaps	-5744(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10624(%rbp)
	movaps	-10576(%rbp), %xmm0
	movaps	-8944(%rbp), %xmm1
	movaps	%xmm0, -5760(%rbp)
	movaps	%xmm1, -5776(%rbp)
	movaps	-5760(%rbp), %xmm0
	movaps	-5776(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10640(%rbp)
	movaps	-8704(%rbp), %xmm0
	movaps	-8800(%rbp), %xmm1
	movaps	%xmm0, -5792(%rbp)
	movaps	%xmm1, -5808(%rbp)
	movaps	-5792(%rbp), %xmm0
	movaps	-5808(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -10656(%rbp)
	movaps	-8736(%rbp), %xmm0
	movaps	-8768(%rbp), %xmm1
	movaps	%xmm0, -5824(%rbp)
	movaps	%xmm1, -5840(%rbp)
	movaps	-5824(%rbp), %xmm0
	movaps	-5840(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -10672(%rbp)
	movaps	-10656(%rbp), %xmm0
	movaps	-10672(%rbp), %xmm1
	movaps	%xmm0, -5856(%rbp)
	movaps	%xmm1, -5872(%rbp)
	movaps	-5856(%rbp), %xmm0
	movaps	-5872(%rbp), %xmm1
	punpcklwd	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movaps	%xmm0, -10688(%rbp)
	movaps	-10656(%rbp), %xmm0
	movaps	-10672(%rbp), %xmm1
	movaps	%xmm0, -5888(%rbp)
	movaps	%xmm1, -5904(%rbp)
	movaps	-5888(%rbp), %xmm0
	movaps	-5904(%rbp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -10704(%rbp)
	movaps	-10688(%rbp), %xmm0
	movaps	-8864(%rbp), %xmm1
	movaps	%xmm0, -5920(%rbp)
	movaps	%xmm1, -5936(%rbp)
	movaps	-5920(%rbp), %xmm0
	movaps	-5936(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10720(%rbp)
	movaps	-10704(%rbp), %xmm0
	movaps	-8864(%rbp), %xmm1
	movaps	%xmm0, -5952(%rbp)
	movaps	%xmm1, -5968(%rbp)
	movaps	-5952(%rbp), %xmm0
	movaps	-5968(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10736(%rbp)
	movaps	-10688(%rbp), %xmm0
	movaps	-8880(%rbp), %xmm1
	movaps	%xmm0, -5984(%rbp)
	movaps	%xmm1, -6000(%rbp)
	movaps	-5984(%rbp), %xmm0
	movaps	-6000(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10752(%rbp)
	movaps	-10704(%rbp), %xmm0
	movaps	-8880(%rbp), %xmm1
	movaps	%xmm0, -6016(%rbp)
	movaps	%xmm1, -6032(%rbp)
	movaps	-6016(%rbp), %xmm0
	movaps	-6032(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -10768(%rbp)
	movaps	-10496(%rbp), %xmm0
	movaps	-10720(%rbp), %xmm1
	movaps	%xmm0, -6048(%rbp)
	movaps	%xmm1, -6064(%rbp)
	movaps	-6048(%rbp), %xmm0
	movaps	-6064(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10784(%rbp)
	movaps	-10512(%rbp), %xmm0
	movaps	-10736(%rbp), %xmm1
	movaps	%xmm0, -6080(%rbp)
	movaps	%xmm1, -6096(%rbp)
	movaps	-6080(%rbp), %xmm0
	movaps	-6096(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10800(%rbp)
	movaps	-10592(%rbp), %xmm0
	movaps	-10752(%rbp), %xmm1
	movaps	%xmm0, -6112(%rbp)
	movaps	%xmm1, -6128(%rbp)
	movaps	-6112(%rbp), %xmm0
	movaps	-6128(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10816(%rbp)
	movaps	-10608(%rbp), %xmm0
	movaps	-10768(%rbp), %xmm1
	movaps	%xmm0, -6144(%rbp)
	movaps	%xmm1, -6160(%rbp)
	movaps	-6144(%rbp), %xmm0
	movaps	-6160(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10832(%rbp)
	movaps	-10528(%rbp), %xmm0
	movaps	-10752(%rbp), %xmm1
	movaps	%xmm0, -6176(%rbp)
	movaps	%xmm1, -6192(%rbp)
	movaps	-6176(%rbp), %xmm0
	movaps	-6192(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10848(%rbp)
	movaps	-10544(%rbp), %xmm0
	movaps	-10768(%rbp), %xmm1
	movaps	%xmm0, -6208(%rbp)
	movaps	%xmm1, -6224(%rbp)
	movaps	-6208(%rbp), %xmm0
	movaps	-6224(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10864(%rbp)
	movaps	-10624(%rbp), %xmm0
	movaps	-10720(%rbp), %xmm1
	movaps	%xmm0, -6240(%rbp)
	movaps	%xmm1, -6256(%rbp)
	movaps	-6240(%rbp), %xmm0
	movaps	-6256(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10880(%rbp)
	movaps	-10640(%rbp), %xmm0
	movaps	-10736(%rbp), %xmm1
	movaps	%xmm0, -6272(%rbp)
	movaps	%xmm1, -6288(%rbp)
	movaps	-6272(%rbp), %xmm0
	movaps	-6288(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10896(%rbp)
	movaps	-10336(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -6304(%rbp)
	movaps	%xmm1, -6320(%rbp)
	movaps	-6304(%rbp), %xmm0
	movaps	-6320(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10912(%rbp)
	movaps	-10352(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -6336(%rbp)
	movaps	%xmm1, -6352(%rbp)
	movaps	-6336(%rbp), %xmm0
	movaps	-6352(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10928(%rbp)
	movaps	-10912(%rbp), %xmm0
	movaps	-10880(%rbp), %xmm1
	movaps	%xmm0, -6368(%rbp)
	movaps	%xmm1, -6384(%rbp)
	movaps	-6368(%rbp), %xmm0
	movaps	-6384(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10944(%rbp)
	movaps	-10928(%rbp), %xmm0
	movaps	-10896(%rbp), %xmm1
	movaps	%xmm0, -6400(%rbp)
	movaps	%xmm1, -6416(%rbp)
	movaps	-6400(%rbp), %xmm0
	movaps	-6416(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -10960(%rbp)
	movaps	-10912(%rbp), %xmm0
	movaps	-10880(%rbp), %xmm1
	movaps	%xmm0, -6432(%rbp)
	movaps	%xmm1, -6448(%rbp)
	movaps	-6432(%rbp), %xmm0
	movaps	-6448(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -10976(%rbp)
	movaps	-10928(%rbp), %xmm0
	movaps	-10896(%rbp), %xmm1
	movaps	%xmm0, -6464(%rbp)
	movaps	%xmm1, -6480(%rbp)
	movaps	-6464(%rbp), %xmm0
	movaps	-6480(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -10992(%rbp)
	movaps	-10944(%rbp), %xmm0
	movaps	%xmm0, -6496(%rbp)
	movl	$17, -6500(%rbp)
	movaps	-6496(%rbp), %xmm0
	movd	-6500(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-10960(%rbp), %xmm1
	movaps	%xmm1, -6528(%rbp)
	movl	$17, -6532(%rbp)
	movaps	-6528(%rbp), %xmm1
	movd	-6532(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -6560(%rbp)
	movaps	%xmm1, -6576(%rbp)
	movaps	-6560(%rbp), %xmm0
	movaps	-6576(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8688(%rbp)
	movaps	-10976(%rbp), %xmm0
	movaps	%xmm0, -6592(%rbp)
	movl	$17, -6596(%rbp)
	movaps	-6592(%rbp), %xmm0
	movd	-6596(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-10992(%rbp), %xmm1
	movaps	%xmm1, -6624(%rbp)
	movl	$17, -6628(%rbp)
	movaps	-6624(%rbp), %xmm1
	movd	-6628(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -6656(%rbp)
	movaps	%xmm1, -6672(%rbp)
	movaps	-6656(%rbp), %xmm0
	movaps	-6672(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8800(%rbp)
	movaps	-10400(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -6688(%rbp)
	movaps	%xmm1, -6704(%rbp)
	movaps	-6688(%rbp), %xmm0
	movaps	-6704(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11008(%rbp)
	movaps	-10416(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -6720(%rbp)
	movaps	%xmm1, -6736(%rbp)
	movaps	-6720(%rbp), %xmm0
	movaps	-6736(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11024(%rbp)
	movaps	-11008(%rbp), %xmm0
	movaps	-10848(%rbp), %xmm1
	movaps	%xmm0, -6752(%rbp)
	movaps	%xmm1, -6768(%rbp)
	movaps	-6752(%rbp), %xmm0
	movaps	-6768(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11040(%rbp)
	movaps	-11024(%rbp), %xmm0
	movaps	-10864(%rbp), %xmm1
	movaps	%xmm0, -6784(%rbp)
	movaps	%xmm1, -6800(%rbp)
	movaps	-6784(%rbp), %xmm0
	movaps	-6800(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11056(%rbp)
	movaps	-11008(%rbp), %xmm0
	movaps	-10848(%rbp), %xmm1
	movaps	%xmm0, -6816(%rbp)
	movaps	%xmm1, -6832(%rbp)
	movaps	-6816(%rbp), %xmm0
	movaps	-6832(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -11072(%rbp)
	movaps	-11024(%rbp), %xmm0
	movaps	-10864(%rbp), %xmm1
	movaps	%xmm0, -6848(%rbp)
	movaps	%xmm1, -6864(%rbp)
	movaps	-6848(%rbp), %xmm0
	movaps	-6864(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -11088(%rbp)
	movaps	-11040(%rbp), %xmm0
	movaps	%xmm0, -6880(%rbp)
	movl	$17, -6884(%rbp)
	movaps	-6880(%rbp), %xmm0
	movd	-6884(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-11056(%rbp), %xmm1
	movaps	%xmm1, -6912(%rbp)
	movl	$17, -6916(%rbp)
	movaps	-6912(%rbp), %xmm1
	movd	-6916(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -6944(%rbp)
	movaps	%xmm1, -6960(%rbp)
	movaps	-6944(%rbp), %xmm0
	movaps	-6960(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8704(%rbp)
	movaps	-11072(%rbp), %xmm0
	movaps	%xmm0, -6976(%rbp)
	movl	$17, -6980(%rbp)
	movaps	-6976(%rbp), %xmm0
	movd	-6980(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-11088(%rbp), %xmm1
	movaps	%xmm1, -7008(%rbp)
	movl	$17, -7012(%rbp)
	movaps	-7008(%rbp), %xmm1
	movd	-7012(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -7040(%rbp)
	movaps	%xmm1, -7056(%rbp)
	movaps	-7040(%rbp), %xmm0
	movaps	-7056(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8784(%rbp)
	movaps	-10432(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -7072(%rbp)
	movaps	%xmm1, -7088(%rbp)
	movaps	-7072(%rbp), %xmm0
	movaps	-7088(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11104(%rbp)
	movaps	-10448(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -7104(%rbp)
	movaps	%xmm1, -7120(%rbp)
	movaps	-7104(%rbp), %xmm0
	movaps	-7120(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11120(%rbp)
	movaps	-11104(%rbp), %xmm0
	movaps	-10816(%rbp), %xmm1
	movaps	%xmm0, -7136(%rbp)
	movaps	%xmm1, -7152(%rbp)
	movaps	-7136(%rbp), %xmm0
	movaps	-7152(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11136(%rbp)
	movaps	-11120(%rbp), %xmm0
	movaps	-10832(%rbp), %xmm1
	movaps	%xmm0, -7168(%rbp)
	movaps	%xmm1, -7184(%rbp)
	movaps	-7168(%rbp), %xmm0
	movaps	-7184(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11152(%rbp)
	movaps	-11104(%rbp), %xmm0
	movaps	-10816(%rbp), %xmm1
	movaps	%xmm0, -7200(%rbp)
	movaps	%xmm1, -7216(%rbp)
	movaps	-7200(%rbp), %xmm0
	movaps	-7216(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -11168(%rbp)
	movaps	-11120(%rbp), %xmm0
	movaps	-10832(%rbp), %xmm1
	movaps	%xmm0, -7232(%rbp)
	movaps	%xmm1, -7248(%rbp)
	movaps	-7232(%rbp), %xmm0
	movaps	-7248(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -11184(%rbp)
	movaps	-11136(%rbp), %xmm0
	movaps	%xmm0, -7264(%rbp)
	movl	$17, -7268(%rbp)
	movaps	-7264(%rbp), %xmm0
	movd	-7268(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-11152(%rbp), %xmm1
	movaps	%xmm1, -7296(%rbp)
	movl	$17, -7300(%rbp)
	movaps	-7296(%rbp), %xmm1
	movd	-7300(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -7328(%rbp)
	movaps	%xmm1, -7344(%rbp)
	movaps	-7328(%rbp), %xmm0
	movaps	-7344(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8720(%rbp)
	movaps	-11168(%rbp), %xmm0
	movaps	%xmm0, -7360(%rbp)
	movl	$17, -7364(%rbp)
	movaps	-7360(%rbp), %xmm0
	movd	-7364(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-11184(%rbp), %xmm1
	movaps	%xmm1, -7392(%rbp)
	movl	$17, -7396(%rbp)
	movaps	-7392(%rbp), %xmm1
	movd	-7396(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -7424(%rbp)
	movaps	%xmm1, -7440(%rbp)
	movaps	-7424(%rbp), %xmm0
	movaps	-7440(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8768(%rbp)
	movaps	-10368(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -7456(%rbp)
	movaps	%xmm1, -7472(%rbp)
	movaps	-7456(%rbp), %xmm0
	movaps	-7472(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11200(%rbp)
	movaps	-10384(%rbp), %xmm0
	movaps	-8976(%rbp), %xmm1
	movaps	%xmm0, -7488(%rbp)
	movaps	%xmm1, -7504(%rbp)
	movaps	-7488(%rbp), %xmm0
	movaps	-7504(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11216(%rbp)
	movaps	-11200(%rbp), %xmm0
	movaps	-10784(%rbp), %xmm1
	movaps	%xmm0, -7520(%rbp)
	movaps	%xmm1, -7536(%rbp)
	movaps	-7520(%rbp), %xmm0
	movaps	-7536(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11232(%rbp)
	movaps	-11216(%rbp), %xmm0
	movaps	-10800(%rbp), %xmm1
	movaps	%xmm0, -7552(%rbp)
	movaps	%xmm1, -7568(%rbp)
	movaps	-7552(%rbp), %xmm0
	movaps	-7568(%rbp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -11248(%rbp)
	movaps	-11200(%rbp), %xmm0
	movaps	-10784(%rbp), %xmm1
	movaps	%xmm0, -7584(%rbp)
	movaps	%xmm1, -7600(%rbp)
	movaps	-7584(%rbp), %xmm0
	movaps	-7600(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -11264(%rbp)
	movaps	-11216(%rbp), %xmm0
	movaps	-10800(%rbp), %xmm1
	movaps	%xmm0, -7616(%rbp)
	movaps	%xmm1, -7632(%rbp)
	movaps	-7616(%rbp), %xmm0
	movaps	-7632(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -11280(%rbp)
	movaps	-11232(%rbp), %xmm0
	movaps	%xmm0, -7648(%rbp)
	movl	$17, -7652(%rbp)
	movaps	-7648(%rbp), %xmm0
	movd	-7652(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-11248(%rbp), %xmm1
	movaps	%xmm1, -7680(%rbp)
	movl	$17, -7684(%rbp)
	movaps	-7680(%rbp), %xmm1
	movd	-7684(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -7712(%rbp)
	movaps	%xmm1, -7728(%rbp)
	movaps	-7712(%rbp), %xmm0
	movaps	-7728(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8736(%rbp)
	movaps	-11264(%rbp), %xmm0
	movaps	%xmm0, -7744(%rbp)
	movl	$17, -7748(%rbp)
	movaps	-7744(%rbp), %xmm0
	movd	-7748(%rbp), %xmm1              ## xmm1 = mem[0],zero,zero,zero
	psrad	%xmm1, %xmm0
	movaps	-11280(%rbp), %xmm1
	movaps	%xmm1, -7776(%rbp)
	movl	$17, -7780(%rbp)
	movaps	-7776(%rbp), %xmm1
	movd	-7780(%rbp), %xmm2              ## xmm2 = mem[0],zero,zero,zero
	psrad	%xmm2, %xmm1
	movaps	%xmm0, -7808(%rbp)
	movaps	%xmm1, -7824(%rbp)
	movaps	-7808(%rbp), %xmm0
	movaps	-7824(%rbp), %xmm1
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -8752(%rbp)
	movaps	-8688(%rbp), %xmm0
	movaps	-8704(%rbp), %xmm1
	movaps	%xmm0, -7840(%rbp)
	movaps	%xmm1, -7856(%rbp)
	movaps	-7840(%rbp), %xmm0
	movaps	-7856(%rbp), %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -11296(%rbp)
	movaps	-8720(%rbp), %xmm0
	movaps	-8736(%rbp), %xmm1
	movaps	%xmm0, -7872(%rbp)
	movaps	%xmm1, -7888(%rbp)
	movaps	-7872(%rbp), %xmm0
	movaps	-7888(%rbp), %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -11312(%rbp)
	movaps	-8752(%rbp), %xmm0
	movaps	-8768(%rbp), %xmm1
	movaps	%xmm0, -7904(%rbp)
	movaps	%xmm1, -7920(%rbp)
	movaps	-7904(%rbp), %xmm0
	movaps	-7920(%rbp), %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -11328(%rbp)
	movaps	-8784(%rbp), %xmm0
	movaps	-8800(%rbp), %xmm1
	movaps	%xmm0, -7936(%rbp)
	movaps	%xmm1, -7952(%rbp)
	movaps	-7936(%rbp), %xmm0
	movaps	-7952(%rbp), %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -11344(%rbp)
	movaps	-11296(%rbp), %xmm0
	movaps	%xmm0, -8816(%rbp)
	movaps	-11296(%rbp), %xmm0
	movaps	-11328(%rbp), %xmm1
	movaps	%xmm0, -7968(%rbp)
	movaps	%xmm1, -7984(%rbp)
	movaps	-7968(%rbp), %xmm0
	movaps	-7984(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -11296(%rbp)
	movaps	-8816(%rbp), %xmm0
	movaps	-11328(%rbp), %xmm1
	movaps	%xmm0, -8000(%rbp)
	movaps	%xmm1, -8016(%rbp)
	movaps	-8000(%rbp), %xmm0
	movaps	-8016(%rbp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movaps	%xmm0, -11328(%rbp)
	movaps	-11312(%rbp), %xmm0
	movaps	%xmm0, -8816(%rbp)
	movaps	-11312(%rbp), %xmm0
	movaps	-11344(%rbp), %xmm1
	movaps	%xmm0, -8032(%rbp)
	movaps	%xmm1, -8048(%rbp)
	movaps	-8032(%rbp), %xmm0
	movaps	-8048(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -11312(%rbp)
	movaps	-8816(%rbp), %xmm0
	movaps	-11344(%rbp), %xmm1
	movaps	%xmm0, -8064(%rbp)
	movaps	%xmm1, -8080(%rbp)
	movaps	-8064(%rbp), %xmm0
	movaps	-8080(%rbp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movaps	%xmm0, -11344(%rbp)
	movaps	-11296(%rbp), %xmm0
	movaps	%xmm0, -8816(%rbp)
	movaps	-11296(%rbp), %xmm0
	movaps	-11312(%rbp), %xmm1
	movaps	%xmm0, -8096(%rbp)
	movaps	%xmm1, -8112(%rbp)
	movaps	-8096(%rbp), %xmm0
	movaps	-8112(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -11296(%rbp)
	movaps	-8816(%rbp), %xmm0
	movaps	-11312(%rbp), %xmm1
	movaps	%xmm0, -8128(%rbp)
	movaps	%xmm1, -8144(%rbp)
	movaps	-8128(%rbp), %xmm0
	movaps	-8144(%rbp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movaps	%xmm0, -11312(%rbp)
	movaps	-11328(%rbp), %xmm0
	movaps	%xmm0, -8816(%rbp)
	movaps	-11328(%rbp), %xmm0
	movaps	-11344(%rbp), %xmm1
	movaps	%xmm0, -8160(%rbp)
	movaps	%xmm1, -8176(%rbp)
	movaps	-8160(%rbp), %xmm0
	movaps	-8176(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -11328(%rbp)
	movaps	-8816(%rbp), %xmm0
	movaps	-11344(%rbp), %xmm1
	movaps	%xmm0, -8192(%rbp)
	movaps	%xmm1, -8208(%rbp)
	movaps	-8192(%rbp), %xmm0
	movaps	-8208(%rbp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movaps	%xmm0, -11344(%rbp)
	movaps	-11296(%rbp), %xmm0
	movaps	%xmm0, -8816(%rbp)
	movaps	-11296(%rbp), %xmm0
	movaps	-11328(%rbp), %xmm1
	movaps	%xmm0, -8224(%rbp)
	movaps	%xmm1, -8240(%rbp)
	movaps	-8224(%rbp), %xmm0
	movaps	-8240(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -11296(%rbp)
	movaps	-8816(%rbp), %xmm0
	movaps	-11328(%rbp), %xmm1
	movaps	%xmm0, -8256(%rbp)
	movaps	%xmm1, -8272(%rbp)
	movaps	-8256(%rbp), %xmm0
	movaps	-8272(%rbp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movaps	%xmm0, -11328(%rbp)
	movaps	-11312(%rbp), %xmm0
	movaps	%xmm0, -8816(%rbp)
	movaps	-11312(%rbp), %xmm0
	movaps	-11344(%rbp), %xmm1
	movaps	%xmm0, -8288(%rbp)
	movaps	%xmm1, -8304(%rbp)
	movaps	-8288(%rbp), %xmm0
	movaps	-8304(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -11312(%rbp)
	movaps	-8816(%rbp), %xmm0
	movaps	-11344(%rbp), %xmm1
	movaps	%xmm0, -8320(%rbp)
	movaps	%xmm1, -8336(%rbp)
	movaps	-8320(%rbp), %xmm0
	movaps	-8336(%rbp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movaps	%xmm0, -11344(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11296(%rbp), %xmm0
	movq	%rdx, -8344(%rbp)
	movaps	%xmm0, -8368(%rbp)
	movq	-8368(%rbp), %rdx
	movq	-8344(%rbp), %rdi
	movq	%rdx, (%rdi)
	movslq	-8652(%rbp), %rdx
	movq	-8648(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, -8648(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11296(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0               ## xmm0 = xmm0[2,3,0,1]
	movq	%rdx, -8376(%rbp)
	movaps	%xmm0, -8400(%rbp)
	movq	-8400(%rbp), %rdx
	movq	-8376(%rbp), %rdi
	movq	%rdx, (%rdi)
	movslq	-8652(%rbp), %rdx
	movq	-8648(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, -8648(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11328(%rbp), %xmm0
	movq	%rdx, -8408(%rbp)
	movaps	%xmm0, -8432(%rbp)
	movq	-8432(%rbp), %rdx
	movq	-8408(%rbp), %rdi
	movq	%rdx, (%rdi)
	movslq	-8652(%rbp), %rdx
	movq	-8648(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, -8648(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11328(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0               ## xmm0 = xmm0[2,3,0,1]
	movq	%rdx, -8440(%rbp)
	movaps	%xmm0, -8464(%rbp)
	movq	-8464(%rbp), %rdx
	movq	-8440(%rbp), %rdi
	movq	%rdx, (%rdi)
	movslq	-8652(%rbp), %rdx
	movq	-8648(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, -8648(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11312(%rbp), %xmm0
	movq	%rdx, -8472(%rbp)
	movaps	%xmm0, -8496(%rbp)
	movq	-8496(%rbp), %rdx
	movq	-8472(%rbp), %rdi
	movq	%rdx, (%rdi)
	movslq	-8652(%rbp), %rdx
	movq	-8648(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, -8648(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11312(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0               ## xmm0 = xmm0[2,3,0,1]
	movq	%rdx, -8504(%rbp)
	movaps	%xmm0, -8528(%rbp)
	movq	-8528(%rbp), %rdx
	movq	-8504(%rbp), %rdi
	movq	%rdx, (%rdi)
	movslq	-8652(%rbp), %rdx
	movq	-8648(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, -8648(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11344(%rbp), %xmm0
	movq	%rdx, -8536(%rbp)
	movaps	%xmm0, -8560(%rbp)
	movq	-8560(%rbp), %rdx
	movq	-8536(%rbp), %rdi
	movq	%rdx, (%rdi)
	movslq	-8652(%rbp), %rdx
	movq	-8648(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, -8648(%rbp)
	movq	-8648(%rbp), %rdx
	movaps	-11344(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0               ## xmm0 = xmm0[2,3,0,1]
	movq	%rdx, -8568(%rbp)
	movaps	%xmm0, -8592(%rbp)
	movq	-8592(%rbp), %rdx
	movq	-8568(%rbp), %rdi
	movq	%rdx, (%rdi)
	addq	$11312, %rsp                    ## imm = 0x2C30
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__YCbCr_to_RGB_simd
_stbi__YCbCr_to_RGB_simd:               ## @stbi__YCbCr_to_RGB_simd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1728, %rsp                     ## imm = 0x6C0
	movq	%rdi, -1248(%rbp)
	movq	%rsi, -1256(%rbp)
	movq	%rdx, -1264(%rbp)
	movq	%rcx, -1272(%rbp)
	movl	%r8d, -1276(%rbp)
	movl	%r9d, -1280(%rbp)
	movl	$0, -1284(%rbp)
	cmpl	$4, -1280(%rbp)
	jne	LBB73_6
## %bb.1:
	movb	$-128, -1233(%rbp)
	movb	-1233(%rbp), %al
	movb	%al, -1201(%rbp)
	movb	%al, -1202(%rbp)
	movb	%al, -1203(%rbp)
	movb	%al, -1204(%rbp)
	movb	%al, -1205(%rbp)
	movb	%al, -1206(%rbp)
	movb	%al, -1207(%rbp)
	movb	%al, -1208(%rbp)
	movb	%al, -1209(%rbp)
	movb	%al, -1210(%rbp)
	movb	%al, -1211(%rbp)
	movb	%al, -1212(%rbp)
	movb	%al, -1213(%rbp)
	movb	%al, -1214(%rbp)
	movb	%al, -1215(%rbp)
	movb	%al, -1216(%rbp)
	movzbl	-1216(%rbp), %ecx
	movd	%ecx, %xmm0
	movzbl	-1215(%rbp), %ecx
	pinsrb	$1, %ecx, %xmm0
	movzbl	-1214(%rbp), %ecx
	pinsrb	$2, %ecx, %xmm0
	movzbl	-1213(%rbp), %ecx
	pinsrb	$3, %ecx, %xmm0
	movzbl	-1212(%rbp), %ecx
	pinsrb	$4, %ecx, %xmm0
	movzbl	-1211(%rbp), %ecx
	pinsrb	$5, %ecx, %xmm0
	movzbl	-1210(%rbp), %ecx
	pinsrb	$6, %ecx, %xmm0
	movzbl	-1209(%rbp), %ecx
	pinsrb	$7, %ecx, %xmm0
	movzbl	-1208(%rbp), %ecx
	pinsrb	$8, %ecx, %xmm0
	movzbl	-1207(%rbp), %ecx
	pinsrb	$9, %ecx, %xmm0
	movzbl	-1206(%rbp), %ecx
	pinsrb	$10, %ecx, %xmm0
	movzbl	-1205(%rbp), %ecx
	pinsrb	$11, %ecx, %xmm0
	movzbl	-1204(%rbp), %ecx
	pinsrb	$12, %ecx, %xmm0
	movzbl	-1203(%rbp), %ecx
	pinsrb	$13, %ecx, %xmm0
	movzbl	-1202(%rbp), %ecx
	pinsrb	$14, %ecx, %xmm0
	movzbl	-1201(%rbp), %ecx
	pinsrb	$15, %ecx, %xmm0
	movaps	%xmm0, -1232(%rbp)
	movaps	-1232(%rbp), %xmm0
	movaps	%xmm0, -1312(%rbp)
	movw	$5743, -34(%rbp)                ## imm = 0x166F
	movw	-34(%rbp), %dx
	movw	%dx, -2(%rbp)
	movw	%dx, -4(%rbp)
	movw	%dx, -6(%rbp)
	movw	%dx, -8(%rbp)
	movw	%dx, -10(%rbp)
	movw	%dx, -12(%rbp)
	movw	%dx, -14(%rbp)
	movw	%dx, -16(%rbp)
	movzwl	-16(%rbp), %ecx
	movd	%ecx, %xmm0
	movzwl	-14(%rbp), %ecx
	pinsrw	$1, %ecx, %xmm0
	movzwl	-12(%rbp), %ecx
	pinsrw	$2, %ecx, %xmm0
	movzwl	-10(%rbp), %ecx
	pinsrw	$3, %ecx, %xmm0
	movzwl	-8(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm0
	movzwl	-6(%rbp), %ecx
	pinsrw	$5, %ecx, %xmm0
	movzwl	-4(%rbp), %ecx
	pinsrw	$6, %ecx, %xmm0
	movzwl	-2(%rbp), %ecx
	pinsrw	$7, %ecx, %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	-32(%rbp), %xmm0
	movaps	%xmm0, -1328(%rbp)
	movw	$-2925, -82(%rbp)               ## imm = 0xF493
	movw	-82(%rbp), %dx
	movw	%dx, -36(%rbp)
	movw	%dx, -38(%rbp)
	movw	%dx, -40(%rbp)
	movw	%dx, -42(%rbp)
	movw	%dx, -44(%rbp)
	movw	%dx, -46(%rbp)
	movw	%dx, -48(%rbp)
	movw	%dx, -50(%rbp)
	movzwl	-50(%rbp), %ecx
	movd	%ecx, %xmm0
	movzwl	-48(%rbp), %ecx
	pinsrw	$1, %ecx, %xmm0
	movzwl	-46(%rbp), %ecx
	pinsrw	$2, %ecx, %xmm0
	movzwl	-44(%rbp), %ecx
	pinsrw	$3, %ecx, %xmm0
	movzwl	-42(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm0
	movzwl	-40(%rbp), %ecx
	pinsrw	$5, %ecx, %xmm0
	movzwl	-38(%rbp), %ecx
	pinsrw	$6, %ecx, %xmm0
	movzwl	-36(%rbp), %ecx
	pinsrw	$7, %ecx, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	-80(%rbp), %xmm0
	movaps	%xmm0, -1344(%rbp)
	movw	$-1410, -130(%rbp)              ## imm = 0xFA7E
	movw	-130(%rbp), %dx
	movw	%dx, -84(%rbp)
	movw	%dx, -86(%rbp)
	movw	%dx, -88(%rbp)
	movw	%dx, -90(%rbp)
	movw	%dx, -92(%rbp)
	movw	%dx, -94(%rbp)
	movw	%dx, -96(%rbp)
	movw	%dx, -98(%rbp)
	movzwl	-98(%rbp), %ecx
	movd	%ecx, %xmm0
	movzwl	-96(%rbp), %ecx
	pinsrw	$1, %ecx, %xmm0
	movzwl	-94(%rbp), %ecx
	pinsrw	$2, %ecx, %xmm0
	movzwl	-92(%rbp), %ecx
	pinsrw	$3, %ecx, %xmm0
	movzwl	-90(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm0
	movzwl	-88(%rbp), %ecx
	pinsrw	$5, %ecx, %xmm0
	movzwl	-86(%rbp), %ecx
	pinsrw	$6, %ecx, %xmm0
	movzwl	-84(%rbp), %ecx
	pinsrw	$7, %ecx, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	-128(%rbp), %xmm0
	movaps	%xmm0, -1360(%rbp)
	movw	$7258, -178(%rbp)               ## imm = 0x1C5A
	movw	-178(%rbp), %dx
	movw	%dx, -132(%rbp)
	movw	%dx, -134(%rbp)
	movw	%dx, -136(%rbp)
	movw	%dx, -138(%rbp)
	movw	%dx, -140(%rbp)
	movw	%dx, -142(%rbp)
	movw	%dx, -144(%rbp)
	movw	%dx, -146(%rbp)
	movzwl	-146(%rbp), %ecx
	movd	%ecx, %xmm0
	movzwl	-144(%rbp), %ecx
	pinsrw	$1, %ecx, %xmm0
	movzwl	-142(%rbp), %ecx
	pinsrw	$2, %ecx, %xmm0
	movzwl	-140(%rbp), %ecx
	pinsrw	$3, %ecx, %xmm0
	movzwl	-138(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm0
	movzwl	-136(%rbp), %ecx
	pinsrw	$5, %ecx, %xmm0
	movzwl	-134(%rbp), %ecx
	pinsrw	$6, %ecx, %xmm0
	movzwl	-132(%rbp), %ecx
	pinsrw	$7, %ecx, %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	-176(%rbp), %xmm0
	movaps	%xmm0, -1376(%rbp)
	movb	$-128, -225(%rbp)
	movb	-225(%rbp), %al
	movb	%al, -179(%rbp)
	movb	%al, -180(%rbp)
	movb	%al, -181(%rbp)
	movb	%al, -182(%rbp)
	movb	%al, -183(%rbp)
	movb	%al, -184(%rbp)
	movb	%al, -185(%rbp)
	movb	%al, -186(%rbp)
	movb	%al, -187(%rbp)
	movb	%al, -188(%rbp)
	movb	%al, -189(%rbp)
	movb	%al, -190(%rbp)
	movb	%al, -191(%rbp)
	movb	%al, -192(%rbp)
	movb	%al, -193(%rbp)
	movb	%al, -194(%rbp)
	movzbl	-194(%rbp), %ecx
	movd	%ecx, %xmm0
	movzbl	-193(%rbp), %ecx
	pinsrb	$1, %ecx, %xmm0
	movzbl	-192(%rbp), %ecx
	pinsrb	$2, %ecx, %xmm0
	movzbl	-191(%rbp), %ecx
	pinsrb	$3, %ecx, %xmm0
	movzbl	-190(%rbp), %ecx
	pinsrb	$4, %ecx, %xmm0
	movzbl	-189(%rbp), %ecx
	pinsrb	$5, %ecx, %xmm0
	movzbl	-188(%rbp), %ecx
	pinsrb	$6, %ecx, %xmm0
	movzbl	-187(%rbp), %ecx
	pinsrb	$7, %ecx, %xmm0
	movzbl	-186(%rbp), %ecx
	pinsrb	$8, %ecx, %xmm0
	movzbl	-185(%rbp), %ecx
	pinsrb	$9, %ecx, %xmm0
	movzbl	-184(%rbp), %ecx
	pinsrb	$10, %ecx, %xmm0
	movzbl	-183(%rbp), %ecx
	pinsrb	$11, %ecx, %xmm0
	movzbl	-182(%rbp), %ecx
	pinsrb	$12, %ecx, %xmm0
	movzbl	-181(%rbp), %ecx
	pinsrb	$13, %ecx, %xmm0
	movzbl	-180(%rbp), %ecx
	pinsrb	$14, %ecx, %xmm0
	movzbl	-179(%rbp), %ecx
	pinsrb	$15, %ecx, %xmm0
	movaps	%xmm0, -224(%rbp)
	movaps	-224(%rbp), %xmm0
	movaps	%xmm0, -1392(%rbp)
	movw	$255, -274(%rbp)
	movw	-274(%rbp), %dx
	movw	%dx, -228(%rbp)
	movw	%dx, -230(%rbp)
	movw	%dx, -232(%rbp)
	movw	%dx, -234(%rbp)
	movw	%dx, -236(%rbp)
	movw	%dx, -238(%rbp)
	movw	%dx, -240(%rbp)
	movw	%dx, -242(%rbp)
	movzwl	-242(%rbp), %ecx
	movd	%ecx, %xmm0
	movzwl	-240(%rbp), %ecx
	pinsrw	$1, %ecx, %xmm0
	movzwl	-238(%rbp), %ecx
	pinsrw	$2, %ecx, %xmm0
	movzwl	-236(%rbp), %ecx
	pinsrw	$3, %ecx, %xmm0
	movzwl	-234(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm0
	movzwl	-232(%rbp), %ecx
	pinsrw	$5, %ecx, %xmm0
	movzwl	-230(%rbp), %ecx
	pinsrw	$6, %ecx, %xmm0
	movzwl	-228(%rbp), %ecx
	pinsrw	$7, %ecx, %xmm0
	movdqa	%xmm0, -272(%rbp)
	movdqa	-272(%rbp), %xmm0
	movdqa	%xmm0, -1408(%rbp)
LBB73_2:                                ## =>This Inner Loop Header: Depth=1
	movl	-1284(%rbp), %eax
	addl	$7, %eax
	cmpl	-1276(%rbp), %eax
	jge	LBB73_5
## %bb.3:                               ##   in Loop: Header=BB73_2 Depth=1
	movq	-1256(%rbp), %rax
	movslq	-1284(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movaps	%xmm0, -304(%rbp)
	movaps	-304(%rbp), %xmm0
	movaps	%xmm0, -1424(%rbp)
	movq	-1272(%rbp), %rax
	movslq	-1284(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movaps	%xmm0, -336(%rbp)
	movaps	-336(%rbp), %xmm0
	movaps	%xmm0, -1440(%rbp)
	movq	-1264(%rbp), %rax
	movslq	-1284(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movaps	%xmm0, -368(%rbp)
	movaps	-368(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movaps	-1440(%rbp), %xmm0
	movaps	-1312(%rbp), %xmm1
	movaps	%xmm0, -384(%rbp)
	movaps	%xmm1, -400(%rbp)
	movaps	-384(%rbp), %xmm0
	movaps	-400(%rbp), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -1472(%rbp)
	movaps	-1456(%rbp), %xmm0
	movaps	-1312(%rbp), %xmm1
	movaps	%xmm0, -416(%rbp)
	movaps	%xmm1, -432(%rbp)
	movaps	-416(%rbp), %xmm0
	movaps	-432(%rbp), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -1488(%rbp)
	movaps	-1392(%rbp), %xmm0
	movaps	-1424(%rbp), %xmm1
	movaps	%xmm0, -448(%rbp)
	movaps	%xmm1, -464(%rbp)
	movaps	-448(%rbp), %xmm0
	movaps	-464(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -1504(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -480(%rbp)
	movaps	-480(%rbp), %xmm1
	movaps	-1472(%rbp), %xmm2
	movaps	%xmm1, -496(%rbp)
	movaps	%xmm2, -512(%rbp)
	movaps	-496(%rbp), %xmm1
	movaps	-512(%rbp), %xmm2
	punpcklbw	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, -1520(%rbp)
	movaps	%xmm0, -528(%rbp)
	movaps	-528(%rbp), %xmm0
	movaps	-1488(%rbp), %xmm1
	movaps	%xmm0, -544(%rbp)
	movaps	%xmm1, -560(%rbp)
	movaps	-544(%rbp), %xmm0
	movaps	-560(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -1536(%rbp)
	movaps	-1504(%rbp), %xmm0
	movaps	%xmm0, -576(%rbp)
	movl	$4, -580(%rbp)
	movaps	-576(%rbp), %xmm0
	movd	-580(%rbp), %xmm1               ## xmm1 = mem[0],zero,zero,zero
	psrlw	%xmm1, %xmm0
	movaps	%xmm0, -1552(%rbp)
	movaps	-1328(%rbp), %xmm0
	movaps	-1520(%rbp), %xmm1
	movaps	%xmm0, -608(%rbp)
	movaps	%xmm1, -624(%rbp)
	movaps	-608(%rbp), %xmm0
	movaps	-624(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -1568(%rbp)
	movaps	-1360(%rbp), %xmm0
	movaps	-1536(%rbp), %xmm1
	movaps	%xmm0, -640(%rbp)
	movaps	%xmm1, -656(%rbp)
	movaps	-640(%rbp), %xmm0
	movaps	-656(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -1584(%rbp)
	movaps	-1536(%rbp), %xmm0
	movaps	-1376(%rbp), %xmm1
	movaps	%xmm0, -672(%rbp)
	movaps	%xmm1, -688(%rbp)
	movaps	-672(%rbp), %xmm0
	movaps	-688(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -1600(%rbp)
	movaps	-1520(%rbp), %xmm0
	movaps	-1344(%rbp), %xmm1
	movaps	%xmm0, -704(%rbp)
	movaps	%xmm1, -720(%rbp)
	movaps	-704(%rbp), %xmm0
	movaps	-720(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -1616(%rbp)
	movaps	-1568(%rbp), %xmm0
	movaps	-1552(%rbp), %xmm1
	movaps	%xmm0, -736(%rbp)
	movaps	%xmm1, -752(%rbp)
	movaps	-736(%rbp), %xmm0
	movaps	-752(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -1632(%rbp)
	movaps	-1584(%rbp), %xmm0
	movaps	-1552(%rbp), %xmm1
	movaps	%xmm0, -768(%rbp)
	movaps	%xmm1, -784(%rbp)
	movaps	-768(%rbp), %xmm0
	movaps	-784(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -1648(%rbp)
	movaps	-1552(%rbp), %xmm0
	movaps	-1600(%rbp), %xmm1
	movaps	%xmm0, -800(%rbp)
	movaps	%xmm1, -816(%rbp)
	movaps	-800(%rbp), %xmm0
	movaps	-816(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -1664(%rbp)
	movaps	-1648(%rbp), %xmm0
	movaps	-1616(%rbp), %xmm1
	movaps	%xmm0, -832(%rbp)
	movaps	%xmm1, -848(%rbp)
	movaps	-832(%rbp), %xmm0
	movaps	-848(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -1680(%rbp)
	movaps	-1632(%rbp), %xmm0
	movaps	%xmm0, -864(%rbp)
	movl	$4, -868(%rbp)
	movaps	-864(%rbp), %xmm0
	movd	-868(%rbp), %xmm1               ## xmm1 = mem[0],zero,zero,zero
	psraw	%xmm1, %xmm0
	movaps	%xmm0, -1696(%rbp)
	movaps	-1664(%rbp), %xmm0
	movaps	%xmm0, -896(%rbp)
	movl	$4, -900(%rbp)
	movaps	-896(%rbp), %xmm0
	movd	-900(%rbp), %xmm1               ## xmm1 = mem[0],zero,zero,zero
	psraw	%xmm1, %xmm0
	movaps	%xmm0, -1712(%rbp)
	movaps	-1680(%rbp), %xmm0
	movaps	%xmm0, -928(%rbp)
	movl	$4, -932(%rbp)
	movaps	-928(%rbp), %xmm0
	movd	-932(%rbp), %xmm1               ## xmm1 = mem[0],zero,zero,zero
	psraw	%xmm1, %xmm0
	movaps	%xmm0, -1728(%rbp)
	movaps	-1696(%rbp), %xmm0
	movaps	-1712(%rbp), %xmm1
	movaps	%xmm0, -960(%rbp)
	movaps	%xmm1, -976(%rbp)
	movaps	-960(%rbp), %xmm0
	movaps	-976(%rbp), %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -1744(%rbp)
	movaps	-1728(%rbp), %xmm0
	movaps	-1408(%rbp), %xmm1
	movaps	%xmm0, -992(%rbp)
	movaps	%xmm1, -1008(%rbp)
	movaps	-992(%rbp), %xmm0
	movaps	-1008(%rbp), %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -1760(%rbp)
	movaps	-1744(%rbp), %xmm0
	movaps	-1760(%rbp), %xmm1
	movaps	%xmm0, -1024(%rbp)
	movaps	%xmm1, -1040(%rbp)
	movaps	-1024(%rbp), %xmm0
	movaps	-1040(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -1776(%rbp)
	movaps	-1744(%rbp), %xmm0
	movaps	-1760(%rbp), %xmm1
	movaps	%xmm0, -1056(%rbp)
	movaps	%xmm1, -1072(%rbp)
	movaps	-1056(%rbp), %xmm0
	movaps	-1072(%rbp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movaps	%xmm0, -1792(%rbp)
	movaps	-1776(%rbp), %xmm0
	movaps	-1792(%rbp), %xmm1
	movaps	%xmm0, -1088(%rbp)
	movaps	%xmm1, -1104(%rbp)
	movaps	-1088(%rbp), %xmm0
	movaps	-1104(%rbp), %xmm1
	punpcklwd	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movaps	%xmm0, -1808(%rbp)
	movaps	-1776(%rbp), %xmm0
	movaps	-1792(%rbp), %xmm1
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm1, -1136(%rbp)
	movaps	-1120(%rbp), %xmm0
	movaps	-1136(%rbp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movdqa	%xmm0, -1824(%rbp)
	movq	-1248(%rbp), %rax
	movdqa	-1808(%rbp), %xmm0
	movq	%rax, -1144(%rbp)
	movdqa	%xmm0, -1168(%rbp)
	movdqa	-1168(%rbp), %xmm0
	movq	-1144(%rbp), %rax
	movdqu	%xmm0, (%rax)
	movq	-1248(%rbp), %rax
	addq	$16, %rax
	movdqa	-1824(%rbp), %xmm0
	movq	%rax, -1176(%rbp)
	movdqa	%xmm0, -1200(%rbp)
	movdqa	-1200(%rbp), %xmm0
	movq	-1176(%rbp), %rax
	movdqu	%xmm0, (%rax)
	movq	-1248(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -1248(%rbp)
## %bb.4:                               ##   in Loop: Header=BB73_2 Depth=1
	movl	-1284(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -1284(%rbp)
	jmp	LBB73_2
LBB73_5:
	jmp	LBB73_6
LBB73_6:
	jmp	LBB73_7
LBB73_7:                                ## =>This Inner Loop Header: Depth=1
	movl	-1284(%rbp), %eax
	cmpl	-1276(%rbp), %eax
	jge	LBB73_25
## %bb.8:                               ##   in Loop: Header=BB73_7 Depth=1
	movq	-1256(%rbp), %rax
	movslq	-1284(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	shll	$20, %edx
	addl	$524288, %edx                   ## imm = 0x80000
	movl	%edx, -1828(%rbp)
	movq	-1272(%rbp), %rax
	movslq	-1284(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	subl	$128, %edx
	movl	%edx, -1844(%rbp)
	movq	-1264(%rbp), %rax
	movslq	-1284(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	subl	$128, %edx
	movl	%edx, -1848(%rbp)
	movl	-1828(%rbp), %edx
	imull	$1470208, -1844(%rbp), %esi     ## imm = 0x166F00
	addl	%esi, %edx
	movl	%edx, -1832(%rbp)
	movl	-1828(%rbp), %edx
	imull	$-748800, -1844(%rbp), %esi     ## imm = 0xFFF49300
	addl	%esi, %edx
	imull	$-360960, -1848(%rbp), %esi     ## imm = 0xFFFA7E00
	andl	$-65536, %esi                   ## imm = 0xFFFF0000
	addl	%esi, %edx
	movl	%edx, -1836(%rbp)
	movl	-1828(%rbp), %edx
	imull	$1858048, -1848(%rbp), %esi     ## imm = 0x1C5A00
	addl	%esi, %edx
	movl	%edx, -1840(%rbp)
	movl	-1832(%rbp), %edx
	sarl	$20, %edx
	movl	%edx, -1832(%rbp)
	movl	-1836(%rbp), %edx
	sarl	$20, %edx
	movl	%edx, -1836(%rbp)
	movl	-1840(%rbp), %edx
	sarl	$20, %edx
	movl	%edx, -1840(%rbp)
	cmpl	$255, -1832(%rbp)
	jbe	LBB73_13
## %bb.9:                               ##   in Loop: Header=BB73_7 Depth=1
	cmpl	$0, -1832(%rbp)
	jge	LBB73_11
## %bb.10:                              ##   in Loop: Header=BB73_7 Depth=1
	movl	$0, -1832(%rbp)
	jmp	LBB73_12
LBB73_11:                               ##   in Loop: Header=BB73_7 Depth=1
	movl	$255, -1832(%rbp)
LBB73_12:                               ##   in Loop: Header=BB73_7 Depth=1
	jmp	LBB73_13
LBB73_13:                               ##   in Loop: Header=BB73_7 Depth=1
	cmpl	$255, -1836(%rbp)
	jbe	LBB73_18
## %bb.14:                              ##   in Loop: Header=BB73_7 Depth=1
	cmpl	$0, -1836(%rbp)
	jge	LBB73_16
## %bb.15:                              ##   in Loop: Header=BB73_7 Depth=1
	movl	$0, -1836(%rbp)
	jmp	LBB73_17
LBB73_16:                               ##   in Loop: Header=BB73_7 Depth=1
	movl	$255, -1836(%rbp)
LBB73_17:                               ##   in Loop: Header=BB73_7 Depth=1
	jmp	LBB73_18
LBB73_18:                               ##   in Loop: Header=BB73_7 Depth=1
	cmpl	$255, -1840(%rbp)
	jbe	LBB73_23
## %bb.19:                              ##   in Loop: Header=BB73_7 Depth=1
	cmpl	$0, -1840(%rbp)
	jge	LBB73_21
## %bb.20:                              ##   in Loop: Header=BB73_7 Depth=1
	movl	$0, -1840(%rbp)
	jmp	LBB73_22
LBB73_21:                               ##   in Loop: Header=BB73_7 Depth=1
	movl	$255, -1840(%rbp)
LBB73_22:                               ##   in Loop: Header=BB73_7 Depth=1
	jmp	LBB73_23
LBB73_23:                               ##   in Loop: Header=BB73_7 Depth=1
	movl	-1832(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-1248(%rbp), %rcx
	movb	%al, (%rcx)
	movl	-1836(%rbp), %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-1248(%rbp), %rcx
	movb	%dl, 1(%rcx)
	movl	-1840(%rbp), %esi
                                        ## kill: def $sil killed $sil killed $esi
	movq	-1248(%rbp), %rcx
	movb	%sil, 2(%rcx)
	movq	-1248(%rbp), %rcx
	movb	$-1, 3(%rcx)
	movl	-1280(%rbp), %edi
	movq	-1248(%rbp), %rcx
	movslq	%edi, %r8
	addq	%r8, %rcx
	movq	%rcx, -1248(%rbp)
## %bb.24:                              ##   in Loop: Header=BB73_7 Depth=1
	movl	-1284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1284(%rbp)
	jmp	LBB73_7
LBB73_25:
	addq	$1728, %rsp                     ## imm = 0x6C0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__resample_row_hv_2_simd
_stbi__resample_row_hv_2_simd:          ## @stbi__resample_row_hv_2_simd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp                      ## imm = 0x3E0
	movq	%rdi, -688(%rbp)
	movq	%rsi, -696(%rbp)
	movq	%rdx, -704(%rbp)
	movl	%ecx, -708(%rbp)
	movl	%r8d, -712(%rbp)
	movl	$0, -716(%rbp)
	cmpl	$1, -708(%rbp)
	jne	LBB74_2
## %bb.1:
	movq	-696(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movq	-704(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movq	-688(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-688(%rbp), %rax
	movb	%cl, (%rax)
	movq	-688(%rbp), %rax
	movq	%rax, -680(%rbp)
	jmp	LBB74_11
LBB74_2:
	movq	-696(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movq	-704(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -724(%rbp)
LBB74_3:                                ## =>This Inner Loop Header: Depth=1
	movl	-716(%rbp), %eax
	movl	-708(%rbp), %ecx
	subl	$1, %ecx
	andl	$-8, %ecx
	cmpl	%ecx, %eax
	jge	LBB74_6
## %bb.4:                               ##   in Loop: Header=BB74_3 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -672(%rbp)
	movaps	-672(%rbp), %xmm0
	movaps	%xmm0, -752(%rbp)
	movq	-704(%rbp), %rax
	movslq	-716(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movaps	%xmm0, -32(%rbp)
	movaps	-32(%rbp), %xmm0
	movaps	%xmm0, -768(%rbp)
	movq	-696(%rbp), %rax
	movslq	-716(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movaps	%xmm0, -64(%rbp)
	movaps	-64(%rbp), %xmm0
	movaps	%xmm0, -784(%rbp)
	movaps	-768(%rbp), %xmm0
	movaps	-752(%rbp), %xmm1
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm1, -96(%rbp)
	movaps	-80(%rbp), %xmm0
	movaps	-96(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -800(%rbp)
	movaps	-784(%rbp), %xmm0
	movaps	-752(%rbp), %xmm1
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	-112(%rbp), %xmm0
	movaps	-128(%rbp), %xmm1
	punpcklbw	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movaps	%xmm0, -816(%rbp)
	movaps	-800(%rbp), %xmm0
	movaps	-816(%rbp), %xmm1
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	-144(%rbp), %xmm0
	movaps	-160(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -832(%rbp)
	movaps	-816(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movl	$2, -180(%rbp)
	movaps	-176(%rbp), %xmm0
	movd	-180(%rbp), %xmm1               ## xmm1 = mem[0],zero,zero,zero
	psllw	%xmm1, %xmm0
	movaps	%xmm0, -848(%rbp)
	movaps	-848(%rbp), %xmm0
	movaps	-832(%rbp), %xmm1
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm1, -224(%rbp)
	movaps	-208(%rbp), %xmm0
	movaps	-224(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -864(%rbp)
	movaps	-864(%rbp), %xmm0
	pslldq	$2, %xmm0                       ## xmm0 = zero,zero,xmm0[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	movaps	%xmm0, -880(%rbp)
	movaps	-864(%rbp), %xmm0
	psrldq	$2, %xmm0                       ## xmm0 = xmm0[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	movaps	%xmm0, -896(%rbp)
	movaps	-880(%rbp), %xmm0
	movl	-724(%rbp), %edx
	pinsrw	$0, %edx, %xmm0
	movaps	%xmm0, -912(%rbp)
	movaps	-896(%rbp), %xmm0
	movq	-696(%rbp), %rax
	movslq	-716(%rbp), %rcx
	movzbl	8(%rax,%rcx), %edx
                                        ## implicit-def: $rax
	movl	%edx, %eax
	leal	(%rax,%rax,2), %edx
	movq	-704(%rbp), %rax
	movzbl	8(%rax,%rcx), %esi
	addl	%esi, %edx
	pinsrw	$7, %edx, %xmm0
	movaps	%xmm0, -928(%rbp)
	movw	$8, -258(%rbp)
	movw	-258(%rbp), %di
	movw	%di, -226(%rbp)
	movw	%di, -228(%rbp)
	movw	%di, -230(%rbp)
	movw	%di, -232(%rbp)
	movw	%di, -234(%rbp)
	movw	%di, -236(%rbp)
	movw	%di, -238(%rbp)
	movw	%di, -240(%rbp)
	movzwl	-240(%rbp), %edx
	movd	%edx, %xmm0
	movzwl	-238(%rbp), %edx
	pinsrw	$1, %edx, %xmm0
	movzwl	-236(%rbp), %edx
	pinsrw	$2, %edx, %xmm0
	movzwl	-234(%rbp), %edx
	pinsrw	$3, %edx, %xmm0
	movzwl	-232(%rbp), %edx
	pinsrw	$4, %edx, %xmm0
	movzwl	-230(%rbp), %edx
	pinsrw	$5, %edx, %xmm0
	movzwl	-228(%rbp), %edx
	pinsrw	$6, %edx, %xmm0
	movzwl	-226(%rbp), %edx
	pinsrw	$7, %edx, %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	-256(%rbp), %xmm0
	movaps	%xmm0, -944(%rbp)
	movaps	-864(%rbp), %xmm0
	movaps	%xmm0, -288(%rbp)
	movl	$2, -292(%rbp)
	movaps	-288(%rbp), %xmm0
	movd	-292(%rbp), %xmm1               ## xmm1 = mem[0],zero,zero,zero
	psllw	%xmm1, %xmm0
	movaps	%xmm0, -960(%rbp)
	movaps	-912(%rbp), %xmm0
	movaps	-864(%rbp), %xmm1
	movaps	%xmm0, -320(%rbp)
	movaps	%xmm1, -336(%rbp)
	movaps	-320(%rbp), %xmm0
	movaps	-336(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -976(%rbp)
	movaps	-928(%rbp), %xmm0
	movaps	-864(%rbp), %xmm1
	movaps	%xmm0, -352(%rbp)
	movaps	%xmm1, -368(%rbp)
	movaps	-352(%rbp), %xmm0
	movaps	-368(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -992(%rbp)
	movaps	-960(%rbp), %xmm0
	movaps	-944(%rbp), %xmm1
	movaps	%xmm0, -384(%rbp)
	movaps	%xmm1, -400(%rbp)
	movaps	-384(%rbp), %xmm0
	movaps	-400(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -1008(%rbp)
	movaps	-976(%rbp), %xmm0
	movaps	-1008(%rbp), %xmm1
	movaps	%xmm0, -416(%rbp)
	movaps	%xmm1, -432(%rbp)
	movaps	-416(%rbp), %xmm0
	movaps	-432(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -1024(%rbp)
	movaps	-992(%rbp), %xmm0
	movaps	-1008(%rbp), %xmm1
	movaps	%xmm0, -448(%rbp)
	movaps	%xmm1, -464(%rbp)
	movaps	-448(%rbp), %xmm0
	movaps	-464(%rbp), %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -1040(%rbp)
	movaps	-1024(%rbp), %xmm0
	movaps	-1040(%rbp), %xmm1
	movaps	%xmm0, -480(%rbp)
	movaps	%xmm1, -496(%rbp)
	movaps	-480(%rbp), %xmm0
	movaps	-496(%rbp), %xmm1
	punpcklwd	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movaps	%xmm0, -1056(%rbp)
	movaps	-1024(%rbp), %xmm0
	movaps	-1040(%rbp), %xmm1
	movaps	%xmm0, -512(%rbp)
	movaps	%xmm1, -528(%rbp)
	movaps	-512(%rbp), %xmm0
	movaps	-528(%rbp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movdqa	%xmm0, -1072(%rbp)
	movdqa	-1056(%rbp), %xmm0
	movdqa	%xmm0, -544(%rbp)
	movl	$4, -548(%rbp)
	movdqa	-544(%rbp), %xmm0
	movl	-548(%rbp), %edx
	movd	%edx, %xmm1
	psrlw	%xmm1, %xmm0
	movdqa	%xmm0, -1088(%rbp)
	movdqa	-1072(%rbp), %xmm0
	movdqa	%xmm0, -576(%rbp)
	movl	$4, -580(%rbp)
	movdqa	-576(%rbp), %xmm0
	movl	-580(%rbp), %edx
	movd	%edx, %xmm1
	psrlw	%xmm1, %xmm0
	movdqa	%xmm0, -1104(%rbp)
	movdqa	-1088(%rbp), %xmm0
	movdqa	-1104(%rbp), %xmm1
	movdqa	%xmm0, -608(%rbp)
	movdqa	%xmm1, -624(%rbp)
	movdqa	-608(%rbp), %xmm0
	movdqa	-624(%rbp), %xmm1
	packuswb	%xmm1, %xmm0
	movdqa	%xmm0, -1120(%rbp)
	movq	-688(%rbp), %rax
	movl	-716(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movdqa	-1120(%rbp), %xmm0
	movq	%rax, -632(%rbp)
	movdqa	%xmm0, -656(%rbp)
	movdqa	-656(%rbp), %xmm0
	movq	-632(%rbp), %rax
	movdqu	%xmm0, (%rax)
	movq	-696(%rbp), %rax
	movl	-716(%rbp), %edx
	addl	$7, %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %edx
	imull	$3, %edx, %edx
	movq	-704(%rbp), %rax
	movl	-716(%rbp), %esi
	addl	$7, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	addl	%esi, %edx
	movl	%edx, -724(%rbp)
## %bb.5:                               ##   in Loop: Header=BB74_3 Depth=1
	movl	-716(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -716(%rbp)
	jmp	LBB74_3
LBB74_6:
	movl	-724(%rbp), %eax
	movl	%eax, -720(%rbp)
	movq	-696(%rbp), %rcx
	movslq	-716(%rbp), %rdx
	movzbl	(%rcx,%rdx), %eax
	imull	$3, %eax, %eax
	movq	-704(%rbp), %rcx
	movslq	-716(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	addl	%esi, %eax
	movl	%eax, -724(%rbp)
	imull	$3, -724(%rbp), %eax
	addl	-720(%rbp), %eax
	addl	$8, %eax
	sarl	$4, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-688(%rbp), %rcx
	movl	-716(%rbp), %esi
	shll	$1, %esi
	movslq	%esi, %rdx
	movb	%al, (%rcx,%rdx)
	movl	-716(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -716(%rbp)
LBB74_7:                                ## =>This Inner Loop Header: Depth=1
	movl	-716(%rbp), %eax
	cmpl	-708(%rbp), %eax
	jge	LBB74_10
## %bb.8:                               ##   in Loop: Header=BB74_7 Depth=1
	movl	-724(%rbp), %eax
	movl	%eax, -720(%rbp)
	movq	-696(%rbp), %rcx
	movslq	-716(%rbp), %rdx
	movzbl	(%rcx,%rdx), %eax
	imull	$3, %eax, %eax
	movq	-704(%rbp), %rcx
	movslq	-716(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	addl	%esi, %eax
	movl	%eax, -724(%rbp)
	imull	$3, -720(%rbp), %eax
	addl	-724(%rbp), %eax
	addl	$8, %eax
	sarl	$4, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-688(%rbp), %rcx
	movl	-716(%rbp), %esi
	shll	$1, %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	movb	%al, (%rcx,%rdx)
	imull	$3, -724(%rbp), %esi
	addl	-720(%rbp), %esi
	addl	$8, %esi
	sarl	$4, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movq	-688(%rbp), %rcx
	movl	-716(%rbp), %edi
	shll	$1, %edi
	movslq	%edi, %rdx
	movb	%sil, (%rcx,%rdx)
## %bb.9:                               ##   in Loop: Header=BB74_7 Depth=1
	movl	-716(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -716(%rbp)
	jmp	LBB74_7
LBB74_10:
	movl	-724(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-688(%rbp), %rcx
	movl	-708(%rbp), %edx
	shll	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	movb	%al, (%rcx,%rsi)
	movq	-688(%rbp), %rcx
	movq	%rcx, -680(%rbp)
LBB74_11:
	movq	-680(%rbp), %rax
	addq	$992, %rsp                      ## imm = 0x3E0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__clamp
_stbi__clamp:                           ## @stbi__clamp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$255, -8(%rbp)
	jbe	LBB75_6
## %bb.1:
	cmpl	$0, -8(%rbp)
	jge	LBB75_3
## %bb.2:
	movb	$0, -1(%rbp)
	jmp	LBB75_7
LBB75_3:
	cmpl	$255, -8(%rbp)
	jle	LBB75_5
## %bb.4:
	movb	$-1, -1(%rbp)
	jmp	LBB75_7
LBB75_5:
	jmp	LBB75_6
LBB75_6:
	movl	-8(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -1(%rbp)
LBB75_7:
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__get_marker
_stbi__get_marker:                      ## @stbi__get_marker
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$255, %ecx
	je	LBB76_2
## %bb.1:
	movq	-16(%rbp), %rax
	movb	18472(%rax), %cl
	movb	%cl, -17(%rbp)
	movq	-16(%rbp), %rax
	movb	$-1, 18472(%rax)
	movb	-17(%rbp), %cl
	movb	%cl, -1(%rbp)
	jmp	LBB76_8
LBB76_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movb	%al, -17(%rbp)
	movzbl	-17(%rbp), %ecx
	cmpl	$255, %ecx
	je	LBB76_4
## %bb.3:
	movb	$-1, -1(%rbp)
	jmp	LBB76_8
LBB76_4:
	jmp	LBB76_5
LBB76_5:                                ## =>This Inner Loop Header: Depth=1
	movzbl	-17(%rbp), %eax
	cmpl	$255, %eax
	jne	LBB76_7
## %bb.6:                               ##   in Loop: Header=BB76_5 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movb	%al, -17(%rbp)
	jmp	LBB76_5
LBB76_7:
	movb	-17(%rbp), %al
	movb	%al, -1(%rbp)
LBB76_8:
	movzbl	-1(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__process_marker
_stbi__process_marker:                  ## @stbi__process_marker
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -96(%rbp)
	movl	%esi, -100(%rbp)
	movl	-100(%rbp), %ecx
	movl	%ecx, %edx
	subl	$196, %edx
	movl	%ecx, -176(%rbp)                ## 4-byte Spill
	je	LBB77_21
	jmp	LBB77_80
LBB77_80:
	movl	-176(%rbp), %eax                ## 4-byte Reload
	subl	$219, %eax
	je	LBB77_5
	jmp	LBB77_81
LBB77_81:
	movl	-176(%rbp), %eax                ## 4-byte Reload
	subl	$221, %eax
	je	LBB77_2
	jmp	LBB77_82
LBB77_82:
	movl	-176(%rbp), %eax                ## 4-byte Reload
	subl	$255, %eax
	jne	LBB77_45
	jmp	LBB77_1
LBB77_1:
	leaq	L_.str.18(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
	jmp	LBB77_77
LBB77_2:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	cmpl	$4, %eax
	je	LBB77_4
## %bb.3:
	leaq	L_.str.19(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
	jmp	LBB77_77
LBB77_4:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	movq	-96(%rbp), %rcx
	movl	%eax, 18536(%rcx)
	movl	$1, -84(%rbp)
	jmp	LBB77_77
LBB77_5:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	subl	$2, %eax
	movl	%eax, -104(%rbp)
LBB77_6:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB77_13 Depth 2
	cmpl	$0, -104(%rbp)
	jle	LBB77_20
## %bb.7:                               ##   in Loop: Header=BB77_6 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -108(%rbp)
	movl	-108(%rbp), %ecx
	sarl	$4, %ecx
	movl	%ecx, -112(%rbp)
	cmpl	$0, -112(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -116(%rbp)
	movl	-108(%rbp), %ecx
	andl	$15, %ecx
	movl	%ecx, -120(%rbp)
	cmpl	$0, -112(%rbp)
	je	LBB77_10
## %bb.8:                               ##   in Loop: Header=BB77_6 Depth=1
	cmpl	$1, -112(%rbp)
	je	LBB77_10
## %bb.9:
	leaq	L_.str.20(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
	jmp	LBB77_77
LBB77_10:                               ##   in Loop: Header=BB77_6 Depth=1
	cmpl	$3, -120(%rbp)
	jle	LBB77_12
## %bb.11:
	leaq	L_.str.21(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
	jmp	LBB77_77
LBB77_12:                               ##   in Loop: Header=BB77_6 Depth=1
	movl	$0, -124(%rbp)
LBB77_13:                               ##   Parent Loop BB77_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$64, -124(%rbp)
	jge	LBB77_19
## %bb.14:                              ##   in Loop: Header=BB77_13 Depth=2
	cmpl	$0, -116(%rbp)
	je	LBB77_16
## %bb.15:                              ##   in Loop: Header=BB77_13 Depth=2
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	movl	%eax, -180(%rbp)                ## 4-byte Spill
	jmp	LBB77_17
LBB77_16:                               ##   in Loop: Header=BB77_13 Depth=2
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -180(%rbp)                ## 4-byte Spill
LBB77_17:                               ##   in Loop: Header=BB77_13 Depth=2
	movl	-180(%rbp), %eax                ## 4-byte Reload
                                        ## kill: def $ax killed $ax killed $eax
	movq	-96(%rbp), %rcx
	addq	$13448, %rcx                    ## imm = 0x3488
	movslq	-120(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-124(%rbp), %rdx
	leaq	_stbi__jpeg_dezigzag(%rip), %rsi
	movzbl	(%rsi,%rdx), %edi
	movl	%edi, %edx
	movw	%ax, (%rcx,%rdx,2)
## %bb.18:                              ##   in Loop: Header=BB77_13 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	LBB77_13
LBB77_19:                               ##   in Loop: Header=BB77_6 Depth=1
	movl	-116(%rbp), %eax
	cmpl	$0, %eax
	movl	$129, %eax
	movl	$65, %ecx
	cmovnel	%eax, %ecx
	movl	-104(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -104(%rbp)
	jmp	LBB77_6
LBB77_20:
	cmpl	$0, -104(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -84(%rbp)
	jmp	LBB77_77
LBB77_21:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	subl	$2, %eax
	movl	%eax, -104(%rbp)
LBB77_22:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB77_27 Depth 2
                                        ##     Child Loop BB77_38 Depth 2
	cmpl	$0, -104(%rbp)
	jle	LBB77_44
## %bb.23:                              ##   in Loop: Header=BB77_22 Depth=1
	movl	$0, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -148(%rbp)
	movl	-148(%rbp), %ecx
	sarl	$4, %ecx
	movl	%ecx, -152(%rbp)
	movl	-148(%rbp), %ecx
	andl	$15, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$1, -152(%rbp)
	jg	LBB77_25
## %bb.24:                              ##   in Loop: Header=BB77_22 Depth=1
	cmpl	$3, -156(%rbp)
	jle	LBB77_26
LBB77_25:
	leaq	L_.str.22(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
	jmp	LBB77_77
LBB77_26:                               ##   in Loop: Header=BB77_22 Depth=1
	movl	$0, -140(%rbp)
LBB77_27:                               ##   Parent Loop BB77_22 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$16, -140(%rbp)
	jge	LBB77_30
## %bb.28:                              ##   in Loop: Header=BB77_27 Depth=2
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movslq	-140(%rbp), %rdx
	movl	%ecx, -80(%rbp,%rdx,4)
	movslq	-140(%rbp), %rdx
	movl	-80(%rbp,%rdx,4), %ecx
	addl	-144(%rbp), %ecx
	movl	%ecx, -144(%rbp)
## %bb.29:                              ##   in Loop: Header=BB77_27 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	LBB77_27
LBB77_30:                               ##   in Loop: Header=BB77_22 Depth=1
	movl	-104(%rbp), %eax
	subl	$17, %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -152(%rbp)
	jne	LBB77_34
## %bb.31:                              ##   in Loop: Header=BB77_22 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movslq	-156(%rbp), %rcx
	imulq	$1680, %rcx, %rcx               ## imm = 0x690
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_stbi__build_huffman
	cmpl	$0, %eax
	jne	LBB77_33
## %bb.32:
	movl	$0, -84(%rbp)
	jmp	LBB77_77
LBB77_33:                               ##   in Loop: Header=BB77_22 Depth=1
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movslq	-156(%rbp), %rcx
	imulq	$1680, %rcx, %rcx               ## imm = 0x690
	addq	%rcx, %rax
	addq	$1024, %rax                     ## imm = 0x400
	movq	%rax, -136(%rbp)
	jmp	LBB77_37
LBB77_34:                               ##   in Loop: Header=BB77_22 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	addq	$6728, %rax                     ## imm = 0x1A48
	movslq	-156(%rbp), %rcx
	imulq	$1680, %rcx, %rcx               ## imm = 0x690
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_stbi__build_huffman
	cmpl	$0, %eax
	jne	LBB77_36
## %bb.35:
	movl	$0, -84(%rbp)
	jmp	LBB77_77
LBB77_36:                               ##   in Loop: Header=BB77_22 Depth=1
	movq	-96(%rbp), %rax
	addq	$6728, %rax                     ## imm = 0x1A48
	movslq	-156(%rbp), %rcx
	imulq	$1680, %rcx, %rcx               ## imm = 0x690
	addq	%rcx, %rax
	addq	$1024, %rax                     ## imm = 0x400
	movq	%rax, -136(%rbp)
LBB77_37:                               ##   in Loop: Header=BB77_22 Depth=1
	movl	$0, -140(%rbp)
LBB77_38:                               ##   Parent Loop BB77_22 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-140(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	LBB77_41
## %bb.39:                              ##   in Loop: Header=BB77_38 Depth=2
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movq	-136(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
## %bb.40:                              ##   in Loop: Header=BB77_38 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	LBB77_38
LBB77_41:                               ##   in Loop: Header=BB77_22 Depth=1
	cmpl	$0, -152(%rbp)
	je	LBB77_43
## %bb.42:                              ##   in Loop: Header=BB77_22 Depth=1
	movq	-96(%rbp), %rax
	addq	$13960, %rax                    ## imm = 0x3688
	movslq	-156(%rbp), %rcx
	shlq	$10, %rcx
	addq	%rcx, %rax
	movq	-96(%rbp), %rcx
	addq	$6728, %rcx                     ## imm = 0x1A48
	movslq	-156(%rbp), %rdx
	imulq	$1680, %rdx, %rdx               ## imm = 0x690
	addq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_stbi__build_fast_ac
LBB77_43:                               ##   in Loop: Header=BB77_22 Depth=1
	movl	-144(%rbp), %eax
	movl	-104(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -104(%rbp)
	jmp	LBB77_22
LBB77_44:
	cmpl	$0, -104(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -84(%rbp)
	jmp	LBB77_77
LBB77_45:
	cmpl	$224, -100(%rbp)
	jl	LBB77_47
## %bb.46:
	cmpl	$239, -100(%rbp)
	jle	LBB77_48
LBB77_47:
	cmpl	$254, -100(%rbp)
	jne	LBB77_76
LBB77_48:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	movl	%eax, -104(%rbp)
	cmpl	$2, -104(%rbp)
	jge	LBB77_52
## %bb.49:
	cmpl	$254, -100(%rbp)
	jne	LBB77_51
## %bb.50:
	leaq	L_.str.23(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
	jmp	LBB77_77
LBB77_51:
	leaq	L_.str.24(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
	jmp	LBB77_77
LBB77_52:
	movl	-104(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -104(%rbp)
	cmpl	$224, -100(%rbp)
	jne	LBB77_63
## %bb.53:
	cmpl	$5, -104(%rbp)
	jl	LBB77_63
## %bb.54:
	movl	$1, -160(%rbp)
	movl	$0, -164(%rbp)
LBB77_55:                               ## =>This Inner Loop Header: Depth=1
	cmpl	$5, -164(%rbp)
	jge	LBB77_60
## %bb.56:                              ##   in Loop: Header=BB77_55 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movslq	-164(%rbp), %rdx
	leaq	_stbi__process_marker.tag(%rip), %rsi
	movzbl	(%rsi,%rdx), %r8d
	cmpl	%r8d, %ecx
	je	LBB77_58
## %bb.57:                              ##   in Loop: Header=BB77_55 Depth=1
	movl	$0, -160(%rbp)
LBB77_58:                               ##   in Loop: Header=BB77_55 Depth=1
	jmp	LBB77_59
LBB77_59:                               ##   in Loop: Header=BB77_55 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	LBB77_55
LBB77_60:
	movl	-104(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -160(%rbp)
	je	LBB77_62
## %bb.61:
	movq	-96(%rbp), %rax
	movl	$1, 18504(%rax)
LBB77_62:
	jmp	LBB77_75
LBB77_63:
	cmpl	$238, -100(%rbp)
	jne	LBB77_74
## %bb.64:
	cmpl	$12, -104(%rbp)
	jl	LBB77_74
## %bb.65:
	movl	$1, -168(%rbp)
	movl	$0, -172(%rbp)
LBB77_66:                               ## =>This Inner Loop Header: Depth=1
	cmpl	$6, -172(%rbp)
	jge	LBB77_71
## %bb.67:                              ##   in Loop: Header=BB77_66 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movslq	-172(%rbp), %rdx
	leaq	_stbi__process_marker.tag.25(%rip), %rsi
	movzbl	(%rsi,%rdx), %r8d
	cmpl	%r8d, %ecx
	je	LBB77_69
## %bb.68:                              ##   in Loop: Header=BB77_66 Depth=1
	movl	$0, -168(%rbp)
LBB77_69:                               ##   in Loop: Header=BB77_66 Depth=1
	jmp	LBB77_70
LBB77_70:                               ##   in Loop: Header=BB77_66 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	LBB77_66
LBB77_71:
	movl	-104(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -168(%rbp)
	je	LBB77_73
## %bb.72:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rdi
	movb	%al, -181(%rbp)                 ## 1-byte Spill
	callq	_stbi__get16be
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	%eax, -188(%rbp)                ## 4-byte Spill
	callq	_stbi__get16be
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	%eax, -192(%rbp)                ## 4-byte Spill
	callq	_stbi__get8
	movzbl	%al, %edx
	movq	-96(%rbp), %rcx
	movl	%edx, 18508(%rcx)
	movl	-104(%rbp), %edx
	subl	$6, %edx
	movl	%edx, -104(%rbp)
LBB77_73:
	jmp	LBB77_74
LBB77_74:
	jmp	LBB77_75
LBB77_75:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	movl	-104(%rbp), %esi
	callq	_stbi__skip
	movl	$1, -84(%rbp)
	jmp	LBB77_77
LBB77_76:
	leaq	L_.str.26(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -84(%rbp)
LBB77_77:
	movl	-84(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -196(%rbp)                ## 4-byte Spill
	jne	LBB77_79
## %bb.78:
	movl	-196(%rbp), %eax                ## 4-byte Reload
	addq	$208, %rsp
	popq	%rbp
	retq
LBB77_79:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__at_eof
_stbi__at_eof:                          ## @stbi__at_eof
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB78_6
## %bb.1:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	LBB78_3
## %bb.2:
	movl	$0, -4(%rbp)
	jmp	LBB78_7
LBB78_3:
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	LBB78_5
## %bb.4:
	movl	$1, -4(%rbp)
	jmp	LBB78_7
LBB78_5:
	jmp	LBB78_6
LBB78_6:
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	200(%rcx), %rax
	setae	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -4(%rbp)
LBB78_7:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__process_frame_header
_stbi__process_frame_header:            ## @stbi__process_frame_header
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -52(%rbp)
	movl	$1, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	_stbi__get16be
	movl	%eax, -36(%rbp)
	cmpl	$11, -36(%rbp)
	jge	LBB79_2
## %bb.1:
	leaq	L_.str.28(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_2:
	movq	-32(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$8, -40(%rbp)
	je	LBB79_4
## %bb.3:
	leaq	L_.str.29(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_4:
	movq	-32(%rbp), %rdi
	callq	_stbi__get16be
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	jne	LBB79_6
## %bb.5:
	leaq	L_.str.30(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_6:
	movq	-32(%rbp), %rdi
	callq	_stbi__get16be
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	LBB79_8
## %bb.7:
	leaq	L_.str.31(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_8:
	movq	-32(%rbp), %rax
	cmpl	$16777216, 4(%rax)              ## imm = 0x1000000
	jbe	LBB79_10
## %bb.9:
	leaq	L_.str.32(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_10:
	movq	-32(%rbp), %rax
	cmpl	$16777216, (%rax)               ## imm = 0x1000000
	jbe	LBB79_12
## %bb.11:
	leaq	L_.str.32(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_12:
	movq	-32(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$3, -60(%rbp)
	je	LBB79_16
## %bb.13:
	cmpl	$1, -60(%rbp)
	je	LBB79_16
## %bb.14:
	cmpl	$4, -60(%rbp)
	je	LBB79_16
## %bb.15:
	leaq	L_.str.33(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_16:
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	$0, -44(%rbp)
LBB79_17:                               ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	LBB79_20
## %bb.18:                              ##   in Loop: Header=BB79_17 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 72(%rax)
## %bb.19:                              ##   in Loop: Header=BB79_17 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB79_17
LBB79_20:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	$3, 8(%rcx), %edx
	addl	$8, %edx
	cmpl	%edx, %eax
	je	LBB79_22
## %bb.21:
	leaq	L_.str.28(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_22:
	movq	-16(%rbp), %rax
	movl	$0, 18512(%rax)
	movl	$0, -44(%rbp)
LBB79_23:                               ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB79_37
## %bb.24:                              ##   in Loop: Header=BB79_23 Depth=1
	movq	-32(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rdx
	movl	%ecx, (%rdx)
	movq	-32(%rbp), %rdx
	cmpl	$3, 8(%rdx)
	jne	LBB79_27
## %bb.25:                              ##   in Loop: Header=BB79_23 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movslq	-44(%rbp), %rax
	leaq	_stbi__process_frame_header.rgb(%rip), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	LBB79_27
## %bb.26:                              ##   in Loop: Header=BB79_23 Depth=1
	movq	-16(%rbp), %rax
	movl	18512(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 18512(%rax)
LBB79_27:                               ##   in Loop: Header=BB79_23 Depth=1
	movq	-32(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %ecx
	sarl	$4, %ecx
	movq	-16(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 4(%rdx)
	movq	-16(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rdx
	cmpl	$0, 4(%rdx)
	je	LBB79_29
## %bb.28:                              ##   in Loop: Header=BB79_23 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$4, 4(%rax)
	jle	LBB79_30
LBB79_29:
	leaq	L_.str.34(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_30:                               ##   in Loop: Header=BB79_23 Depth=1
	movl	-48(%rbp), %eax
	andl	$15, %eax
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 8(%rcx)
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	$0, 8(%rcx)
	je	LBB79_32
## %bb.31:                              ##   in Loop: Header=BB79_23 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$4, 8(%rax)
	jle	LBB79_33
LBB79_32:
	leaq	L_.str.35(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_33:                               ##   in Loop: Header=BB79_23 Depth=1
	movq	-32(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 12(%rdx)
	movq	-16(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rdx
	cmpl	$3, 12(%rdx)
	jle	LBB79_35
## %bb.34:
	leaq	L_.str.36(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_35:                               ##   in Loop: Header=BB79_23 Depth=1
	jmp	LBB79_36
LBB79_36:                               ##   in Loop: Header=BB79_23 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB79_23
LBB79_37:
	cmpl	$0, -20(%rbp)
	je	LBB79_39
## %bb.38:
	movl	$1, -4(%rbp)
	jmp	LBB79_60
LBB79_39:
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	callq	_stbi__mad3sizes_valid
	cmpl	$0, %eax
	jne	LBB79_41
## %bb.40:
	leaq	L_.str.32(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_41:
	movl	$0, -44(%rbp)
LBB79_42:                               ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB79_49
## %bb.43:                              ##   in Loop: Header=BB79_42 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edx
	cmpl	-52(%rbp), %edx
	jle	LBB79_45
## %bb.44:                              ##   in Loop: Header=BB79_42 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edx
	movl	%edx, -52(%rbp)
LBB79_45:                               ##   in Loop: Header=BB79_42 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	cmpl	-56(%rbp), %edx
	jle	LBB79_47
## %bb.46:                              ##   in Loop: Header=BB79_42 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	%edx, -56(%rbp)
LBB79_47:                               ##   in Loop: Header=BB79_42 Depth=1
	jmp	LBB79_48
LBB79_48:                               ##   in Loop: Header=BB79_42 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB79_42
LBB79_49:
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 18056(%rcx)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 18060(%rcx)
	movl	-52(%rbp), %eax
	shll	$3, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 18072(%rcx)
	movl	-56(%rbp), %eax
	shll	$3, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 18076(%rcx)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	18072(%rcx), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	xorl	%edx, %edx
	divl	18072(%rcx)
	movq	-16(%rbp), %rcx
	movl	%eax, 18064(%rcx)
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	18076(%rcx), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	18076(%rcx)
	movq	-16(%rbp), %rcx
	movl	%eax, 18068(%rcx)
	movl	$0, -44(%rbp)
LBB79_50:                               ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB79_59
## %bb.51:                              ##   in Loop: Header=BB79_50 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rax
	imull	4(%rax), %ecx
	addl	-52(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-52(%rbp)
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, 28(%rsi)
	movq	-32(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	imull	8(%rsi), %eax
	addl	-56(%rbp), %eax
	subl	$1, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	-56(%rbp)
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, 32(%rsi)
	movq	-16(%rbp), %rsi
	movl	18064(%rsi), %eax
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	imull	4(%rsi), %eax
	shll	$3, %eax
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, 36(%rsi)
	movq	-16(%rbp), %rsi
	movl	18068(%rsi), %eax
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	imull	8(%rsi), %eax
	shll	$3, %eax
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, 40(%rsi)
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movq	$0, 80(%rsi)
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movq	$0, 64(%rsi)
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movq	$0, 72(%rsi)
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	36(%rsi), %edi
	movq	-16(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-44(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rsi
	movl	40(%rsi), %esi
	movl	$15, %eax
	movl	%eax, %edx
	callq	_stbi__malloc_mad2
	movq	-16(%rbp), %r8
	addq	$18080, %r8                     ## imm = 0x46A0
	movslq	-44(%rbp), %r9
	imulq	$96, %r9, %r9
	addq	%r9, %r8
	movq	%rax, 56(%r8)
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rax
	cmpq	$0, 56(%rax)
	jne	LBB79_53
## %bb.52:
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$1, %eax
	leaq	L_.str.15(%rip), %rcx
	movq	%rdi, -72(%rbp)                 ## 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -76(%rbp)                 ## 4-byte Spill
	callq	_stbi__err
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	movl	-76(%rbp), %esi                 ## 4-byte Reload
	movl	%eax, %edx
	callq	_stbi__free_jpeg_components
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_53:                               ##   in Loop: Header=BB79_50 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	56(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$0, 18480(%rax)
	je	LBB79_57
## %bb.54:                              ##   in Loop: Header=BB79_50 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	36(%rax), %eax
	cltd
	movl	$8, %esi
	idivl	%esi
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rcx
	movl	%eax, 88(%rcx)
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rcx
	movl	40(%rcx), %eax
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rcx
	movl	%eax, 92(%rcx)
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rcx
	movl	36(%rcx), %edi
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rcx
	movl	40(%rcx), %esi
	movl	$2, %eax
	movl	%eax, %edx
	movl	$15, %ecx
	callq	_stbi__malloc_mad3
	movq	-16(%rbp), %r8
	addq	$18080, %r8                     ## imm = 0x46A0
	movslq	-44(%rbp), %r9
	imulq	$96, %r9, %r9
	addq	%r9, %r8
	movq	%rax, 64(%r8)
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rax
	cmpq	$0, 64(%rax)
	jne	LBB79_56
## %bb.55:
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$1, %eax
	leaq	L_.str.15(%rip), %rcx
	movq	%rdi, -88(%rbp)                 ## 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -92(%rbp)                 ## 4-byte Spill
	callq	_stbi__err
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movl	-92(%rbp), %esi                 ## 4-byte Reload
	movl	%eax, %edx
	callq	_stbi__free_jpeg_components
	movl	%eax, -4(%rbp)
	jmp	LBB79_60
LBB79_56:                               ##   in Loop: Header=BB79_50 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-44(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	64(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-44(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rax, 80(%rcx)
LBB79_57:                               ##   in Loop: Header=BB79_50 Depth=1
	jmp	LBB79_58
LBB79_58:                               ##   in Loop: Header=BB79_50 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB79_50
LBB79_59:
	movl	$1, -4(%rbp)
LBB79_60:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__get8
_stbi__get8:                            ## @stbi__get8
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	200(%rcx), %rax
	jae	LBB80_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	192(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 192(%rax)
	movb	(%rcx), %sil
	movb	%sil, -1(%rbp)
	jmp	LBB80_5
LBB80_2:
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	LBB80_4
## %bb.3:
	movq	-16(%rbp), %rdi
	callq	_stbi__refill_buffer
	movq	-16(%rbp), %rax
	movq	192(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 192(%rax)
	movb	(%rcx), %sil
	movb	%sil, -1(%rbp)
	jmp	LBB80_5
LBB80_4:
	movb	$0, -1(%rbp)
LBB80_5:
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__refill_buffer
_stbi__refill_buffer:                   ## @stbi__refill_buffer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-8(%rbp), %rcx
	addq	$56, %rcx
	movq	-8(%rbp), %rdx
	movl	52(%rdx), %edx
	movq	%rcx, %rsi
	callq	*%rax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	subq	%rsi, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movq	-8(%rbp), %rsi
	addl	184(%rsi), %ecx
	movl	%ecx, 184(%rsi)
	cmpl	$0, -12(%rbp)
	jne	LBB81_2
## %bb.1:
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movb	$0, (%rax)
	jmp	LBB81_3
LBB81_2:
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
LBB81_3:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__get16be
_stbi__get16be:                         ## @stbi__get16be
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	shll	$8, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -16(%rbp)                 ## 4-byte Spill
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	-16(%rbp), %edx                 ## 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__build_huffman
_stbi__build_huffman:                   ## @stbi__build_huffman
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
LBB83_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB83_3 Depth 2
	cmpl	$16, -28(%rbp)
	jge	LBB83_8
## %bb.2:                               ##   in Loop: Header=BB83_1 Depth=1
	movl	$0, -32(%rbp)
LBB83_3:                                ##   Parent Loop BB83_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	LBB83_6
## %bb.4:                               ##   in Loop: Header=BB83_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%edx, %rdi
	movb	%al, 1280(%rcx,%rdi)
## %bb.5:                               ##   in Loop: Header=BB83_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB83_3
LBB83_6:                                ##   in Loop: Header=BB83_1 Depth=1
	jmp	LBB83_7
LBB83_7:                                ##   in Loop: Header=BB83_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB83_1
LBB83_8:
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	$0, 1280(%rax,%rcx)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, -32(%rbp)
LBB83_9:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB83_12 Depth 2
	cmpl	$16, -32(%rbp)
	jg	LBB83_19
## %bb.10:                              ##   in Loop: Header=BB83_9 Depth=1
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movl	%eax, 1612(%rcx,%rdx,4)
	movq	-16(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movzbl	1280(%rcx,%rdx), %eax
	cmpl	-32(%rbp), %eax
	jne	LBB83_17
## %bb.11:                              ##   in Loop: Header=BB83_9 Depth=1
	jmp	LBB83_12
LBB83_12:                               ##   Parent Loop BB83_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movzbl	1280(%rax,%rcx), %edx
	cmpl	-32(%rbp), %edx
	jne	LBB83_14
## %bb.13:                              ##   in Loop: Header=BB83_12 Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -40(%rbp)
                                        ## kill: def $ax killed $ax killed $eax
	movq	-16(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rdi
	movw	%ax, 512(%rdx,%rdi,2)
	jmp	LBB83_12
LBB83_14:                               ##   in Loop: Header=BB83_9 Depth=1
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	-32(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	cmpl	%edx, %eax
	jb	LBB83_16
## %bb.15:
	leaq	L_.str.27(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB83_30
LBB83_16:                               ##   in Loop: Header=BB83_9 Depth=1
	jmp	LBB83_17
LBB83_17:                               ##   in Loop: Header=BB83_9 Depth=1
	movl	-40(%rbp), %eax
	movl	$16, %ecx
	subl	-32(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %eax
	movq	-16(%rbp), %rdx
	movslq	-32(%rbp), %rsi
	movl	%eax, 1540(%rdx,%rsi,4)
	movl	-40(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -40(%rbp)
## %bb.18:                              ##   in Loop: Header=BB83_9 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB83_9
LBB83_19:
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	$-1, 1540(%rax,%rcx,4)
	movq	-16(%rbp), %rdi
	movl	$255, %esi
	movl	$512, %edx                      ## imm = 0x200
	movq	$-1, %rcx
	callq	___memset_chk
	movl	$0, -28(%rbp)
LBB83_20:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB83_23 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB83_29
## %bb.21:                              ##   in Loop: Header=BB83_20 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movzbl	1280(%rax,%rcx), %edx
	movl	%edx, -44(%rbp)
	cmpl	$9, -44(%rbp)
	jg	LBB83_27
## %bb.22:                              ##   in Loop: Header=BB83_20 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movzwl	512(%rax,%rcx,2), %edx
	movl	$9, %esi
	movl	%esi, %edi
	subl	-44(%rbp), %edi
	movl	%edi, %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, -48(%rbp)
	subl	-44(%rbp), %esi
	movl	%esi, %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, -52(%rbp)
	movl	$0, -32(%rbp)
LBB83_23:                               ##   Parent Loop BB83_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	LBB83_26
## %bb.24:                              ##   in Loop: Header=BB83_23 Depth=2
	movl	-28(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %edx
	addl	-32(%rbp), %edx
	movslq	%edx, %rsi
	movb	%al, (%rcx,%rsi)
## %bb.25:                              ##   in Loop: Header=BB83_23 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB83_23
LBB83_26:                               ##   in Loop: Header=BB83_20 Depth=1
	jmp	LBB83_27
LBB83_27:                               ##   in Loop: Header=BB83_20 Depth=1
	jmp	LBB83_28
LBB83_28:                               ##   in Loop: Header=BB83_20 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB83_20
LBB83_29:
	movl	$1, -4(%rbp)
LBB83_30:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__build_fast_ac
_stbi__build_fast_ac:                   ## @stbi__build_fast_ac
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB84_1:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$512, -20(%rbp)                 ## imm = 0x200
	jge	LBB84_14
## %bb.2:                               ##   in Loop: Header=BB84_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movb	%dl, -21(%rbp)
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movw	$0, (%rax,%rcx,2)
	movzbl	-21(%rbp), %esi
	cmpl	$255, %esi
	jge	LBB84_12
## %bb.3:                               ##   in Loop: Header=BB84_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	-21(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	1024(%rax,%rdx), %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	sarl	$4, %ecx
	andl	$15, %ecx
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %ecx
	andl	$15, %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movzbl	-21(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	1280(%rax,%rdx), %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB84_11
## %bb.4:                               ##   in Loop: Header=BB84_1 Depth=1
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	cmpl	$9, %eax
	jg	LBB84_11
## %bb.5:                               ##   in Loop: Header=BB84_1 Depth=1
	movl	-20(%rbp), %eax
	movl	-40(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %eax
	andl	$511, %eax                      ## imm = 0x1FF
	movl	$9, %edx
	subl	-36(%rbp), %edx
	movl	%edx, %ecx
                                        ## kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	LBB84_7
## %bb.6:                               ##   in Loop: Header=BB84_1 Depth=1
	movl	-36(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$4294967295, %eax               ## imm = 0xFFFFFFFF
	shll	%cl, %eax
	addl	$1, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
LBB84_7:                                ##   in Loop: Header=BB84_1 Depth=1
	cmpl	$-128, -44(%rbp)
	jl	LBB84_10
## %bb.8:                               ##   in Loop: Header=BB84_1 Depth=1
	cmpl	$127, -44(%rbp)
	jg	LBB84_10
## %bb.9:                               ##   in Loop: Header=BB84_1 Depth=1
	movl	-44(%rbp), %eax
	shll	$8, %eax
	movl	-32(%rbp), %ecx
	shll	$4, %ecx
	addl	%ecx, %eax
	movl	-40(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	%ecx, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-8(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movw	%ax, (%rdx,%rsi,2)
LBB84_10:                               ##   in Loop: Header=BB84_1 Depth=1
	jmp	LBB84_11
LBB84_11:                               ##   in Loop: Header=BB84_1 Depth=1
	jmp	LBB84_12
LBB84_12:                               ##   in Loop: Header=BB84_1 Depth=1
	jmp	LBB84_13
LBB84_13:                               ##   in Loop: Header=BB84_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB84_1
LBB84_14:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__skip
_stbi__skip:                            ## @stbi__skip
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB85_2
## %bb.1:
	jmp	LBB85_9
LBB85_2:
	cmpl	$0, -12(%rbp)
	jge	LBB85_4
## %bb.3:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	jmp	LBB85_9
LBB85_4:
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB85_8
## %bb.5:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB85_7
## %bb.6:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	movl	-12(%rbp), %edx
	subl	-16(%rbp), %edx
	movl	%edx, %esi
	callq	*%rax
	jmp	LBB85_9
LBB85_7:
	jmp	LBB85_8
LBB85_8:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 192(%rcx)
LBB85_9:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__mad3sizes_valid
_stbi__mad3sizes_valid:                 ## @stbi__mad3sizes_valid
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	_stbi__mul2sizes_valid
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)                  ## 1-byte Spill
	je	LBB86_3
## %bb.1:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %esi
	movl	%eax, %edi
	callq	_stbi__mul2sizes_valid
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)                  ## 1-byte Spill
	je	LBB86_3
## %bb.2:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	-16(%rbp), %esi
	movl	%eax, %edi
	callq	_stbi__addsizes_valid
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -17(%rbp)                  ## 1-byte Spill
LBB86_3:
	movb	-17(%rbp), %al                  ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__malloc_mad2
_stbi__malloc_mad2:                     ## @stbi__malloc_mad2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	_stbi__mad2sizes_valid
	cmpl	$0, %eax
	jne	LBB87_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB87_3
LBB87_2:
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movslq	%eax, %rdi
	callq	_stbi__malloc
	movq	%rax, -8(%rbp)
LBB87_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__free_jpeg_components
_stbi__free_jpeg_components:            ## @stbi__free_jpeg_components
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
LBB88_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB88_10
## %bb.2:                               ##   in Loop: Header=BB88_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 56(%rax)
	je	LBB88_4
## %bb.3:                               ##   in Loop: Header=BB88_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	56(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 48(%rax)
LBB88_4:                                ##   in Loop: Header=BB88_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 64(%rax)
	je	LBB88_6
## %bb.5:                               ##   in Loop: Header=BB88_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	64(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 80(%rax)
LBB88_6:                                ##   in Loop: Header=BB88_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 72(%rax)
	je	LBB88_8
## %bb.7:                               ##   in Loop: Header=BB88_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	72(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 72(%rax)
LBB88_8:                                ##   in Loop: Header=BB88_1 Depth=1
	jmp	LBB88_9
LBB88_9:                                ##   in Loop: Header=BB88_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB88_1
LBB88_10:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__malloc_mad3
_stbi__malloc_mad3:                     ## @stbi__malloc_mad3
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	_stbi__mad3sizes_valid
	cmpl	$0, %eax
	jne	LBB89_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB89_3
LBB89_2:
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rdi
	callq	_stbi__malloc
	movq	%rax, -8(%rbp)
LBB89_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__mul2sizes_valid
_stbi__mul2sizes_valid:                 ## @stbi__mul2sizes_valid
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -8(%rbp)
	jl	LBB90_2
## %bb.1:
	cmpl	$0, -12(%rbp)
	jge	LBB90_3
LBB90_2:
	movl	$0, -4(%rbp)
	jmp	LBB90_6
LBB90_3:
	cmpl	$0, -12(%rbp)
	jne	LBB90_5
## %bb.4:
	movl	$1, -4(%rbp)
	jmp	LBB90_6
LBB90_5:
	movl	-8(%rbp), %eax
	movl	$2147483647, %ecx               ## imm = 0x7FFFFFFF
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-12(%rbp)
	movl	-16(%rbp), %ecx                 ## 4-byte Reload
	cmpl	%eax, %ecx
	setle	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movl	%eax, -4(%rbp)
LBB90_6:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__addsizes_valid
_stbi__addsizes_valid:                  ## @stbi__addsizes_valid
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	LBB91_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB91_3
LBB91_2:
	movl	-8(%rbp), %eax
	movl	$2147483647, %ecx               ## imm = 0x7FFFFFFF
	subl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
LBB91_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__mad2sizes_valid
_stbi__mad2sizes_valid:                 ## @stbi__mad2sizes_valid
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	_stbi__mul2sizes_valid
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -13(%rbp)                  ## 1-byte Spill
	je	LBB92_2
## %bb.1:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %esi
	movl	%eax, %edi
	callq	_stbi__addsizes_valid
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -13(%rbp)                  ## 1-byte Spill
LBB92_2:
	movb	-13(%rbp), %al                  ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function load_jpeg_image
_load_jpeg_image:                       ## @load_jpeg_image
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp                      ## imm = 0x1B0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -256(%rbp)
	movq	%rsi, -264(%rbp)
	movq	%rdx, -272(%rbp)
	movq	%rcx, -280(%rbp)
	movl	%r8d, -284(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
	cmpl	$0, -284(%rbp)
	jl	LBB93_2
## %bb.1:
	cmpl	$4, -284(%rbp)
	jle	LBB93_3
LBB93_2:
	leaq	L_.str.37(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -248(%rbp)
	jmp	LBB93_141
LBB93_3:
	movq	-256(%rbp), %rdi
	callq	_stbi__decode_jpeg_image
	cmpl	$0, %eax
	jne	LBB93_5
## %bb.4:
	movq	-256(%rbp), %rdi
	callq	_stbi__cleanup_jpeg
	movq	$0, -248(%rbp)
	jmp	LBB93_141
LBB93_5:
	cmpl	$0, -284(%rbp)
	je	LBB93_7
## %bb.6:
	movl	-284(%rbp), %eax
	movl	%eax, -380(%rbp)                ## 4-byte Spill
	jmp	LBB93_8
LBB93_7:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	$3, %ecx
	movl	$3, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	movl	%edx, -380(%rbp)                ## 4-byte Spill
LBB93_8:
	movl	-380(%rbp), %eax                ## 4-byte Reload
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movl	%eax, -288(%rbp)
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpl	$3, 8(%rdx)
	movb	%cl, -381(%rbp)                 ## 1-byte Spill
	jne	LBB93_14
## %bb.9:
	movq	-256(%rbp), %rax
	cmpl	$3, 18512(%rax)
	movb	$1, %cl
	movb	%cl, -382(%rbp)                 ## 1-byte Spill
	je	LBB93_13
## %bb.10:
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-256(%rbp), %rcx
	cmpl	$0, 18508(%rcx)
	movb	%al, -383(%rbp)                 ## 1-byte Spill
	jne	LBB93_12
## %bb.11:
	movq	-256(%rbp), %rax
	cmpl	$0, 18504(%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -383(%rbp)                 ## 1-byte Spill
LBB93_12:
	movb	-383(%rbp), %al                 ## 1-byte Reload
	movb	%al, -382(%rbp)                 ## 1-byte Spill
LBB93_13:
	movb	-382(%rbp), %al                 ## 1-byte Reload
	movb	%al, -381(%rbp)                 ## 1-byte Spill
LBB93_14:
	movb	-381(%rbp), %al                 ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -296(%rbp)
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpl	$3, 8(%rdx)
	jne	LBB93_18
## %bb.15:
	cmpl	$3, -288(%rbp)
	jge	LBB93_18
## %bb.16:
	cmpl	$0, -296(%rbp)
	jne	LBB93_18
## %bb.17:
	movl	$1, -292(%rbp)
	jmp	LBB93_19
LBB93_18:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -292(%rbp)
LBB93_19:
	cmpl	$0, -292(%rbp)
	jg	LBB93_21
## %bb.20:
	movq	-256(%rbp), %rdi
	callq	_stbi__cleanup_jpeg
	movq	$0, -248(%rbp)
	jmp	LBB93_141
LBB93_21:
	xorl	%esi, %esi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$32, %edx
	callq	_memset
	movl	$0, -300(%rbp)
LBB93_22:                               ## =>This Inner Loop Header: Depth=1
	movl	-300(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	LBB93_43
## %bb.23:                              ##   in Loop: Header=BB93_22 Depth=1
	movslq	-300(%rbp), %rax
	imulq	$48, %rax, %rax
	leaq	-240(%rbp), %rcx
	addq	%rax, %rcx
	movq	%rcx, -328(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	addl	$3, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	callq	_stbi__malloc
	movq	-256(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-300(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rcx
	movq	%rax, 72(%rcx)
	movq	-256(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-300(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 72(%rax)
	jne	LBB93_25
## %bb.24:
	movq	-256(%rbp), %rdi
	callq	_stbi__cleanup_jpeg
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -248(%rbp)
	jmp	LBB93_141
LBB93_25:                               ##   in Loop: Header=BB93_22 Depth=1
	movq	-256(%rbp), %rax
	movl	18056(%rax), %eax
	movq	-256(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-300(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cltd
	idivl	4(%rcx)
	movq	-328(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-256(%rbp), %rcx
	movl	18060(%rcx), %eax
	movq	-256(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-300(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rcx
	cltd
	idivl	8(%rcx)
	movq	-328(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-328(%rbp), %rcx
	movl	28(%rcx), %eax
	sarl	$1, %eax
	movq	-328(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx), %eax
	movq	-328(%rbp), %rcx
	addl	24(%rcx), %eax
	subl	$1, %eax
	movq	-328(%rbp), %rcx
	xorl	%edi, %edi
	movl	%edi, %edx
	divl	24(%rcx)
	movq	-328(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-328(%rbp), %rcx
	movl	$0, 40(%rcx)
	movq	-256(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-300(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rcx
	movq	48(%rcx), %rcx
	movq	-328(%rbp), %rsi
	movq	%rcx, 16(%rsi)
	movq	-328(%rbp), %rsi
	movq	%rcx, 8(%rsi)
	movq	-328(%rbp), %rcx
	cmpl	$1, 24(%rcx)
	jne	LBB93_28
## %bb.26:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	cmpl	$1, 28(%rax)
	jne	LBB93_28
## %bb.27:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	leaq	_resample_row_1(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	LBB93_41
LBB93_28:                               ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	cmpl	$1, 24(%rax)
	jne	LBB93_31
## %bb.29:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	cmpl	$2, 28(%rax)
	jne	LBB93_31
## %bb.30:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	leaq	_stbi__resample_row_v_2(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	LBB93_40
LBB93_31:                               ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	LBB93_34
## %bb.32:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	cmpl	$1, 28(%rax)
	jne	LBB93_34
## %bb.33:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	leaq	_stbi__resample_row_h_2(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	LBB93_39
LBB93_34:                               ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	LBB93_37
## %bb.35:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	cmpl	$2, 28(%rax)
	jne	LBB93_37
## %bb.36:                              ##   in Loop: Header=BB93_22 Depth=1
	movq	-256(%rbp), %rax
	movq	18560(%rax), %rax
	movq	-328(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	LBB93_38
LBB93_37:                               ##   in Loop: Header=BB93_22 Depth=1
	movq	-328(%rbp), %rax
	leaq	_stbi__resample_row_generic(%rip), %rcx
	movq	%rcx, (%rax)
LBB93_38:                               ##   in Loop: Header=BB93_22 Depth=1
	jmp	LBB93_39
LBB93_39:                               ##   in Loop: Header=BB93_22 Depth=1
	jmp	LBB93_40
LBB93_40:                               ##   in Loop: Header=BB93_22 Depth=1
	jmp	LBB93_41
LBB93_41:                               ##   in Loop: Header=BB93_22 Depth=1
	jmp	LBB93_42
LBB93_42:                               ##   in Loop: Header=BB93_22 Depth=1
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	LBB93_22
LBB93_43:
	movl	-288(%rbp), %edi
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %esi
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movl	$1, %ecx
	callq	_stbi__malloc_mad3
	movq	%rax, -320(%rbp)
	cmpq	$0, -320(%rbp)
	jne	LBB93_45
## %bb.44:
	movq	-256(%rbp), %rdi
	callq	_stbi__cleanup_jpeg
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -248(%rbp)
	jmp	LBB93_141
LBB93_45:
	movl	$0, -308(%rbp)
LBB93_46:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB93_48 Depth 2
                                        ##     Child Loop BB93_65 Depth 2
                                        ##     Child Loop BB93_74 Depth 2
                                        ##     Child Loop BB93_80 Depth 2
                                        ##     Child Loop BB93_88 Depth 2
                                        ##     Child Loop BB93_97 Depth 2
                                        ##     Child Loop BB93_102 Depth 2
                                        ##     Child Loop BB93_110 Depth 2
                                        ##     Child Loop BB93_117 Depth 2
                                        ##     Child Loop BB93_123 Depth 2
                                        ##     Child Loop BB93_128 Depth 2
	movl	-308(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	LBB93_138
## %bb.47:                              ##   in Loop: Header=BB93_46 Depth=1
	movq	-320(%rbp), %rax
	movl	-288(%rbp), %ecx
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	imull	(%rdx), %ecx
	imull	-308(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movl	$0, -300(%rbp)
LBB93_48:                               ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-300(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	LBB93_61
## %bb.49:                              ##   in Loop: Header=BB93_48 Depth=2
	movslq	-300(%rbp), %rax
	imulq	$48, %rax, %rax
	leaq	-240(%rbp), %rcx
	addq	%rax, %rcx
	movq	%rcx, -344(%rbp)
	movq	-344(%rbp), %rax
	movl	36(%rax), %edx
	movq	-344(%rbp), %rax
	movl	28(%rax), %esi
	sarl	$1, %esi
	cmpl	%esi, %edx
	setge	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	movl	%edx, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-300(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rcx
	movq	72(%rcx), %rdi
	cmpl	$0, -348(%rbp)
	movq	%rax, -392(%rbp)                ## 8-byte Spill
	movq	%rdi, -400(%rbp)                ## 8-byte Spill
	je	LBB93_51
## %bb.50:                              ##   in Loop: Header=BB93_48 Depth=2
	movq	-344(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -408(%rbp)                ## 8-byte Spill
	jmp	LBB93_52
LBB93_51:                               ##   in Loop: Header=BB93_48 Depth=2
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -408(%rbp)                ## 8-byte Spill
LBB93_52:                               ##   in Loop: Header=BB93_48 Depth=2
	movq	-408(%rbp), %rax                ## 8-byte Reload
	cmpl	$0, -348(%rbp)
	movq	%rax, -416(%rbp)                ## 8-byte Spill
	je	LBB93_54
## %bb.53:                              ##   in Loop: Header=BB93_48 Depth=2
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -424(%rbp)                ## 8-byte Spill
	jmp	LBB93_55
LBB93_54:                               ##   in Loop: Header=BB93_48 Depth=2
	movq	-344(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -424(%rbp)                ## 8-byte Spill
LBB93_55:                               ##   in Loop: Header=BB93_48 Depth=2
	movq	-424(%rbp), %rax                ## 8-byte Reload
	movq	-344(%rbp), %rcx
	movl	32(%rcx), %ecx
	movq	-344(%rbp), %rdx
	movl	24(%rdx), %r8d
	movq	-400(%rbp), %rdi                ## 8-byte Reload
	movq	-416(%rbp), %rsi                ## 8-byte Reload
	movq	%rax, %rdx
	movq	-392(%rbp), %rax                ## 8-byte Reload
	callq	*%rax
	movslq	-300(%rbp), %rdx
	movq	%rax, -48(%rbp,%rdx,8)
	movq	-344(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 36(%rax)
	movq	-344(%rbp), %rax
	cmpl	28(%rax), %ecx
	jl	LBB93_59
## %bb.56:                              ##   in Loop: Header=BB93_48 Depth=2
	movq	-344(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-344(%rbp), %rax
	movq	16(%rax), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-344(%rbp), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
	movq	-256(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-300(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	32(%rax), %edx
	jge	LBB93_58
## %bb.57:                              ##   in Loop: Header=BB93_48 Depth=2
	movq	-256(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-300(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	36(%rax), %edx
	movq	-344(%rbp), %rax
	movq	16(%rax), %rcx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movq	%rcx, 16(%rax)
LBB93_58:                               ##   in Loop: Header=BB93_48 Depth=2
	jmp	LBB93_59
LBB93_59:                               ##   in Loop: Header=BB93_48 Depth=2
	jmp	LBB93_60
LBB93_60:                               ##   in Loop: Header=BB93_48 Depth=2
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	LBB93_48
LBB93_61:                               ##   in Loop: Header=BB93_46 Depth=1
	cmpl	$3, -288(%rbp)
	jl	LBB93_94
## %bb.62:                              ##   in Loop: Header=BB93_46 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$3, 8(%rax)
	jne	LBB93_71
## %bb.63:                              ##   in Loop: Header=BB93_46 Depth=1
	cmpl	$0, -296(%rbp)
	je	LBB93_69
## %bb.64:                              ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_65:                               ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_68
## %bb.66:                              ##   in Loop: Header=BB93_65 Depth=2
	movq	-360(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-336(%rbp), %rax
	movb	%sil, (%rax)
	movq	-40(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-336(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-32(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-336(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-336(%rbp), %rax
	movb	$-1, 3(%rax)
	movl	-288(%rbp), %ecx
	movq	-336(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -336(%rbp)
## %bb.67:                              ##   in Loop: Header=BB93_65 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_65
LBB93_68:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_70
LBB93_69:                               ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	movq	18552(%rax), %rax
	movq	-336(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-256(%rbp), %r8
	movq	(%r8), %r8
	movl	(%r8), %r8d
	movl	-288(%rbp), %r9d
	callq	*%rax
LBB93_70:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_93
LBB93_71:                               ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$4, 8(%rax)
	jne	LBB93_87
## %bb.72:                              ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	cmpl	$0, 18508(%rax)
	jne	LBB93_78
## %bb.73:                              ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_74:                               ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_77
## %bb.75:                              ##   in Loop: Header=BB93_74 Depth=2
	movq	-24(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movb	%sil, -361(%rbp)
	movq	-48(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movzbl	%sil, %edi
	movzbl	-361(%rbp), %esi
	callq	_stbi__blinn_8x8
	movq	-336(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-40(%rbp), %rdx
	movl	-304(%rbp), %ecx
	movl	%ecx, %r8d
	movb	(%rdx,%r8), %al
	movzbl	%al, %edi
	movzbl	-361(%rbp), %esi
	callq	_stbi__blinn_8x8
	movq	-336(%rbp), %rdx
	movb	%al, 1(%rdx)
	movq	-32(%rbp), %rdx
	movl	-304(%rbp), %ecx
	movl	%ecx, %r8d
	movb	(%rdx,%r8), %al
	movzbl	%al, %edi
	movzbl	-361(%rbp), %esi
	callq	_stbi__blinn_8x8
	movq	-336(%rbp), %rdx
	movb	%al, 2(%rdx)
	movq	-336(%rbp), %rdx
	movb	$-1, 3(%rdx)
	movl	-288(%rbp), %ecx
	movq	-336(%rbp), %rdx
	movslq	%ecx, %r8
	addq	%r8, %rdx
	movq	%rdx, -336(%rbp)
## %bb.76:                              ##   in Loop: Header=BB93_74 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_74
LBB93_77:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_86
LBB93_78:                               ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	cmpl	$2, 18508(%rax)
	jne	LBB93_84
## %bb.79:                              ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	movq	18552(%rax), %rax
	movq	-336(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-256(%rbp), %r8
	movq	(%r8), %r8
	movl	(%r8), %r8d
	movl	-288(%rbp), %r9d
	callq	*%rax
	movl	$0, -304(%rbp)
LBB93_80:                               ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_83
## %bb.81:                              ##   in Loop: Header=BB93_80 Depth=2
	movq	-24(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movb	%sil, -362(%rbp)
	movq	-336(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	$255, %edi
	subl	%ecx, %edi
                                        ## kill: def $dil killed $dil killed $edi
	movzbl	%dil, %edi
	movzbl	-362(%rbp), %esi
	callq	_stbi__blinn_8x8
	movq	-336(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-336(%rbp), %rdx
	movzbl	1(%rdx), %ecx
	movl	$255, %esi
	subl	%ecx, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movzbl	%sil, %edi
	movzbl	-362(%rbp), %esi
	callq	_stbi__blinn_8x8
	movq	-336(%rbp), %rdx
	movb	%al, 1(%rdx)
	movq	-336(%rbp), %rdx
	movzbl	2(%rdx), %ecx
	movl	$255, %esi
	subl	%ecx, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movzbl	%sil, %edi
	movzbl	-362(%rbp), %esi
	callq	_stbi__blinn_8x8
	movq	-336(%rbp), %rdx
	movb	%al, 2(%rdx)
	movl	-288(%rbp), %ecx
	movq	-336(%rbp), %rdx
	movslq	%ecx, %r8
	addq	%r8, %rdx
	movq	%rdx, -336(%rbp)
## %bb.82:                              ##   in Loop: Header=BB93_80 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_80
LBB93_83:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_85
LBB93_84:                               ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	movq	18552(%rax), %rax
	movq	-336(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-256(%rbp), %r8
	movq	(%r8), %r8
	movl	(%r8), %r8d
	movl	-288(%rbp), %r9d
	callq	*%rax
LBB93_85:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_86
LBB93_86:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_92
LBB93_87:                               ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_88:                               ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_91
## %bb.89:                              ##   in Loop: Header=BB93_88 Depth=2
	movq	-360(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-336(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-336(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-336(%rbp), %rax
	movb	%sil, (%rax)
	movq	-336(%rbp), %rax
	movb	$-1, 3(%rax)
	movl	-288(%rbp), %ecx
	movq	-336(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -336(%rbp)
## %bb.90:                              ##   in Loop: Header=BB93_88 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_88
LBB93_91:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_92
LBB93_92:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_93
LBB93_93:                               ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_136
LBB93_94:                               ##   in Loop: Header=BB93_46 Depth=1
	cmpl	$0, -296(%rbp)
	je	LBB93_107
## %bb.95:                              ##   in Loop: Header=BB93_46 Depth=1
	cmpl	$1, -288(%rbp)
	jne	LBB93_101
## %bb.96:                              ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_97:                               ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_100
## %bb.98:                              ##   in Loop: Header=BB93_97 Depth=2
	movq	-48(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %edi
	movq	-40(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %esi
	movq	-32(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %edx
	callq	_stbi__compute_y
	movq	-336(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -336(%rbp)
	movb	%al, (%r8)
## %bb.99:                              ##   in Loop: Header=BB93_97 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_97
LBB93_100:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_106
LBB93_101:                              ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_102:                              ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_105
## %bb.103:                             ##   in Loop: Header=BB93_102 Depth=2
	movq	-48(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %edi
	movq	-40(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %esi
	movq	-32(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %edx
	callq	_stbi__compute_y
	movq	-336(%rbp), %r8
	movb	%al, (%r8)
	movq	-336(%rbp), %r8
	movb	$-1, 1(%r8)
## %bb.104:                             ##   in Loop: Header=BB93_102 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	movq	-336(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -336(%rbp)
	jmp	LBB93_102
LBB93_105:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_106
LBB93_106:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_135
LBB93_107:                              ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$4, 8(%rax)
	jne	LBB93_114
## %bb.108:                             ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	cmpl	$0, 18508(%rax)
	jne	LBB93_114
## %bb.109:                             ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_110:                              ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_113
## %bb.111:                             ##   in Loop: Header=BB93_110 Depth=2
	movq	-24(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movb	%sil, -363(%rbp)
	movq	-48(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movzbl	%sil, %edi
	movzbl	-363(%rbp), %esi
	callq	_stbi__blinn_8x8
	movb	%al, -364(%rbp)
	movq	-40(%rbp), %rdx
	movl	-304(%rbp), %ecx
	movl	%ecx, %r8d
	movb	(%rdx,%r8), %al
	movzbl	%al, %edi
	movzbl	-363(%rbp), %esi
	callq	_stbi__blinn_8x8
	movb	%al, -365(%rbp)
	movq	-32(%rbp), %rdx
	movl	-304(%rbp), %ecx
	movl	%ecx, %r8d
	movb	(%rdx,%r8), %al
	movzbl	%al, %edi
	movzbl	-363(%rbp), %esi
	callq	_stbi__blinn_8x8
	movb	%al, -366(%rbp)
	movzbl	-364(%rbp), %edi
	movzbl	-365(%rbp), %esi
	movzbl	-366(%rbp), %edx
	callq	_stbi__compute_y
	movq	-336(%rbp), %r8
	movb	%al, (%r8)
	movq	-336(%rbp), %r8
	movb	$-1, 1(%r8)
	movl	-288(%rbp), %ecx
	movq	-336(%rbp), %r8
	movslq	%ecx, %r9
	addq	%r9, %r8
	movq	%r8, -336(%rbp)
## %bb.112:                             ##   in Loop: Header=BB93_110 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_110
LBB93_113:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_134
LBB93_114:                              ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$4, 8(%rax)
	jne	LBB93_121
## %bb.115:                             ##   in Loop: Header=BB93_46 Depth=1
	movq	-256(%rbp), %rax
	cmpl	$2, 18508(%rax)
	jne	LBB93_121
## %bb.116:                             ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_117:                              ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_120
## %bb.118:                             ##   in Loop: Header=BB93_117 Depth=2
	movq	-48(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %ecx
	movl	$255, %esi
	subl	%ecx, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movq	-24(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	%sil, %edi
	movzbl	(%rax,%rdx), %esi
	callq	_stbi__blinn_8x8
	movq	-336(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-336(%rbp), %rdx
	movb	$-1, 1(%rdx)
	movl	-288(%rbp), %ecx
	movq	-336(%rbp), %rdx
	movslq	%ecx, %r8
	addq	%r8, %rdx
	movq	%rdx, -336(%rbp)
## %bb.119:                             ##   in Loop: Header=BB93_117 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_117
LBB93_120:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_133
LBB93_121:                              ##   in Loop: Header=BB93_46 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)
	cmpl	$1, -288(%rbp)
	jne	LBB93_127
## %bb.122:                             ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_123:                              ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_126
## %bb.124:                             ##   in Loop: Header=BB93_123 Depth=2
	movq	-376(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-336(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	%sil, (%rax,%rdx)
## %bb.125:                             ##   in Loop: Header=BB93_123 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_123
LBB93_126:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_132
LBB93_127:                              ##   in Loop: Header=BB93_46 Depth=1
	movl	$0, -304(%rbp)
LBB93_128:                              ##   Parent Loop BB93_46 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-304(%rbp), %eax
	movq	-256(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	jae	LBB93_131
## %bb.129:                             ##   in Loop: Header=BB93_128 Depth=2
	movq	-376(%rbp), %rax
	movl	-304(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-336(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -336(%rbp)
	movb	%sil, (%rax)
	movq	-336(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -336(%rbp)
	movb	$-1, (%rax)
## %bb.130:                             ##   in Loop: Header=BB93_128 Depth=2
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB93_128
LBB93_131:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_132
LBB93_132:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_133
LBB93_133:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_134
LBB93_134:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_135
LBB93_135:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_136
LBB93_136:                              ##   in Loop: Header=BB93_46 Depth=1
	jmp	LBB93_137
LBB93_137:                              ##   in Loop: Header=BB93_46 Depth=1
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
	jmp	LBB93_46
LBB93_138:
	movq	-256(%rbp), %rdi
	callq	_stbi__cleanup_jpeg
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-264(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	movq	-272(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -280(%rbp)
	je	LBB93_140
## %bb.139:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	$3, %ecx
	movl	$3, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	movq	-280(%rbp), %rax
	movl	%edx, (%rax)
LBB93_140:
	movq	-320(%rbp), %rax
	movq	%rax, -248(%rbp)
LBB93_141:
	movq	-248(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -432(%rbp)                ## 8-byte Spill
	jne	LBB93_143
## %bb.142:
	movq	-432(%rbp), %rax                ## 8-byte Reload
	addq	$432, %rsp                      ## imm = 0x1B0
	popq	%rbp
	retq
LBB93_143:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__decode_jpeg_image
_stbi__decode_jpeg_image:               ## @stbi__decode_jpeg_image
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB94_1:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	LBB94_4
## %bb.2:                               ##   in Loop: Header=BB94_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 64(%rax)
## %bb.3:                               ##   in Loop: Header=BB94_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB94_1
LBB94_4:
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movl	$0, 18536(%rax)
	movq	-16(%rbp), %rdi
	callq	_stbi__decode_jpeg_header
	cmpl	$0, %eax
	jne	LBB94_6
## %bb.5:
	movl	$0, -4(%rbp)
	jmp	LBB94_35
LBB94_6:
	movq	-16(%rbp), %rdi
	callq	_stbi__get_marker
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
LBB94_7:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB94_15 Depth 2
	cmpl	$217, -20(%rbp)
	sete	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	LBB94_8
	jmp	LBB94_32
LBB94_8:                                ##   in Loop: Header=BB94_7 Depth=1
	cmpl	$218, -20(%rbp)
	jne	LBB94_21
## %bb.9:                               ##   in Loop: Header=BB94_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__process_scan_header
	cmpl	$0, %eax
	jne	LBB94_11
## %bb.10:
	movl	$0, -4(%rbp)
	jmp	LBB94_35
LBB94_11:                               ##   in Loop: Header=BB94_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__parse_entropy_coded_data
	cmpl	$0, %eax
	jne	LBB94_13
## %bb.12:
	movl	$0, -4(%rbp)
	jmp	LBB94_35
LBB94_13:                               ##   in Loop: Header=BB94_7 Depth=1
	movq	-16(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$255, %ecx
	jne	LBB94_20
## %bb.14:                              ##   in Loop: Header=BB94_7 Depth=1
	jmp	LBB94_15
LBB94_15:                               ##   Parent Loop BB94_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__at_eof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	LBB94_16
	jmp	LBB94_19
LBB94_16:                               ##   in Loop: Header=BB94_15 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$255, -24(%rbp)
	jne	LBB94_18
## %bb.17:                              ##   in Loop: Header=BB94_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movq	-16(%rbp), %rcx
	movb	%al, 18472(%rcx)
	jmp	LBB94_19
LBB94_18:                               ##   in Loop: Header=BB94_15 Depth=2
	jmp	LBB94_15
LBB94_19:                               ##   in Loop: Header=BB94_7 Depth=1
	jmp	LBB94_20
LBB94_20:                               ##   in Loop: Header=BB94_7 Depth=1
	jmp	LBB94_31
LBB94_21:                               ##   in Loop: Header=BB94_7 Depth=1
	cmpl	$220, -20(%rbp)
	jne	LBB94_27
## %bb.22:                              ##   in Loop: Header=BB94_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	_stbi__get16be
	movl	%eax, -32(%rbp)
	cmpl	$4, -28(%rbp)
	je	LBB94_24
## %bb.23:
	leaq	L_.str.38(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB94_35
LBB94_24:                               ##   in Loop: Header=BB94_7 Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	4(%rcx), %eax
	je	LBB94_26
## %bb.25:
	leaq	L_.str.39(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB94_35
LBB94_26:                               ##   in Loop: Header=BB94_7 Depth=1
	jmp	LBB94_30
LBB94_27:                               ##   in Loop: Header=BB94_7 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_stbi__process_marker
	cmpl	$0, %eax
	jne	LBB94_29
## %bb.28:
	movl	$0, -4(%rbp)
	jmp	LBB94_35
LBB94_29:                               ##   in Loop: Header=BB94_7 Depth=1
	jmp	LBB94_30
LBB94_30:                               ##   in Loop: Header=BB94_7 Depth=1
	jmp	LBB94_31
LBB94_31:                               ##   in Loop: Header=BB94_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__get_marker
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
	jmp	LBB94_7
LBB94_32:
	movq	-16(%rbp), %rax
	cmpl	$0, 18480(%rax)
	je	LBB94_34
## %bb.33:
	movq	-16(%rbp), %rdi
	callq	_stbi__jpeg_finish
LBB94_34:
	movl	$1, -4(%rbp)
LBB94_35:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__cleanup_jpeg
_stbi__cleanup_jpeg:                    ## @stbi__cleanup_jpeg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %esi
	callq	_stbi__free_jpeg_components
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function resample_row_1
_resample_row_1:                        ## @resample_row_1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__resample_row_v_2
_stbi__resample_row_v_2:                ## @stbi__resample_row_v_2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$0, -36(%rbp)
LBB97_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB97_4
## %bb.2:                               ##   in Loop: Header=BB97_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	imull	$3, %edx, %edx
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movzbl	(%rax,%rcx), %esi
	addl	%esi, %edx
	addl	$2, %edx
	sarl	$2, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB97_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB97_1
LBB97_4:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__resample_row_h_2
_stbi__resample_row_h_2:                ## @stbi__resample_row_h_2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$1, -36(%rbp)
	jne	LBB98_2
## %bb.1:
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB98_7
LBB98_2:
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %edx
	imull	$3, %edx, %edx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %esi
	addl	%esi, %edx
	addl	$2, %edx
	sarl	$2, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-16(%rbp), %rax
	movb	%dl, 1(%rax)
	movl	$1, -44(%rbp)
LBB98_3:                                ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB98_6
## %bb.4:                               ##   in Loop: Header=BB98_3 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	imull	$3, %edx, %edx
	addl	$2, %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	addl	%esi, %edx
	sarl	$2, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	$0, %esi
	movslq	%esi, %rcx
	movb	%dl, (%rax,%rcx)
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movzbl	(%rax,%rcx), %edi
	addl	%edi, %esi
	sarl	$2, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edi
	shll	$1, %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movb	%sil, (%rax,%rcx)
## %bb.5:                               ##   in Loop: Header=BB98_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB98_3
LBB98_6:
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rdx
	movzbl	(%rax,%rdx), %ecx
	imull	$3, %ecx, %ecx
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	movzbl	(%rax,%rdx), %esi
	addl	%esi, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	$0, %esi
	movslq	%esi, %rdx
	movb	%cl, (%rax,%rdx)
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	movb	(%rax,%rdx), %cl
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	movb	%cl, (%rax,%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB98_7:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__resample_row_generic
_stbi__resample_row_generic:            ## @stbi__resample_row_generic
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$0, -36(%rbp)
LBB99_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB99_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB99_8
## %bb.2:                               ##   in Loop: Header=BB99_1 Depth=1
	movl	$0, -40(%rbp)
LBB99_3:                                ##   Parent Loop BB99_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	LBB99_6
## %bb.4:                               ##   in Loop: Header=BB99_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	imull	-32(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rcx
	movb	%dl, (%rax,%rcx)
## %bb.5:                               ##   in Loop: Header=BB99_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB99_3
LBB99_6:                                ##   in Loop: Header=BB99_1 Depth=1
	jmp	LBB99_7
LBB99_7:                                ##   in Loop: Header=BB99_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB99_1
LBB99_8:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__blinn_8x8
_stbi__blinn_8x8:                       ## @stbi__blinn_8x8
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $sil killed $sil killed $esi
                                        ## kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-8(%rbp), %ecx
	shrl	$8, %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
                                        ## kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__compute_y
_stbi__compute_y:                       ## @stbi__compute_y
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	imull	$77, -4(%rbp), %eax
	imull	$150, -8(%rbp), %ecx
	addl	%ecx, %eax
	imull	$29, -12(%rbp), %ecx
	addl	%ecx, %eax
	sarl	$8, %eax
                                        ## kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__process_scan_header
_stbi__process_scan_header:             ## @stbi__process_scan_header
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get16be
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	_stbi__get8
	movzbl	%al, %edx
	movq	-16(%rbp), %rcx
	movl	%edx, 18516(%rcx)
	movq	-16(%rbp), %rcx
	cmpl	$1, 18516(%rcx)
	jl	LBB102_3
## %bb.1:
	movq	-16(%rbp), %rax
	cmpl	$4, 18516(%rax)
	jg	LBB102_3
## %bb.2:
	movq	-16(%rbp), %rax
	movl	18516(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	8(%rax), %ecx
	jle	LBB102_4
LBB102_3:
	leaq	L_.str.40(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB102_37
LBB102_4:
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	18516(%rcx), %edx
	shll	$1, %edx
	addl	$6, %edx
	cmpl	%edx, %eax
	je	LBB102_6
## %bb.5:
	leaq	L_.str.41(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB102_37
LBB102_6:
	movl	$0, -20(%rbp)
LBB102_7:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB102_9 Depth 2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	18516(%rcx), %eax
	jge	LBB102_22
## %bb.8:                               ##   in Loop: Header=BB102_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
	movl	$0, -32(%rbp)
LBB102_9:                               ##   Parent Loop BB102_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB102_14
## %bb.10:                              ##   in Loop: Header=BB102_9 Depth=2
	movq	-16(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-32(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	cmpl	-28(%rbp), %edx
	jne	LBB102_12
## %bb.11:                              ##   in Loop: Header=BB102_7 Depth=1
	jmp	LBB102_14
LBB102_12:                              ##   in Loop: Header=BB102_9 Depth=2
	jmp	LBB102_13
LBB102_13:                              ##   in Loop: Header=BB102_9 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB102_9
LBB102_14:                              ##   in Loop: Header=BB102_7 Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jne	LBB102_16
## %bb.15:
	movl	$0, -4(%rbp)
	jmp	LBB102_37
LBB102_16:                              ##   in Loop: Header=BB102_7 Depth=1
	movl	-36(%rbp), %eax
	sarl	$4, %eax
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-32(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-32(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	$3, 16(%rcx)
	jle	LBB102_18
## %bb.17:
	leaq	L_.str.42(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB102_37
LBB102_18:                              ##   in Loop: Header=BB102_7 Depth=1
	movl	-36(%rbp), %eax
	andl	$15, %eax
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-32(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 20(%rcx)
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-32(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	$3, 20(%rcx)
	jle	LBB102_20
## %bb.19:
	leaq	L_.str.43(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB102_37
LBB102_20:                              ##   in Loop: Header=BB102_7 Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movl	%eax, 18520(%rcx,%rdx,4)
## %bb.21:                              ##   in Loop: Header=BB102_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB102_7
LBB102_22:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 18484(%rdx)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 18488(%rdx)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	movl	-40(%rbp), %ecx
	sarl	$4, %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 18492(%rdx)
	movl	-40(%rbp), %ecx
	andl	$15, %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 18496(%rdx)
	movq	-16(%rbp), %rdx
	cmpl	$0, 18480(%rdx)
	je	LBB102_30
## %bb.23:
	movq	-16(%rbp), %rax
	cmpl	$63, 18484(%rax)
	jg	LBB102_28
## %bb.24:
	movq	-16(%rbp), %rax
	cmpl	$63, 18488(%rax)
	jg	LBB102_28
## %bb.25:
	movq	-16(%rbp), %rax
	movl	18484(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	18488(%rax), %ecx
	jg	LBB102_28
## %bb.26:
	movq	-16(%rbp), %rax
	cmpl	$13, 18492(%rax)
	jg	LBB102_28
## %bb.27:
	movq	-16(%rbp), %rax
	cmpl	$13, 18496(%rax)
	jle	LBB102_29
LBB102_28:
	leaq	L_.str.44(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB102_37
LBB102_29:
	jmp	LBB102_36
LBB102_30:
	movq	-16(%rbp), %rax
	cmpl	$0, 18484(%rax)
	je	LBB102_32
## %bb.31:
	leaq	L_.str.44(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB102_37
LBB102_32:
	movq	-16(%rbp), %rax
	cmpl	$0, 18492(%rax)
	jne	LBB102_34
## %bb.33:
	movq	-16(%rbp), %rax
	cmpl	$0, 18496(%rax)
	je	LBB102_35
LBB102_34:
	leaq	L_.str.44(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB102_37
LBB102_35:
	movq	-16(%rbp), %rax
	movl	$63, 18488(%rax)
LBB102_36:
	movl	$1, -4(%rbp)
LBB102_37:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__parse_entropy_coded_data
_stbi__parse_entropy_coded_data:        ## @stbi__parse_entropy_coded_data
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$440, %rsp                      ## imm = 0x1B8
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	%rdi, -288(%rbp)
	movq	-288(%rbp), %rdi
	callq	_stbi__jpeg_reset
	movq	-288(%rbp), %rax
	cmpl	$0, 18480(%rax)
	jne	LBB103_50
## %bb.1:
	movq	-288(%rbp), %rax
	cmpl	$1, 18516(%rax)
	jne	LBB103_20
## %bb.2:
	movq	-288(%rbp), %rax
	movl	18520(%rax), %ecx
	movl	%ecx, -300(%rbp)
	movq	-288(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-300(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rax
	movl	28(%rax), %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	movl	%ecx, -304(%rbp)
	movq	-288(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-300(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rax
	movl	32(%rax), %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	movl	%ecx, -308(%rbp)
	movl	$0, -296(%rbp)
LBB103_3:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB103_5 Depth 2
	movl	-296(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jge	LBB103_19
## %bb.4:                               ##   in Loop: Header=BB103_3 Depth=1
	movl	$0, -292(%rbp)
LBB103_5:                               ##   Parent Loop BB103_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-292(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jge	LBB103_17
## %bb.6:                               ##   in Loop: Header=BB103_5 Depth=2
	leaq	-144(%rbp), %rsi
	movq	-288(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-300(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	20(%rax), %edx
	movl	%edx, -312(%rbp)
	movq	-288(%rbp), %rdi
	movq	-288(%rbp), %rax
	addq	$8, %rax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-300(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rcx
	movslq	16(%rcx), %rcx
	imulq	$1680, %rcx, %rcx               ## imm = 0x690
	addq	%rcx, %rax
	movq	-288(%rbp), %rcx
	addq	$6728, %rcx                     ## imm = 0x1A48
	movslq	-312(%rbp), %r8
	imulq	$1680, %r8, %r8                 ## imm = 0x690
	addq	%r8, %rcx
	movq	-288(%rbp), %r8
	addq	$13960, %r8                     ## imm = 0x3688
	movslq	-312(%rbp), %r9
	shlq	$10, %r9
	addq	%r9, %r8
	movl	-300(%rbp), %r9d
	movq	-288(%rbp), %r10
	addq	$13448, %r10                    ## imm = 0x3488
	movq	-288(%rbp), %r11
	addq	$18080, %r11                    ## imm = 0x46A0
	movslq	-300(%rbp), %rbx
	imulq	$96, %rbx, %rbx
	addq	%rbx, %r11
	movslq	12(%r11), %r11
	shlq	$7, %r11
	addq	%r11, %r10
	movq	%rax, %rdx
	movq	%r10, (%rsp)
	callq	_stbi__jpeg_decode_block
	cmpl	$0, %eax
	jne	LBB103_8
## %bb.7:
	movl	$0, -276(%rbp)
	jmp	LBB103_104
LBB103_8:                               ##   in Loop: Header=BB103_5 Depth=2
	leaq	-144(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	18544(%rax), %rax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-300(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rcx
	movq	48(%rcx), %rcx
	movq	-288(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-300(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	36(%rsi), %r8d
	imull	-296(%rbp), %r8d
	shll	$3, %r8d
	movslq	%r8d, %rsi
	addq	%rsi, %rcx
	movl	-292(%rbp), %r8d
	shll	$3, %r8d
	movslq	%r8d, %rsi
	addq	%rsi, %rcx
	movq	-288(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-300(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	36(%rsi), %esi
	movq	%rcx, %rdi
	callq	*%rax
	movq	-288(%rbp), %rax
	movl	18540(%rax), %esi
	addl	$-1, %esi
	movl	%esi, 18540(%rax)
	cmpl	$0, %esi
	jg	LBB103_15
## %bb.9:                               ##   in Loop: Header=BB103_5 Depth=2
	movq	-288(%rbp), %rax
	cmpl	$24, 18468(%rax)
	jge	LBB103_11
## %bb.10:                              ##   in Loop: Header=BB103_5 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB103_11:                              ##   in Loop: Header=BB103_5 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$208, %ecx
	jl	LBB103_13
## %bb.12:                              ##   in Loop: Header=BB103_5 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$215, %ecx
	jle	LBB103_14
LBB103_13:
	movl	$1, -276(%rbp)
	jmp	LBB103_104
LBB103_14:                              ##   in Loop: Header=BB103_5 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__jpeg_reset
LBB103_15:                              ##   in Loop: Header=BB103_5 Depth=2
	jmp	LBB103_16
LBB103_16:                              ##   in Loop: Header=BB103_5 Depth=2
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	LBB103_5
LBB103_17:                              ##   in Loop: Header=BB103_3 Depth=1
	jmp	LBB103_18
LBB103_18:                              ##   in Loop: Header=BB103_3 Depth=1
	movl	-296(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -296(%rbp)
	jmp	LBB103_3
LBB103_19:
	movl	$1, -276(%rbp)
	jmp	LBB103_104
LBB103_20:
	movl	$0, -320(%rbp)
LBB103_21:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB103_23 Depth 2
                                        ##       Child Loop BB103_25 Depth 3
                                        ##         Child Loop BB103_27 Depth 4
                                        ##           Child Loop BB103_29 Depth 5
	movl	-320(%rbp), %eax
	movq	-288(%rbp), %rcx
	cmpl	18068(%rcx), %eax
	jge	LBB103_49
## %bb.22:                              ##   in Loop: Header=BB103_21 Depth=1
	movl	$0, -316(%rbp)
LBB103_23:                              ##   Parent Loop BB103_21 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB103_25 Depth 3
                                        ##         Child Loop BB103_27 Depth 4
                                        ##           Child Loop BB103_29 Depth 5
	movl	-316(%rbp), %eax
	movq	-288(%rbp), %rcx
	cmpl	18064(%rcx), %eax
	jge	LBB103_47
## %bb.24:                              ##   in Loop: Header=BB103_23 Depth=2
	movl	$0, -324(%rbp)
LBB103_25:                              ##   Parent Loop BB103_21 Depth=1
                                        ##     Parent Loop BB103_23 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB103_27 Depth 4
                                        ##           Child Loop BB103_29 Depth 5
	movl	-324(%rbp), %eax
	movq	-288(%rbp), %rcx
	cmpl	18516(%rcx), %eax
	jge	LBB103_38
## %bb.26:                              ##   in Loop: Header=BB103_25 Depth=3
	movq	-288(%rbp), %rax
	movslq	-324(%rbp), %rcx
	movl	18520(%rax,%rcx,4), %edx
	movl	%edx, -336(%rbp)
	movl	$0, -332(%rbp)
LBB103_27:                              ##   Parent Loop BB103_21 Depth=1
                                        ##     Parent Loop BB103_23 Depth=2
                                        ##       Parent Loop BB103_25 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB103_29 Depth 5
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-336(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	8(%rcx), %eax
	jge	LBB103_36
## %bb.28:                              ##   in Loop: Header=BB103_27 Depth=4
	movl	$0, -328(%rbp)
LBB103_29:                              ##   Parent Loop BB103_21 Depth=1
                                        ##     Parent Loop BB103_23 Depth=2
                                        ##       Parent Loop BB103_25 Depth=3
                                        ##         Parent Loop BB103_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-336(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	4(%rcx), %eax
	jge	LBB103_34
## %bb.30:                              ##   in Loop: Header=BB103_29 Depth=5
	leaq	-272(%rbp), %rsi
	movl	-316(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-336(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	imull	4(%rcx), %eax
	addl	-328(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -340(%rbp)
	movl	-320(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-336(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	imull	8(%rcx), %eax
	addl	-332(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -344(%rbp)
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-336(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	20(%rcx), %eax
	movl	%eax, -348(%rbp)
	movq	-288(%rbp), %rdi
	movq	-288(%rbp), %rcx
	addq	$8, %rcx
	movq	-288(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-336(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rdx
	movslq	16(%rdx), %rdx
	imulq	$1680, %rdx, %rdx               ## imm = 0x690
	addq	%rdx, %rcx
	movq	-288(%rbp), %rdx
	addq	$6728, %rdx                     ## imm = 0x1A48
	movslq	-348(%rbp), %r8
	imulq	$1680, %r8, %r8                 ## imm = 0x690
	addq	%r8, %rdx
	movq	-288(%rbp), %r8
	addq	$13960, %r8                     ## imm = 0x3688
	movslq	-348(%rbp), %r9
	shlq	$10, %r9
	addq	%r9, %r8
	movl	-336(%rbp), %r9d
	movq	-288(%rbp), %r10
	addq	$13448, %r10                    ## imm = 0x3488
	movq	-288(%rbp), %r11
	addq	$18080, %r11                    ## imm = 0x46A0
	movslq	-336(%rbp), %rbx
	imulq	$96, %rbx, %rbx
	addq	%rbx, %r11
	movslq	12(%r11), %r11
	shlq	$7, %r11
	addq	%r11, %r10
	movq	%rdx, -432(%rbp)                ## 8-byte Spill
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx                ## 8-byte Reload
	movq	%r10, (%rsp)
	callq	_stbi__jpeg_decode_block
	cmpl	$0, %eax
	jne	LBB103_32
## %bb.31:
	movl	$0, -276(%rbp)
	jmp	LBB103_104
LBB103_32:                              ##   in Loop: Header=BB103_29 Depth=5
	leaq	-272(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	18544(%rax), %rax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-336(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rcx
	movq	48(%rcx), %rcx
	movq	-288(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-336(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	36(%rsi), %r8d
	imull	-344(%rbp), %r8d
	movslq	%r8d, %rsi
	addq	%rsi, %rcx
	movslq	-340(%rbp), %rsi
	addq	%rsi, %rcx
	movq	-288(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-336(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	36(%rsi), %esi
	movq	%rcx, %rdi
	callq	*%rax
## %bb.33:                              ##   in Loop: Header=BB103_29 Depth=5
	movl	-328(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -328(%rbp)
	jmp	LBB103_29
LBB103_34:                              ##   in Loop: Header=BB103_27 Depth=4
	jmp	LBB103_35
LBB103_35:                              ##   in Loop: Header=BB103_27 Depth=4
	movl	-332(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -332(%rbp)
	jmp	LBB103_27
LBB103_36:                              ##   in Loop: Header=BB103_25 Depth=3
	jmp	LBB103_37
LBB103_37:                              ##   in Loop: Header=BB103_25 Depth=3
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	LBB103_25
LBB103_38:                              ##   in Loop: Header=BB103_23 Depth=2
	movq	-288(%rbp), %rax
	movl	18540(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 18540(%rax)
	cmpl	$0, %ecx
	jg	LBB103_45
## %bb.39:                              ##   in Loop: Header=BB103_23 Depth=2
	movq	-288(%rbp), %rax
	cmpl	$24, 18468(%rax)
	jge	LBB103_41
## %bb.40:                              ##   in Loop: Header=BB103_23 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB103_41:                              ##   in Loop: Header=BB103_23 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$208, %ecx
	jl	LBB103_43
## %bb.42:                              ##   in Loop: Header=BB103_23 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$215, %ecx
	jle	LBB103_44
LBB103_43:
	movl	$1, -276(%rbp)
	jmp	LBB103_104
LBB103_44:                              ##   in Loop: Header=BB103_23 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__jpeg_reset
LBB103_45:                              ##   in Loop: Header=BB103_23 Depth=2
	jmp	LBB103_46
LBB103_46:                              ##   in Loop: Header=BB103_23 Depth=2
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	jmp	LBB103_23
LBB103_47:                              ##   in Loop: Header=BB103_21 Depth=1
	jmp	LBB103_48
LBB103_48:                              ##   in Loop: Header=BB103_21 Depth=1
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	LBB103_21
LBB103_49:
	movl	$1, -276(%rbp)
	jmp	LBB103_104
LBB103_50:
	movq	-288(%rbp), %rax
	cmpl	$1, 18516(%rax)
	jne	LBB103_74
## %bb.51:
	movq	-288(%rbp), %rax
	movl	18520(%rax), %ecx
	movl	%ecx, -360(%rbp)
	movq	-288(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-360(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rax
	movl	28(%rax), %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	movl	%ecx, -364(%rbp)
	movq	-288(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-360(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rax
	movl	32(%rax), %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	movl	%ecx, -368(%rbp)
	movl	$0, -356(%rbp)
LBB103_52:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB103_54 Depth 2
	movl	-356(%rbp), %eax
	cmpl	-368(%rbp), %eax
	jge	LBB103_73
## %bb.53:                              ##   in Loop: Header=BB103_52 Depth=1
	movl	$0, -352(%rbp)
LBB103_54:                              ##   Parent Loop BB103_52 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-352(%rbp), %eax
	cmpl	-364(%rbp), %eax
	jge	LBB103_71
## %bb.55:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-360(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	80(%rax), %rax
	movl	-352(%rbp), %edx
	movl	-356(%rbp), %esi
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-360(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rcx
	imull	88(%rcx), %esi
	addl	%esi, %edx
	shll	$6, %edx
	movslq	%edx, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -376(%rbp)
	movq	-288(%rbp), %rax
	cmpl	$0, 18484(%rax)
	jne	LBB103_59
## %bb.56:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rdi
	movq	-376(%rbp), %rsi
	movq	-288(%rbp), %rax
	addq	$8, %rax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-360(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movslq	16(%rcx), %rcx
	imulq	$1680, %rcx, %rcx               ## imm = 0x690
	addq	%rcx, %rax
	movl	-360(%rbp), %ecx
	movq	%rax, %rdx
	callq	_stbi__jpeg_decode_block_prog_dc
	cmpl	$0, %eax
	jne	LBB103_58
## %bb.57:
	movl	$0, -276(%rbp)
	jmp	LBB103_104
LBB103_58:                              ##   in Loop: Header=BB103_54 Depth=2
	jmp	LBB103_62
LBB103_59:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-360(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	20(%rax), %edx
	movl	%edx, -380(%rbp)
	movq	-288(%rbp), %rdi
	movq	-376(%rbp), %rsi
	movq	-288(%rbp), %rax
	addq	$6728, %rax                     ## imm = 0x1A48
	movslq	-380(%rbp), %rcx
	imulq	$1680, %rcx, %rcx               ## imm = 0x690
	addq	%rcx, %rax
	movq	-288(%rbp), %rcx
	addq	$13960, %rcx                    ## imm = 0x3688
	movslq	-380(%rbp), %r8
	shlq	$10, %r8
	addq	%r8, %rcx
	movq	%rax, %rdx
	callq	_stbi__jpeg_decode_block_prog_ac
	cmpl	$0, %eax
	jne	LBB103_61
## %bb.60:
	movl	$0, -276(%rbp)
	jmp	LBB103_104
LBB103_61:                              ##   in Loop: Header=BB103_54 Depth=2
	jmp	LBB103_62
LBB103_62:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rax
	movl	18540(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 18540(%rax)
	cmpl	$0, %ecx
	jg	LBB103_69
## %bb.63:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rax
	cmpl	$24, 18468(%rax)
	jge	LBB103_65
## %bb.64:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB103_65:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$208, %ecx
	jl	LBB103_67
## %bb.66:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$215, %ecx
	jle	LBB103_68
LBB103_67:
	movl	$1, -276(%rbp)
	jmp	LBB103_104
LBB103_68:                              ##   in Loop: Header=BB103_54 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__jpeg_reset
LBB103_69:                              ##   in Loop: Header=BB103_54 Depth=2
	jmp	LBB103_70
LBB103_70:                              ##   in Loop: Header=BB103_54 Depth=2
	movl	-352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -352(%rbp)
	jmp	LBB103_54
LBB103_71:                              ##   in Loop: Header=BB103_52 Depth=1
	jmp	LBB103_72
LBB103_72:                              ##   in Loop: Header=BB103_52 Depth=1
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	LBB103_52
LBB103_73:
	movl	$1, -276(%rbp)
	jmp	LBB103_104
LBB103_74:
	movl	$0, -388(%rbp)
LBB103_75:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB103_77 Depth 2
                                        ##       Child Loop BB103_79 Depth 3
                                        ##         Child Loop BB103_81 Depth 4
                                        ##           Child Loop BB103_83 Depth 5
	movl	-388(%rbp), %eax
	movq	-288(%rbp), %rcx
	cmpl	18068(%rcx), %eax
	jge	LBB103_103
## %bb.76:                              ##   in Loop: Header=BB103_75 Depth=1
	movl	$0, -384(%rbp)
LBB103_77:                              ##   Parent Loop BB103_75 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB103_79 Depth 3
                                        ##         Child Loop BB103_81 Depth 4
                                        ##           Child Loop BB103_83 Depth 5
	movl	-384(%rbp), %eax
	movq	-288(%rbp), %rcx
	cmpl	18064(%rcx), %eax
	jge	LBB103_101
## %bb.78:                              ##   in Loop: Header=BB103_77 Depth=2
	movl	$0, -392(%rbp)
LBB103_79:                              ##   Parent Loop BB103_75 Depth=1
                                        ##     Parent Loop BB103_77 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB103_81 Depth 4
                                        ##           Child Loop BB103_83 Depth 5
	movl	-392(%rbp), %eax
	movq	-288(%rbp), %rcx
	cmpl	18516(%rcx), %eax
	jge	LBB103_92
## %bb.80:                              ##   in Loop: Header=BB103_79 Depth=3
	movq	-288(%rbp), %rax
	movslq	-392(%rbp), %rcx
	movl	18520(%rax,%rcx,4), %edx
	movl	%edx, -404(%rbp)
	movl	$0, -400(%rbp)
LBB103_81:                              ##   Parent Loop BB103_75 Depth=1
                                        ##     Parent Loop BB103_77 Depth=2
                                        ##       Parent Loop BB103_79 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB103_83 Depth 5
	movl	-400(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-404(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	8(%rcx), %eax
	jge	LBB103_90
## %bb.82:                              ##   in Loop: Header=BB103_81 Depth=4
	movl	$0, -396(%rbp)
LBB103_83:                              ##   Parent Loop BB103_75 Depth=1
                                        ##     Parent Loop BB103_77 Depth=2
                                        ##       Parent Loop BB103_79 Depth=3
                                        ##         Parent Loop BB103_81 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movl	-396(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-404(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	4(%rcx), %eax
	jge	LBB103_88
## %bb.84:                              ##   in Loop: Header=BB103_83 Depth=5
	movl	-384(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-404(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	imull	4(%rcx), %eax
	addl	-396(%rbp), %eax
	movl	%eax, -408(%rbp)
	movl	-388(%rbp), %eax
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-404(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	imull	8(%rcx), %eax
	addl	-400(%rbp), %eax
	movl	%eax, -412(%rbp)
	movq	-288(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-404(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movq	80(%rcx), %rcx
	movl	-408(%rbp), %eax
	movl	-412(%rbp), %esi
	movq	-288(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-404(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rdx
	imull	88(%rdx), %esi
	addl	%esi, %eax
	shll	$6, %eax
	movslq	%eax, %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -424(%rbp)
	movq	-288(%rbp), %rdi
	movq	-424(%rbp), %rsi
	movq	-288(%rbp), %rcx
	addq	$8, %rcx
	movq	-288(%rbp), %rdx
	addq	$18080, %rdx                    ## imm = 0x46A0
	movslq	-404(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rdx
	movslq	16(%rdx), %rdx
	imulq	$1680, %rdx, %rdx               ## imm = 0x690
	addq	%rdx, %rcx
	movl	-404(%rbp), %eax
	movq	%rcx, %rdx
	movl	%eax, %ecx
	callq	_stbi__jpeg_decode_block_prog_dc
	cmpl	$0, %eax
	jne	LBB103_86
## %bb.85:
	movl	$0, -276(%rbp)
	jmp	LBB103_104
LBB103_86:                              ##   in Loop: Header=BB103_83 Depth=5
	jmp	LBB103_87
LBB103_87:                              ##   in Loop: Header=BB103_83 Depth=5
	movl	-396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -396(%rbp)
	jmp	LBB103_83
LBB103_88:                              ##   in Loop: Header=BB103_81 Depth=4
	jmp	LBB103_89
LBB103_89:                              ##   in Loop: Header=BB103_81 Depth=4
	movl	-400(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -400(%rbp)
	jmp	LBB103_81
LBB103_90:                              ##   in Loop: Header=BB103_79 Depth=3
	jmp	LBB103_91
LBB103_91:                              ##   in Loop: Header=BB103_79 Depth=3
	movl	-392(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -392(%rbp)
	jmp	LBB103_79
LBB103_92:                              ##   in Loop: Header=BB103_77 Depth=2
	movq	-288(%rbp), %rax
	movl	18540(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 18540(%rax)
	cmpl	$0, %ecx
	jg	LBB103_99
## %bb.93:                              ##   in Loop: Header=BB103_77 Depth=2
	movq	-288(%rbp), %rax
	cmpl	$24, 18468(%rax)
	jge	LBB103_95
## %bb.94:                              ##   in Loop: Header=BB103_77 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB103_95:                              ##   in Loop: Header=BB103_77 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$208, %ecx
	jl	LBB103_97
## %bb.96:                              ##   in Loop: Header=BB103_77 Depth=2
	movq	-288(%rbp), %rax
	movzbl	18472(%rax), %ecx
	cmpl	$215, %ecx
	jle	LBB103_98
LBB103_97:
	movl	$1, -276(%rbp)
	jmp	LBB103_104
LBB103_98:                              ##   in Loop: Header=BB103_77 Depth=2
	movq	-288(%rbp), %rdi
	callq	_stbi__jpeg_reset
LBB103_99:                              ##   in Loop: Header=BB103_77 Depth=2
	jmp	LBB103_100
LBB103_100:                             ##   in Loop: Header=BB103_77 Depth=2
	movl	-384(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -384(%rbp)
	jmp	LBB103_77
LBB103_101:                             ##   in Loop: Header=BB103_75 Depth=1
	jmp	LBB103_102
LBB103_102:                             ##   in Loop: Header=BB103_75 Depth=1
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	LBB103_75
LBB103_103:
	movl	$1, -276(%rbp)
LBB103_104:
	movl	-276(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -436(%rbp)                ## 4-byte Spill
	jne	LBB103_106
## %bb.105:
	movl	-436(%rbp), %eax                ## 4-byte Reload
	addq	$440, %rsp                      ## imm = 0x1B8
	popq	%rbx
	popq	%rbp
	retq
LBB103_106:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_finish
_stbi__jpeg_finish:                     ## @stbi__jpeg_finish
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 18480(%rax)
	je	LBB104_14
## %bb.1:
	movl	$0, -20(%rbp)
LBB104_2:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB104_4 Depth 2
                                        ##       Child Loop BB104_6 Depth 3
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB104_13
## %bb.3:                               ##   in Loop: Header=BB104_2 Depth=1
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	28(%rax), %edx
	addl	$7, %edx
	sarl	$3, %edx
	movl	%edx, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	32(%rax), %edx
	addl	$7, %edx
	sarl	$3, %edx
	movl	%edx, -28(%rbp)
	movl	$0, -16(%rbp)
LBB104_4:                               ##   Parent Loop BB104_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB104_6 Depth 3
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB104_11
## %bb.5:                               ##   in Loop: Header=BB104_4 Depth=2
	movl	$0, -12(%rbp)
LBB104_6:                               ##   Parent Loop BB104_2 Depth=1
                                        ##     Parent Loop BB104_4 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB104_9
## %bb.7:                               ##   in Loop: Header=BB104_6 Depth=3
	movq	-8(%rbp), %rax
	addq	$18080, %rax                    ## imm = 0x46A0
	movslq	-20(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	80(%rax), %rax
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-20(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rcx
	imull	88(%rcx), %esi
	addl	%esi, %edx
	shll	$6, %edx
	movslq	%edx, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$13448, %rax                    ## imm = 0x3488
	movq	-8(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-20(%rbp), %r8
	imulq	$96, %r8, %r8
	addq	%r8, %rcx
	movslq	12(%rcx), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	_stbi__jpeg_dequantize
	movq	-8(%rbp), %rax
	movq	18544(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-20(%rbp), %rsi
	imulq	$96, %rsi, %rsi
	addq	%rsi, %rcx
	movq	48(%rcx), %rcx
	movq	-8(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-20(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	36(%rsi), %edx
	imull	-16(%rbp), %edx
	shll	$3, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movl	-12(%rbp), %edx
	shll	$3, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movq	-8(%rbp), %rsi
	addq	$18080, %rsi                    ## imm = 0x46A0
	movslq	-20(%rbp), %rdi
	imulq	$96, %rdi, %rdi
	addq	%rdi, %rsi
	movl	36(%rsi), %esi
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	callq	*%rax
## %bb.8:                               ##   in Loop: Header=BB104_6 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB104_6
LBB104_9:                               ##   in Loop: Header=BB104_4 Depth=2
	jmp	LBB104_10
LBB104_10:                              ##   in Loop: Header=BB104_4 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB104_4
LBB104_11:                              ##   in Loop: Header=BB104_2 Depth=1
	jmp	LBB104_12
LBB104_12:                              ##   in Loop: Header=BB104_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB104_2
LBB104_13:
	jmp	LBB104_14
LBB104_14:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_reset
_stbi__jpeg_reset:                      ## @stbi__jpeg_reset
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 18468(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18464(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18476(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18392(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18296(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18200(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18104(%rax)
	movq	-8(%rbp), %rax
	movb	$-1, 18472(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 18536(%rax)
	je	LBB105_2
## %bb.1:
	movq	-8(%rbp), %rax
	movl	18536(%rax), %ecx
	movl	%ecx, -12(%rbp)                 ## 4-byte Spill
	jmp	LBB105_3
LBB105_2:
	movl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	jmp	LBB105_3
LBB105_3:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 18540(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 18500(%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_decode_block
_stbi__jpeg_decode_block:               ## @stbi__jpeg_decode_block
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$16, 18468(%rcx)
	jge	LBB106_2
## %bb.1:
	movq	-16(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB106_2:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_stbi__jpeg_huff_decode
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jl	LBB106_4
## %bb.3:
	cmpl	$15, -68(%rbp)
	jle	LBB106_5
LBB106_4:
	leaq	L_.str.45(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB106_24
LBB106_5:
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$128, %edx
	movq	$-1, %rcx
	callq	___memset_chk
	cmpl	$0, -68(%rbp)
	je	LBB106_7
## %bb.6:
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_stbi__extend_receive
	movl	%eax, -92(%rbp)                 ## 4-byte Spill
	jmp	LBB106_8
LBB106_7:
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)                 ## 4-byte Spill
	jmp	LBB106_8
LBB106_8:
	movl	-92(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-52(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-52(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 24(%rcx)
	movl	-60(%rbp), %eax
	movq	16(%rbp), %rcx
	movzwl	(%rcx), %esi
	imull	%esi, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-24(%rbp), %rcx
	movw	%ax, (%rcx)
	movl	$1, -64(%rbp)
LBB106_9:                               ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$16, 18468(%rax)
	jge	LBB106_11
## %bb.10:                              ##   in Loop: Header=BB106_9 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB106_11:                              ##   in Loop: Header=BB106_9 Depth=1
	movq	-16(%rbp), %rax
	movl	18464(%rax), %ecx
	shrl	$23, %ecx
	andl	$511, %ecx                      ## imm = 0x1FF
	movl	%ecx, -76(%rbp)
	movq	-48(%rbp), %rax
	movslq	-76(%rbp), %rdx
	movswl	(%rax,%rdx,2), %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	LBB106_13
## %bb.12:                              ##   in Loop: Header=BB106_9 Depth=1
	movl	-80(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-80(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	18464(%rdx), %eax
                                        ## kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 18464(%rdx)
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	18468(%rdx), %esi
	subl	%eax, %esi
	movl	%esi, 18468(%rdx)
	movl	-64(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -64(%rbp)
	movslq	%eax, %rdx
	leaq	_stbi__jpeg_dezigzag(%rip), %rdi
	movzbl	(%rdi,%rdx), %eax
	movl	%eax, -72(%rbp)
	movl	-80(%rbp), %eax
	sarl	$8, %eax
	movq	16(%rbp), %rdx
	movl	-72(%rbp), %esi
	movl	%esi, %edi
	movzwl	(%rdx,%rdi,2), %esi
	imull	%esi, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-24(%rbp), %rdx
	movl	-72(%rbp), %esi
	movl	%esi, %edi
	movw	%ax, (%rdx,%rdi,2)
	jmp	LBB106_21
LBB106_13:                              ##   in Loop: Header=BB106_9 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_stbi__jpeg_huff_decode
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jge	LBB106_15
## %bb.14:
	leaq	L_.str.45(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB106_24
LBB106_15:                              ##   in Loop: Header=BB106_9 Depth=1
	movl	-88(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -84(%rbp)
	jne	LBB106_19
## %bb.16:                              ##   in Loop: Header=BB106_9 Depth=1
	cmpl	$240, -88(%rbp)
	je	LBB106_18
## %bb.17:
	jmp	LBB106_23
LBB106_18:                              ##   in Loop: Header=BB106_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB106_20
LBB106_19:                              ##   in Loop: Header=BB106_9 Depth=1
	movl	-80(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	movslq	%eax, %rdx
	leaq	_stbi__jpeg_dezigzag(%rip), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	_stbi__extend_receive
	movq	16(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movl	%ecx, %edi
	movzwl	(%rdx,%rdi,2), %ecx
	imull	%ecx, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-24(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movl	%ecx, %edi
	movw	%ax, (%rdx,%rdi,2)
LBB106_20:                              ##   in Loop: Header=BB106_9 Depth=1
	jmp	LBB106_21
LBB106_21:                              ##   in Loop: Header=BB106_9 Depth=1
	jmp	LBB106_22
LBB106_22:                              ##   in Loop: Header=BB106_9 Depth=1
	cmpl	$64, -64(%rbp)
	jl	LBB106_9
LBB106_23:
	movl	$1, -4(%rbp)
LBB106_24:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__grow_buffer_unsafe
_stbi__grow_buffer_unsafe:              ## @stbi__grow_buffer_unsafe
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
LBB107_1:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB107_6 Depth 2
	movq	-8(%rbp), %rax
	cmpl	$0, 18476(%rax)
	je	LBB107_3
## %bb.2:                               ##   in Loop: Header=BB107_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	jmp	LBB107_4
LBB107_3:                               ##   in Loop: Header=BB107_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)                 ## 4-byte Spill
LBB107_4:                               ##   in Loop: Header=BB107_1 Depth=1
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -12(%rbp)
	cmpl	$255, -12(%rbp)
	jne	LBB107_11
## %bb.5:                               ##   in Loop: Header=BB107_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)
LBB107_6:                               ##   Parent Loop BB107_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$255, -16(%rbp)
	jne	LBB107_8
## %bb.7:                               ##   in Loop: Header=BB107_6 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)
	jmp	LBB107_6
LBB107_8:                               ##   in Loop: Header=BB107_1 Depth=1
	cmpl	$0, -16(%rbp)
	je	LBB107_10
## %bb.9:
	movl	-16(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, 18472(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 18476(%rcx)
	jmp	LBB107_13
LBB107_10:                              ##   in Loop: Header=BB107_1 Depth=1
	jmp	LBB107_11
LBB107_11:                              ##   in Loop: Header=BB107_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	$24, %edx
	subl	18468(%rcx), %edx
	movl	%edx, %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %eax
	movq	-8(%rbp), %rsi
	orl	18464(%rsi), %eax
	movl	%eax, 18464(%rsi)
	movq	-8(%rbp), %rsi
	movl	18468(%rsi), %eax
	addl	$8, %eax
	movl	%eax, 18468(%rsi)
## %bb.12:                              ##   in Loop: Header=BB107_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$24, 18468(%rax)
	jle	LBB107_1
LBB107_13:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_decode_block_prog_dc
_stbi__jpeg_decode_block_prog_dc:       ## @stbi__jpeg_decode_block_prog_dc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 18488(%rax)
	je	LBB108_2
## %bb.1:
	leaq	L_.str.47(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB108_16
LBB108_2:
	movq	-16(%rbp), %rax
	cmpl	$16, 18468(%rax)
	jge	LBB108_4
## %bb.3:
	movq	-16(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB108_4:
	movq	-16(%rbp), %rax
	cmpl	$0, 18492(%rax)
	jne	LBB108_12
## %bb.5:
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$128, %edx
	movq	$-1, %rcx
	callq	___memset_chk
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	callq	_stbi__jpeg_huff_decode
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jl	LBB108_7
## %bb.6:
	cmpl	$15, -48(%rbp)
	jle	LBB108_8
LBB108_7:
	leaq	L_.str.47(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB108_16
LBB108_8:
	cmpl	$0, -48(%rbp)
	je	LBB108_10
## %bb.9:
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	_stbi__extend_receive
	movl	%eax, -60(%rbp)                 ## 4-byte Spill
	jmp	LBB108_11
LBB108_10:
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)                 ## 4-byte Spill
	jmp	LBB108_11
LBB108_11:
	movl	-60(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-36(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	addq	$18080, %rcx                    ## imm = 0x46A0
	movslq	-36(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 24(%rcx)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	18496(%rcx), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %esi
	shll	%cl, %esi
	imull	%esi, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-24(%rbp), %rdx
	movw	%ax, (%rdx)
	jmp	LBB108_15
LBB108_12:
	movq	-16(%rbp), %rdi
	callq	_stbi__jpeg_get_bit
	cmpl	$0, %eax
	je	LBB108_14
## %bb.13:
	movq	-16(%rbp), %rax
	movl	18496(%rax), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
                                        ## kill: def $dx killed $dx killed $edx
	movswl	%dx, %esi
	movq	-24(%rbp), %rax
	movswl	(%rax), %edi
	addl	%esi, %edi
                                        ## kill: def $di killed $di killed $edi
	movw	%di, (%rax)
LBB108_14:
	jmp	LBB108_15
LBB108_15:
	movl	$1, -4(%rbp)
LBB108_16:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_decode_block_prog_ac
_stbi__jpeg_decode_block_prog_ac:       ## @stbi__jpeg_decode_block_prog_ac
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 18484(%rax)
	jne	LBB109_2
## %bb.1:
	leaq	L_.str.47(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB109_74
LBB109_2:
	movq	-16(%rbp), %rax
	cmpl	$0, 18492(%rax)
	jne	LBB109_23
## %bb.3:
	movq	-16(%rbp), %rax
	movl	18496(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 18500(%rax)
	je	LBB109_5
## %bb.4:
	movq	-16(%rbp), %rax
	movl	18500(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 18500(%rax)
	movl	$1, -4(%rbp)
	jmp	LBB109_74
LBB109_5:
	movq	-16(%rbp), %rax
	movl	18484(%rax), %ecx
	movl	%ecx, -44(%rbp)
LBB109_6:                               ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$16, 18468(%rax)
	jge	LBB109_8
## %bb.7:                               ##   in Loop: Header=BB109_6 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB109_8:                               ##   in Loop: Header=BB109_6 Depth=1
	movq	-16(%rbp), %rax
	movl	18464(%rax), %ecx
	shrl	$23, %ecx
	andl	$511, %ecx                      ## imm = 0x1FF
	movl	%ecx, -56(%rbp)
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rdx
	movswl	(%rax,%rdx,2), %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	LBB109_10
## %bb.9:                               ##   in Loop: Header=BB109_6 Depth=1
	movl	-60(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	18464(%rdx), %eax
                                        ## kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 18464(%rdx)
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	18468(%rdx), %esi
	subl	%eax, %esi
	movl	%esi, 18468(%rdx)
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -44(%rbp)
	movslq	%eax, %rdx
	leaq	_stbi__jpeg_dezigzag(%rip), %rdi
	movzbl	(%rdi,%rdx), %eax
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	sarl	$8, %eax
	movl	-48(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %esi
	shll	%cl, %esi
	imull	%esi, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-24(%rbp), %rdx
	movl	-52(%rbp), %esi
	movl	%esi, %edi
	movw	%ax, (%rdx,%rdi,2)
	jmp	LBB109_20
LBB109_10:                              ##   in Loop: Header=BB109_6 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_stbi__jpeg_huff_decode
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	LBB109_12
## %bb.11:
	leaq	L_.str.45(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB109_74
LBB109_12:                              ##   in Loop: Header=BB109_6 Depth=1
	movl	-68(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -64(%rbp)
	jne	LBB109_18
## %bb.13:                              ##   in Loop: Header=BB109_6 Depth=1
	cmpl	$15, -60(%rbp)
	jge	LBB109_17
## %bb.14:
	movl	-60(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 18500(%rdx)
	cmpl	$0, -60(%rbp)
	je	LBB109_16
## %bb.15:
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	_stbi__jpeg_get_bits
	movq	-16(%rbp), %rcx
	addl	18500(%rcx), %eax
	movl	%eax, 18500(%rcx)
LBB109_16:
	movq	-16(%rbp), %rax
	movl	18500(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 18500(%rax)
	jmp	LBB109_22
LBB109_17:                              ##   in Loop: Header=BB109_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB109_19
LBB109_18:                              ##   in Loop: Header=BB109_6 Depth=1
	movl	-60(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movslq	%eax, %rdx
	leaq	_stbi__jpeg_dezigzag(%rip), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	_stbi__extend_receive
	movl	-48(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %esi
	shll	%cl, %esi
	imull	%esi, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-24(%rbp), %rdx
	movl	-52(%rbp), %esi
	movl	%esi, %edi
	movw	%ax, (%rdx,%rdi,2)
LBB109_19:                              ##   in Loop: Header=BB109_6 Depth=1
	jmp	LBB109_20
LBB109_20:                              ##   in Loop: Header=BB109_6 Depth=1
	jmp	LBB109_21
LBB109_21:                              ##   in Loop: Header=BB109_6 Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	18488(%rcx), %eax
	jle	LBB109_6
LBB109_22:
	jmp	LBB109_73
LBB109_23:
	movq	-16(%rbp), %rax
	movl	18496(%rax), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
                                        ## kill: def $dx killed $dx killed $edx
	movw	%dx, -70(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 18500(%rax)
	je	LBB109_38
## %bb.24:
	movq	-16(%rbp), %rax
	movl	18500(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 18500(%rax)
	movq	-16(%rbp), %rax
	movl	18484(%rax), %ecx
	movl	%ecx, -44(%rbp)
LBB109_25:                              ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	18488(%rcx), %eax
	jg	LBB109_37
## %bb.26:                              ##   in Loop: Header=BB109_25 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	leaq	_stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movswl	(%rax), %esi
	cmpl	$0, %esi
	je	LBB109_35
## %bb.27:                              ##   in Loop: Header=BB109_25 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__jpeg_get_bit
	cmpl	$0, %eax
	je	LBB109_34
## %bb.28:                              ##   in Loop: Header=BB109_25 Depth=1
	movq	-80(%rbp), %rax
	movswl	(%rax), %ecx
	movswl	-70(%rbp), %edx
	andl	%edx, %ecx
	cmpl	$0, %ecx
	jne	LBB109_33
## %bb.29:                              ##   in Loop: Header=BB109_25 Depth=1
	movq	-80(%rbp), %rax
	movswl	(%rax), %ecx
	cmpl	$0, %ecx
	jle	LBB109_31
## %bb.30:                              ##   in Loop: Header=BB109_25 Depth=1
	movswl	-70(%rbp), %eax
	movq	-80(%rbp), %rcx
	movswl	(%rcx), %edx
	addl	%eax, %edx
                                        ## kill: def $dx killed $dx killed $edx
	movw	%dx, (%rcx)
	jmp	LBB109_32
LBB109_31:                              ##   in Loop: Header=BB109_25 Depth=1
	movswl	-70(%rbp), %eax
	movq	-80(%rbp), %rcx
	movswl	(%rcx), %edx
	subl	%eax, %edx
                                        ## kill: def $dx killed $dx killed $edx
	movw	%dx, (%rcx)
LBB109_32:                              ##   in Loop: Header=BB109_25 Depth=1
	jmp	LBB109_33
LBB109_33:                              ##   in Loop: Header=BB109_25 Depth=1
	jmp	LBB109_34
LBB109_34:                              ##   in Loop: Header=BB109_25 Depth=1
	jmp	LBB109_35
LBB109_35:                              ##   in Loop: Header=BB109_25 Depth=1
	jmp	LBB109_36
LBB109_36:                              ##   in Loop: Header=BB109_25 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB109_25
LBB109_37:
	jmp	LBB109_72
LBB109_38:
	movq	-16(%rbp), %rax
	movl	18484(%rax), %ecx
	movl	%ecx, -44(%rbp)
LBB109_39:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB109_55 Depth 2
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_stbi__jpeg_huff_decode
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	LBB109_41
## %bb.40:
	leaq	L_.str.45(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB109_74
LBB109_41:                              ##   in Loop: Header=BB109_39 Depth=1
	movl	-92(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -88(%rbp)
	movl	-92(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, -88(%rbp)
	jne	LBB109_48
## %bb.42:                              ##   in Loop: Header=BB109_39 Depth=1
	cmpl	$15, -84(%rbp)
	jge	LBB109_46
## %bb.43:                              ##   in Loop: Header=BB109_39 Depth=1
	movl	-84(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	subl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 18500(%rdx)
	cmpl	$0, -84(%rbp)
	je	LBB109_45
## %bb.44:                              ##   in Loop: Header=BB109_39 Depth=1
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	_stbi__jpeg_get_bits
	movq	-16(%rbp), %rcx
	addl	18500(%rcx), %eax
	movl	%eax, 18500(%rcx)
LBB109_45:                              ##   in Loop: Header=BB109_39 Depth=1
	movl	$64, -84(%rbp)
	jmp	LBB109_47
LBB109_46:                              ##   in Loop: Header=BB109_39 Depth=1
	jmp	LBB109_47
LBB109_47:                              ##   in Loop: Header=BB109_39 Depth=1
	jmp	LBB109_54
LBB109_48:                              ##   in Loop: Header=BB109_39 Depth=1
	cmpl	$1, -88(%rbp)
	je	LBB109_50
## %bb.49:
	leaq	L_.str.45(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB109_74
LBB109_50:                              ##   in Loop: Header=BB109_39 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__jpeg_get_bit
	cmpl	$0, %eax
	je	LBB109_52
## %bb.51:                              ##   in Loop: Header=BB109_39 Depth=1
	movswl	-70(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	LBB109_53
LBB109_52:                              ##   in Loop: Header=BB109_39 Depth=1
	xorl	%eax, %eax
	movswl	-70(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -88(%rbp)
LBB109_53:                              ##   in Loop: Header=BB109_39 Depth=1
	jmp	LBB109_54
LBB109_54:                              ##   in Loop: Header=BB109_39 Depth=1
	jmp	LBB109_55
LBB109_55:                              ##   Parent Loop BB109_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	18488(%rcx), %eax
	jg	LBB109_69
## %bb.56:                              ##   in Loop: Header=BB109_55 Depth=2
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movslq	%ecx, %rsi
	leaq	_stbi__jpeg_dezigzag(%rip), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	%ecx, %esi
	shlq	$1, %rsi
	addq	%rsi, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movswl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB109_65
## %bb.57:                              ##   in Loop: Header=BB109_55 Depth=2
	movq	-16(%rbp), %rdi
	callq	_stbi__jpeg_get_bit
	cmpl	$0, %eax
	je	LBB109_64
## %bb.58:                              ##   in Loop: Header=BB109_55 Depth=2
	movq	-104(%rbp), %rax
	movswl	(%rax), %ecx
	movswl	-70(%rbp), %edx
	andl	%edx, %ecx
	cmpl	$0, %ecx
	jne	LBB109_63
## %bb.59:                              ##   in Loop: Header=BB109_55 Depth=2
	movq	-104(%rbp), %rax
	movswl	(%rax), %ecx
	cmpl	$0, %ecx
	jle	LBB109_61
## %bb.60:                              ##   in Loop: Header=BB109_55 Depth=2
	movswl	-70(%rbp), %eax
	movq	-104(%rbp), %rcx
	movswl	(%rcx), %edx
	addl	%eax, %edx
                                        ## kill: def $dx killed $dx killed $edx
	movw	%dx, (%rcx)
	jmp	LBB109_62
LBB109_61:                              ##   in Loop: Header=BB109_55 Depth=2
	movswl	-70(%rbp), %eax
	movq	-104(%rbp), %rcx
	movswl	(%rcx), %edx
	subl	%eax, %edx
                                        ## kill: def $dx killed $dx killed $edx
	movw	%dx, (%rcx)
LBB109_62:                              ##   in Loop: Header=BB109_55 Depth=2
	jmp	LBB109_63
LBB109_63:                              ##   in Loop: Header=BB109_55 Depth=2
	jmp	LBB109_64
LBB109_64:                              ##   in Loop: Header=BB109_55 Depth=2
	jmp	LBB109_68
LBB109_65:                              ##   in Loop: Header=BB109_55 Depth=2
	cmpl	$0, -84(%rbp)
	jne	LBB109_67
## %bb.66:                              ##   in Loop: Header=BB109_39 Depth=1
	movl	-88(%rbp), %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-104(%rbp), %rcx
	movw	%ax, (%rcx)
	jmp	LBB109_69
LBB109_67:                              ##   in Loop: Header=BB109_55 Depth=2
	movl	-84(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -84(%rbp)
LBB109_68:                              ##   in Loop: Header=BB109_55 Depth=2
	jmp	LBB109_55
LBB109_69:                              ##   in Loop: Header=BB109_39 Depth=1
	jmp	LBB109_70
LBB109_70:                              ##   in Loop: Header=BB109_39 Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	18488(%rcx), %eax
	jle	LBB109_39
## %bb.71:
	jmp	LBB109_72
LBB109_72:
	jmp	LBB109_73
LBB109_73:
	movl	$1, -4(%rbp)
LBB109_74:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_huff_decode
_stbi__jpeg_huff_decode:                ## @stbi__jpeg_huff_decode
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$16, 18468(%rax)
	jge	LBB110_2
## %bb.1:
	movq	-16(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB110_2:
	movq	-16(%rbp), %rax
	movl	18464(%rax), %ecx
	shrl	$23, %ecx
	andl	$511, %ecx                      ## imm = 0x1FF
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rdx
	movzbl	(%rax,%rdx), %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$255, -36(%rbp)
	jge	LBB110_6
## %bb.3:
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movzbl	1280(%rax,%rcx), %edx
	movl	%edx, -40(%rbp)
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	cmpl	18468(%rax), %edx
	jle	LBB110_5
## %bb.4:
	movl	$-1, -4(%rbp)
	jmp	LBB110_19
LBB110_5:
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	18464(%rax), %edx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, 18464(%rax)
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	18468(%rax), %esi
	subl	%edx, %esi
	movl	%esi, 18468(%rax)
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rdi
	movzbl	1024(%rax,%rdi), %edx
	movl	%edx, -4(%rbp)
	jmp	LBB110_19
LBB110_6:
	movq	-16(%rbp), %rax
	movl	18464(%rax), %ecx
	shrl	$16, %ecx
	movl	%ecx, -28(%rbp)
	movl	$10, -36(%rbp)
LBB110_7:                               ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	cmpl	1540(%rcx,%rdx,4), %eax
	jae	LBB110_9
## %bb.8:
	jmp	LBB110_11
LBB110_9:                               ##   in Loop: Header=BB110_7 Depth=1
	jmp	LBB110_10
LBB110_10:                              ##   in Loop: Header=BB110_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB110_7
LBB110_11:
	cmpl	$17, -36(%rbp)
	jne	LBB110_13
## %bb.12:
	movq	-16(%rbp), %rax
	movl	18468(%rax), %ecx
	subl	$16, %ecx
	movl	%ecx, 18468(%rax)
	movl	$-1, -4(%rbp)
	jmp	LBB110_19
LBB110_13:
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	18468(%rcx), %eax
	jle	LBB110_15
## %bb.14:
	movl	$-1, -4(%rbp)
	jmp	LBB110_19
LBB110_15:
	movq	-16(%rbp), %rax
	movl	18464(%rax), %ecx
	movl	$32, %edx
	movl	%edx, %esi
	subl	-36(%rbp), %esi
	movl	%ecx, -44(%rbp)                 ## 4-byte Spill
	movl	%esi, %ecx
                                        ## kill: def $cl killed $ecx
	movl	-44(%rbp), %esi                 ## 4-byte Reload
	shrl	%cl, %esi
	movslq	-36(%rbp), %rax
	leaq	_stbi__bmask(%rip), %rdi
	andl	(%rdi,%rax,4), %esi
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %r8
	addl	1612(%rax,%r8,4), %esi
	movl	%esi, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	18464(%rax), %esi
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %r8
	movzbl	1280(%rax,%r8), %r9d
	subl	%r9d, %edx
	movl	%edx, %ecx
                                        ## kill: def $cl killed $ecx
	shrl	%cl, %esi
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %r8
	movzbl	1280(%rax,%r8), %edx
	movl	%edx, %eax
	andl	(%rdi,%rax,4), %esi
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rdi
	movzwl	512(%rax,%rdi,2), %edx
	cmpl	%edx, %esi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB110_17
## %bb.16:
	leaq	L___func__.stbi__jpeg_huff_decode(%rip), %rdi
	leaq	L_.str.12(%rip), %rsi
	leaq	L_.str.46(%rip), %rcx
	movl	$1595, %edx                     ## imm = 0x63B
	callq	___assert_rtn
LBB110_17:
	jmp	LBB110_18
LBB110_18:
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	18468(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 18468(%rcx)
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movl	18464(%rsi), %eax
                                        ## kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 18464(%rsi)
	movq	-24(%rbp), %rsi
	movslq	-32(%rbp), %rdi
	movzbl	1024(%rsi,%rdi), %eax
	movl	%eax, -4(%rbp)
LBB110_19:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__extend_receive
_stbi__extend_receive:                  ## @stbi__extend_receive
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	18468(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jge	LBB111_2
## %bb.1:
	movq	-8(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB111_2:
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	18464(%rcx), %edx
	shrl	$31, %edx
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rcx
	movl	18464(%rcx), %edx
	movl	-12(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %edx
	movq	-8(%rbp), %rsi
	movl	18464(%rsi), %edi
	subl	-12(%rbp), %eax
	andl	$31, %eax
	movl	%eax, %ecx
                                        ## kill: def $cl killed $ecx
	shrl	%cl, %edi
	orl	%edi, %edx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rsi
	leaq	_stbi__bmask(%rip), %r8
	movl	(%r8,%rsi,4), %edx
	xorl	$-1, %edx
	andl	%edx, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 18464(%rsi)
	movslq	-12(%rbp), %rsi
	movl	(%r8,%rsi,4), %eax
	andl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	18468(%rsi), %edx
	subl	%eax, %edx
	movl	%edx, 18468(%rsi)
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rsi
	leaq	_stbi__jbias(%rip), %r8
	movl	(%r8,%rsi,4), %edx
	movl	-20(%rbp), %edi
	subl	$1, %edi
	andl	%edi, %edx
	addl	%edx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_get_bit
_stbi__jpeg_get_bit:                    ## @stbi__jpeg_get_bit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, 18468(%rax)
	jge	LBB112_2
## %bb.1:
	movq	-8(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB112_2:
	movq	-8(%rbp), %rax
	movl	18464(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	18464(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 18464(%rax)
	movq	-8(%rbp), %rax
	movl	18468(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 18468(%rax)
	movl	-12(%rbp), %ecx
	andl	$-2147483648, %ecx              ## imm = 0x80000000
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_get_bits
_stbi__jpeg_get_bits:                   ## @stbi__jpeg_get_bits
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	18468(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jge	LBB113_2
## %bb.1:
	movq	-8(%rbp), %rdi
	callq	_stbi__grow_buffer_unsafe
LBB113_2:
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	18464(%rcx), %edx
	movl	-12(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %edx
	movq	-8(%rbp), %rsi
	movl	18464(%rsi), %edi
	subl	-12(%rbp), %eax
	andl	$31, %eax
	movl	%eax, %ecx
                                        ## kill: def $cl killed $ecx
	shrl	%cl, %edi
	orl	%edi, %edx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rsi
	leaq	_stbi__bmask(%rip), %r8
	movl	(%r8,%rsi,4), %edx
	xorl	$-1, %edx
	andl	%edx, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 18464(%rsi)
	movslq	-12(%rbp), %rsi
	movl	(%r8,%rsi,4), %eax
	andl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	18468(%rsi), %edx
	subl	%eax, %edx
	movl	%edx, 18468(%rsi)
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_dequantize
_stbi__jpeg_dequantize:                 ## @stbi__jpeg_dequantize
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB114_1:                               ## =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jge	LBB114_4
## %bb.2:                               ##   in Loop: Header=BB114_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movswl	(%rax,%rcx,2), %esi
	imull	%edx, %esi
                                        ## kill: def $si killed $si killed $esi
	movw	%si, (%rax,%rcx,2)
## %bb.3:                               ##   in Loop: Header=BB114_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB114_1
LBB114_4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__convert_8_to_16
_stbi__convert_8_to_16:                 ## @stbi__convert_8_to_16
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	_stbi__malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB115_2
## %bb.1:
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -8(%rbp)
	jmp	LBB115_7
LBB115_2:
	movl	$0, -32(%rbp)
LBB115_3:                               ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB115_6
## %bb.4:                               ##   in Loop: Header=BB115_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	shll	$8, %edx
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movzbl	(%rax,%rcx), %esi
	addl	%esi, %edx
                                        ## kill: def $dx killed $dx killed $edx
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movw	%dx, (%rax,%rcx,2)
## %bb.5:                               ##   in Loop: Header=BB115_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB115_3
LBB115_6:
	movq	-16(%rbp), %rdi
	callq	_free
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB115_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__hdr_load
_stbi__hdr_load:                        ## @stbi__hdr_load
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1200, %rsp                     ## imm = 0x4B0
	leaq	-1040(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movq	%rdi, -1056(%rbp)
	movq	%rsi, -1064(%rbp)
	movq	%rdx, -1072(%rbp)
	movq	%rcx, -1080(%rbp)
	movl	%r8d, -1084(%rbp)
	movq	%r9, -1096(%rbp)
	movl	$0, -1108(%rbp)
	movq	-1056(%rbp), %rdi
	movq	%rax, %rsi
	callq	_stbi__hdr_gettoken
	movq	%rax, -1176(%rbp)
	movq	-1176(%rbp), %rdi
	leaq	L_.str.48(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB116_3
## %bb.1:
	movq	-1176(%rbp), %rdi
	leaq	L_.str.49(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB116_3
## %bb.2:
	leaq	L_.str.50(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_3:
	jmp	LBB116_4
LBB116_4:                               ## =>This Inner Loop Header: Depth=1
	leaq	-1040(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	callq	_stbi__hdr_gettoken
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB116_6
## %bb.5:
	jmp	LBB116_9
LBB116_6:                               ##   in Loop: Header=BB116_4 Depth=1
	movq	-1104(%rbp), %rdi
	leaq	L_.str.51(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB116_8
## %bb.7:                               ##   in Loop: Header=BB116_4 Depth=1
	movl	$1, -1108(%rbp)
LBB116_8:                               ##   in Loop: Header=BB116_4 Depth=1
	jmp	LBB116_4
LBB116_9:
	cmpl	$0, -1108(%rbp)
	jne	LBB116_11
## %bb.10:
	leaq	L_.str.52(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_11:
	leaq	-1040(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	callq	_stbi__hdr_gettoken
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rdi
	leaq	L_.str.53(%rip), %rsi
	movl	$3, %edx
	callq	_strncmp
	cmpl	$0, %eax
	je	LBB116_13
## %bb.12:
	leaq	L_.str.54(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_13:
	movq	-1104(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rdi
	leaq	-1104(%rbp), %rsi
	movl	$10, %edx
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -1116(%rbp)
LBB116_14:                              ## =>This Inner Loop Header: Depth=1
	movq	-1104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	LBB116_16
## %bb.15:                              ##   in Loop: Header=BB116_14 Depth=1
	movq	-1104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1104(%rbp)
	jmp	LBB116_14
LBB116_16:
	movq	-1104(%rbp), %rdi
	leaq	L_.str.55(%rip), %rsi
	movl	$3, %edx
	callq	_strncmp
	cmpl	$0, %eax
	je	LBB116_18
## %bb.17:
	leaq	L_.str.54(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_18:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-1104(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rdi
	movl	$10, %edx
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -1112(%rbp)
	cmpl	$16777216, -1116(%rbp)          ## imm = 0x1000000
	jle	LBB116_20
## %bb.19:
	leaq	L_.str.32(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_20:
	cmpl	$16777216, -1112(%rbp)          ## imm = 0x1000000
	jle	LBB116_22
## %bb.21:
	leaq	L_.str.32(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_22:
	movl	-1112(%rbp), %eax
	movq	-1064(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-1116(%rbp), %eax
	movq	-1072(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpq	$0, -1080(%rbp)
	je	LBB116_24
## %bb.23:
	movq	-1080(%rbp), %rax
	movl	$3, (%rax)
LBB116_24:
	cmpl	$0, -1084(%rbp)
	jne	LBB116_26
## %bb.25:
	movl	$3, -1084(%rbp)
LBB116_26:
	xorl	%r8d, %r8d
	movl	-1112(%rbp), %edi
	movl	-1116(%rbp), %esi
	movl	-1084(%rbp), %edx
	movl	$4, %ecx
	callq	_stbi__mad4sizes_valid
	cmpl	$0, %eax
	jne	LBB116_28
## %bb.27:
	leaq	L_.str.32(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_28:
	xorl	%r8d, %r8d
	movl	-1112(%rbp), %edi
	movl	-1116(%rbp), %esi
	movl	-1084(%rbp), %edx
	movl	$4, %ecx
	callq	_stbi__malloc_mad4
	movq	%rax, -1136(%rbp)
	cmpq	$0, -1136(%rbp)
	jne	LBB116_30
## %bb.29:
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_30:
	cmpl	$8, -1112(%rbp)
	jl	LBB116_32
## %bb.31:
	cmpl	$32768, -1112(%rbp)             ## imm = 0x8000
	jl	LBB116_42
LBB116_32:
	movl	$0, -1152(%rbp)
LBB116_33:
	movl	-1152(%rbp), %eax
	cmpl	-1116(%rbp), %eax
	jge	LBB116_41
## %bb.34:
	movl	$0, -1148(%rbp)
LBB116_35:
	movl	-1148(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	jge	LBB116_39
## %bb.36:
	jmp	LBB116_37
LBB116_37:
	leaq	-1180(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	movl	$4, %edx
	callq	_stbi__getn
	leaq	-1180(%rbp), %rsi
	movq	-1136(%rbp), %rcx
	movl	-1152(%rbp), %edx
	imull	-1112(%rbp), %edx
	imull	-1084(%rbp), %edx
	movslq	%edx, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movl	-1148(%rbp), %edx
	imull	-1084(%rbp), %edx
	movslq	%edx, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movl	-1084(%rbp), %edx
	movq	%rcx, %rdi
	movl	%eax, -1192(%rbp)               ## 4-byte Spill
	callq	_stbi__hdr_convert
## %bb.38:
	movl	-1148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1148(%rbp)
	jmp	LBB116_35
LBB116_39:
	jmp	LBB116_40
LBB116_40:
	movl	-1152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1152(%rbp)
	jmp	LBB116_33
LBB116_41:
	jmp	LBB116_85
LBB116_42:
	movq	$0, -1128(%rbp)
	movl	$0, -1152(%rbp)
LBB116_43:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB116_55 Depth 2
                                        ##       Child Loop BB116_57 Depth 3
                                        ##         Child Loop BB116_62 Depth 4
                                        ##         Child Loop BB116_69 Depth 4
                                        ##     Child Loop BB116_77 Depth 2
	movl	-1152(%rbp), %eax
	cmpl	-1116(%rbp), %eax
	jge	LBB116_82
## %bb.44:                              ##   in Loop: Header=BB116_43 Depth=1
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -1160(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -1164(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movl	%ecx, -1140(%rbp)
	cmpl	$2, -1160(%rbp)
	jne	LBB116_47
## %bb.45:                              ##   in Loop: Header=BB116_43 Depth=1
	cmpl	$2, -1164(%rbp)
	jne	LBB116_47
## %bb.46:                              ##   in Loop: Header=BB116_43 Depth=1
	movl	-1140(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB116_48
LBB116_47:
	movl	-1160(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -1184(%rbp)
	movl	-1164(%rbp), %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movb	%cl, -1183(%rbp)
	movl	-1140(%rbp), %edx
                                        ## kill: def $dl killed $dl killed $edx
	movb	%dl, -1182(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	leaq	-1184(%rbp), %rsi
	movb	%al, -1181(%rbp)
	movq	-1136(%rbp), %rdi
	movl	-1084(%rbp), %edx
	callq	_stbi__hdr_convert
	movl	$1, -1148(%rbp)
	movl	$0, -1152(%rbp)
	movq	-1128(%rbp), %rdi
	callq	_free
	jmp	LBB116_37
LBB116_48:                              ##   in Loop: Header=BB116_43 Depth=1
	movl	-1140(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -1140(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	orl	-1140(%rbp), %ecx
	movl	%ecx, -1140(%rbp)
	movl	-1140(%rbp), %ecx
	cmpl	-1112(%rbp), %ecx
	je	LBB116_50
## %bb.49:
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-1128(%rbp), %rdi
	callq	_free
	leaq	L_.str.56(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_50:                              ##   in Loop: Header=BB116_43 Depth=1
	cmpq	$0, -1128(%rbp)
	jne	LBB116_54
## %bb.51:                              ##   in Loop: Header=BB116_43 Depth=1
	xorl	%edx, %edx
	movl	-1112(%rbp), %edi
	movl	$4, %esi
	callq	_stbi__malloc_mad2
	movq	%rax, -1128(%rbp)
	cmpq	$0, -1128(%rbp)
	jne	LBB116_53
## %bb.52:
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_53:                              ##   in Loop: Header=BB116_43 Depth=1
	jmp	LBB116_54
LBB116_54:                              ##   in Loop: Header=BB116_43 Depth=1
	movl	$0, -1156(%rbp)
LBB116_55:                              ##   Parent Loop BB116_43 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB116_57 Depth 3
                                        ##         Child Loop BB116_62 Depth 4
                                        ##         Child Loop BB116_69 Depth 4
	cmpl	$4, -1156(%rbp)
	jge	LBB116_76
## %bb.56:                              ##   in Loop: Header=BB116_55 Depth=2
	movl	$0, -1148(%rbp)
LBB116_57:                              ##   Parent Loop BB116_43 Depth=1
                                        ##     Parent Loop BB116_55 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB116_62 Depth 4
                                        ##         Child Loop BB116_69 Depth 4
	movl	-1112(%rbp), %eax
	subl	-1148(%rbp), %eax
	movl	%eax, -1188(%rbp)
	cmpl	$0, %eax
	jle	LBB116_74
## %bb.58:                              ##   in Loop: Header=BB116_57 Depth=3
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	movb	%al, -1141(%rbp)
	movzbl	-1141(%rbp), %ecx
	cmpl	$128, %ecx
	jle	LBB116_66
## %bb.59:                              ##   in Loop: Header=BB116_57 Depth=3
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	movb	%al, -1142(%rbp)
	movzbl	-1141(%rbp), %ecx
	subl	$128, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movb	%cl, -1141(%rbp)
	movzbl	-1141(%rbp), %edx
	cmpl	-1188(%rbp), %edx
	jle	LBB116_61
## %bb.60:
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-1128(%rbp), %rdi
	callq	_free
	leaq	L_.str.57(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_61:                              ##   in Loop: Header=BB116_57 Depth=3
	movl	$0, -1168(%rbp)
LBB116_62:                              ##   Parent Loop BB116_43 Depth=1
                                        ##     Parent Loop BB116_55 Depth=2
                                        ##       Parent Loop BB116_57 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	-1168(%rbp), %eax
	movzbl	-1141(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	LBB116_65
## %bb.63:                              ##   in Loop: Header=BB116_62 Depth=4
	movb	-1142(%rbp), %al
	movq	-1128(%rbp), %rcx
	movl	-1148(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -1148(%rbp)
	shll	$2, %edx
	addl	-1156(%rbp), %edx
	movslq	%edx, %rdi
	movb	%al, (%rcx,%rdi)
## %bb.64:                              ##   in Loop: Header=BB116_62 Depth=4
	movl	-1168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1168(%rbp)
	jmp	LBB116_62
LBB116_65:                              ##   in Loop: Header=BB116_57 Depth=3
	jmp	LBB116_73
LBB116_66:                              ##   in Loop: Header=BB116_57 Depth=3
	movzbl	-1141(%rbp), %eax
	cmpl	-1188(%rbp), %eax
	jle	LBB116_68
## %bb.67:
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-1128(%rbp), %rdi
	callq	_free
	leaq	L_.str.57(%rip), %rdi
	callq	_stbi__err
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpl	$0, %eax
	cmovneq	%rdx, %rdx
	movq	%rdx, -1048(%rbp)
	jmp	LBB116_86
LBB116_68:                              ##   in Loop: Header=BB116_57 Depth=3
	movl	$0, -1168(%rbp)
LBB116_69:                              ##   Parent Loop BB116_43 Depth=1
                                        ##     Parent Loop BB116_55 Depth=2
                                        ##       Parent Loop BB116_57 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	-1168(%rbp), %eax
	movzbl	-1141(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	LBB116_72
## %bb.70:                              ##   in Loop: Header=BB116_69 Depth=4
	movq	-1056(%rbp), %rdi
	callq	_stbi__get8
	movq	-1128(%rbp), %rcx
	movl	-1148(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -1148(%rbp)
	shll	$2, %edx
	addl	-1156(%rbp), %edx
	movslq	%edx, %rdi
	movb	%al, (%rcx,%rdi)
## %bb.71:                              ##   in Loop: Header=BB116_69 Depth=4
	movl	-1168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1168(%rbp)
	jmp	LBB116_69
LBB116_72:                              ##   in Loop: Header=BB116_57 Depth=3
	jmp	LBB116_73
LBB116_73:                              ##   in Loop: Header=BB116_57 Depth=3
	jmp	LBB116_57
LBB116_74:                              ##   in Loop: Header=BB116_55 Depth=2
	jmp	LBB116_75
LBB116_75:                              ##   in Loop: Header=BB116_55 Depth=2
	movl	-1156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1156(%rbp)
	jmp	LBB116_55
LBB116_76:                              ##   in Loop: Header=BB116_43 Depth=1
	movl	$0, -1148(%rbp)
LBB116_77:                              ##   Parent Loop BB116_43 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-1148(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	jge	LBB116_80
## %bb.78:                              ##   in Loop: Header=BB116_77 Depth=2
	movq	-1136(%rbp), %rax
	movl	-1152(%rbp), %ecx
	imull	-1112(%rbp), %ecx
	addl	-1148(%rbp), %ecx
	imull	-1084(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	-1128(%rbp), %rdx
	movl	-1148(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movl	-1084(%rbp), %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	callq	_stbi__hdr_convert
## %bb.79:                              ##   in Loop: Header=BB116_77 Depth=2
	movl	-1148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1148(%rbp)
	jmp	LBB116_77
LBB116_80:                              ##   in Loop: Header=BB116_43 Depth=1
	jmp	LBB116_81
LBB116_81:                              ##   in Loop: Header=BB116_43 Depth=1
	movl	-1152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1152(%rbp)
	jmp	LBB116_43
LBB116_82:
	cmpq	$0, -1128(%rbp)
	je	LBB116_84
## %bb.83:
	movq	-1128(%rbp), %rdi
	callq	_free
LBB116_84:
	jmp	LBB116_85
LBB116_85:
	movq	-1136(%rbp), %rax
	movq	%rax, -1048(%rbp)
LBB116_86:
	movq	-1048(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -1200(%rbp)               ## 8-byte Spill
	jne	LBB116_88
## %bb.87:
	movq	-1200(%rbp), %rax               ## 8-byte Reload
	addq	$1200, %rsp                     ## imm = 0x4B0
	popq	%rbp
	retq
LBB116_88:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__float_postprocess
_stbi__float_postprocess:               ## @stbi__float_postprocess
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	_stbi__vertically_flip_on_load_set@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %r8d
	cmpl	$0, %r8d
	je	LBB117_2
## %bb.1:
	movq	_stbi__vertically_flip_on_load_local@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB117_3
	jmp	LBB117_8
LBB117_2:
	cmpl	$0, _stbi__vertically_flip_on_load_global(%rip)
	je	LBB117_8
LBB117_3:
	cmpq	$0, -8(%rbp)
	je	LBB117_8
## %bb.4:
	cmpl	$0, -36(%rbp)
	je	LBB117_6
## %bb.5:
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB117_7
LBB117_6:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)                 ## 4-byte Spill
LBB117_7:
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	-40(%rbp), %rdi
	shlq	$2, %rdi
                                        ## kill: def $edi killed $edi killed $rdi
	movl	%edi, -48(%rbp)                 ## 4-byte Spill
	movq	%rcx, %rdi
	movl	-48(%rbp), %ecx                 ## 4-byte Reload
	callq	_stbi__vertical_flip
LBB117_8:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__hdr_gettoken
_stbi__hdr_gettoken:                    ## @stbi__hdr_gettoken
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movb	$0, -21(%rbp)
	movq	-8(%rbp), %rdi
	callq	_stbi__get8
	movb	%al, -21(%rbp)
LBB118_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	_stbi__at_eof
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -22(%rbp)                  ## 1-byte Spill
	jne	LBB118_3
## %bb.2:                               ##   in Loop: Header=BB118_1 Depth=1
	movsbl	-21(%rbp), %eax
	cmpl	$10, %eax
	setne	%cl
	movb	%cl, -22(%rbp)                  ## 1-byte Spill
LBB118_3:                               ##   in Loop: Header=BB118_1 Depth=1
	movb	-22(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB118_4
	jmp	LBB118_12
LBB118_4:                               ##   in Loop: Header=BB118_1 Depth=1
	movb	-21(%rbp), %al
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movslq	%edx, %rdi
	movb	%al, (%rcx,%rdi)
	cmpl	$1023, -20(%rbp)                ## imm = 0x3FF
	jne	LBB118_11
## %bb.5:
	jmp	LBB118_6
LBB118_6:                               ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	_stbi__at_eof
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -23(%rbp)                  ## 1-byte Spill
	jne	LBB118_8
## %bb.7:                               ##   in Loop: Header=BB118_6 Depth=1
	movq	-8(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	cmpl	$10, %ecx
	setne	%al
	movb	%al, -23(%rbp)                  ## 1-byte Spill
LBB118_8:                               ##   in Loop: Header=BB118_6 Depth=1
	movb	-23(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB118_9
	jmp	LBB118_10
LBB118_9:                               ##   in Loop: Header=BB118_6 Depth=1
	jmp	LBB118_6
LBB118_10:
	jmp	LBB118_12
LBB118_11:                              ##   in Loop: Header=BB118_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_stbi__get8
	movb	%al, -21(%rbp)
	jmp	LBB118_1
LBB118_12:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__mad4sizes_valid
_stbi__mad4sizes_valid:                 ## @stbi__mad4sizes_valid
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	_stbi__mul2sizes_valid
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)                  ## 1-byte Spill
	je	LBB119_4
## %bb.1:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %esi
	movl	%eax, %edi
	callq	_stbi__mul2sizes_valid
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)                  ## 1-byte Spill
	je	LBB119_4
## %bb.2:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	-16(%rbp), %esi
	movl	%eax, %edi
	callq	_stbi__mul2sizes_valid
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)                  ## 1-byte Spill
	je	LBB119_4
## %bb.3:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	-20(%rbp), %esi
	movl	%eax, %edi
	callq	_stbi__addsizes_valid
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -21(%rbp)                  ## 1-byte Spill
LBB119_4:
	movb	-21(%rbp), %al                  ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__malloc_mad4
_stbi__malloc_mad4:                     ## @stbi__malloc_mad4
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	_stbi__mad4sizes_valid
	cmpl	$0, %eax
	jne	LBB120_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB120_3
LBB120_2:
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rdi
	callq	_stbi__malloc
	movq	%rax, -8(%rbp)
LBB120_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__getn
_stbi__getn:                            ## @stbi__getn
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB121_4
## %bb.1:
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB121_3
## %bb.2:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	192(%rax), %rsi
	movslq	-32(%rbp), %rdx
	movq	$-1, %rcx
	callq	___memcpy_chk
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movslq	-32(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-28(%rbp), %r8d
	subl	-32(%rbp), %r8d
	movq	%rdx, %rsi
	movl	%r8d, %edx
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	callq	*%rcx
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-28(%rbp), %edx
	subl	-32(%rbp), %edx
	cmpl	%edx, %eax
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, 192(%rsi)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB121_7
LBB121_3:
	jmp	LBB121_4
LBB121_4:
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	cmpq	200(%rcx), %rax
	ja	LBB121_6
## %bb.5:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	192(%rax), %rsi
	movslq	-28(%rbp), %rdx
	movq	$-1, %rcx
	callq	___memcpy_chk
	movl	-28(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rdx
	movslq	%r8d, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 192(%rcx)
	movl	$1, -4(%rbp)
	jmp	LBB121_7
LBB121_6:
	movl	$0, -4(%rbp)
LBB121_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function stbi__hdr_convert
LCPI122_0:
	.long	0x3f800000                      ## float 1
LCPI122_2:
	.long	0x40400000                      ## float 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI122_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_stbi__hdr_convert:                     ## @stbi__hdr_convert
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB122_9
## %bb.1:
	movsd	LCPI122_1(%rip), %xmm0          ## xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	subl	$136, %ecx
	movl	%ecx, %edi
	callq	_ldexp
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	cmpl	$2, -20(%rbp)
	jg	LBB122_3
## %bb.2:
	movss	LCPI122_2(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	cvtsi2ss	%ecx, %xmm1
	mulss	-24(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movss	%xmm1, (%rax)
	jmp	LBB122_4
LBB122_3:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2ss	%ecx, %xmm0
	mulss	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2ss	%ecx, %xmm0
	mulss	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2ss	%ecx, %xmm0
	mulss	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
LBB122_4:
	cmpl	$2, -20(%rbp)
	jne	LBB122_6
## %bb.5:
	movss	LCPI122_0(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
LBB122_6:
	cmpl	$4, -20(%rbp)
	jne	LBB122_8
## %bb.7:
	movss	LCPI122_0(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, 12(%rax)
LBB122_8:
	jmp	LBB122_15
LBB122_9:
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -32(%rbp)                 ## 8-byte Spill
	ja	LBB122_14
## %bb.16:
	leaq	LJTI122_0(%rip), %rax
	movq	-32(%rbp), %rcx                 ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB122_10:
	movss	LCPI122_0(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, 12(%rax)
LBB122_11:
	movq	-8(%rbp), %rax
	xorps	%xmm0, %xmm0
	movss	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	LBB122_14
LBB122_12:
	movss	LCPI122_0(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
LBB122_13:
	movq	-8(%rbp), %rax
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax)
LBB122_14:
	jmp	LBB122_15
LBB122_15:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L122_0_set_13, LBB122_13-LJTI122_0
.set L122_0_set_12, LBB122_12-LJTI122_0
.set L122_0_set_11, LBB122_11-LJTI122_0
.set L122_0_set_10, LBB122_10-LJTI122_0
LJTI122_0:
	.long	L122_0_set_13
	.long	L122_0_set_12
	.long	L122_0_set_11
	.long	L122_0_set_10
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__hdr_test_core
_stbi__hdr_test_core:                   ## @stbi__hdr_test_core
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
LBB123_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB123_6
## %bb.2:                               ##   in Loop: Header=BB123_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_stbi__get8
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movsbl	(%rdx,%rsi), %r8d
	cmpl	%r8d, %ecx
	je	LBB123_4
## %bb.3:
	movl	$0, -4(%rbp)
	jmp	LBB123_7
LBB123_4:                               ##   in Loop: Header=BB123_1 Depth=1
	jmp	LBB123_5
LBB123_5:                               ##   in Loop: Header=BB123_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB123_1
LBB123_6:
	movq	-16(%rbp), %rdi
	callq	_stbi__rewind
	movl	$1, -4(%rbp)
LBB123_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_info
_stbi__jpeg_info:                       ## @stbi__jpeg_info
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$18568, %edi                    ## imm = 0x4888
	callq	_stbi__malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	LBB124_2
## %bb.1:
	leaq	L_.str.15(%rip), %rdi
	callq	_stbi__err
	movl	%eax, -4(%rbp)
	jmp	LBB124_3
LBB124_2:
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_stbi__jpeg_info_raw
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_free
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB124_3:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__hdr_info
_stbi__hdr_info:                        ## @stbi__hdr_info
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1104, %rsp                     ## imm = 0x450
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1056(%rbp)
	movq	%rsi, -1064(%rbp)
	movq	%rdx, -1072(%rbp)
	movq	%rcx, -1080(%rbp)
	movl	$0, -1092(%rbp)
	cmpq	$0, -1064(%rbp)
	jne	LBB125_2
## %bb.1:
	leaq	-1096(%rbp), %rax
	movq	%rax, -1064(%rbp)
LBB125_2:
	cmpq	$0, -1072(%rbp)
	jne	LBB125_4
## %bb.3:
	leaq	-1096(%rbp), %rax
	movq	%rax, -1072(%rbp)
LBB125_4:
	cmpq	$0, -1080(%rbp)
	jne	LBB125_6
## %bb.5:
	leaq	-1096(%rbp), %rax
	movq	%rax, -1080(%rbp)
LBB125_6:
	movq	-1056(%rbp), %rdi
	callq	_stbi__hdr_test
	cmpl	$0, %eax
	jne	LBB125_8
## %bb.7:
	movq	-1056(%rbp), %rdi
	callq	_stbi__rewind
	movl	$0, -1044(%rbp)
	jmp	LBB125_24
LBB125_8:
	jmp	LBB125_9
LBB125_9:                               ## =>This Inner Loop Header: Depth=1
	leaq	-1040(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	callq	_stbi__hdr_gettoken
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB125_11
## %bb.10:
	jmp	LBB125_14
LBB125_11:                              ##   in Loop: Header=BB125_9 Depth=1
	movq	-1088(%rbp), %rdi
	leaq	L_.str.51(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB125_13
## %bb.12:                              ##   in Loop: Header=BB125_9 Depth=1
	movl	$1, -1092(%rbp)
LBB125_13:                              ##   in Loop: Header=BB125_9 Depth=1
	jmp	LBB125_9
LBB125_14:
	cmpl	$0, -1092(%rbp)
	jne	LBB125_16
## %bb.15:
	movq	-1056(%rbp), %rdi
	callq	_stbi__rewind
	movl	$0, -1044(%rbp)
	jmp	LBB125_24
LBB125_16:
	leaq	-1040(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	callq	_stbi__hdr_gettoken
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rdi
	leaq	L_.str.53(%rip), %rsi
	movl	$3, %edx
	callq	_strncmp
	cmpl	$0, %eax
	je	LBB125_18
## %bb.17:
	movq	-1056(%rbp), %rdi
	callq	_stbi__rewind
	movl	$0, -1044(%rbp)
	jmp	LBB125_24
LBB125_18:
	movq	-1088(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rdi
	leaq	-1088(%rbp), %rsi
	movl	$10, %edx
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movq	-1072(%rbp), %rcx
	movl	%eax, (%rcx)
LBB125_19:                              ## =>This Inner Loop Header: Depth=1
	movq	-1088(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	LBB125_21
## %bb.20:                              ##   in Loop: Header=BB125_19 Depth=1
	movq	-1088(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1088(%rbp)
	jmp	LBB125_19
LBB125_21:
	movq	-1088(%rbp), %rdi
	leaq	L_.str.55(%rip), %rsi
	movl	$3, %edx
	callq	_strncmp
	cmpl	$0, %eax
	je	LBB125_23
## %bb.22:
	movq	-1056(%rbp), %rdi
	callq	_stbi__rewind
	movl	$0, -1044(%rbp)
	jmp	LBB125_24
LBB125_23:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-1088(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -1088(%rbp)
	movq	-1088(%rbp), %rdi
	movl	$10, %edx
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movq	-1064(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-1080(%rbp), %rcx
	movl	$3, (%rcx)
	movl	$1, -1044(%rbp)
LBB125_24:
	movl	-1044(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -1100(%rbp)               ## 4-byte Spill
	jne	LBB125_26
## %bb.25:
	movl	-1100(%rbp), %eax               ## 4-byte Reload
	addq	$1104, %rsp                     ## imm = 0x450
	popq	%rbp
	retq
LBB125_26:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__jpeg_info_raw
_stbi__jpeg_info_raw:                   ## @stbi__jpeg_info_raw
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	_stbi__decode_jpeg_header
	cmpl	$0, %eax
	jne	LBB126_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stbi__rewind
	movl	$0, -4(%rbp)
	jmp	LBB126_9
LBB126_2:
	cmpq	$0, -24(%rbp)
	je	LBB126_4
## %bb.3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
LBB126_4:
	cmpq	$0, -32(%rbp)
	je	LBB126_6
## %bb.5:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
LBB126_6:
	cmpq	$0, -40(%rbp)
	je	LBB126_8
## %bb.7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	$3, %ecx
	movl	$3, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
LBB126_8:
	movl	$1, -4(%rbp)
LBB126_9:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbiw__write_hdr_scanline
_stbiw__write_hdr_scanline:             ## @stbiw__write_hdr_scanline
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	L___const.stbiw__write_hdr_scanline.scanlineheader(%rip), %edx
	movl	%edx, -60(%rbp)
	movl	-36(%rbp), %edx
	andl	$65280, %edx                    ## imm = 0xFF00
	sarl	$8, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movb	%dl, -58(%rbp)
	movl	-36(%rbp), %esi
	andl	$255, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movb	%sil, -57(%rbp)
	cmpl	$8, -36(%rbp)
	jl	LBB127_2
## %bb.1:
	cmpl	$32768, -36(%rbp)               ## imm = 0x8000
	jl	LBB127_10
LBB127_2:
	movl	$0, -68(%rbp)
LBB127_3:                               ## =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB127_9
## %bb.4:                               ##   in Loop: Header=BB127_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$-3, %eax
	subl	$1, %eax
	ja	LBB127_6
	jmp	LBB127_5
LBB127_5:                               ##   in Loop: Header=BB127_3 Depth=1
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	jmp	LBB127_7
LBB127_6:                               ##   in Loop: Header=BB127_3 Depth=1
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movss	%xmm0, -20(%rbp)
LBB127_7:                               ##   in Loop: Header=BB127_3 Depth=1
	leaq	-20(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	callq	_stbiw__linear_to_rgbe
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	movl	$4, %edx
	callq	*%rax
## %bb.8:                               ##   in Loop: Header=BB127_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB127_3
LBB127_9:
	jmp	LBB127_50
LBB127_10:
	movl	$0, -68(%rbp)
LBB127_11:                              ## =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB127_17
## %bb.12:                              ##   in Loop: Header=BB127_11 Depth=1
	movl	-40(%rbp), %eax
	addl	$-3, %eax
	subl	$1, %eax
	ja	LBB127_14
	jmp	LBB127_13
LBB127_13:                              ##   in Loop: Header=BB127_11 Depth=1
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	jmp	LBB127_15
LBB127_14:                              ##   in Loop: Header=BB127_11 Depth=1
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movss	%xmm0, -20(%rbp)
LBB127_15:                              ##   in Loop: Header=BB127_11 Depth=1
	leaq	-20(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	callq	_stbiw__linear_to_rgbe
	movb	-64(%rbp), %al
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %edx
	imull	$0, -36(%rbp), %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movb	%al, (%rcx,%rsi)
	movb	-63(%rbp), %al
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %edx
	movl	-36(%rbp), %r8d
	shll	$0, %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movb	%al, (%rcx,%rsi)
	movb	-62(%rbp), %al
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %edx
	movl	-36(%rbp), %r8d
	shll	$1, %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movb	%al, (%rcx,%rsi)
	movb	-61(%rbp), %al
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %edx
	imull	$3, -36(%rbp), %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movb	%al, (%rcx,%rsi)
## %bb.16:                              ##   in Loop: Header=BB127_11 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB127_11
LBB127_17:
	leaq	-60(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	movl	$4, %edx
	callq	*%rax
	movl	$0, -72(%rbp)
LBB127_18:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB127_20 Depth 2
                                        ##       Child Loop BB127_22 Depth 3
                                        ##       Child Loop BB127_30 Depth 3
                                        ##       Child Loop BB127_36 Depth 3
                                        ##       Child Loop BB127_41 Depth 3
	cmpl	$4, -72(%rbp)
	jge	LBB127_49
## %bb.19:                              ##   in Loop: Header=BB127_18 Depth=1
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -68(%rbp)
LBB127_20:                              ##   Parent Loop BB127_18 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB127_22 Depth 3
                                        ##       Child Loop BB127_30 Depth 3
                                        ##       Child Loop BB127_36 Depth 3
                                        ##       Child Loop BB127_41 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB127_47
## %bb.21:                              ##   in Loop: Header=BB127_20 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
LBB127_22:                              ##   Parent Loop BB127_18 Depth=1
                                        ##     Parent Loop BB127_20 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	addl	$2, %eax
	cmpl	-36(%rbp), %eax
	jge	LBB127_27
## %bb.23:                              ##   in Loop: Header=BB127_22 Depth=3
	movq	-88(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movq	-88(%rbp), %rax
	movl	-76(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	jne	LBB127_26
## %bb.24:                              ##   in Loop: Header=BB127_22 Depth=3
	movq	-88(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movq	-88(%rbp), %rax
	movl	-76(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	jne	LBB127_26
## %bb.25:                              ##   in Loop: Header=BB127_20 Depth=2
	jmp	LBB127_27
LBB127_26:                              ##   in Loop: Header=BB127_22 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB127_22
LBB127_27:                              ##   in Loop: Header=BB127_20 Depth=2
	movl	-76(%rbp), %eax
	addl	$2, %eax
	cmpl	-36(%rbp), %eax
	jl	LBB127_29
## %bb.28:                              ##   in Loop: Header=BB127_20 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)
LBB127_29:                              ##   in Loop: Header=BB127_20 Depth=2
	jmp	LBB127_30
LBB127_30:                              ##   Parent Loop BB127_18 Depth=1
                                        ##     Parent Loop BB127_20 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	LBB127_34
## %bb.31:                              ##   in Loop: Header=BB127_30 Depth=3
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)
	cmpl	$128, -92(%rbp)
	jle	LBB127_33
## %bb.32:                              ##   in Loop: Header=BB127_30 Depth=3
	movl	$128, -92(%rbp)
LBB127_33:                              ##   in Loop: Header=BB127_30 Depth=3
	movq	-32(%rbp), %rdi
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movslq	-68(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	_stbiw__write_dump_data
	movl	-92(%rbp), %esi
	addl	-68(%rbp), %esi
	movl	%esi, -68(%rbp)
	jmp	LBB127_30
LBB127_34:                              ##   in Loop: Header=BB127_20 Depth=2
	movl	-76(%rbp), %eax
	addl	$2, %eax
	cmpl	-36(%rbp), %eax
	jge	LBB127_46
## %bb.35:                              ##   in Loop: Header=BB127_20 Depth=2
	jmp	LBB127_36
LBB127_36:                              ##   Parent Loop BB127_18 Depth=1
                                        ##     Parent Loop BB127_20 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movl	-76(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	movb	%al, -97(%rbp)                  ## 1-byte Spill
	jge	LBB127_38
## %bb.37:                              ##   in Loop: Header=BB127_36 Depth=3
	movq	-88(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movq	-88(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movzbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -97(%rbp)                 ## 1-byte Spill
LBB127_38:                              ##   in Loop: Header=BB127_36 Depth=3
	movb	-97(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB127_39
	jmp	LBB127_40
LBB127_39:                              ##   in Loop: Header=BB127_36 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB127_36
LBB127_40:                              ##   in Loop: Header=BB127_20 Depth=2
	jmp	LBB127_41
LBB127_41:                              ##   Parent Loop BB127_18 Depth=1
                                        ##     Parent Loop BB127_20 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	LBB127_45
## %bb.42:                              ##   in Loop: Header=BB127_41 Depth=3
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$127, -96(%rbp)
	jle	LBB127_44
## %bb.43:                              ##   in Loop: Header=BB127_41 Depth=3
	movl	$127, -96(%rbp)
LBB127_44:                              ##   in Loop: Header=BB127_41 Depth=3
	movq	-32(%rbp), %rdi
	movl	-96(%rbp), %esi
	movq	-88(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	callq	_stbiw__write_run_data
	movl	-96(%rbp), %edx
	addl	-68(%rbp), %edx
	movl	%edx, -68(%rbp)
	jmp	LBB127_41
LBB127_45:                              ##   in Loop: Header=BB127_20 Depth=2
	jmp	LBB127_46
LBB127_46:                              ##   in Loop: Header=BB127_20 Depth=2
	jmp	LBB127_20
LBB127_47:                              ##   in Loop: Header=BB127_18 Depth=1
	jmp	LBB127_48
LBB127_48:                              ##   in Loop: Header=BB127_18 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	LBB127_18
LBB127_49:
	jmp	LBB127_50
LBB127_50:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB127_52
## %bb.51:
	addq	$112, %rsp
	popq	%rbp
	retq
LBB127_52:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function stbiw__linear_to_rgbe
LCPI128_0:
	.long	0x0a4fb11f                      ## float 1.00000002E-32
LCPI128_1:
	.long	0x43800000                      ## float 256
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_stbiw__linear_to_rgbe:                 ## @stbiw__linear_to_rgbe
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm1                  ## xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	ucomiss	8(%rax), %xmm1
	movss	%xmm0, -32(%rbp)                ## 4-byte Spill
	jbe	LBB128_2
## %bb.1:
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)                ## 4-byte Spill
	jmp	LBB128_3
LBB128_2:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)                ## 4-byte Spill
LBB128_3:
	movss	-36(%rbp), %xmm0                ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1                ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB128_5
## %bb.4:
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -40(%rbp)                ## 4-byte Spill
	jmp	LBB128_9
LBB128_5:
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	ucomiss	8(%rax), %xmm0
	jbe	LBB128_7
## %bb.6:
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)                ## 4-byte Spill
	jmp	LBB128_8
LBB128_7:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)                ## 4-byte Spill
LBB128_8:
	movss	-44(%rbp), %xmm0                ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -40(%rbp)                ## 4-byte Spill
LBB128_9:
	movss	-40(%rbp), %xmm0                ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI128_0(%rip), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	ucomiss	-24(%rbp), %xmm1
	jbe	LBB128_11
## %bb.10:
	movq	-8(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	LBB128_12
LBB128_11:
	movss	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	-20(%rbp), %rdi
	callq	_frexp
	cvtsd2ss	%xmm0, %xmm0
	movss	LCPI128_1(%rip), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-8(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %esi
                                        ## kill: def $sil killed $sil killed $esi
	movq	-8(%rbp), %rax
	movb	%sil, 2(%rax)
	movl	-20(%rbp), %r8d
	addl	$128, %r8d
                                        ## kill: def $r8b killed $r8b killed $r8d
	movq	-8(%rbp), %rax
	movb	%r8b, 3(%rax)
LBB128_12:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbiw__write_dump_data
_stbiw__write_dump_data:                ## @stbiw__write_dump_data
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %eax
	andl	$255, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -25(%rbp)
	cmpl	$128, -12(%rbp)
	setle	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	cmpq	$0, %rdx
	je	LBB129_2
## %bb.1:
	leaq	L___func__.stbiw__write_dump_data(%rip), %rdi
	leaq	L_.str.61(%rip), %rsi
	leaq	L_.str.62(%rip), %rcx
	movl	$376, %edx                      ## imm = 0x178
	callq	___assert_rtn
LBB129_2:
	jmp	LBB129_3
LBB129_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbiw__write_run_data
_stbiw__write_run_data:                 ## @stbiw__write_run_data
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $dl killed $dl killed $edx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%dl, -13(%rbp)
	movl	-12(%rbp), %eax
	addl	$128, %eax
	andl	$255, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -14(%rbp)
	movl	-12(%rbp), %ecx
	addl	$128, %ecx
	cmpl	$255, %ecx
	setle	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdi
	cmpq	$0, %rdi
	je	LBB130_2
## %bb.1:
	leaq	L___func__.stbiw__write_run_data(%rip), %rdi
	leaq	L_.str.61(%rip), %rsi
	leaq	L_.str.63(%rip), %rcx
	movl	$368, %edx                      ## imm = 0x170
	callq	___assert_rtn
LBB130_2:
	jmp	LBB130_3
LBB130_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	leaq	-14(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	leaq	-13(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbiw__fopen
_stbiw__fopen:                          ## @stbiw__fopen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_fopen
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbi__stdio_write
_stbi__stdio_write:                     ## @stbi__stdio_write
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rcx
	callq	_fwrite
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbiw__putc
_stbiw__putc:                           ## @stbiw__putc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $sil killed $sil killed $esi
	movq	%rdi, -8(%rbp)
	movb	%sil, -9(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	leaq	-9(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function stbiw__jpg_processDU
LCPI134_0:
	.long	0x3f000000                      ## float 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_stbiw__jpg_processDU:                  ## @stbiw__jpg_processDU
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$464, %rsp                      ## imm = 0x1D0
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, -24(%rbp)
	movq	%rdi, -304(%rbp)
	movq	%rsi, -312(%rbp)
	movq	%rdx, -320(%rbp)
	movq	%rcx, -328(%rbp)
	movl	%r8d, -332(%rbp)
	movq	%r9, -344(%rbp)
	movq	32(%rbp), %rcx
	movw	(%rcx), %r14w
	movw	%r14w, -348(%rbp)
	movq	32(%rbp), %rcx
	movw	2(%rcx), %r14w
	movw	%r14w, -346(%rbp)
	movq	32(%rbp), %rcx
	movw	960(%rcx), %r14w
	movw	%r14w, -352(%rbp)
	movq	32(%rbp), %rcx
	movw	962(%rcx), %r14w
	movw	%r14w, -350(%rbp)
	movl	$0, -356(%rbp)
	movl	-332(%rbp), %r8d
	shll	$3, %r8d
	movl	%r8d, -368(%rbp)
LBB134_1:                               ## =>This Inner Loop Header: Depth=1
	movl	-356(%rbp), %eax
	cmpl	-368(%rbp), %eax
	jge	LBB134_4
## %bb.2:                               ##   in Loop: Header=BB134_1 Depth=1
	movq	-328(%rbp), %rax
	movslq	-356(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	-328(%rbp), %rcx
	movl	-356(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rcx
	movq	-328(%rbp), %rsi
	movl	-356(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	-328(%rbp), %rdi
	movl	-356(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	movq	-328(%rbp), %r8
	movl	-356(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %r9
	shlq	$2, %r9
	addq	%r9, %r8
	movq	-328(%rbp), %r9
	movl	-356(%rbp), %edx
	addl	$5, %edx
	movslq	%edx, %r10
	shlq	$2, %r10
	addq	%r10, %r9
	movq	-328(%rbp), %r10
	movl	-356(%rbp), %edx
	addl	$6, %edx
	movslq	%edx, %r11
	shlq	$2, %r11
	addq	%r11, %r10
	movq	-328(%rbp), %r11
	movl	-356(%rbp), %edx
	addl	$7, %edx
	movslq	%edx, %rbx
	shlq	$2, %rbx
	addq	%rbx, %r11
	movq	%rdi, -424(%rbp)                ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -432(%rbp)                ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-432(%rbp), %rdx                ## 8-byte Reload
	movq	-424(%rbp), %rcx                ## 8-byte Reload
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	_stbiw__jpg_DCT
## %bb.3:                               ##   in Loop: Header=BB134_1 Depth=1
	movl	-332(%rbp), %eax
	addl	-356(%rbp), %eax
	movl	%eax, -356(%rbp)
	jmp	LBB134_1
LBB134_4:
	movl	$0, -356(%rbp)
LBB134_5:                               ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -356(%rbp)
	jge	LBB134_8
## %bb.6:                               ##   in Loop: Header=BB134_5 Depth=1
	movq	-328(%rbp), %rax
	movslq	-356(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	-328(%rbp), %rcx
	movl	-356(%rbp), %edx
	addl	-332(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rcx
	movq	-328(%rbp), %rsi
	movl	-356(%rbp), %edx
	movl	-332(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %edx
	movslq	%edx, %r8
	shlq	$2, %r8
	addq	%r8, %rsi
	movq	-328(%rbp), %r8
	movl	-356(%rbp), %edx
	imull	$3, -332(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %r9
	shlq	$2, %r9
	addq	%r9, %r8
	movq	-328(%rbp), %r9
	movl	-356(%rbp), %edx
	movl	-332(%rbp), %edi
	shll	$2, %edi
	addl	%edi, %edx
	movslq	%edx, %r10
	shlq	$2, %r10
	addq	%r10, %r9
	movq	-328(%rbp), %r10
	movl	-356(%rbp), %edx
	imull	$5, -332(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %r11
	shlq	$2, %r11
	addq	%r11, %r10
	movq	-328(%rbp), %r11
	movl	-356(%rbp), %edx
	imull	$6, -332(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %rbx
	shlq	$2, %rbx
	addq	%rbx, %r11
	movq	-328(%rbp), %rbx
	movl	-356(%rbp), %edx
	imull	$7, -332(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %r14
	shlq	$2, %r14
	addq	%r14, %rbx
	movq	%rax, %rdi
	movq	%rsi, -440(%rbp)                ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-440(%rbp), %rdx                ## 8-byte Reload
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	%rbx, 8(%rsp)
	callq	_stbiw__jpg_DCT
## %bb.7:                               ##   in Loop: Header=BB134_5 Depth=1
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	LBB134_5
LBB134_8:
	movl	$0, -384(%rbp)
	movl	$0, -364(%rbp)
LBB134_9:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB134_11 Depth 2
	cmpl	$8, -384(%rbp)
	jge	LBB134_19
## %bb.10:                              ##   in Loop: Header=BB134_9 Depth=1
	movl	$0, -380(%rbp)
LBB134_11:                              ##   Parent Loop BB134_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$8, -380(%rbp)
	jge	LBB134_17
## %bb.12:                              ##   in Loop: Header=BB134_11 Depth=2
	movl	-384(%rbp), %eax
	imull	-332(%rbp), %eax
	addl	-380(%rbp), %eax
	movl	%eax, -360(%rbp)
	movq	-328(%rbp), %rcx
	movslq	-360(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-344(%rbp), %rcx
	movslq	-364(%rbp), %rdx
	mulss	(%rcx,%rdx,4), %xmm0
	movss	%xmm0, -388(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	-388(%rbp), %xmm0
	jbe	LBB134_14
## %bb.13:                              ##   in Loop: Header=BB134_11 Depth=2
	movss	LCPI134_0(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movss	-388(%rbp), %xmm1               ## xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -444(%rbp)               ## 4-byte Spill
	jmp	LBB134_15
LBB134_14:                              ##   in Loop: Header=BB134_11 Depth=2
	movss	LCPI134_0(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	addss	-388(%rbp), %xmm0
	movss	%xmm0, -444(%rbp)               ## 4-byte Spill
LBB134_15:                              ##   in Loop: Header=BB134_11 Depth=2
	movss	-444(%rbp), %xmm0               ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	movslq	-364(%rbp), %rcx
	leaq	_stbiw__jpg_ZigZag(%rip), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movl	%eax, -288(%rbp,%rcx,4)
## %bb.16:                              ##   in Loop: Header=BB134_11 Depth=2
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movl	-364(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -364(%rbp)
	jmp	LBB134_11
LBB134_17:                              ##   in Loop: Header=BB134_9 Depth=1
	jmp	LBB134_18
LBB134_18:                              ##   in Loop: Header=BB134_9 Depth=1
	movl	-384(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -384(%rbp)
	jmp	LBB134_9
LBB134_19:
	movl	-288(%rbp), %eax
	subl	16(%rbp), %eax
	movl	%eax, -372(%rbp)
	cmpl	$0, -372(%rbp)
	jne	LBB134_21
## %bb.20:
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	movq	24(%rbp), %rcx
	callq	_stbiw__jpg_writeBits
	jmp	LBB134_22
LBB134_21:
	leaq	-392(%rbp), %rsi
	movl	-372(%rbp), %edi
	callq	_stbiw__jpg_calcBits
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	movq	24(%rbp), %rax
	movzwl	-390(%rbp), %ecx
	movl	%ecx, %r8d
	shlq	$2, %r8
	addq	%r8, %rax
	movq	%rax, %rcx
	callq	_stbiw__jpg_writeBits
	leaq	-392(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	callq	_stbiw__jpg_writeBits
LBB134_22:
	movl	$63, -376(%rbp)
LBB134_23:                              ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -376(%rbp)
	movb	%al, -445(%rbp)                 ## 1-byte Spill
	jle	LBB134_25
## %bb.24:                              ##   in Loop: Header=BB134_23 Depth=1
	movslq	-376(%rbp), %rax
	cmpl	$0, -288(%rbp,%rax,4)
	sete	%cl
	movb	%cl, -445(%rbp)                 ## 1-byte Spill
LBB134_25:                              ##   in Loop: Header=BB134_23 Depth=1
	movb	-445(%rbp), %al                 ## 1-byte Reload
	testb	$1, %al
	jne	LBB134_26
	jmp	LBB134_28
LBB134_26:                              ##   in Loop: Header=BB134_23 Depth=1
	jmp	LBB134_27
LBB134_27:                              ##   in Loop: Header=BB134_23 Depth=1
	movl	-376(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -376(%rbp)
	jmp	LBB134_23
LBB134_28:
	cmpl	$0, -376(%rbp)
	jne	LBB134_30
## %bb.29:
	leaq	-348(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	callq	_stbiw__jpg_writeBits
	movl	-288(%rbp), %eax
	movl	%eax, -292(%rbp)
	jmp	LBB134_49
LBB134_30:
	movl	$1, -360(%rbp)
LBB134_31:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB134_33 Depth 2
                                        ##     Child Loop BB134_40 Depth 2
	movl	-360(%rbp), %eax
	cmpl	-376(%rbp), %eax
	jg	LBB134_46
## %bb.32:                              ##   in Loop: Header=BB134_31 Depth=1
	movl	-360(%rbp), %eax
	movl	%eax, -396(%rbp)
LBB134_33:                              ##   Parent Loop BB134_31 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movslq	-360(%rbp), %rcx
	cmpl	$0, -288(%rbp,%rcx,4)
	movb	%al, -446(%rbp)                 ## 1-byte Spill
	jne	LBB134_35
## %bb.34:                              ##   in Loop: Header=BB134_33 Depth=2
	movl	-360(%rbp), %eax
	cmpl	-376(%rbp), %eax
	setle	%cl
	movb	%cl, -446(%rbp)                 ## 1-byte Spill
LBB134_35:                              ##   in Loop: Header=BB134_33 Depth=2
	movb	-446(%rbp), %al                 ## 1-byte Reload
	testb	$1, %al
	jne	LBB134_36
	jmp	LBB134_38
LBB134_36:                              ##   in Loop: Header=BB134_33 Depth=2
	jmp	LBB134_37
LBB134_37:                              ##   in Loop: Header=BB134_33 Depth=2
	movl	-360(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -360(%rbp)
	jmp	LBB134_33
LBB134_38:                              ##   in Loop: Header=BB134_31 Depth=1
	movl	-360(%rbp), %eax
	subl	-396(%rbp), %eax
	movl	%eax, -400(%rbp)
	cmpl	$16, -400(%rbp)
	jl	LBB134_44
## %bb.39:                              ##   in Loop: Header=BB134_31 Depth=1
	movl	-400(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -408(%rbp)
	movl	$1, -412(%rbp)
LBB134_40:                              ##   Parent Loop BB134_31 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-412(%rbp), %eax
	cmpl	-408(%rbp), %eax
	jg	LBB134_43
## %bb.41:                              ##   in Loop: Header=BB134_40 Depth=2
	leaq	-352(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	callq	_stbiw__jpg_writeBits
## %bb.42:                              ##   in Loop: Header=BB134_40 Depth=2
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	LBB134_40
LBB134_43:                              ##   in Loop: Header=BB134_31 Depth=1
	movl	-400(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -400(%rbp)
LBB134_44:                              ##   in Loop: Header=BB134_31 Depth=1
	leaq	-404(%rbp), %rsi
	movslq	-360(%rbp), %rax
	movl	-288(%rbp,%rax,4), %edi
	callq	_stbiw__jpg_calcBits
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	-400(%rbp), %ecx
	shll	$4, %ecx
	movzwl	-402(%rbp), %r8d
	addl	%r8d, %ecx
	movslq	%ecx, %r9
	shlq	$2, %r9
	addq	%r9, %rax
	movq	%rax, %rcx
	callq	_stbiw__jpg_writeBits
	leaq	-404(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	callq	_stbiw__jpg_writeBits
## %bb.45:                              ##   in Loop: Header=BB134_31 Depth=1
	movl	-360(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -360(%rbp)
	jmp	LBB134_31
LBB134_46:
	cmpl	$63, -376(%rbp)
	je	LBB134_48
## %bb.47:
	leaq	-348(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdx
	callq	_stbiw__jpg_writeBits
LBB134_48:
	movl	-288(%rbp), %eax
	movl	%eax, -292(%rbp)
LBB134_49:
	movl	-292(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -452(%rbp)                ## 4-byte Spill
	jne	LBB134_51
## %bb.50:
	movl	-452(%rbp), %eax                ## 4-byte Reload
	addq	$464, %rsp                      ## imm = 0x1D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB134_51:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbiw__jpg_writeBits
_stbiw__jpg_writeBits:                  ## @stbiw__jpg_writeBits
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	movl	%r8d, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %r8d
	movl	%r8d, -40(%rbp)
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %r8d
	addl	-40(%rbp), %r8d
	movl	%r8d, -40(%rbp)
	movq	-32(%rbp), %rax
	movzwl	(%rax), %r8d
	movl	$24, %r9d
	subl	-40(%rbp), %r9d
	movl	%r9d, %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %r8d
	orl	-36(%rbp), %r8d
	movl	%r8d, -36(%rbp)
LBB135_1:                               ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -40(%rbp)
	jl	LBB135_5
## %bb.2:                               ##   in Loop: Header=BB135_1 Depth=1
	movl	-36(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -41(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	-41(%rbp), %esi
	callq	_stbiw__putc
	movzbl	-41(%rbp), %ecx
	cmpl	$255, %ecx
	jne	LBB135_4
## %bb.3:                               ##   in Loop: Header=BB135_1 Depth=1
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	_stbiw__putc
LBB135_4:                               ##   in Loop: Header=BB135_1 Depth=1
	movl	-36(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB135_1
LBB135_5:
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function stbiw__jpg_DCT
LCPI136_0:
	.long	0x3f3504f3                      ## float 0.707106769
LCPI136_1:
	.long	0x3fa73d75                      ## float 1.30656302
LCPI136_2:
	.long	0x3f0a8bd4                      ## float 0.541196108
LCPI136_3:
	.long	0x3ec3ef15                      ## float 0.382683426
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_stbiw__jpg_DCT:                        ## @stbiw__jpg_DCT
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movss	LCPI136_0(%rip), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI136_1(%rip), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI136_2(%rip), %xmm2          ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI136_3(%rip), %xmm3          ## xmm3 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -52(%rbp)
	movq	-16(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -56(%rbp)
	movq	-24(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -60(%rbp)
	movq	-32(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -64(%rbp)
	movq	-40(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -68(%rbp)
	movq	-48(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -72(%rbp)
	movq	16(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -76(%rbp)
	movq	24(%rbp), %rcx
	movss	(%rcx), %xmm4                   ## xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, -80(%rbp)
	movss	-52(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	addss	-80(%rbp), %xmm4
	movss	%xmm4, -112(%rbp)
	movss	-52(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	subss	-80(%rbp), %xmm4
	movss	%xmm4, -116(%rbp)
	movss	-56(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	addss	-76(%rbp), %xmm4
	movss	%xmm4, -120(%rbp)
	movss	-56(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	subss	-76(%rbp), %xmm4
	movss	%xmm4, -124(%rbp)
	movss	-60(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	addss	-72(%rbp), %xmm4
	movss	%xmm4, -128(%rbp)
	movss	-60(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	subss	-72(%rbp), %xmm4
	movss	%xmm4, -132(%rbp)
	movss	-64(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	addss	-68(%rbp), %xmm4
	movss	%xmm4, -136(%rbp)
	movss	-64(%rbp), %xmm4                ## xmm4 = mem[0],zero,zero,zero
	subss	-68(%rbp), %xmm4
	movss	%xmm4, -140(%rbp)
	movss	-112(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm4
	movss	%xmm4, -144(%rbp)
	movss	-112(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	subss	-136(%rbp), %xmm4
	movss	%xmm4, -148(%rbp)
	movss	-120(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-128(%rbp), %xmm4
	movss	%xmm4, -152(%rbp)
	movss	-120(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	subss	-128(%rbp), %xmm4
	movss	%xmm4, -156(%rbp)
	movss	-144(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-152(%rbp), %xmm4
	movss	%xmm4, -52(%rbp)
	movss	-144(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	subss	-152(%rbp), %xmm4
	movss	%xmm4, -68(%rbp)
	movss	-156(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-148(%rbp), %xmm4
	mulss	%xmm0, %xmm4
	movss	%xmm4, -84(%rbp)
	movss	-148(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm4
	movss	%xmm4, -60(%rbp)
	movss	-148(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	subss	-84(%rbp), %xmm4
	movss	%xmm4, -76(%rbp)
	movss	-140(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm4
	movss	%xmm4, -144(%rbp)
	movss	-132(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-124(%rbp), %xmm4
	movss	%xmm4, -152(%rbp)
	movss	-124(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	addss	-116(%rbp), %xmm4
	movss	%xmm4, -156(%rbp)
	movss	-144(%rbp), %xmm4               ## xmm4 = mem[0],zero,zero,zero
	subss	-156(%rbp), %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, -100(%rbp)
	mulss	-144(%rbp), %xmm2
	addss	-100(%rbp), %xmm2
	movss	%xmm2, -88(%rbp)
	mulss	-156(%rbp), %xmm1
	addss	-100(%rbp), %xmm1
	movss	%xmm1, -96(%rbp)
	mulss	-152(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-116(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	addss	-92(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-116(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	subss	-92(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-108(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movss	%xmm0, (%rcx)
	movss	-108(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	subss	-88(%rbp), %xmm0
	movq	-32(%rbp), %rcx
	movss	%xmm0, (%rcx)
	movss	-104(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	addss	-96(%rbp), %xmm0
	movq	-16(%rbp), %rcx
	movss	%xmm0, (%rcx)
	movss	-104(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	subss	-96(%rbp), %xmm0
	movq	24(%rbp), %rcx
	movss	%xmm0, (%rcx)
	movss	-52(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movss	%xmm0, (%rcx)
	movss	-60(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rcx
	movss	%xmm0, (%rcx)
	movss	-68(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rcx
	movss	%xmm0, (%rcx)
	movss	-76(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	16(%rbp), %rcx
	movss	%xmm0, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stbiw__jpg_calcBits
_stbiw__jpg_calcBits:                   ## @stbiw__jpg_calcBits
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jge	LBB137_2
## %bb.1:
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 ## 4-byte Spill
	jmp	LBB137_3
LBB137_2:
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 ## 4-byte Spill
LBB137_3:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jge	LBB137_5
## %bb.4:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)                 ## 4-byte Spill
	jmp	LBB137_6
LBB137_5:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)                 ## 4-byte Spill
LBB137_6:
	movl	-28(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rcx
	movw	$1, 2(%rcx)
LBB137_7:                               ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	je	LBB137_9
## %bb.8:                               ##   in Loop: Header=BB137_7 Depth=1
	movq	-16(%rbp), %rax
	movw	2(%rax), %cx
	addw	$1, %cx
	movw	%cx, 2(%rax)
	jmp	LBB137_7
LBB137_9:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	2(%rcx), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	subl	$1, %edx
	andl	%edx, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movq	-16(%rbp), %rsi
	movw	%ax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.tbss _stbi__g_failure_reason$tlv$init, 8, 3 ## @stbi__g_failure_reason

	.section	__DATA,__thread_vars,thread_local_variables
_stbi__g_failure_reason:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	_stbi__g_failure_reason$tlv$init

.zerofill __DATA,__bss,_stbi__vertically_flip_on_load_global,4,2 ## @stbi__vertically_flip_on_load_global
.tbss _stbi__vertically_flip_on_load_local$tlv$init, 4, 2 ## @stbi__vertically_flip_on_load_local

_stbi__vertically_flip_on_load_local:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	_stbi__vertically_flip_on_load_local$tlv$init

.tbss _stbi__vertically_flip_on_load_set$tlv$init, 4, 2 ## @stbi__vertically_flip_on_load_set

_stbi__vertically_flip_on_load_set:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	_stbi__vertically_flip_on_load_set$tlv$init

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"rb"

L_.str.1:                               ## @.str.1
	.asciz	"can't fopen"

	.section	__DATA,__data
	.p2align	2                               ## @stbi__l2h_gamma
_stbi__l2h_gamma:
	.long	0x400ccccd                      ## float 2.20000005

	.p2align	2                               ## @stbi__l2h_scale
_stbi__l2h_scale:
	.long	0x3f800000                      ## float 1

	.p2align	2                               ## @stbi__h2l_gamma_i
_stbi__h2l_gamma_i:
	.long	0x3ee8ba2e                      ## float 0.454545438

	.p2align	2                               ## @stbi__h2l_scale_i
_stbi__h2l_scale_i:
	.long	0x3f800000                      ## float 1

	.globl	_stbi_write_png_compression_level ## @stbi_write_png_compression_level
	.p2align	2
_stbi_write_png_compression_level:
	.long	8                               ## 0x8

	.globl	_stbi_write_tga_with_rle        ## @stbi_write_tga_with_rle
	.p2align	2
_stbi_write_tga_with_rle:
	.long	1                               ## 0x1

	.globl	_stbi_write_force_png_filter    ## @stbi_write_force_png_filter
	.p2align	2
_stbi_write_force_png_filter:
	.long	4294967295                      ## 0xffffffff

.zerofill __DATA,__bss,_stbi__flip_vertically_on_write,4,2 ## @stbi__flip_vertically_on_write
	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"bird.jpg"

L_.str.3:                               ## @.str.3
	.asciz	"Error, no image found.\n"

L_.str.4:                               ## @.str.4
	.asciz	"Loaded rgb image. \n"

L_.str.5:                               ## @.str.5
	.asciz	"unable to allocate space for new image"

L_.str.6:                               ## @.str.6
	.asciz	"Converted rgb image to YCbCr formate. \n"

L_.str.7:                               ## @.str.7
	.asciz	"test_ycbcr.jpg"

L_.str.8:                               ## @.str.8
	.asciz	"Wrote YCbCr image to file test_ycbcr.jpg \n"

L_.str.9:                               ## @.str.9
	.asciz	"Converted YCbCr image back to RGB formate. \n"

L_.str.10:                              ## @.str.10
	.asciz	"back_to_rgbQ.jpg"

L_.str.11:                              ## @.str.11
	.asciz	"Wrote new RGB image to file back_to_rgbQ.jpg \n"

	.section	__DATA,__data
	.p2align	3                               ## @stbi__stdio_callbacks
_stbi__stdio_callbacks:
	.quad	_stbi__stdio_read
	.quad	_stbi__stdio_skip
	.quad	_stbi__stdio_eof

	.section	__TEXT,__cstring,cstring_literals
L___func__.stbi__load_and_postprocess_8bit: ## @__func__.stbi__load_and_postprocess_8bit
	.asciz	"stbi__load_and_postprocess_8bit"

L_.str.12:                              ## @.str.12
	.asciz	"./stb_image/stb_image.h"

L_.str.13:                              ## @.str.13
	.asciz	"ri.bits_per_channel == 8 || ri.bits_per_channel == 16"

L_.str.14:                              ## @.str.14
	.asciz	"unknown image type"

L_.str.15:                              ## @.str.15
	.asciz	"outofmem"

L_.str.16:                              ## @.str.16
	.asciz	"no SOI"

L_.str.17:                              ## @.str.17
	.asciz	"no SOF"

L_.str.18:                              ## @.str.18
	.asciz	"expected marker"

L_.str.19:                              ## @.str.19
	.asciz	"bad DRI len"

L_.str.20:                              ## @.str.20
	.asciz	"bad DQT type"

L_.str.21:                              ## @.str.21
	.asciz	"bad DQT table"

	.section	__TEXT,__const
	.p2align	4                               ## @stbi__jpeg_dezigzag
_stbi__jpeg_dezigzag:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>????????????????"

	.section	__TEXT,__cstring,cstring_literals
L_.str.22:                              ## @.str.22
	.asciz	"bad DHT header"

L_.str.23:                              ## @.str.23
	.asciz	"bad COM len"

L_.str.24:                              ## @.str.24
	.asciz	"bad APP len"

	.section	__TEXT,__const
_stbi__process_marker.tag:              ## @stbi__process_marker.tag
	.asciz	"JFIF"

_stbi__process_marker.tag.25:           ## @stbi__process_marker.tag.25
	.asciz	"Adobe"

	.section	__TEXT,__cstring,cstring_literals
L_.str.26:                              ## @.str.26
	.asciz	"unknown marker"

L_.str.27:                              ## @.str.27
	.asciz	"bad code lengths"

L_.str.28:                              ## @.str.28
	.asciz	"bad SOF len"

L_.str.29:                              ## @.str.29
	.asciz	"only 8-bit"

L_.str.30:                              ## @.str.30
	.asciz	"no header height"

L_.str.31:                              ## @.str.31
	.asciz	"0 width"

L_.str.32:                              ## @.str.32
	.asciz	"too large"

L_.str.33:                              ## @.str.33
	.asciz	"bad component count"

	.section	__TEXT,__const
_stbi__process_frame_header.rgb:        ## @stbi__process_frame_header.rgb
	.ascii	"RGB"

	.section	__TEXT,__cstring,cstring_literals
L_.str.34:                              ## @.str.34
	.asciz	"bad H"

L_.str.35:                              ## @.str.35
	.asciz	"bad V"

L_.str.36:                              ## @.str.36
	.asciz	"bad TQ"

L_.str.37:                              ## @.str.37
	.asciz	"bad req_comp"

L_.str.38:                              ## @.str.38
	.asciz	"bad DNL len"

L_.str.39:                              ## @.str.39
	.asciz	"bad DNL height"

L_.str.40:                              ## @.str.40
	.asciz	"bad SOS component count"

L_.str.41:                              ## @.str.41
	.asciz	"bad SOS len"

L_.str.42:                              ## @.str.42
	.asciz	"bad DC huff"

L_.str.43:                              ## @.str.43
	.asciz	"bad AC huff"

L_.str.44:                              ## @.str.44
	.asciz	"bad SOS"

L_.str.45:                              ## @.str.45
	.asciz	"bad huffman code"

	.section	__TEXT,__const
	.p2align	4                               ## @stbi__bmask
_stbi__bmask:
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.long	3                               ## 0x3
	.long	7                               ## 0x7
	.long	15                              ## 0xf
	.long	31                              ## 0x1f
	.long	63                              ## 0x3f
	.long	127                             ## 0x7f
	.long	255                             ## 0xff
	.long	511                             ## 0x1ff
	.long	1023                            ## 0x3ff
	.long	2047                            ## 0x7ff
	.long	4095                            ## 0xfff
	.long	8191                            ## 0x1fff
	.long	16383                           ## 0x3fff
	.long	32767                           ## 0x7fff
	.long	65535                           ## 0xffff

	.section	__TEXT,__cstring,cstring_literals
L___func__.stbi__jpeg_huff_decode:      ## @__func__.stbi__jpeg_huff_decode
	.asciz	"stbi__jpeg_huff_decode"

L_.str.46:                              ## @.str.46
	.asciz	"(((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]"

	.section	__TEXT,__const
	.p2align	4                               ## @stbi__jbias
_stbi__jbias:
	.long	0                               ## 0x0
	.long	4294967295                      ## 0xffffffff
	.long	4294967293                      ## 0xfffffffd
	.long	4294967289                      ## 0xfffffff9
	.long	4294967281                      ## 0xfffffff1
	.long	4294967265                      ## 0xffffffe1
	.long	4294967233                      ## 0xffffffc1
	.long	4294967169                      ## 0xffffff81
	.long	4294967041                      ## 0xffffff01
	.long	4294966785                      ## 0xfffffe01
	.long	4294966273                      ## 0xfffffc01
	.long	4294965249                      ## 0xfffff801
	.long	4294963201                      ## 0xfffff001
	.long	4294959105                      ## 0xffffe001
	.long	4294950913                      ## 0xffffc001
	.long	4294934529                      ## 0xffff8001

	.section	__TEXT,__cstring,cstring_literals
L_.str.47:                              ## @.str.47
	.asciz	"can't merge dc and ac"

L___func__.stbi__load_and_postprocess_16bit: ## @__func__.stbi__load_and_postprocess_16bit
	.asciz	"stbi__load_and_postprocess_16bit"

L_.str.48:                              ## @.str.48
	.asciz	"#?RADIANCE"

L_.str.49:                              ## @.str.49
	.asciz	"#?RGBE"

L_.str.50:                              ## @.str.50
	.asciz	"not HDR"

L_.str.51:                              ## @.str.51
	.asciz	"FORMAT=32-bit_rle_rgbe"

L_.str.52:                              ## @.str.52
	.asciz	"unsupported format"

L_.str.53:                              ## @.str.53
	.asciz	"-Y "

L_.str.54:                              ## @.str.54
	.asciz	"unsupported data layout"

L_.str.55:                              ## @.str.55
	.asciz	"+X "

L_.str.56:                              ## @.str.56
	.asciz	"invalid decoded scanline length"

L_.str.57:                              ## @.str.57
	.asciz	"corrupt"

L_.str.58:                              ## @.str.58
	.asciz	"#?RADIANCE\n"

L_.str.59:                              ## @.str.59
	.asciz	"#?RGBE\n"

	.p2align	4                               ## @__const.stbi_write_hdr_core.header
L___const.stbi_write_hdr_core.header:
	.asciz	"#?RADIANCE\n# Written by stb_image_write.h\nFORMAT=32-bit_rle_rgbe\n"

L_.str.60:                              ## @.str.60
	.asciz	"EXPOSURE=          1.0000000000000\n\n-Y %d +X %d\n"

	.section	__TEXT,__literal4,4byte_literals
L___const.stbiw__write_hdr_scanline.scanlineheader: ## @__const.stbiw__write_hdr_scanline.scanlineheader
	.asciz	"\002\002\000"

	.section	__TEXT,__cstring,cstring_literals
L___func__.stbiw__write_dump_data:      ## @__func__.stbiw__write_dump_data
	.asciz	"stbiw__write_dump_data"

L_.str.61:                              ## @.str.61
	.asciz	"./stb_image/stb_image_write.h"

L_.str.62:                              ## @.str.62
	.asciz	"length <= 128"

L___func__.stbiw__write_run_data:       ## @__func__.stbiw__write_run_data
	.asciz	"stbiw__write_run_data"

L_.str.63:                              ## @.str.63
	.asciz	"length+128 <= 255"

L_.str.64:                              ## @.str.64
	.asciz	"wb"

	.section	__TEXT,__const
	.p2align	4                               ## @stbi_write_jpg_core.std_dc_luminance_nrcodes
_stbi_write_jpg_core.std_dc_luminance_nrcodes:
	.asciz	"\000\000\001\005\001\001\001\001\001\001\000\000\000\000\000\000"

_stbi_write_jpg_core.std_dc_luminance_values: ## @stbi_write_jpg_core.std_dc_luminance_values
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013"

	.p2align	4                               ## @stbi_write_jpg_core.std_ac_luminance_nrcodes
_stbi_write_jpg_core.std_ac_luminance_nrcodes:
	.ascii	"\000\000\002\001\003\003\002\004\003\005\005\004\004\000\000\001}"

	.p2align	4                               ## @stbi_write_jpg_core.std_ac_luminance_values
_stbi_write_jpg_core.std_ac_luminance_values:
	.ascii	"\001\002\003\000\004\021\005\022!1A\006\023Qa\007\"q\0242\201\221\241\b#B\261\301\025R\321\360$3br\202\t\n\026\027\030\031\032%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\341\342\343\344\345\346\347\350\351\352\361\362\363\364\365\366\367\370\371\372"

	.p2align	4                               ## @stbi_write_jpg_core.std_dc_chrominance_nrcodes
_stbi_write_jpg_core.std_dc_chrominance_nrcodes:
	.asciz	"\000\000\003\001\001\001\001\001\001\001\001\001\000\000\000\000"

_stbi_write_jpg_core.std_dc_chrominance_values: ## @stbi_write_jpg_core.std_dc_chrominance_values
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013"

	.p2align	4                               ## @stbi_write_jpg_core.std_ac_chrominance_nrcodes
_stbi_write_jpg_core.std_ac_chrominance_nrcodes:
	.ascii	"\000\000\002\001\002\004\004\003\004\007\005\004\004\000\001\002w"

	.p2align	4                               ## @stbi_write_jpg_core.std_ac_chrominance_values
_stbi_write_jpg_core.std_ac_chrominance_values:
	.ascii	"\000\001\002\003\021\004\005!1\006\022AQ\007aq\023\"2\201\b\024B\221\241\261\301\t#3R\360\025br\321\n\026$4\341%\361\027\030\031\032&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\202\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\342\343\344\345\346\347\350\351\352\362\363\364\365\366\367\370\371\372"

	.p2align	4                               ## @stbi_write_jpg_core.YDC_HT
_stbi_write_jpg_core.YDC_HT:
	.short	0                               ## 0x0
	.short	2                               ## 0x2
	.short	2                               ## 0x2
	.short	3                               ## 0x3
	.short	3                               ## 0x3
	.short	3                               ## 0x3
	.short	4                               ## 0x4
	.short	3                               ## 0x3
	.short	5                               ## 0x5
	.short	3                               ## 0x3
	.short	6                               ## 0x6
	.short	3                               ## 0x3
	.short	14                              ## 0xe
	.short	4                               ## 0x4
	.short	30                              ## 0x1e
	.short	5                               ## 0x5
	.short	62                              ## 0x3e
	.short	6                               ## 0x6
	.short	126                             ## 0x7e
	.short	7                               ## 0x7
	.short	254                             ## 0xfe
	.short	8                               ## 0x8
	.short	510                             ## 0x1fe
	.short	9                               ## 0x9
	.space	976

	.p2align	4                               ## @stbi_write_jpg_core.UVDC_HT
_stbi_write_jpg_core.UVDC_HT:
	.short	0                               ## 0x0
	.short	2                               ## 0x2
	.short	1                               ## 0x1
	.short	2                               ## 0x2
	.short	2                               ## 0x2
	.short	2                               ## 0x2
	.short	6                               ## 0x6
	.short	3                               ## 0x3
	.short	14                              ## 0xe
	.short	4                               ## 0x4
	.short	30                              ## 0x1e
	.short	5                               ## 0x5
	.short	62                              ## 0x3e
	.short	6                               ## 0x6
	.short	126                             ## 0x7e
	.short	7                               ## 0x7
	.short	254                             ## 0xfe
	.short	8                               ## 0x8
	.short	510                             ## 0x1fe
	.short	9                               ## 0x9
	.short	1022                            ## 0x3fe
	.short	10                              ## 0xa
	.short	2046                            ## 0x7fe
	.short	11                              ## 0xb
	.space	976

	.p2align	4                               ## @stbi_write_jpg_core.YAC_HT
_stbi_write_jpg_core.YAC_HT:
	.short	10                              ## 0xa
	.short	4                               ## 0x4
	.short	0                               ## 0x0
	.short	2                               ## 0x2
	.short	1                               ## 0x1
	.short	2                               ## 0x2
	.short	4                               ## 0x4
	.short	3                               ## 0x3
	.short	11                              ## 0xb
	.short	4                               ## 0x4
	.short	26                              ## 0x1a
	.short	5                               ## 0x5
	.short	120                             ## 0x78
	.short	7                               ## 0x7
	.short	248                             ## 0xf8
	.short	8                               ## 0x8
	.short	1014                            ## 0x3f6
	.short	10                              ## 0xa
	.short	65410                           ## 0xff82
	.short	16                              ## 0x10
	.short	65411                           ## 0xff83
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	12                              ## 0xc
	.short	4                               ## 0x4
	.short	27                              ## 0x1b
	.short	5                               ## 0x5
	.short	121                             ## 0x79
	.short	7                               ## 0x7
	.short	502                             ## 0x1f6
	.short	9                               ## 0x9
	.short	2038                            ## 0x7f6
	.short	11                              ## 0xb
	.short	65412                           ## 0xff84
	.short	16                              ## 0x10
	.short	65413                           ## 0xff85
	.short	16                              ## 0x10
	.short	65414                           ## 0xff86
	.short	16                              ## 0x10
	.short	65415                           ## 0xff87
	.short	16                              ## 0x10
	.short	65416                           ## 0xff88
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	28                              ## 0x1c
	.short	5                               ## 0x5
	.short	249                             ## 0xf9
	.short	8                               ## 0x8
	.short	1015                            ## 0x3f7
	.short	10                              ## 0xa
	.short	4084                            ## 0xff4
	.short	12                              ## 0xc
	.short	65417                           ## 0xff89
	.short	16                              ## 0x10
	.short	65418                           ## 0xff8a
	.short	16                              ## 0x10
	.short	65419                           ## 0xff8b
	.short	16                              ## 0x10
	.short	65420                           ## 0xff8c
	.short	16                              ## 0x10
	.short	65421                           ## 0xff8d
	.short	16                              ## 0x10
	.short	65422                           ## 0xff8e
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	58                              ## 0x3a
	.short	6                               ## 0x6
	.short	503                             ## 0x1f7
	.short	9                               ## 0x9
	.short	4085                            ## 0xff5
	.short	12                              ## 0xc
	.short	65423                           ## 0xff8f
	.short	16                              ## 0x10
	.short	65424                           ## 0xff90
	.short	16                              ## 0x10
	.short	65425                           ## 0xff91
	.short	16                              ## 0x10
	.short	65426                           ## 0xff92
	.short	16                              ## 0x10
	.short	65427                           ## 0xff93
	.short	16                              ## 0x10
	.short	65428                           ## 0xff94
	.short	16                              ## 0x10
	.short	65429                           ## 0xff95
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	59                              ## 0x3b
	.short	6                               ## 0x6
	.short	1016                            ## 0x3f8
	.short	10                              ## 0xa
	.short	65430                           ## 0xff96
	.short	16                              ## 0x10
	.short	65431                           ## 0xff97
	.short	16                              ## 0x10
	.short	65432                           ## 0xff98
	.short	16                              ## 0x10
	.short	65433                           ## 0xff99
	.short	16                              ## 0x10
	.short	65434                           ## 0xff9a
	.short	16                              ## 0x10
	.short	65435                           ## 0xff9b
	.short	16                              ## 0x10
	.short	65436                           ## 0xff9c
	.short	16                              ## 0x10
	.short	65437                           ## 0xff9d
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	122                             ## 0x7a
	.short	7                               ## 0x7
	.short	2039                            ## 0x7f7
	.short	11                              ## 0xb
	.short	65438                           ## 0xff9e
	.short	16                              ## 0x10
	.short	65439                           ## 0xff9f
	.short	16                              ## 0x10
	.short	65440                           ## 0xffa0
	.short	16                              ## 0x10
	.short	65441                           ## 0xffa1
	.short	16                              ## 0x10
	.short	65442                           ## 0xffa2
	.short	16                              ## 0x10
	.short	65443                           ## 0xffa3
	.short	16                              ## 0x10
	.short	65444                           ## 0xffa4
	.short	16                              ## 0x10
	.short	65445                           ## 0xffa5
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	123                             ## 0x7b
	.short	7                               ## 0x7
	.short	4086                            ## 0xff6
	.short	12                              ## 0xc
	.short	65446                           ## 0xffa6
	.short	16                              ## 0x10
	.short	65447                           ## 0xffa7
	.short	16                              ## 0x10
	.short	65448                           ## 0xffa8
	.short	16                              ## 0x10
	.short	65449                           ## 0xffa9
	.short	16                              ## 0x10
	.short	65450                           ## 0xffaa
	.short	16                              ## 0x10
	.short	65451                           ## 0xffab
	.short	16                              ## 0x10
	.short	65452                           ## 0xffac
	.short	16                              ## 0x10
	.short	65453                           ## 0xffad
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	250                             ## 0xfa
	.short	8                               ## 0x8
	.short	4087                            ## 0xff7
	.short	12                              ## 0xc
	.short	65454                           ## 0xffae
	.short	16                              ## 0x10
	.short	65455                           ## 0xffaf
	.short	16                              ## 0x10
	.short	65456                           ## 0xffb0
	.short	16                              ## 0x10
	.short	65457                           ## 0xffb1
	.short	16                              ## 0x10
	.short	65458                           ## 0xffb2
	.short	16                              ## 0x10
	.short	65459                           ## 0xffb3
	.short	16                              ## 0x10
	.short	65460                           ## 0xffb4
	.short	16                              ## 0x10
	.short	65461                           ## 0xffb5
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	504                             ## 0x1f8
	.short	9                               ## 0x9
	.short	32704                           ## 0x7fc0
	.short	15                              ## 0xf
	.short	65462                           ## 0xffb6
	.short	16                              ## 0x10
	.short	65463                           ## 0xffb7
	.short	16                              ## 0x10
	.short	65464                           ## 0xffb8
	.short	16                              ## 0x10
	.short	65465                           ## 0xffb9
	.short	16                              ## 0x10
	.short	65466                           ## 0xffba
	.short	16                              ## 0x10
	.short	65467                           ## 0xffbb
	.short	16                              ## 0x10
	.short	65468                           ## 0xffbc
	.short	16                              ## 0x10
	.short	65469                           ## 0xffbd
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	505                             ## 0x1f9
	.short	9                               ## 0x9
	.short	65470                           ## 0xffbe
	.short	16                              ## 0x10
	.short	65471                           ## 0xffbf
	.short	16                              ## 0x10
	.short	65472                           ## 0xffc0
	.short	16                              ## 0x10
	.short	65473                           ## 0xffc1
	.short	16                              ## 0x10
	.short	65474                           ## 0xffc2
	.short	16                              ## 0x10
	.short	65475                           ## 0xffc3
	.short	16                              ## 0x10
	.short	65476                           ## 0xffc4
	.short	16                              ## 0x10
	.short	65477                           ## 0xffc5
	.short	16                              ## 0x10
	.short	65478                           ## 0xffc6
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	506                             ## 0x1fa
	.short	9                               ## 0x9
	.short	65479                           ## 0xffc7
	.short	16                              ## 0x10
	.short	65480                           ## 0xffc8
	.short	16                              ## 0x10
	.short	65481                           ## 0xffc9
	.short	16                              ## 0x10
	.short	65482                           ## 0xffca
	.short	16                              ## 0x10
	.short	65483                           ## 0xffcb
	.short	16                              ## 0x10
	.short	65484                           ## 0xffcc
	.short	16                              ## 0x10
	.short	65485                           ## 0xffcd
	.short	16                              ## 0x10
	.short	65486                           ## 0xffce
	.short	16                              ## 0x10
	.short	65487                           ## 0xffcf
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	1017                            ## 0x3f9
	.short	10                              ## 0xa
	.short	65488                           ## 0xffd0
	.short	16                              ## 0x10
	.short	65489                           ## 0xffd1
	.short	16                              ## 0x10
	.short	65490                           ## 0xffd2
	.short	16                              ## 0x10
	.short	65491                           ## 0xffd3
	.short	16                              ## 0x10
	.short	65492                           ## 0xffd4
	.short	16                              ## 0x10
	.short	65493                           ## 0xffd5
	.short	16                              ## 0x10
	.short	65494                           ## 0xffd6
	.short	16                              ## 0x10
	.short	65495                           ## 0xffd7
	.short	16                              ## 0x10
	.short	65496                           ## 0xffd8
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	1018                            ## 0x3fa
	.short	10                              ## 0xa
	.short	65497                           ## 0xffd9
	.short	16                              ## 0x10
	.short	65498                           ## 0xffda
	.short	16                              ## 0x10
	.short	65499                           ## 0xffdb
	.short	16                              ## 0x10
	.short	65500                           ## 0xffdc
	.short	16                              ## 0x10
	.short	65501                           ## 0xffdd
	.short	16                              ## 0x10
	.short	65502                           ## 0xffde
	.short	16                              ## 0x10
	.short	65503                           ## 0xffdf
	.short	16                              ## 0x10
	.short	65504                           ## 0xffe0
	.short	16                              ## 0x10
	.short	65505                           ## 0xffe1
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	2040                            ## 0x7f8
	.short	11                              ## 0xb
	.short	65506                           ## 0xffe2
	.short	16                              ## 0x10
	.short	65507                           ## 0xffe3
	.short	16                              ## 0x10
	.short	65508                           ## 0xffe4
	.short	16                              ## 0x10
	.short	65509                           ## 0xffe5
	.short	16                              ## 0x10
	.short	65510                           ## 0xffe6
	.short	16                              ## 0x10
	.short	65511                           ## 0xffe7
	.short	16                              ## 0x10
	.short	65512                           ## 0xffe8
	.short	16                              ## 0x10
	.short	65513                           ## 0xffe9
	.short	16                              ## 0x10
	.short	65514                           ## 0xffea
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	65515                           ## 0xffeb
	.short	16                              ## 0x10
	.short	65516                           ## 0xffec
	.short	16                              ## 0x10
	.short	65517                           ## 0xffed
	.short	16                              ## 0x10
	.short	65518                           ## 0xffee
	.short	16                              ## 0x10
	.short	65519                           ## 0xffef
	.short	16                              ## 0x10
	.short	65520                           ## 0xfff0
	.short	16                              ## 0x10
	.short	65521                           ## 0xfff1
	.short	16                              ## 0x10
	.short	65522                           ## 0xfff2
	.short	16                              ## 0x10
	.short	65523                           ## 0xfff3
	.short	16                              ## 0x10
	.short	65524                           ## 0xfff4
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	2041                            ## 0x7f9
	.short	11                              ## 0xb
	.short	65525                           ## 0xfff5
	.short	16                              ## 0x10
	.short	65526                           ## 0xfff6
	.short	16                              ## 0x10
	.short	65527                           ## 0xfff7
	.short	16                              ## 0x10
	.short	65528                           ## 0xfff8
	.short	16                              ## 0x10
	.short	65529                           ## 0xfff9
	.short	16                              ## 0x10
	.short	65530                           ## 0xfffa
	.short	16                              ## 0x10
	.short	65531                           ## 0xfffb
	.short	16                              ## 0x10
	.short	65532                           ## 0xfffc
	.short	16                              ## 0x10
	.short	65533                           ## 0xfffd
	.short	16                              ## 0x10
	.short	65534                           ## 0xfffe
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4

	.p2align	4                               ## @stbi_write_jpg_core.UVAC_HT
_stbi_write_jpg_core.UVAC_HT:
	.short	0                               ## 0x0
	.short	2                               ## 0x2
	.short	1                               ## 0x1
	.short	2                               ## 0x2
	.short	4                               ## 0x4
	.short	3                               ## 0x3
	.short	10                              ## 0xa
	.short	4                               ## 0x4
	.short	24                              ## 0x18
	.short	5                               ## 0x5
	.short	25                              ## 0x19
	.short	5                               ## 0x5
	.short	56                              ## 0x38
	.short	6                               ## 0x6
	.short	120                             ## 0x78
	.short	7                               ## 0x7
	.short	500                             ## 0x1f4
	.short	9                               ## 0x9
	.short	1014                            ## 0x3f6
	.short	10                              ## 0xa
	.short	4084                            ## 0xff4
	.short	12                              ## 0xc
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	11                              ## 0xb
	.short	4                               ## 0x4
	.short	57                              ## 0x39
	.short	6                               ## 0x6
	.short	246                             ## 0xf6
	.short	8                               ## 0x8
	.short	501                             ## 0x1f5
	.short	9                               ## 0x9
	.short	2038                            ## 0x7f6
	.short	11                              ## 0xb
	.short	4085                            ## 0xff5
	.short	12                              ## 0xc
	.short	65416                           ## 0xff88
	.short	16                              ## 0x10
	.short	65417                           ## 0xff89
	.short	16                              ## 0x10
	.short	65418                           ## 0xff8a
	.short	16                              ## 0x10
	.short	65419                           ## 0xff8b
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	26                              ## 0x1a
	.short	5                               ## 0x5
	.short	247                             ## 0xf7
	.short	8                               ## 0x8
	.short	1015                            ## 0x3f7
	.short	10                              ## 0xa
	.short	4086                            ## 0xff6
	.short	12                              ## 0xc
	.short	32706                           ## 0x7fc2
	.short	15                              ## 0xf
	.short	65420                           ## 0xff8c
	.short	16                              ## 0x10
	.short	65421                           ## 0xff8d
	.short	16                              ## 0x10
	.short	65422                           ## 0xff8e
	.short	16                              ## 0x10
	.short	65423                           ## 0xff8f
	.short	16                              ## 0x10
	.short	65424                           ## 0xff90
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	27                              ## 0x1b
	.short	5                               ## 0x5
	.short	248                             ## 0xf8
	.short	8                               ## 0x8
	.short	1016                            ## 0x3f8
	.short	10                              ## 0xa
	.short	4087                            ## 0xff7
	.short	12                              ## 0xc
	.short	65425                           ## 0xff91
	.short	16                              ## 0x10
	.short	65426                           ## 0xff92
	.short	16                              ## 0x10
	.short	65427                           ## 0xff93
	.short	16                              ## 0x10
	.short	65428                           ## 0xff94
	.short	16                              ## 0x10
	.short	65429                           ## 0xff95
	.short	16                              ## 0x10
	.short	65430                           ## 0xff96
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	58                              ## 0x3a
	.short	6                               ## 0x6
	.short	502                             ## 0x1f6
	.short	9                               ## 0x9
	.short	65431                           ## 0xff97
	.short	16                              ## 0x10
	.short	65432                           ## 0xff98
	.short	16                              ## 0x10
	.short	65433                           ## 0xff99
	.short	16                              ## 0x10
	.short	65434                           ## 0xff9a
	.short	16                              ## 0x10
	.short	65435                           ## 0xff9b
	.short	16                              ## 0x10
	.short	65436                           ## 0xff9c
	.short	16                              ## 0x10
	.short	65437                           ## 0xff9d
	.short	16                              ## 0x10
	.short	65438                           ## 0xff9e
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	59                              ## 0x3b
	.short	6                               ## 0x6
	.short	1017                            ## 0x3f9
	.short	10                              ## 0xa
	.short	65439                           ## 0xff9f
	.short	16                              ## 0x10
	.short	65440                           ## 0xffa0
	.short	16                              ## 0x10
	.short	65441                           ## 0xffa1
	.short	16                              ## 0x10
	.short	65442                           ## 0xffa2
	.short	16                              ## 0x10
	.short	65443                           ## 0xffa3
	.short	16                              ## 0x10
	.short	65444                           ## 0xffa4
	.short	16                              ## 0x10
	.short	65445                           ## 0xffa5
	.short	16                              ## 0x10
	.short	65446                           ## 0xffa6
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	121                             ## 0x79
	.short	7                               ## 0x7
	.short	2039                            ## 0x7f7
	.short	11                              ## 0xb
	.short	65447                           ## 0xffa7
	.short	16                              ## 0x10
	.short	65448                           ## 0xffa8
	.short	16                              ## 0x10
	.short	65449                           ## 0xffa9
	.short	16                              ## 0x10
	.short	65450                           ## 0xffaa
	.short	16                              ## 0x10
	.short	65451                           ## 0xffab
	.short	16                              ## 0x10
	.short	65452                           ## 0xffac
	.short	16                              ## 0x10
	.short	65453                           ## 0xffad
	.short	16                              ## 0x10
	.short	65454                           ## 0xffae
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	122                             ## 0x7a
	.short	7                               ## 0x7
	.short	2040                            ## 0x7f8
	.short	11                              ## 0xb
	.short	65455                           ## 0xffaf
	.short	16                              ## 0x10
	.short	65456                           ## 0xffb0
	.short	16                              ## 0x10
	.short	65457                           ## 0xffb1
	.short	16                              ## 0x10
	.short	65458                           ## 0xffb2
	.short	16                              ## 0x10
	.short	65459                           ## 0xffb3
	.short	16                              ## 0x10
	.short	65460                           ## 0xffb4
	.short	16                              ## 0x10
	.short	65461                           ## 0xffb5
	.short	16                              ## 0x10
	.short	65462                           ## 0xffb6
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	249                             ## 0xf9
	.short	8                               ## 0x8
	.short	65463                           ## 0xffb7
	.short	16                              ## 0x10
	.short	65464                           ## 0xffb8
	.short	16                              ## 0x10
	.short	65465                           ## 0xffb9
	.short	16                              ## 0x10
	.short	65466                           ## 0xffba
	.short	16                              ## 0x10
	.short	65467                           ## 0xffbb
	.short	16                              ## 0x10
	.short	65468                           ## 0xffbc
	.short	16                              ## 0x10
	.short	65469                           ## 0xffbd
	.short	16                              ## 0x10
	.short	65470                           ## 0xffbe
	.short	16                              ## 0x10
	.short	65471                           ## 0xffbf
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	503                             ## 0x1f7
	.short	9                               ## 0x9
	.short	65472                           ## 0xffc0
	.short	16                              ## 0x10
	.short	65473                           ## 0xffc1
	.short	16                              ## 0x10
	.short	65474                           ## 0xffc2
	.short	16                              ## 0x10
	.short	65475                           ## 0xffc3
	.short	16                              ## 0x10
	.short	65476                           ## 0xffc4
	.short	16                              ## 0x10
	.short	65477                           ## 0xffc5
	.short	16                              ## 0x10
	.short	65478                           ## 0xffc6
	.short	16                              ## 0x10
	.short	65479                           ## 0xffc7
	.short	16                              ## 0x10
	.short	65480                           ## 0xffc8
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	504                             ## 0x1f8
	.short	9                               ## 0x9
	.short	65481                           ## 0xffc9
	.short	16                              ## 0x10
	.short	65482                           ## 0xffca
	.short	16                              ## 0x10
	.short	65483                           ## 0xffcb
	.short	16                              ## 0x10
	.short	65484                           ## 0xffcc
	.short	16                              ## 0x10
	.short	65485                           ## 0xffcd
	.short	16                              ## 0x10
	.short	65486                           ## 0xffce
	.short	16                              ## 0x10
	.short	65487                           ## 0xffcf
	.short	16                              ## 0x10
	.short	65488                           ## 0xffd0
	.short	16                              ## 0x10
	.short	65489                           ## 0xffd1
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	505                             ## 0x1f9
	.short	9                               ## 0x9
	.short	65490                           ## 0xffd2
	.short	16                              ## 0x10
	.short	65491                           ## 0xffd3
	.short	16                              ## 0x10
	.short	65492                           ## 0xffd4
	.short	16                              ## 0x10
	.short	65493                           ## 0xffd5
	.short	16                              ## 0x10
	.short	65494                           ## 0xffd6
	.short	16                              ## 0x10
	.short	65495                           ## 0xffd7
	.short	16                              ## 0x10
	.short	65496                           ## 0xffd8
	.short	16                              ## 0x10
	.short	65497                           ## 0xffd9
	.short	16                              ## 0x10
	.short	65498                           ## 0xffda
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	506                             ## 0x1fa
	.short	9                               ## 0x9
	.short	65499                           ## 0xffdb
	.short	16                              ## 0x10
	.short	65500                           ## 0xffdc
	.short	16                              ## 0x10
	.short	65501                           ## 0xffdd
	.short	16                              ## 0x10
	.short	65502                           ## 0xffde
	.short	16                              ## 0x10
	.short	65503                           ## 0xffdf
	.short	16                              ## 0x10
	.short	65504                           ## 0xffe0
	.short	16                              ## 0x10
	.short	65505                           ## 0xffe1
	.short	16                              ## 0x10
	.short	65506                           ## 0xffe2
	.short	16                              ## 0x10
	.short	65507                           ## 0xffe3
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	2041                            ## 0x7f9
	.short	11                              ## 0xb
	.short	65508                           ## 0xffe4
	.short	16                              ## 0x10
	.short	65509                           ## 0xffe5
	.short	16                              ## 0x10
	.short	65510                           ## 0xffe6
	.short	16                              ## 0x10
	.short	65511                           ## 0xffe7
	.short	16                              ## 0x10
	.short	65512                           ## 0xffe8
	.short	16                              ## 0x10
	.short	65513                           ## 0xffe9
	.short	16                              ## 0x10
	.short	65514                           ## 0xffea
	.short	16                              ## 0x10
	.short	65515                           ## 0xffeb
	.short	16                              ## 0x10
	.short	65516                           ## 0xffec
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	16352                           ## 0x3fe0
	.short	14                              ## 0xe
	.short	65517                           ## 0xffed
	.short	16                              ## 0x10
	.short	65518                           ## 0xffee
	.short	16                              ## 0x10
	.short	65519                           ## 0xffef
	.short	16                              ## 0x10
	.short	65520                           ## 0xfff0
	.short	16                              ## 0x10
	.short	65521                           ## 0xfff1
	.short	16                              ## 0x10
	.short	65522                           ## 0xfff2
	.short	16                              ## 0x10
	.short	65523                           ## 0xfff3
	.short	16                              ## 0x10
	.short	65524                           ## 0xfff4
	.short	16                              ## 0x10
	.short	65525                           ## 0xfff5
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.short	1018                            ## 0x3fa
	.short	10                              ## 0xa
	.short	32707                           ## 0x7fc3
	.short	15                              ## 0xf
	.short	65526                           ## 0xfff6
	.short	16                              ## 0x10
	.short	65527                           ## 0xfff7
	.short	16                              ## 0x10
	.short	65528                           ## 0xfff8
	.short	16                              ## 0x10
	.short	65529                           ## 0xfff9
	.short	16                              ## 0x10
	.short	65530                           ## 0xfffa
	.short	16                              ## 0x10
	.short	65531                           ## 0xfffb
	.short	16                              ## 0x10
	.short	65532                           ## 0xfffc
	.short	16                              ## 0x10
	.short	65533                           ## 0xfffd
	.short	16                              ## 0x10
	.short	65534                           ## 0xfffe
	.short	16                              ## 0x10
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4

	.p2align	4                               ## @stbi_write_jpg_core.YQT
_stbi_write_jpg_core.YQT:
	.long	16                              ## 0x10
	.long	11                              ## 0xb
	.long	10                              ## 0xa
	.long	16                              ## 0x10
	.long	24                              ## 0x18
	.long	40                              ## 0x28
	.long	51                              ## 0x33
	.long	61                              ## 0x3d
	.long	12                              ## 0xc
	.long	12                              ## 0xc
	.long	14                              ## 0xe
	.long	19                              ## 0x13
	.long	26                              ## 0x1a
	.long	58                              ## 0x3a
	.long	60                              ## 0x3c
	.long	55                              ## 0x37
	.long	14                              ## 0xe
	.long	13                              ## 0xd
	.long	16                              ## 0x10
	.long	24                              ## 0x18
	.long	40                              ## 0x28
	.long	57                              ## 0x39
	.long	69                              ## 0x45
	.long	56                              ## 0x38
	.long	14                              ## 0xe
	.long	17                              ## 0x11
	.long	22                              ## 0x16
	.long	29                              ## 0x1d
	.long	51                              ## 0x33
	.long	87                              ## 0x57
	.long	80                              ## 0x50
	.long	62                              ## 0x3e
	.long	18                              ## 0x12
	.long	22                              ## 0x16
	.long	37                              ## 0x25
	.long	56                              ## 0x38
	.long	68                              ## 0x44
	.long	109                             ## 0x6d
	.long	103                             ## 0x67
	.long	77                              ## 0x4d
	.long	24                              ## 0x18
	.long	35                              ## 0x23
	.long	55                              ## 0x37
	.long	64                              ## 0x40
	.long	81                              ## 0x51
	.long	104                             ## 0x68
	.long	113                             ## 0x71
	.long	92                              ## 0x5c
	.long	49                              ## 0x31
	.long	64                              ## 0x40
	.long	78                              ## 0x4e
	.long	87                              ## 0x57
	.long	103                             ## 0x67
	.long	121                             ## 0x79
	.long	120                             ## 0x78
	.long	101                             ## 0x65
	.long	72                              ## 0x48
	.long	92                              ## 0x5c
	.long	95                              ## 0x5f
	.long	98                              ## 0x62
	.long	112                             ## 0x70
	.long	100                             ## 0x64
	.long	103                             ## 0x67
	.long	99                              ## 0x63

	.p2align	4                               ## @stbi_write_jpg_core.UVQT
_stbi_write_jpg_core.UVQT:
	.long	17                              ## 0x11
	.long	18                              ## 0x12
	.long	24                              ## 0x18
	.long	47                              ## 0x2f
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	18                              ## 0x12
	.long	21                              ## 0x15
	.long	26                              ## 0x1a
	.long	66                              ## 0x42
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	24                              ## 0x18
	.long	26                              ## 0x1a
	.long	56                              ## 0x38
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	47                              ## 0x2f
	.long	66                              ## 0x42
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63
	.long	99                              ## 0x63

	.p2align	4                               ## @stbi_write_jpg_core.aasf
_stbi_write_jpg_core.aasf:
	.long	0x403504f3                      ## float 2.82842708
	.long	0x407b14bf                      ## float 3.92314124
	.long	0x406c835f                      ## float 3.69551826
	.long	0x4054db30                      ## float 3.32587814
	.long	0x403504f3                      ## float 2.82842708
	.long	0x400e39da                      ## float 2.22228098
	.long	0x3fc3ef15                      ## float 1.5307337
	.long	0x3f47c5c2                      ## float 0.780361294

	.p2align	4                               ## @stbiw__jpg_ZigZag
_stbiw__jpg_ZigZag:
	.ascii	"\000\001\005\006\016\017\033\034\002\004\007\r\020\032\035*\003\b\f\021\031\036)+\t\013\022\030\037(,5\n\023\027 '-46\024\026!&.37<\025\"%/28;=#$019:>?"

	.p2align	4                               ## @stbi_write_jpg_core.head0
_stbi_write_jpg_core.head0:
	.asciz	"\377\330\377\340\000\020JFIF\000\001\001\000\000\001\000\001\000\000\377\333\000\204"

_stbi_write_jpg_core.head2:             ## @stbi_write_jpg_core.head2
	.asciz	"\377\332\000\f\003\001\000\002\021\003\021\000?"

	.p2align	1                               ## @stbi_write_jpg_core.fillBits
_stbi_write_jpg_core.fillBits:
	.short	127                             ## 0x7f
	.short	7                               ## 0x7

.subsections_via_symbols
