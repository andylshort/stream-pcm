	.text
	.file	"stream_mpi_pcm.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x405312d000000000              #  76.2939453125
.LCPI0_1:
	.quad	0x3fb312d000000000              #  0.074505805969238281
.LCPI0_2:
	.quad	0x406c9c3800000000              #  228.8818359375
.LCPI0_3:
	.quad	0x3fcc9c3800000000              #  0.22351741790771484
.LCPI0_4:
	.quad	0x3ee0000000000000              #  7.62939453125E-6
.LCPI0_5:
	.quad	0x3e40000000000000              #  7.4505805969238281E-9
.LCPI0_6:
	.quad	0x3ef8000000000000              #  2.288818359375E-5
.LCPI0_7:
	.quad	0x3e58000000000000              #  2.2351741790771484E-8
.LCPI0_8:
	.quad	0x3fdae147ae147ae1              #  0.41999999999999998
.LCPI0_9:
	.quad	0x3ff0000000000000              #  1
.LCPI0_10:
	.quad	0x4000000000000000              #  2
.LCPI0_11:
	.quad	0x3eb0c6f7a0b5ed8d              #  9.9999999999999995E-7
.LCPI0_12:
	.quad	0x412e848000000000              #  1.0E+6
.LCPI0_14:
	.quad	0x476812f9cf7920e3              #  1.0E+36
.LCPI0_17:
	.quad	0x3fbc71c71c71c71c              #  0.1111111111111111
.LCPI0_18:
	.quad	0x406e000000000000              #  240
.LCPI0_19:
	.quad	0xc002d38cdc7cdc48              #  -2.3532960153202431
.LCPI0_20:
	.quad	0x7fffffffffffffff              #  NaN
.LCPI0_21:
	.quad	0xbfef1e32e0ce6186              #  -0.97243636996704264
.LCPI0_22:
	.quad	0xc00a4d55abbaa1ab              #  -3.2877610603647631
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_13:
	.long	1000000                         # 0xf4240
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_15:
	.quad	0                               # 0x0
	.quad	40                              # 0x28
	.quad	80                              # 0x50
	.quad	120                             # 0x78
.LCPI0_16:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_23:
	.quad	0xc002d38cdc7cdc48              #  -2.3532960153202431
	.quad	0xbfef1e32e0ce6186              #  -0.97243636996704264
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$21696, %rsp                    # imm = 0x54C0
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movabsq	$1157738345218809838, %rsi      # imm = 0x10111CE4199D9FEE
	movl	$3, %edi
	callq	__intel_new_feature_proc_init@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 448(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 464(%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	MPI_Init
	movl	%eax, %ebx
	callq	MPI_Wtime
	testl	%ebx, %ebx
	jne	.LBB0_203
# %bb.1:
	leaq	44(%rsp), %rsi
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Comm_size
	leaq	40(%rsp), %rsi
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Comm_rank
	movl	$10000000, %eax                 # imm = 0x989680
	xorl	%edx, %edx
	idivl	44(%rsp)
	movslq	%eax, %rdx
	movq	%rdx, array_elements(%rip)
	movq	$64, array_alignment(%rip)
	shlq	$3, %rdx
	movq	%rdx, array_bytes(%rip)
	movl	$a, %edi
	movl	$64, %esi
	callq	posix_memalign
	testl	%eax, %eax
	jne	.LBB0_2
# %bb.3:
	movq	array_alignment(%rip), %rsi
	movq	array_bytes(%rip), %rdx
	movl	$b, %edi
	callq	posix_memalign
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.5:
	movq	array_alignment(%rip), %rsi
	movq	array_bytes(%rip), %rdx
	movl	$c, %edi
	callq	posix_memalign
	movl	40(%rsp), %esi
	testl	%eax, %eax
	jne	.LBB0_6
# %bb.8:
	testl	%esi, %esi
	je	.LBB0_10
# %bb.9:
	movq	array_elements(%rip), %r15
	testq	%r15, %r15
	jne	.LBB0_12
	jmp	.LBB0_17
	.p2align	6, 0x90
.LBB0_10:
	movl	$.Lstr.61, %edi
	callq	puts@PLT
	movl	$.Lstr.58, %edi
	callq	puts@PLT
	movl	$.Lstr.61, %edi
	callq	puts@PLT
	movl	$.L.str.6, %edi
	movl	$8, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lstr.61, %edi
	callq	puts@PLT
	movl	$.L.str.7, %edi
	movl	$10000000, %esi                 # imm = 0x989680
	xorl	%eax, %eax
	callq	printf
	movl	$2, %r14d
	vmovsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	vmovsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	movl	$.L.str.8, %edi
	movl	%r14d, %eax
	callq	printf
	vmovsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	vmovsd	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero
	movl	$.L.str.9, %edi
	movl	%r14d, %eax
	callq	printf
	movl	44(%rsp), %esi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movq	array_elements(%rip), %r15
	movl	$.L.str.11, %edi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	printf
	vcvtusi2sd	%r15, %xmm2, %xmm1
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	vmulsd	.LCPI0_4(%rip), %xmm1, %xmm0
	vmulsd	.LCPI0_5(%rip), %xmm1, %xmm1
	movl	$.L.str.12, %edi
	movl	%r14d, %eax
	callq	printf
	vmovsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vmulsd	.LCPI0_6(%rip), %xmm1, %xmm0
	vmulsd	.LCPI0_7(%rip), %xmm1, %xmm1
	movl	$.L.str.13, %edi
	movl	%r14d, %eax
	callq	printf
	movl	$.Lstr.61, %edi
	callq	puts@PLT
	movl	$.L.str.14, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lstr.62, %edi
	callq	puts@PLT
	movl	$.Lstr.63, %edi
	callq	puts@PLT
	movl	$1, %eax
	vmovsd	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str.17, %edi
                                        # kill: def $al killed $al killed $eax
	callq	printf
	testq	%r15, %r15
	je	.LBB0_17
.LBB0_12:
	movq	a(%rip), %r14
	movq	b(%rip), %r12
	movq	c(%rip), %rdi
	leaq	-8(%r14,%r15,8), %rax
	cmpq	%r12, %rax
	setae	%r8b
	leaq	-8(%r12,%r15,8), %rcx
	cmpq	%r14, %rcx
	setae	%r9b
	cmpq	%rdi, %rax
	setb	%al
	leaq	-8(%rdi,%r15,8), %rdx
	cmpq	%r14, %rdx
	setb	%sil
	cmpq	%rdi, %rcx
	setb	%cl
	cmpq	%r12, %rdx
	setb	%dl
	testb	%r9b, %r8b
	jne	.LBB0_15
# %bb.13:
	orb	%sil, %al
	je	.LBB0_15
# %bb.14:
	orb	%dl, %cl
	je	.LBB0_15
# %bb.109:
	cmpq	$13, %r15
	jb	.LBB0_121
# %bb.110:
	leaq	(,%r15,8), %rdx
	xorl	%esi, %esi
	callq	__intel_avx_rep_memset@PLT
	movq	%r15, %rbx
	andq	$-4, %rbx
	je	.LBB0_111
# %bb.112:
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	leaq	-1(%rbx), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%r14, 17472(%rsp)
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movl	%r14d, %eax
	andl	$63, %eax
	movq	%rax, 17480(%rsp)
	movq	$0, 17488(%rsp)
	movq	%r12, 13248(%rsp)
	movl	%r12d, %eax
	andl	$63, %eax
	movq	%rax, 13256(%rsp)
	movq	$0, 13264(%rsp)
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB0_113
	.p2align	6, 0x90
.LBB0_117:                              #   in Loop: Header=BB0_113 Depth=1
	addq	$4, %r15
	cmpq	32(%rsp), %r15                  # 8-byte Folded Reload
	jg	.LBB0_118
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rax
	shlq	$5, %rax
	leaq	17496(%rsp), %rcx
	vbroadcastsd	.LCPI0_9(%rip), %ymm0   # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vmovups	%ymm0, (%rcx,%rax)
	incq	%r14
	cmpq	$128, %r14
	jne	.LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_113 Depth=1
	movl	$4096, %esi                     # imm = 0x1000
	leaq	17408(%rsp), %rdi
	xorl	%edx, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	xorl	%r14d, %r14d
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=1
	movq	%r13, %rax
	shlq	$5, %rax
	leaq	13272(%rsp), %rcx
	vbroadcastsd	.LCPI0_10(%rip), %ymm0  # ymm0 = [2.0E+0,2.0E+0,2.0E+0,2.0E+0]
	vmovupd	%ymm0, (%rcx,%rax)
	incq	%r13
	cmpq	$128, %r13
	jne	.LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_113 Depth=1
	movl	$4096, %esi                     # imm = 0x1000
	leaq	13184(%rsp), %rdi
	xorl	%edx, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	xorl	%r13d, %r13d
	jmp	.LBB0_117
	.p2align	6, 0x90
.LBB0_15:
	xorl	%eax, %eax
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	movabsq	$4611686018427387904, %rdx      # imm = 0x4000000000000000
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, (%r14,%rax,8)
	movq	%rdx, (%r12,%rax,8)
	movq	$0, (%rdi,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB0_16
	jmp	.LBB0_17
	.p2align	6, 0x90
.LBB0_121:
	movq	%r15, %rax
	andq	$-4, %rax
	je	.LBB0_122
# %bb.123:
	leaq	-1(%rax), %rcx
	xorl	%edx, %edx
	vbroadcastsd	.LCPI0_9(%rip), %ymm0   # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vbroadcastsd	.LCPI0_10(%rip), %ymm1  # ymm1 = [2.0E+0,2.0E+0,2.0E+0,2.0E+0]
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB0_124:                              # =>This Inner Loop Header: Depth=1
	vmovupd	%ymm0, (%r14,%rdx,8)
	vmovupd	%ymm1, (%r12,%rdx,8)
	vmovdqu	%ymm2, (%rdi,%rdx,8)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jle	.LBB0_124
# %bb.125:
	cmpq	%rax, %r15
	jne	.LBB0_126
	jmp	.LBB0_17
	.p2align	6, 0x90
.LBB0_118:
	shlq	$5, %r13
	leaq	13184(%rsp), %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	shlq	$5, %r14
	leaq	17408(%rsp), %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	callq	__libirc_nontemporal_store@PLT
	sfence
	movq	48(%rsp), %r15                  # 8-byte Reload
	cmpq	%rbx, %r15
	movq	64(%rsp), %r14                  # 8-byte Reload
	jne	.LBB0_119
	jmp	.LBB0_17
	.p2align	6, 0x90
.LBB0_111:
	xorl	%ebx, %ebx
.LBB0_119:
	movabsq	$4607182418800017408, %rax      # imm = 0x3FF0000000000000
	movabsq	$4611686018427387904, %rcx      # imm = 0x4000000000000000
	.p2align	4, 0x90
.LBB0_120:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, (%r14,%rbx,8)
	movq	%rcx, (%r12,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	.LBB0_120
	jmp	.LBB0_17
	.p2align	6, 0x90
.LBB0_122:
	xorl	%eax, %eax
.LBB0_126:
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	movabsq	$4611686018427387904, %rdx      # imm = 0x4000000000000000
	.p2align	4, 0x90
.LBB0_127:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, (%r14,%rax,8)
	movq	%rdx, (%r12,%rax,8)
	movq	$0, (%rdi,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB0_127
.LBB0_17:
	cmpl	$0, 40(%rsp)
	je	.LBB0_19
# %bb.18:
	movq	$0, 32(%rsp)                    # 8-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rbx
	jmp	.LBB0_68
	.p2align	6, 0x90
.LBB0_19:
	movq	$0, 32(%rsp)                    # 8-byte Folded Spill
	movslq	44(%rsp), %rbx
	leaq	(,%rbx,8), %rax
	leaq	(%rax,%rax,2), %r14
	movq	%r14, %rdi
	vzeroupper
	callq	malloc
	testq	%rax, %rax
	jne	.LBB0_21
# %bb.20:
	movl	$.Lstr.56, %edi
	movq	%rax, %rbx
	callq	puts@PLT
	movl	$1140850688, %edi               # imm = 0x44000000
	movl	$2, %esi
	callq	MPI_Abort
	movq	%rbx, %rax
	movslq	44(%rsp), %rbx
	leaq	(,%rbx,8), %rcx
	leaq	(%rcx,%rcx,2), %r14
.LBB0_21:
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	__intel_avx_rep_memset@PLT
	shlq	$6, %rbx
	leaq	(%rbx,%rbx,4), %r15
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB0_23
# %bb.22:
	movl	$.Lstr.55, %edi
	callq	puts@PLT
	movl	$1140850688, %edi               # imm = 0x44000000
	movl	$3, %esi
	callq	MPI_Abort
	movslq	44(%rsp), %rax
	shlq	$6, %rax
	leaq	(%rax,%rax,4), %r15
.LBB0_23:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	__intel_avx_rep_memset@PLT
	cmpl	$0, 40(%rsp)
	jne	.LBB0_68
# %bb.24:
	movl	$.Lstr.61, %edi
	callq	puts@PLT
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_25
# %bb.26:
	vmovsd	%xmm0, 128(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_27
# %bb.28:
	vmovsd	%xmm0, 136(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_29
# %bb.30:
	vmovsd	%xmm0, 144(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_31
# %bb.32:
	vmovsd	%xmm0, 152(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_33
# %bb.34:
	vmovsd	%xmm0, 160(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_35
# %bb.36:
	vmovsd	%xmm0, 168(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_37
# %bb.38:
	vmovsd	%xmm0, 176(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_39
# %bb.40:
	vmovsd	%xmm0, 184(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_41:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_41
# %bb.42:
	vmovsd	%xmm0, 192(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_43
# %bb.44:
	vmovsd	%xmm0, 200(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_45
# %bb.46:
	vmovsd	%xmm0, 208(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_47:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_47
# %bb.48:
	vmovsd	%xmm0, 216(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_49
# %bb.50:
	vmovsd	%xmm0, 224(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_51
# %bb.52:
	vmovsd	%xmm0, 232(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_53:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_53
# %bb.54:
	vmovsd	%xmm0, 240(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_55:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_55
# %bb.56:
	vmovsd	%xmm0, 248(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_57
# %bb.58:
	vmovsd	%xmm0, 256(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_59
# %bb.60:
	vmovsd	%xmm0, 264(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_61:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_61
# %bb.62:
	vmovsd	%xmm0, 272(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm1          # 8-byte Folded Reload
	vucomisd	.LCPI0_11(%rip), %xmm1
	jb	.LBB0_63
# %bb.64:
	vmovsd	%xmm0, 280(%rsp)
	vmovupd	136(%rsp), %ymm0
	vmovupd	168(%rsp), %ymm1
	vmovupd	200(%rsp), %ymm2
	vsubpd	128(%rsp), %ymm0, %ymm0
	vmovupd	232(%rsp), %ymm3
	vbroadcastsd	.LCPI0_12(%rip), %ymm4  # ymm4 = [1.0E+6,1.0E+6,1.0E+6,1.0E+6]
	vmulpd	%ymm4, %ymm0, %ymm0
	vcvttpd2dq	%ymm0, %xmm0
	vpxor	%xmm5, %xmm5, %xmm5
	vpmaxsd	%xmm5, %xmm0, %xmm0
	vsubpd	160(%rsp), %ymm1, %ymm1
	vmulpd	%ymm4, %ymm1, %ymm1
	vcvttpd2dq	%ymm1, %xmm1
	vpmaxsd	%xmm5, %xmm1, %xmm1
	vsubpd	192(%rsp), %ymm2, %ymm2
	vmulpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vpminsd	%xmm1, %xmm0, %xmm0
	vsubpd	224(%rsp), %ymm3, %ymm1
	vmulpd	%ymm4, %ymm1, %ymm1
	vcvttpd2dq	%ymm1, %xmm1
	vpmaxsd	%xmm5, %xmm2, %xmm2
	vpmaxsd	%xmm5, %xmm1, %xmm1
	vpminsd	%xmm1, %xmm2, %xmm1
	vpminsd	%xmm1, %xmm0, %xmm0
	vpminsd	.LCPI0_13(%rip){1to4}, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpminsd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpbroadcastd	%xmm0, %xmm0
	vpminsd	%xmm1, %xmm0, %xmm0
	movb	$7, %al
	kmovb	%eax, %k1
	vmovupd	264(%rsp), %ymm1 {%k1} {z}
	vsubpd	256(%rsp), %ymm1, %ymm1
	vmulpd	%ymm4, %ymm1, %ymm1
	vcvttpd2dq	%ymm1, %xmm1
	vpmaxsd	%xmm5, %xmm1, %xmm1
	vpminsd	%xmm1, %xmm0, %xmm1
	vpblendd	$8, %xmm0, %xmm1, %xmm0         # xmm0 = xmm1[0,1,2],xmm0[3]
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpminsd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpminsd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %r15d
	testl	%r15d, %r15d
	jle	.LBB0_66
# %bb.65:
	movl	$.L.str.20, %edi
	movl	%r15d, %esi
	xorl	%eax, %eax
	vzeroupper
	callq	printf
	vcvtsi2sd	%r15d, %xmm6, %xmm0
	jmp	.LBB0_67
	.p2align	6, 0x90
.LBB0_66:
	movl	$.Lstr.54, %edi
	vzeroupper
	callq	puts@PLT
	vmovsd	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero
.LBB0_67:
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.LBB0_68:
	vzeroupper
	callq	MPI_Wtime
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movq	array_elements(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_71
# %bb.69:
	movq	a(%rip), %rcx
	movq	%rax, %rdx
	andq	$-4, %rdx
	je	.LBB0_70
# %bb.128:
	leaq	-1(%rdx), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_129:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%rcx,%rdi,8), %ymm0
	vaddpd	%ymm0, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rdi,8)
	addq	$4, %rdi
	cmpq	%rsi, %rdi
	jle	.LBB0_129
	jmp	.LBB0_130
	.p2align	6, 0x90
.LBB0_70:
	xorl	%edx, %edx
	jmp	.LBB0_131
	.p2align	6, 0x90
.LBB0_203:
	movl	$.L.str, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
	.p2align	6, 0x90
.LBB0_2:
	movl	40(%rsp), %esi
	movl	$.L.str.1, %edi
	jmp	.LBB0_7
	.p2align	6, 0x90
.LBB0_4:
	movl	40(%rsp), %esi
	movl	$.L.str.2, %edi
	jmp	.LBB0_7
	.p2align	6, 0x90
.LBB0_6:
	movl	$.L.str.3, %edi
.LBB0_7:
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	printf
	movl	$1140850688, %edi               # imm = 0x44000000
	movl	$2, %esi
	callq	MPI_Abort
	movl	$1, %edi
	callq	exit
	.p2align	6, 0x90
.LBB0_71:
	vzeroupper
	callq	MPI_Wtime
	cmpl	$0, 40(%rsp)
	jne	.LBB0_73
# %bb.72:
	vsubsd	48(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	vmulsd	.LCPI0_12(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vcvttsd2si	%xmm0, %esi
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	callq	printf
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vdivsd	32(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	vcvttsd2si	%xmm0, %esi
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lstr.46, %edi
	callq	puts@PLT
	movl	$.Lstr.47, %edi
	callq	puts@PLT
	movl	$.Lstr.61, %edi
	callq	puts@PLT
	movl	$.Lstr.49, %edi
	callq	puts@PLT
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movl	$.Lstr.51, %edi
	callq	puts@PLT
	movl	$.Lstr.61, %edi
	callq	puts@PLT
.LBB0_73:
	xorl	%r14d, %r14d
	movq	%rbx, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB0_74
	.p2align	6, 0x90
.LBB0_94:                               #   in Loop: Header=BB0_74 Depth=1
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Barrier
	callq	MPI_Wtime
	vsubsd	48(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	vmovsd	%xmm0, 368(%rsp,%r14,8)
	incq	%r14
	cmpq	$10, %r14
	movq	120(%rsp), %r13                 # 8-byte Reload
	je	.LBB0_95
.LBB0_74:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_137 Depth 2
                                        #     Child Loop BB0_83 Depth 2
                                        #     Child Loop BB0_143 Depth 2
                                        #     Child Loop BB0_147 Depth 2
                                        #     Child Loop BB0_88 Depth 2
                                        #     Child Loop BB0_151 Depth 2
                                        #     Child Loop BB0_155 Depth 2
                                        #     Child Loop BB0_93 Depth 2
                                        #     Child Loop BB0_159 Depth 2
                                        #     Child Loop BB0_163 Depth 2
	callq	MPI_Wtime
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Barrier
	movq	array_elements(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB0_79
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=1
	movq	a(%rip), %rsi
	movq	c(%rip), %rdi
	leaq	-8(%rsi,%rdx,8), %rax
	cmpq	%rdi, %rax
	jb	.LBB0_132
# %bb.76:                               #   in Loop: Header=BB0_74 Depth=1
	leaq	-8(%rdi,%rdx,8), %rax
	cmpq	%rsi, %rax
	jb	.LBB0_132
# %bb.77:                               #   in Loop: Header=BB0_74 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_78:                               #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rsi,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rax,8)
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB0_78
	jmp	.LBB0_79
	.p2align	6, 0x90
.LBB0_132:                              #   in Loop: Header=BB0_74 Depth=1
	cmpq	$13, %rdx
	jb	.LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_74 Depth=1
	shlq	$3, %rdx
	callq	__intel_avx_rep_memcpy@PLT
	jmp	.LBB0_79
	.p2align	6, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_74 Depth=1
	movq	%rdx, %rax
	andq	$-4, %rax
	je	.LBB0_135
# %bb.136:                              #   in Loop: Header=BB0_74 Depth=1
	leaq	-1(%rax), %rcx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_137:                              #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rsi,%r8,8), %ymm0
	vmovupd	%ymm0, (%rdi,%r8,8)
	addq	$4, %r8
	cmpq	%rcx, %r8
	jle	.LBB0_137
	jmp	.LBB0_138
	.p2align	6, 0x90
.LBB0_135:                              #   in Loop: Header=BB0_74 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_139
	.p2align	6, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_74 Depth=1
	movl	$1140850688, %edi               # imm = 0x44000000
	vzeroupper
	callq	MPI_Barrier
	callq	MPI_Wtime
	vsubsd	32(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	vmovsd	%xmm0, 128(%rsp,%r14,8)
	callq	MPI_Wtime
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Barrier
	movq	array_elements(%rip), %rbx
	testq	%rbx, %rbx
	vmovsd	.LCPI0_8(%rip), %xmm1           # xmm1 = mem[0],zero
	je	.LBB0_84
# %bb.80:                               #   in Loop: Header=BB0_74 Depth=1
	movq	c(%rip), %r14
	movq	b(%rip), %rcx
	leaq	-8(%r14,%rbx,8), %rax
	cmpq	%rcx, %rax
	jb	.LBB0_140
# %bb.81:                               #   in Loop: Header=BB0_74 Depth=1
	leaq	-8(%rcx,%rbx,8), %rax
	cmpq	%r14, %rax
	jb	.LBB0_140
# %bb.82:                               #   in Loop: Header=BB0_74 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_83:                               #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%r14,%rax,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB0_83
	jmp	.LBB0_84
	.p2align	6, 0x90
.LBB0_140:                              #   in Loop: Header=BB0_74 Depth=1
	movq	%rbx, %r12
	andq	$-4, %r12
	je	.LBB0_141
# %bb.142:                              #   in Loop: Header=BB0_74 Depth=1
	leaq	-1(%r12), %r15
	movq	%rcx, 9024(%rsp)
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%ecx, %eax
	andl	$63, %eax
	movq	%rax, 9032(%rsp)
	movq	$0, 9040(%rsp)
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	leaq	9048(%rsp), %rcx
	vbroadcastsd	.LCPI0_8(%rip), %ymm1   # ymm1 = [4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1]
	jmp	.LBB0_143
	.p2align	6, 0x90
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=2
	addq	$4, %r13
	cmpq	%r15, %r13
	jg	.LBB0_146
.LBB0_143:                              #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulpd	(%r14,%r13,8), %ymm1, %ymm0
	movq	%rsi, %rax
	shlq	$5, %rax
	vmovupd	%ymm0, (%rcx,%rax)
	incq	%rsi
	cmpq	$128, %rsi
	jne	.LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_143 Depth=2
	movl	$4096, %esi                     # imm = 0x1000
	leaq	8960(%rsp), %rdi
	xorl	%edx, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	vbroadcastsd	.LCPI0_8(%rip), %ymm1   # ymm1 = [4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1]
	leaq	9048(%rsp), %rcx
	xorl	%esi, %esi
	jmp	.LBB0_145
	.p2align	6, 0x90
.LBB0_146:                              #   in Loop: Header=BB0_74 Depth=1
	shlq	$5, %rsi
	leaq	8960(%rsp), %rdi
	movl	$1, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	sfence
	cmpq	%r12, %rbx
	vmovsd	.LCPI0_8(%rip), %xmm1           # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx                  # 8-byte Reload
	jne	.LBB0_147
	jmp	.LBB0_84
	.p2align	6, 0x90
.LBB0_141:                              #   in Loop: Header=BB0_74 Depth=1
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_147:                              #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%r14,%r12,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%rcx,%r12,8)
	incq	%r12
	cmpq	%r12, %rbx
	jne	.LBB0_147
.LBB0_84:                               #   in Loop: Header=BB0_74 Depth=1
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Barrier
	callq	MPI_Wtime
	vsubsd	48(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	vmovsd	%xmm0, 208(%rsp,%rax,8)
	callq	MPI_Wtime
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Barrier
	movq	array_elements(%rip), %r8
	testq	%r8, %r8
	je	.LBB0_89
# %bb.85:                               #   in Loop: Header=BB0_74 Depth=1
	movq	a(%rip), %r14
	movq	b(%rip), %r15
	movq	c(%rip), %rdi
	leaq	-8(%r15,%r8,8), %rax
	cmpq	%rdi, %rax
	setae	%dl
	leaq	-8(%rdi,%r8,8), %rcx
	cmpq	%r15, %rcx
	setae	%sil
	leaq	-8(%r14,%r8,8), %rax
	cmpq	%rdi, %rax
	setb	%al
	cmpq	%r14, %rcx
	setb	%cl
	testb	%sil, %dl
	jne	.LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_74 Depth=1
	orb	%cl, %al
	je	.LBB0_87
# %bb.148:                              #   in Loop: Header=BB0_74 Depth=1
	movq	%r8, %r13
	andq	$-4, %r13
	je	.LBB0_149
# %bb.150:                              #   in Loop: Header=BB0_74 Depth=1
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	leaq	-1(%r13), %rbx
	movq	%rdi, 4800(%rsp)
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movl	%edi, %eax
	andl	$63, %eax
	movq	%rax, 4808(%rsp)
	movq	$0, 4816(%rsp)
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	leaq	4824(%rsp), %rcx
	jmp	.LBB0_151
	.p2align	6, 0x90
.LBB0_153:                              #   in Loop: Header=BB0_151 Depth=2
	addq	$4, %r12
	cmpq	%rbx, %r12
	jg	.LBB0_154
.LBB0_151:                              #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%r15,%r12,8), %ymm0
	vaddpd	(%r14,%r12,8), %ymm0, %ymm0
	movq	%rsi, %rax
	shlq	$5, %rax
	vmovupd	%ymm0, (%rcx,%rax)
	incq	%rsi
	cmpq	$128, %rsi
	jne	.LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_151 Depth=2
	movl	$4096, %esi                     # imm = 0x1000
	leaq	4736(%rsp), %rdi
	xorl	%edx, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	leaq	4824(%rsp), %rcx
	xorl	%esi, %esi
	jmp	.LBB0_153
	.p2align	6, 0x90
.LBB0_87:                               #   in Loop: Header=BB0_74 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_88:                               #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
	incq	%rax
	cmpq	%rax, %r8
	jne	.LBB0_88
	jmp	.LBB0_89
	.p2align	6, 0x90
.LBB0_154:                              #   in Loop: Header=BB0_74 Depth=1
	shlq	$5, %rsi
	leaq	4736(%rsp), %rdi
	movl	$1, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	sfence
	movq	96(%rsp), %r8                   # 8-byte Reload
	cmpq	%r13, %r8
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB0_155
	jmp	.LBB0_89
	.p2align	6, 0x90
.LBB0_149:                              #   in Loop: Header=BB0_74 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_155:                              #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%r13,8), %xmm0            # xmm0 = mem[0],zero
	vaddsd	(%r14,%r13,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%r13,8)
	incq	%r13
	cmpq	%r13, %r8
	jne	.LBB0_155
.LBB0_89:                               #   in Loop: Header=BB0_74 Depth=1
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Barrier
	callq	MPI_Wtime
	vsubsd	48(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	movq	32(%rsp), %r14                  # 8-byte Reload
	vmovsd	%xmm0, 288(%rsp,%r14,8)
	callq	MPI_Wtime
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movl	$1140850688, %edi               # imm = 0x44000000
	callq	MPI_Barrier
	movq	array_elements(%rip), %r8
	testq	%r8, %r8
	vmovsd	.LCPI0_8(%rip), %xmm1           # xmm1 = mem[0],zero
	je	.LBB0_94
# %bb.90:                               #   in Loop: Header=BB0_74 Depth=1
	movq	b(%rip), %r15
	movq	c(%rip), %r12
	movq	a(%rip), %rdi
	leaq	-8(%r12,%r8,8), %rax
	cmpq	%rdi, %rax
	setae	%dl
	leaq	-8(%rdi,%r8,8), %rcx
	cmpq	%r12, %rcx
	setae	%sil
	leaq	-8(%r15,%r8,8), %rax
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	cmpq	%rdi, %rax
	setb	%al
	cmpq	%r15, %rcx
	setb	%cl
	testb	%sil, %dl
	jne	.LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_74 Depth=1
	orb	%cl, %al
	je	.LBB0_92
# %bb.156:                              #   in Loop: Header=BB0_74 Depth=1
	movq	%r8, %rbx
	andq	$-4, %rbx
	je	.LBB0_157
# %bb.158:                              #   in Loop: Header=BB0_74 Depth=1
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	leaq	-1(%rbx), %r13
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 576(%rsp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$63, %eax
	movq	%rax, 584(%rsp)
	movq	$0, 592(%rsp)
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	leaq	600(%rsp), %rcx
	vbroadcastsd	.LCPI0_8(%rip), %ymm1   # ymm1 = [4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1]
	jmp	.LBB0_159
	.p2align	6, 0x90
.LBB0_161:                              #   in Loop: Header=BB0_159 Depth=2
	addq	$4, %r14
	cmpq	%r13, %r14
	jg	.LBB0_162
.LBB0_159:                              #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%r12,%r14,8), %ymm0
	vfmadd213pd	(%r15,%r14,8), %ymm1, %ymm0 # ymm0 = (ymm1 * ymm0) + mem
	movq	%rsi, %rax
	shlq	$5, %rax
	vmovupd	%ymm0, (%rcx,%rax)
	incq	%rsi
	cmpq	$128, %rsi
	jne	.LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_159 Depth=2
	movl	$4096, %esi                     # imm = 0x1000
	leaq	512(%rsp), %rdi
	xorl	%edx, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	vbroadcastsd	.LCPI0_8(%rip), %ymm1   # ymm1 = [4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1,4.1999999999999998E-1]
	leaq	600(%rsp), %rcx
	xorl	%esi, %esi
	jmp	.LBB0_161
	.p2align	6, 0x90
.LBB0_92:                               #   in Loop: Header=BB0_74 Depth=1
	xorl	%eax, %eax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_93:                               #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd213sd	(%r15,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vmovsd	%xmm0, (%rcx,%rax,8)
	incq	%rax
	cmpq	%rax, %r8
	jne	.LBB0_93
	jmp	.LBB0_94
	.p2align	6, 0x90
.LBB0_162:                              #   in Loop: Header=BB0_74 Depth=1
	shlq	$5, %rsi
	leaq	512(%rsp), %rdi
	movl	$1, %edx
	vzeroupper
	callq	__libirc_nontemporal_store@PLT
	sfence
	movq	96(%rsp), %r8                   # 8-byte Reload
	cmpq	%rbx, %r8
	movq	32(%rsp), %r14                  # 8-byte Reload
	vmovsd	.LCPI0_8(%rip), %xmm1           # xmm1 = mem[0],zero
	movq	64(%rsp), %rax                  # 8-byte Reload
	jne	.LBB0_163
	jmp	.LBB0_94
	.p2align	6, 0x90
.LBB0_157:                              #   in Loop: Header=BB0_74 Depth=1
	xorl	%ebx, %ebx
	movq	64(%rsp), %rax                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_163:                              #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r12,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd213sd	(%r15,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vmovsd	%xmm0, (%rax,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r8
	jne	.LBB0_163
	jmp	.LBB0_94
	.p2align	6, 0x90
.LBB0_138:                              #   in Loop: Header=BB0_74 Depth=1
	cmpq	%rax, %rdx
	je	.LBB0_79
.LBB0_139:                              #   in Loop: Header=BB0_74 Depth=1
	vmovsd	(%rsi,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rax,8)
	incq	%rax
	jmp	.LBB0_138
	.p2align	6, 0x90
.LBB0_95:
	callq	MPI_Wtime
	leaq	128(%rsp), %rdi
	movl	$40, %esi
	movl	$1275070475, %edx               # imm = 0x4C00080B
	movq	%r13, %rcx
	movl	$40, %r8d
	movl	$1275070475, %r9d               # imm = 0x4C00080B
	pushq	$1140850688                     # imm = 0x44000000
	pushq	$0
	callq	MPI_Gather
	addq	$16, %rsp
	cmpl	$0, 40(%rsp)
	je	.LBB0_96
# %bb.100:
	movq	array_elements(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_101
.LBB0_107:
	movq	a(%rip), %r10
	movq	b(%rip), %rdx
	movq	c(%rip), %rsi
	movq	%rax, %rdi
	andq	$-4, %rdi
	movq	56(%rsp), %rcx                  # 8-byte Reload
	je	.LBB0_108
# %bb.198:
	leaq	-1(%rdi), %r8
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%r9d, %r9d
	vbroadcastsd	.LCPI0_19(%rip), %ymm3  # ymm3 = [-2.3532960153202431E+0,-2.3532960153202431E+0,-2.3532960153202431E+0,-2.3532960153202431E+0]
	vbroadcastsd	.LCPI0_20(%rip), %ymm4  # ymm4 = [NaN,NaN,NaN,NaN]
	vbroadcastsd	.LCPI0_21(%rip), %ymm5  # ymm5 = [-9.7243636996704264E-1,-9.7243636996704264E-1,-9.7243636996704264E-1,-9.7243636996704264E-1]
	vbroadcastsd	.LCPI0_22(%rip), %ymm6  # ymm6 = [-3.2877610603647631E+0,-3.2877610603647631E+0,-3.2877610603647631E+0,-3.2877610603647631E+0]
	vpxor	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_199:                              # =>This Inner Loop Header: Depth=1
	vaddpd	(%r10,%r9,8), %ymm3, %ymm7
	vandpd	%ymm4, %ymm7, %ymm7
	vaddpd	%ymm1, %ymm7, %ymm1
	vaddpd	(%rdx,%r9,8), %ymm5, %ymm7
	vandpd	%ymm4, %ymm7, %ymm7
	vaddpd	%ymm2, %ymm7, %ymm2
	vaddpd	(%rsi,%r9,8), %ymm6, %ymm7
	vandpd	%ymm4, %ymm7, %ymm7
	vaddpd	%ymm0, %ymm7, %ymm0
	addq	$4, %r9
	cmpq	%r8, %r9
	jle	.LBB0_199
# %bb.200:
	vextractf128	$1, %ymm1, %xmm3
	vextractf128	$1, %ymm2, %xmm4
	vextractf128	$1, %ymm0, %xmm5
	vaddpd	%xmm5, %xmm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm5         # xmm5 = xmm0[1,0]
	vaddsd	%xmm5, %xmm0, %xmm0
	vaddpd	%xmm4, %xmm2, %xmm2
	vaddpd	%xmm3, %xmm1, %xmm1
	vhaddpd	%xmm2, %xmm1, %xmm1
	cmpq	%rdi, %rax
	jne	.LBB0_201
	jmp	.LBB0_102
	.p2align	6, 0x90
.LBB0_96:
	movl	44(%rsp), %eax
	movl	%eax, %ecx
	andl	$-4, %ecx
	leaq	80(%r13), %rdx
	leaq	160(%r13), %rsi
	leaq	240(%r13), %rdi
	movl	$10, %r8d
	movl	$20, %r9d
	movl	$30, %r10d
	xorl	%r11d, %r11d
	vmovsd	.LCPI0_14(%rip), %xmm0          # xmm0 = mem[0],zero
	vbroadcastsd	.LCPI0_14(%rip), %ymm1  # ymm1 = [1.0E+36,1.0E+36,1.0E+36,1.0E+36]
	vmovdqu	.LCPI0_15(%rip), %ymm2          # ymm2 = [0,40,80,120]
                                        # AlignMOV convert to UnAlignMOV 
	movabsq	$5145383438407770339, %rbx      # imm = 0x476812F9CF7920E3
	movq	%r13, %r15
	jmp	.LBB0_97
	.p2align	6, 0x90
.LBB0_195:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%rbx, 288(%rsp,%r11,8)
	vmovapd	%xmm0, %xmm3
.LBB0_196:                              #   in Loop: Header=BB0_97 Depth=1
	vmovsd	%xmm3, 368(%rsp,%r11,8)
	addq	$8, %r15
	incq	%r8
	addq	$8, %rdx
	incq	%r9
	addq	$8, %rsi
	incq	%r10
	addq	$8, %rdi
	cmpq	$9, %r11
	leaq	1(%r11), %r11
	je	.LBB0_197
.LBB0_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_165 Depth 2
                                        #     Child Loop BB0_168 Depth 2
                                        #     Child Loop BB0_173 Depth 2
                                        #     Child Loop BB0_176 Depth 2
                                        #     Child Loop BB0_182 Depth 2
                                        #     Child Loop BB0_185 Depth 2
                                        #     Child Loop BB0_191 Depth 2
                                        #     Child Loop BB0_194 Depth 2
	testl	%eax, %eax
	jle	.LBB0_177
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_99
# %bb.164:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%r11, %r14
	vmovapd	%ymm1, %ymm3
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_165:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpbroadcastq	%r14, %ymm4
	vpaddq	%ymm2, %ymm4, %ymm4
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vgatherqpd	(%r13,%ymm4,8), %ymm5 {%k1}
	vminpd	%ymm5, %ymm3, %ymm3
	addq	$4, %r12
	addq	$160, %r14
	cmpq	%rcx, %r12
	jb	.LBB0_165
# %bb.166:                              #   in Loop: Header=BB0_97 Depth=1
	vshufpd	$1, %xmm3, %xmm3, %xmm4         # xmm4 = xmm3[1,0]
	vminsd	%xmm4, %xmm3, %xmm4
	vextractf128	$1, %ymm3, %xmm3
	vshufpd	$1, %xmm3, %xmm3, %xmm5         # xmm5 = xmm3[1,0]
	vminsd	%xmm5, %xmm3, %xmm3
	vminsd	%xmm3, %xmm4, %xmm3
	movq	%rcx, %r12
	cmpq	%rax, %rcx
	jne	.LBB0_167
	jmp	.LBB0_169
	.p2align	6, 0x90
.LBB0_177:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%rbx, 128(%rsp,%r11,8)
	vmovapd	%xmm0, %xmm3
	jmp	.LBB0_178
	.p2align	6, 0x90
.LBB0_99:                               #   in Loop: Header=BB0_97 Depth=1
	vmovapd	%xmm0, %xmm3
	xorl	%r12d, %r12d
.LBB0_167:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%rax, %r14
	subq	%r12, %r14
	leaq	(%r12,%r12,4), %r12
	shlq	$6, %r12
	addq	%r15, %r12
	.p2align	4, 0x90
.LBB0_168:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vminsd	(%r12), %xmm3, %xmm3
	addq	$320, %r12                      # imm = 0x140
	decq	%r14
	jne	.LBB0_168
.LBB0_169:                              #   in Loop: Header=BB0_97 Depth=1
	vmovsd	%xmm3, 128(%rsp,%r11,8)
	testl	%eax, %eax
	jle	.LBB0_186
# %bb.170:                              #   in Loop: Header=BB0_97 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_171
# %bb.172:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%r8, %r14
	vmovapd	%ymm1, %ymm3
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_173:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpbroadcastq	%r14, %ymm4
	vpaddq	%ymm2, %ymm4, %ymm4
	kxnorw	%k0, %k0, %k1
	vxorpd	%xmm5, %xmm5, %xmm5
	vgatherqpd	(%r13,%ymm4,8), %ymm5 {%k1}
	vminpd	%ymm5, %ymm3, %ymm3
	addq	$4, %r12
	addq	$160, %r14
	cmpq	%rcx, %r12
	jb	.LBB0_173
# %bb.174:                              #   in Loop: Header=BB0_97 Depth=1
	vshufpd	$1, %xmm3, %xmm3, %xmm4         # xmm4 = xmm3[1,0]
	vminsd	%xmm4, %xmm3, %xmm4
	vextractf128	$1, %ymm3, %xmm3
	vshufpd	$1, %xmm3, %xmm3, %xmm5         # xmm5 = xmm3[1,0]
	vminsd	%xmm5, %xmm3, %xmm3
	vminsd	%xmm3, %xmm4, %xmm3
	movq	%rcx, %r12
	cmpq	%rax, %rcx
	jne	.LBB0_175
	jmp	.LBB0_178
	.p2align	6, 0x90
.LBB0_186:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%rbx, 208(%rsp,%r11,8)
	vmovapd	%xmm0, %xmm3
	jmp	.LBB0_187
	.p2align	6, 0x90
.LBB0_171:                              #   in Loop: Header=BB0_97 Depth=1
	vmovapd	%xmm0, %xmm3
	xorl	%r12d, %r12d
.LBB0_175:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%rax, %r14
	subq	%r12, %r14
	leaq	(%r12,%r12,4), %r12
	shlq	$6, %r12
	addq	%rdx, %r12
	.p2align	4, 0x90
.LBB0_176:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vminsd	(%r12), %xmm3, %xmm3
	addq	$320, %r12                      # imm = 0x140
	decq	%r14
	jne	.LBB0_176
.LBB0_178:                              #   in Loop: Header=BB0_97 Depth=1
	vmovsd	%xmm3, 208(%rsp,%r11,8)
	testl	%eax, %eax
	jle	.LBB0_195
# %bb.179:                              #   in Loop: Header=BB0_97 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_180
# %bb.181:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%r9, %r14
	vmovapd	%ymm1, %ymm3
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_182:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpbroadcastq	%r14, %ymm4
	vpaddq	%ymm2, %ymm4, %ymm4
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vgatherqpd	(%r13,%ymm4,8), %ymm5 {%k1}
	vminpd	%ymm5, %ymm3, %ymm3
	addq	$4, %r12
	addq	$160, %r14
	cmpq	%rcx, %r12
	jb	.LBB0_182
# %bb.183:                              #   in Loop: Header=BB0_97 Depth=1
	vshufpd	$1, %xmm3, %xmm3, %xmm4         # xmm4 = xmm3[1,0]
	vminsd	%xmm4, %xmm3, %xmm4
	vextractf128	$1, %ymm3, %xmm3
	vshufpd	$1, %xmm3, %xmm3, %xmm5         # xmm5 = xmm3[1,0]
	vminsd	%xmm5, %xmm3, %xmm3
	vminsd	%xmm3, %xmm4, %xmm3
	movq	%rcx, %r12
	cmpq	%rax, %rcx
	jne	.LBB0_184
	jmp	.LBB0_187
	.p2align	6, 0x90
.LBB0_180:                              #   in Loop: Header=BB0_97 Depth=1
	vmovapd	%xmm0, %xmm3
	xorl	%r12d, %r12d
.LBB0_184:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%rax, %r14
	subq	%r12, %r14
	leaq	(%r12,%r12,4), %r12
	shlq	$6, %r12
	addq	%rsi, %r12
	.p2align	4, 0x90
.LBB0_185:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vminsd	(%r12), %xmm3, %xmm3
	addq	$320, %r12                      # imm = 0x140
	decq	%r14
	jne	.LBB0_185
.LBB0_187:                              #   in Loop: Header=BB0_97 Depth=1
	vmovsd	%xmm3, 288(%rsp,%r11,8)
	vmovapd	%xmm0, %xmm3
	testl	%eax, %eax
	jle	.LBB0_196
# %bb.188:                              #   in Loop: Header=BB0_97 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_189
# %bb.190:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%r10, %r14
	vmovapd	%ymm1, %ymm3
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_191:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpbroadcastq	%r14, %ymm4
	vpaddq	%ymm2, %ymm4, %ymm4
	kxnorw	%k0, %k0, %k1
	vxorpd	%xmm5, %xmm5, %xmm5
	vgatherqpd	(%r13,%ymm4,8), %ymm5 {%k1}
	vminpd	%ymm5, %ymm3, %ymm3
	addq	$4, %r12
	addq	$160, %r14
	cmpq	%rcx, %r12
	jb	.LBB0_191
# %bb.192:                              #   in Loop: Header=BB0_97 Depth=1
	vshufpd	$1, %xmm3, %xmm3, %xmm4         # xmm4 = xmm3[1,0]
	vminsd	%xmm4, %xmm3, %xmm4
	vextractf128	$1, %ymm3, %xmm3
	vshufpd	$1, %xmm3, %xmm3, %xmm5         # xmm5 = xmm3[1,0]
	vminsd	%xmm5, %xmm3, %xmm3
	vminsd	%xmm3, %xmm4, %xmm3
	movq	%rcx, %r12
	cmpq	%rax, %rcx
	je	.LBB0_196
	jmp	.LBB0_193
	.p2align	6, 0x90
.LBB0_189:                              #   in Loop: Header=BB0_97 Depth=1
	vmovapd	%xmm0, %xmm3
	xorl	%r12d, %r12d
.LBB0_193:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%rax, %r14
	subq	%r12, %r14
	leaq	(%r12,%r12,4), %r12
	shlq	$6, %r12
	addq	%rdi, %r12
	.p2align	4, 0x90
.LBB0_194:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vminsd	(%r12), %xmm3, %xmm3
	addq	$320, %r12                      # imm = 0x140
	decq	%r14
	jne	.LBB0_194
	jmp	.LBB0_196
	.p2align	6, 0x90
.LBB0_197:
	vmovsd	avgtime+16(%rip), %xmm5         # xmm5 = mem[0],zero
	vmovsd	avgtime+24(%rip), %xmm0         # xmm0 = mem[0],zero
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	vmovupd	mintime(%rip), %ymm22           # AlignMOV convert to UnAlignMOV 
	vmovupd	maxtime(%rip), %ymm3            # AlignMOV convert to UnAlignMOV 
	vmovsd	136(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovsd	144(%rsp), %xmm1                # xmm1 = mem[0],zero
	vmovsd	152(%rsp), %xmm4                # xmm4 = mem[0],zero
	vmovhpd	216(%rsp), %xmm0, %xmm7         # xmm7 = xmm0[0],mem[0]
	vmovhpd	224(%rsp), %xmm1, %xmm8         # xmm8 = xmm1[0],mem[0]
	vmovsd	160(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovhpd	232(%rsp), %xmm4, %xmm9         # xmm9 = xmm4[0],mem[0]
	vmovhpd	240(%rsp), %xmm0, %xmm4         # xmm4 = xmm0[0],mem[0]
	vmovsd	168(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovhpd	248(%rsp), %xmm0, %xmm6         # xmm6 = xmm0[0],mem[0]
	vmovsd	176(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovhpd	256(%rsp), %xmm0, %xmm10        # xmm10 = xmm0[0],mem[0]
	vmovsd	184(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovhpd	264(%rsp), %xmm0, %xmm11        # xmm11 = xmm0[0],mem[0]
	vmovsd	192(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovhpd	272(%rsp), %xmm0, %xmm1         # xmm1 = xmm0[0],mem[0]
	vaddpd	%xmm8, %xmm9, %xmm0
	vaddpd	%xmm4, %xmm10, %xmm12
	vaddpd	%xmm1, %xmm0, %xmm0
	vaddpd	%xmm0, %xmm12, %xmm12
	vmovsd	200(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovhpd	280(%rsp), %xmm0, %xmm0         # xmm0 = xmm0[0],mem[0]
	vaddpd	avgtime(%rip), %xmm7, %xmm13
	vaddpd	%xmm6, %xmm11, %xmm14
	vaddpd	%xmm13, %xmm14, %xmm13
	vaddpd	%xmm0, %xmm12, %xmm12
	vaddpd	%xmm12, %xmm13, %xmm12
	vmovupd	%xmm12, avgtime(%rip)           # AlignMOV convert to UnAlignMOV 
	vmovsd	296(%rsp), %xmm12               # xmm12 = mem[0],zero
	vmovsd	304(%rsp), %xmm13               # xmm13 = mem[0],zero
	vaddsd	%xmm5, %xmm12, %xmm5
	vmovsd	312(%rsp), %xmm14               # xmm14 = mem[0],zero
	vaddsd	%xmm13, %xmm14, %xmm15
	vaddsd	%xmm5, %xmm15, %xmm5
	vmovsd	320(%rsp), %xmm15               # xmm15 = mem[0],zero
	vmovsd	328(%rsp), %xmm16               # xmm16 = mem[0],zero
	vaddsd	%xmm15, %xmm16, %xmm17
	vmovsd	336(%rsp), %xmm18               # xmm18 = mem[0],zero
	vaddsd	%xmm17, %xmm18, %xmm17
	vaddsd	%xmm5, %xmm17, %xmm5
	vmovsd	344(%rsp), %xmm17               # xmm17 = mem[0],zero
	vmovsd	352(%rsp), %xmm19               # xmm19 = mem[0],zero
	vmovsd	360(%rsp), %xmm20               # xmm20 = mem[0],zero
	vaddsd	%xmm17, %xmm19, %xmm21
	vaddsd	%xmm20, %xmm5, %xmm5
	vaddsd	%xmm21, %xmm5, %xmm5
	vmovsd	%xmm5, avgtime+16(%rip)
	vinsertf32x4	$1, %xmm16, %ymm6, %ymm2
	vinsertf32x4	$1, %xmm18, %ymm10, %ymm10
	vinsertf32x4	$1, %xmm17, %ymm11, %ymm6
	vinsertf128	$1, %xmm12, %ymm7, %ymm7
	vmovupd	.LCPI0_16(%rip), %ymm11         # ymm11 = [0,1,2,4]
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	376(%rsp), %ymm5
	vpermi2pd	%ymm5, %ymm7, %ymm11
	vinsertf128	$1, %xmm13, %ymm8, %ymm7
	vinsertf128	$1, 376(%rsp), %ymm0, %ymm8
	vblendpd	$8, %ymm8, %ymm7, %ymm7         # ymm7 = ymm7[0,1,2],ymm8[3]
	vminpd	%ymm7, %ymm22, %ymm8
	vmaxpd	%ymm7, %ymm3, %ymm3
	vinsertf128	$1, %xmm14, %ymm9, %ymm7
	vbroadcastsd	392(%rsp), %ymm9
	vblendpd	$8, %ymm9, %ymm7, %ymm7         # ymm7 = ymm7[0,1,2],ymm9[3]
	vminpd	%ymm7, %ymm11, %ymm9
	vmaxpd	%ymm7, %ymm11, %ymm7
	vinsertf128	$1, %xmm15, %ymm4, %ymm4
	vblendpd	$8, %ymm5, %ymm4, %ymm4         # ymm4 = ymm4[0,1,2],ymm5[3]
	vminpd	%ymm4, %ymm8, %ymm8
	vmaxpd	%ymm4, %ymm3, %ymm3
	vmovupd	408(%rsp), %ymm4
	vbroadcastsd	408(%rsp), %ymm11
	vblendpd	$8, %ymm11, %ymm2, %ymm2        # ymm2 = ymm2[0,1,2],ymm11[3]
	vminpd	%ymm2, %ymm9, %ymm9
	vmaxpd	%ymm2, %ymm7, %ymm2
	vinsertf128	$1, 408(%rsp), %ymm0, %ymm7
	vblendpd	$8, %ymm7, %ymm10, %ymm7        # ymm7 = ymm10[0,1,2],ymm7[3]
	vminpd	%ymm7, %ymm8, %ymm8
	vmaxpd	%ymm7, %ymm3, %ymm3
	vbroadcastsd	424(%rsp), %ymm7
	vblendpd	$8, %ymm7, %ymm6, %ymm6         # ymm6 = ymm6[0,1,2],ymm7[3]
	vminpd	%ymm6, %ymm9, %ymm7
	vmaxpd	%ymm6, %ymm2, %ymm2
	vinsertf32x4	$1, %xmm19, %ymm1, %ymm1
	vblendpd	$8, %ymm4, %ymm1, %ymm1         # ymm1 = ymm1[0,1,2],ymm4[3]
	vminpd	%ymm1, %ymm8, %ymm6
	vmaxpd	%ymm1, %ymm3, %ymm1
	vmovsd	440(%rsp), %xmm8                # xmm8 = mem[0],zero
	vmovupd	%xmm8, 96(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vaddpd	%ymm4, %ymm5, %ymm3
	vextractf128	$1, %ymm3, %xmm4
	vaddpd	%xmm4, %xmm3, %xmm3
	vshufpd	$1, %xmm3, %xmm3, %xmm4         # xmm4 = xmm3[1,0]
	vaddsd	%xmm4, %xmm3, %xmm3
	vmovsd	%xmm3, 48(%rsp)                 # 8-byte Spill
	vpunpcklqdq	%xmm8, %xmm20, %xmm3    # xmm3 = xmm20[0],xmm8[0]
	vinsertf128	$1, %xmm3, %ymm0, %ymm0
	vminpd	%ymm0, %ymm7, %ymm3
	vminpd	%ymm3, %ymm6, %ymm3
	vmovupd	%ymm3, 480(%rsp)                # 32-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%ymm3, mintime(%rip)            # AlignMOV convert to UnAlignMOV 
	vmaxpd	%ymm0, %ymm2, %ymm0
	vmaxpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 64(%rsp)                 # 32-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%ymm0, maxtime(%rip)            # AlignMOV convert to UnAlignMOV 
	movl	$.Lstr.44, %edi
	vzeroupper
	callq	puts@PLT
	vmovsd	.LCPI0_17(%rip), %xmm0          # xmm0 = mem[0],zero
	vmulsd	32(%rsp), %xmm0, %xmm2          # 8-byte Folded Reload
	vmovupd	96(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	48(%rsp), %xmm1, %xmm1          # 8-byte Folded Reload
	vfmadd213sd	%xmm2, %xmm0, %xmm1     # xmm1 = (xmm0 * xmm1) + xmm2
	vmovsd	%xmm1, avgtime+24(%rip)
	vmovupd	480(%rsp), %ymm0                # 32-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vextractf128	$1, %ymm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm2         # xmm2 = xmm0[1,0]
	vmovsd	.LCPI0_18(%rip), %xmm0          # xmm0 = mem[0],zero
	vdivsd	%xmm2, %xmm0, %xmm0
	vmovupd	64(%rsp), %ymm3                 # 32-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vextractf128	$1, %ymm3, %xmm3
	vshufpd	$1, %xmm3, %xmm3, %xmm3         # xmm3 = xmm3[1,0]
	movl	$4, %eax
	movl	$.L.str.30, %edi
	movl	$.L.str.43, %esi
                                        # kill: def $al killed $al killed $eax
	vzeroupper
	callq	printf
	movl	$.Lstr.61, %edi
	callq	puts@PLT
	movq	array_elements(%rip), %rax
	testq	%rax, %rax
	jne	.LBB0_107
.LBB0_101:
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	56(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB0_102
	.p2align	6, 0x90
.LBB0_108:
	xorl	%edi, %edi
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
.LBB0_201:
	vmovupd	.LCPI0_23(%rip), %xmm2          # xmm2 = [-2.3532960153202431E+0,-9.7243636996704264E-1]
                                        # AlignMOV convert to UnAlignMOV 
	vmovddup	.LCPI0_20(%rip), %xmm3          # xmm3 = [NaN,NaN]
                                        # xmm3 = mem[0,0]
	vmovsd	.LCPI0_22(%rip), %xmm4          # xmm4 = mem[0],zero
	.p2align	4, 0x90
.LBB0_202:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%r10,%rdi,8), %xmm5            # xmm5 = mem[0],zero
	vmovhpd	(%rdx,%rdi,8), %xmm5, %xmm5     # xmm5 = xmm5[0],mem[0]
	vaddpd	%xmm2, %xmm5, %xmm5
	vandpd	%xmm3, %xmm5, %xmm5
	vaddpd	%xmm1, %xmm5, %xmm1
	vaddsd	(%rsi,%rdi,8), %xmm4, %xmm5
	vandpd	%xmm3, %xmm5, %xmm5
	vaddsd	%xmm0, %xmm5, %xmm0
	incq	%rdi
	cmpq	%rdi, %rax
	jne	.LBB0_202
.LBB0_102:
	vcvtusi2sd	%rax, %xmm22, %xmm2
	vmovsd	.LCPI0_9(%rip), %xmm3           # xmm3 = mem[0],zero
	vdivsd	%xmm2, %xmm3, %xmm2
	vmovddup	%xmm2, %xmm3                    # xmm3 = xmm2[0,0]
	vmulpd	%xmm3, %xmm1, %xmm1
	vmovupd	%xmm1, 448(%rsp)                # AlignMOV convert to UnAlignMOV 
	vmulsd	%xmm2, %xmm0, %xmm0
	vmovsd	%xmm0, 464(%rsp)
	leaq	448(%rsp), %rdi
	movl	$3, %esi
	movl	$1275070475, %edx               # imm = 0x4C00080B
	movl	$3, %r8d
	movl	$1275070475, %r9d               # imm = 0x4C00080B
	pushq	$1140850688                     # imm = 0x44000000
	pushq	$0
	vzeroupper
	callq	MPI_Gather
	addq	$16, %rsp
	cmpl	$0, 40(%rsp)
	jne	.LBB0_104
# %bb.103:
	movl	44(%rsp), %esi
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	checkSTREAMresults
	movl	$.Lstr.61, %edi
	callq	puts@PLT
.LBB0_104:
	movq	a(%rip), %rdi
	callq	free
	movq	b(%rip), %rdi
	callq	free
	movq	c(%rip), %rdi
	callq	free
	cmpl	$0, 40(%rsp)
	jne	.LBB0_106
# %bb.105:
	movq	%r13, %rdi
	callq	free
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	free
.LBB0_106:
	callq	MPI_Finalize
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
	.p2align	6, 0x90
.LBB0_130:
	.cfi_def_cfa %rbp, 16
	cmpq	%rdx, %rax
	je	.LBB0_71
.LBB0_131:
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	incq	%rdx
	jmp	.LBB0_130
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function computeSTREAMerrors
.LCPI1_0:
	.quad	0xc002d38cdc7cdc48              #  -2.3532960153202431
.LCPI1_1:
	.quad	0x7fffffffffffffff              #  NaN
.LCPI1_2:
	.quad	0xbfef1e32e0ce6186              #  -0.97243636996704264
.LCPI1_3:
	.quad	0xc00a4d55abbaa1ab              #  -3.2877610603647631
.LCPI1_5:
	.quad	0x3ff0000000000000              #  1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_4:
	.quad	0xc002d38cdc7cdc48              #  -2.3532960153202431
	.quad	0xbfef1e32e0ce6186              #  -0.97243636996704264
	.text
	.globl	computeSTREAMerrors
	.p2align	4, 0x90
	.type	computeSTREAMerrors,@function
computeSTREAMerrors:                    # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	array_elements(%rip), %rax
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movq	a(%rip), %rcx
	movq	b(%rip), %r8
	movq	c(%rip), %r9
	movq	%rax, %r10
	andq	$-4, %r10
	je	.LBB1_3
# %bb.8:
	leaq	-1(%r10), %r11
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%ebx, %ebx
	vbroadcastsd	.LCPI1_0(%rip), %ymm0   # ymm0 = [-2.3532960153202431E+0,-2.3532960153202431E+0,-2.3532960153202431E+0,-2.3532960153202431E+0]
	vbroadcastsd	.LCPI1_1(%rip), %ymm3   # ymm3 = [NaN,NaN,NaN,NaN]
	vbroadcastsd	.LCPI1_2(%rip), %ymm4   # ymm4 = [-9.7243636996704264E-1,-9.7243636996704264E-1,-9.7243636996704264E-1,-9.7243636996704264E-1]
	vbroadcastsd	.LCPI1_3(%rip), %ymm6   # ymm6 = [-3.2877610603647631E+0,-3.2877610603647631E+0,-3.2877610603647631E+0,-3.2877610603647631E+0]
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm5, %xmm5, %xmm5
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	vaddpd	(%rcx,%rbx,8), %ymm0, %ymm7
	vandpd	%ymm3, %ymm7, %ymm7
	vaddpd	%ymm5, %ymm7, %ymm5
	vaddpd	(%r8,%rbx,8), %ymm4, %ymm7
	vandpd	%ymm3, %ymm7, %ymm7
	vaddpd	%ymm2, %ymm7, %ymm2
	vaddpd	(%r9,%rbx,8), %ymm6, %ymm7
	vandpd	%ymm3, %ymm7, %ymm7
	vaddpd	%ymm1, %ymm7, %ymm1
	addq	$4, %rbx
	cmpq	%r11, %rbx
	jle	.LBB1_9
# %bb.10:
	vextractf128	$1, %ymm5, %xmm0
	vaddpd	%xmm0, %xmm5, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm3         # xmm3 = xmm0[1,0]
	vaddsd	%xmm3, %xmm0, %xmm0
	vextractf128	$1, %ymm2, %xmm3
	vaddpd	%xmm3, %xmm2, %xmm2
	vshufpd	$1, %xmm2, %xmm2, %xmm3         # xmm3 = xmm2[1,0]
	vaddsd	%xmm3, %xmm2, %xmm2
	vextractf128	$1, %ymm1, %xmm3
	vaddpd	%xmm3, %xmm1, %xmm1
	vshufpd	$1, %xmm1, %xmm1, %xmm3         # xmm3 = xmm1[1,0]
	vaddsd	%xmm3, %xmm1, %xmm1
	cmpq	%r10, %rax
	je	.LBB1_7
# %bb.11:
	vpunpcklqdq	%xmm2, %xmm0, %xmm0     # xmm0 = xmm0[0],xmm2[0]
	jmp	.LBB1_4
	.p2align	6, 0x90
.LBB1_1:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.LBB1_7
	.p2align	6, 0x90
.LBB1_3:
	xorl	%r10d, %r10d
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
.LBB1_4:
	vmovupd	.LCPI1_4(%rip), %xmm2           # xmm2 = [-2.3532960153202431E+0,-9.7243636996704264E-1]
                                        # AlignMOV convert to UnAlignMOV 
	vmovddup	.LCPI1_1(%rip), %xmm3           # xmm3 = [NaN,NaN]
                                        # xmm3 = mem[0,0]
	vmovsd	.LCPI1_3(%rip), %xmm4           # xmm4 = mem[0],zero
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%r10,8), %xmm5            # xmm5 = mem[0],zero
	vmovhpd	(%r8,%r10,8), %xmm5, %xmm5      # xmm5 = xmm5[0],mem[0]
	vaddpd	%xmm2, %xmm5, %xmm5
	vandpd	%xmm3, %xmm5, %xmm5
	vaddpd	%xmm0, %xmm5, %xmm0
	vaddsd	(%r9,%r10,8), %xmm4, %xmm5
	vandpd	%xmm3, %xmm5, %xmm5
	vaddsd	%xmm1, %xmm5, %xmm1
	incq	%r10
	cmpq	%r10, %rax
	jne	.LBB1_5
# %bb.6:
	vshufpd	$1, %xmm0, %xmm0, %xmm2         # xmm2 = xmm0[1,0]
.LBB1_7:
	vcvtusi2sd	%rax, %xmm8, %xmm3
	vmovsd	.LCPI1_5(%rip), %xmm4           # xmm4 = mem[0],zero
	vdivsd	%xmm3, %xmm4, %xmm3
	vmulsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi)
	vmulsd	%xmm3, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi)
	vmulsd	%xmm3, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end1:
	.size	computeSTREAMerrors, .Lfunc_end1-computeSTREAMerrors
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function checkSTREAMresults
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
.LCPI2_1:
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
.LCPI2_2:
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_3:
	.quad	0x3ff0000000000000              #  1
.LCPI2_4:
	.quad	0x3fdb32266a7df52d              #  0.42493591689693028
.LCPI2_5:
	.quad	0x7fffffffffffffff              #  NaN
.LCPI2_6:
	.quad	0x3d3c25c268497682              #  1.0E-13
.LCPI2_7:
	.quad	0x4002d38cdc7cdc48              #  2.3532960153202431
.LCPI2_8:
	.quad	0x3fdb32266a7df52c              #  0.42493591689693022
.LCPI2_9:
	.quad	0xbff0000000000000              #  -1
.LCPI2_10:
	.quad	0x3ff07419cd3a48d0              #  1.0283449188905713
.LCPI2_11:
	.quad	0x3fd377549c44f4cb              #  0.30415835629157745
.LCPI2_12:
	.quad	0x3fef1e32e0ce6186              #  0.97243636996704264
.LCPI2_13:
	.quad	0x3ff07419cd3a48cf              #  1.0283449188905711
.LCPI2_14:
	.quad	0x400a4d55abbaa1ab              #  3.2877610603647631
.LCPI2_15:
	.quad	0x3fd377549c44f4ca              #  0.30415835629157739
	.text
	.globl	checkSTREAMresults
	.p2align	4, 0x90
	.type	checkSTREAMresults,@function
checkSTREAMresults:                     # 
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testl	%esi, %esi
	jle	.LBB2_1
# %bb.10:
	movl	%esi, %eax
	movl	$4294967292, %ecx               # imm = 0xFFFFFFFC
	andq	%rax, %rcx
	je	.LBB2_11
# %bb.26:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	vmovdqu	.LCPI2_0(%rip), %ymm1           # ymm1 = [0,3,6,9]
                                        # AlignMOV convert to UnAlignMOV 
	vmovdqu	.LCPI2_1(%rip), %ymm4           # ymm4 = [1,4,7,10]
                                        # AlignMOV convert to UnAlignMOV 
	vmovdqu	.LCPI2_2(%rip), %ymm5           # ymm5 = [2,5,8,11]
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%r8d, %r8d
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB2_27:                               # =>This Inner Loop Header: Depth=1
	vpbroadcastq	%rdx, %ymm6
	vpaddq	%ymm1, %ymm6, %ymm7
	vxorpd	%xmm8, %xmm8, %xmm8
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(%rdi,%ymm7,8), %ymm8 {%k1}
	vpaddq	%ymm4, %ymm6, %ymm7
	vxorpd	%xmm9, %xmm9, %xmm9
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(%rdi,%ymm7,8), %ymm9 {%k1}
	vpaddq	%ymm5, %ymm6, %ymm6
	vxorpd	%xmm7, %xmm7, %xmm7
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(%rdi,%ymm6,8), %ymm7 {%k1}
	vaddpd	%ymm0, %ymm8, %ymm0
	vaddpd	%ymm3, %ymm9, %ymm3
	vaddpd	%ymm2, %ymm7, %ymm2
	addq	$4, %r8
	addq	$12, %rdx
	cmpq	%rcx, %r8
	jb	.LBB2_27
# %bb.28:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm1         # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	vextractf128	$1, %ymm3, %xmm0
	vaddpd	%xmm0, %xmm3, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm3         # xmm3 = xmm0[1,0]
	vaddsd	%xmm3, %xmm0, %xmm0
	vextractf128	$1, %ymm2, %xmm3
	vaddpd	%xmm3, %xmm2, %xmm2
	vshufpd	$1, %xmm2, %xmm2, %xmm3         # xmm3 = xmm2[1,0]
	vaddsd	%xmm3, %xmm2, %xmm4
	cmpq	%rax, %rcx
	jne	.LBB2_29
	jmp	.LBB2_2
	.p2align	6, 0x90
.LBB2_1:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.LBB2_2
	.p2align	6, 0x90
.LBB2_11:
	xorl	%ecx, %ecx
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
.LBB2_29:
	subq	%rcx, %rax
	leaq	(%rcx,%rcx,2), %rcx
	leaq	16(%rdi,%rcx,8), %rcx
	.p2align	4, 0x90
.LBB2_30:                               # =>This Inner Loop Header: Depth=1
	vaddsd	-16(%rcx), %xmm1, %xmm1
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm4, %xmm4
	addq	$24, %rcx
	decq	%rax
	jne	.LBB2_30
.LBB2_2:
	vcvtsi2sd	%esi, %xmm10, %xmm2
	vmovsd	.LCPI2_3(%rip), %xmm3           # xmm3 = mem[0],zero
	vdivsd	%xmm2, %xmm3, %xmm5
	vmulsd	%xmm5, %xmm1, %xmm1
	vmulsd	%xmm5, %xmm0, %xmm2
	vmulsd	.LCPI2_4(%rip), %xmm1, %xmm0
	vandpd	.LCPI2_5(%rip){1to2}, %xmm0, %xmm3
	vucomisd	.LCPI2_6(%rip), %xmm3
	vmovupd	%xmm2, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	jbe	.LBB2_6
# %bb.3:
	vmovsd	%xmm5, 24(%rsp)                 # 8-byte Spill
	vmovupd	%xmm3, 64(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	%xmm4, (%rsp)                   # 8-byte Spill
	movl	$1, %eax
	vmovsd	.LCPI2_6(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str.31, %edi
                                        # kill: def $al killed $al killed $eax
	vmovupd	%xmm1, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vzeroupper
	callq	printf
	vmovupd	48(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vandpd	.LCPI2_5(%rip){1to2}, %xmm1, %xmm0
	vmulsd	.LCPI2_4(%rip), %xmm0, %xmm2
	movl	$3, %eax
	vmovq	.LCPI2_7(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str.32, %edi
                                        # kill: def $al killed $al killed $eax
	callq	printf
	movq	array_elements(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_4
# %bb.12:
	movq	a(%rip), %rcx
	movq	%rax, %rdx
	andq	$-8, %rdx
	je	.LBB2_13
# %bb.31:
	leaq	-1(%rdx), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edi, %edi
	vbroadcastsd	.LCPI2_8(%rip), %ymm1   # ymm1 = [4.2493591689693022E-1,4.2493591689693022E-1,4.2493591689693022E-1,4.2493591689693022E-1]
	vbroadcastsd	.LCPI2_9(%rip), %ymm2   # ymm2 = [-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0]
	vbroadcastsd	.LCPI2_5(%rip), %ymm3   # ymm3 = [NaN,NaN,NaN,NaN]
	vbroadcastsd	.LCPI2_6(%rip), %ymm4   # ymm4 = [1.0E-13,1.0E-13,1.0E-13,1.0E-13]
	.p2align	4, 0x90
.LBB2_32:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rcx,%rdi,8), %ymm5
	vfmadd132pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm5 * ymm1) + ymm2
	vmovupd	32(%rcx,%rdi,8), %ymm6
	vfmadd132pd	%ymm1, %ymm2, %ymm6     # ymm6 = (ymm6 * ymm1) + ymm2
	vandpd	%ymm3, %ymm6, %ymm6
	vandpd	%ymm3, %ymm5, %ymm5
	vcmpltpd	%ymm5, %ymm4, %k0
	vcmpltpd	%ymm6, %ymm4, %k1
	kshiftlb	$4, %k1, %k1
	korb	%k1, %k0, %k0
	vpmovm2d	%k0, %ymm5
	vpsubd	%ymm5, %ymm0, %ymm0
	addq	$8, %rdi
	cmpq	%rsi, %rdi
	jle	.LBB2_32
# %bb.33:
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %esi
	cmpq	%rdx, %rax
	vmovsd	.LCPI2_6(%rip), %xmm4           # xmm4 = mem[0],zero
	jne	.LBB2_34
	jmp	.LBB2_5
	.p2align	6, 0x90
.LBB2_4:
	xorl	%esi, %esi
	jmp	.LBB2_5
	.p2align	6, 0x90
.LBB2_13:
	xorl	%esi, %esi
	xorl	%edx, %edx
	vmovsd	.LCPI2_6(%rip), %xmm4           # xmm4 = mem[0],zero
.LBB2_34:
	vmovsd	.LCPI2_8(%rip), %xmm0           # xmm0 = mem[0],zero
	vmovsd	.LCPI2_9(%rip), %xmm1           # xmm1 = mem[0],zero
	vmovddup	.LCPI2_5(%rip), %xmm2           # xmm2 = [NaN,NaN]
                                        # xmm2 = mem[0,0]
	.p2align	4, 0x90
.LBB2_35:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdx,8), %xmm3            # xmm3 = mem[0],zero
	vfmadd132sd	%xmm0, %xmm1, %xmm3     # xmm3 = (xmm3 * xmm0) + xmm1
	vandpd	%xmm2, %xmm3, %xmm3
	xorl	%edi, %edi
	vucomisd	%xmm4, %xmm3
	seta	%dil
	addl	%edi, %esi
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB2_35
.LBB2_5:
	movl	$.L.str.33, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	vzeroupper
	callq	printf
	vmovsd	(%rsp), %xmm4                   # 8-byte Reload
                                        # xmm4 = mem[0],zero
	vmovupd	32(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	64(%rsp), %xmm3                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	24(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
.LBB2_6:
	vmulsd	%xmm5, %xmm4, %xmm1
	vmulsd	.LCPI2_10(%rip), %xmm2, %xmm0
	vandpd	.LCPI2_5(%rip){1to2}, %xmm0, %xmm0
	vucomisd	.LCPI2_6(%rip), %xmm0
	vmovupd	%xmm1, (%rsp)                   # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	jbe	.LBB2_16
# %bb.7:
	movl	$1, %ebx
	vmovsd	.LCPI2_6(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str.34, %edi
	movl	%ebx, %eax
	vzeroupper
	callq	printf
	vmovupd	32(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vandpd	.LCPI2_5(%rip){1to2}, %xmm1, %xmm0
	vmulsd	.LCPI2_10(%rip), %xmm0, %xmm2
	movl	$3, %eax
	vmovsd	.LCPI2_12(%rip), %xmm0          # xmm0 = mem[0],zero
	movl	$.L.str.32, %edi
                                        # kill: def $al killed $al killed $eax
	callq	printf
	movl	$.L.str.35, %edi
	vmovq	.LCPI2_6(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	%ebx, %eax
	callq	printf
	movq	array_elements(%rip), %r14
	testq	%r14, %r14
	je	.LBB2_8
# %bb.14:
	movq	b(%rip), %rax
	movq	%r14, %rcx
	andq	$-8, %rcx
	je	.LBB2_15
# %bb.36:
	leaq	-1(%rcx), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	vbroadcastsd	.LCPI2_13(%rip), %ymm1  # ymm1 = [1.0283449188905711E+0,1.0283449188905711E+0,1.0283449188905711E+0,1.0283449188905711E+0]
	vbroadcastsd	.LCPI2_9(%rip), %ymm2   # ymm2 = [-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0]
	vbroadcastsd	.LCPI2_5(%rip), %ymm3   # ymm3 = [NaN,NaN,NaN,NaN]
	vbroadcastsd	.LCPI2_6(%rip), %ymm4   # ymm4 = [1.0E-13,1.0E-13,1.0E-13,1.0E-13]
	.p2align	4, 0x90
.LBB2_37:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rax,%rsi,8), %ymm5
	vfmadd132pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm5 * ymm1) + ymm2
	vmovupd	32(%rax,%rsi,8), %ymm6
	vfmadd132pd	%ymm1, %ymm2, %ymm6     # ymm6 = (ymm6 * ymm1) + ymm2
	vandpd	%ymm3, %ymm6, %ymm6
	vandpd	%ymm3, %ymm5, %ymm5
	vcmpltpd	%ymm5, %ymm4, %k0
	vcmpltpd	%ymm6, %ymm4, %k1
	kshiftlb	$4, %k1, %k1
	korb	%k1, %k0, %k0
	vpmovm2d	%k0, %ymm5
	vpsubd	%ymm5, %ymm0, %ymm0
	addq	$8, %rsi
	cmpq	%rdx, %rsi
	jle	.LBB2_37
# %bb.38:
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %esi
	cmpq	%rcx, %r14
	vmovsd	.LCPI2_6(%rip), %xmm4           # xmm4 = mem[0],zero
	jne	.LBB2_39
	jmp	.LBB2_9
	.p2align	6, 0x90
.LBB2_16:
	vmulsd	.LCPI2_11(%rip), %xmm1, %xmm0
	vandpd	.LCPI2_5(%rip){1to2}, %xmm0, %xmm0
	vucomisd	.LCPI2_6(%rip), %xmm0
	jbe	.LBB2_24
# %bb.17:
	movq	array_elements(%rip), %r14
	jmp	.LBB2_18
	.p2align	6, 0x90
.LBB2_24:
	vucomisd	.LCPI2_6(%rip), %xmm3
	ja	.LBB2_25
# %bb.45:
	movl	$1, %eax
	vmovsd	.LCPI2_6(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str.39, %edi
                                        # kill: def $al killed $al killed $eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vzeroupper
	jmp	printf                          # TAILCALL
	.p2align	6, 0x90
.LBB2_8:
	.cfi_def_cfa_offset 112
	xorl	%esi, %esi
	jmp	.LBB2_9
	.p2align	6, 0x90
.LBB2_15:
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	vmovsd	.LCPI2_6(%rip), %xmm4           # xmm4 = mem[0],zero
.LBB2_39:
	vmovsd	.LCPI2_13(%rip), %xmm0          # xmm0 = mem[0],zero
	vmovsd	.LCPI2_9(%rip), %xmm1           # xmm1 = mem[0],zero
	vmovddup	.LCPI2_5(%rip), %xmm2           # xmm2 = [NaN,NaN]
                                        # xmm2 = mem[0,0]
	.p2align	4, 0x90
.LBB2_40:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rcx,8), %xmm3            # xmm3 = mem[0],zero
	vfmadd132sd	%xmm0, %xmm1, %xmm3     # xmm3 = (xmm3 * xmm0) + xmm1
	vandpd	%xmm2, %xmm3, %xmm3
	xorl	%edx, %edx
	vucomisd	%xmm4, %xmm3
	seta	%dl
	addl	%edx, %esi
	incq	%rcx
	cmpq	%rcx, %r14
	jne	.LBB2_40
.LBB2_9:
	movl	$.L.str.36, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	vzeroupper
	callq	printf
	vmovupd	(%rsp), %xmm1                   # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmulsd	.LCPI2_11(%rip), %xmm1, %xmm0
	vandpd	.LCPI2_5(%rip){1to2}, %xmm0, %xmm0
	vucomisd	.LCPI2_6(%rip), %xmm0
	jbe	.LBB2_25
.LBB2_18:
	movl	$1, %ebx
	vmovsd	.LCPI2_6(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str.37, %edi
	movl	%ebx, %eax
	vzeroupper
	callq	printf
	vmovupd	(%rsp), %xmm1                   # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vandpd	.LCPI2_5(%rip){1to2}, %xmm1, %xmm0
	vmulsd	.LCPI2_11(%rip), %xmm0, %xmm2
	movl	$3, %eax
	vmovsd	.LCPI2_14(%rip), %xmm0          # xmm0 = mem[0],zero
	movl	$.L.str.32, %edi
                                        # kill: def $al killed $al killed $eax
	callq	printf
	movl	$.L.str.35, %edi
	vmovq	.LCPI2_6(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	%ebx, %eax
	callq	printf
	testq	%r14, %r14
	je	.LBB2_19
# %bb.20:
	movq	c(%rip), %rax
	movq	%r14, %rcx
	andq	$-8, %rcx
	je	.LBB2_21
# %bb.41:
	leaq	-1(%rcx), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	vbroadcastsd	.LCPI2_15(%rip), %ymm1  # ymm1 = [3.0415835629157739E-1,3.0415835629157739E-1,3.0415835629157739E-1,3.0415835629157739E-1]
	vbroadcastsd	.LCPI2_9(%rip), %ymm2   # ymm2 = [-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0]
	vbroadcastsd	.LCPI2_5(%rip), %ymm3   # ymm3 = [NaN,NaN,NaN,NaN]
	vbroadcastsd	.LCPI2_6(%rip), %ymm4   # ymm4 = [1.0E-13,1.0E-13,1.0E-13,1.0E-13]
	.p2align	4, 0x90
.LBB2_42:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rax,%rsi,8), %ymm5
	vfmadd132pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm5 * ymm1) + ymm2
	vmovupd	32(%rax,%rsi,8), %ymm6
	vfmadd132pd	%ymm1, %ymm2, %ymm6     # ymm6 = (ymm6 * ymm1) + ymm2
	vandpd	%ymm3, %ymm6, %ymm6
	vandpd	%ymm3, %ymm5, %ymm5
	vcmpltpd	%ymm5, %ymm4, %k0
	vcmpltpd	%ymm6, %ymm4, %k1
	kshiftlb	$4, %k1, %k1
	korb	%k1, %k0, %k0
	vpmovm2d	%k0, %ymm5
	vpsubd	%ymm5, %ymm0, %ymm0
	addq	$8, %rsi
	cmpq	%rdx, %rsi
	jle	.LBB2_42
# %bb.43:
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %esi
	cmpq	%rcx, %r14
	vmovsd	.LCPI2_6(%rip), %xmm4           # xmm4 = mem[0],zero
	jne	.LBB2_22
	jmp	.LBB2_44
	.p2align	6, 0x90
.LBB2_25:
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
	.p2align	6, 0x90
.LBB2_19:
	.cfi_def_cfa_offset 112
	xorl	%esi, %esi
	jmp	.LBB2_44
	.p2align	6, 0x90
.LBB2_21:
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	vmovsd	.LCPI2_6(%rip), %xmm4           # xmm4 = mem[0],zero
.LBB2_22:
	vmovsd	.LCPI2_15(%rip), %xmm0          # xmm0 = mem[0],zero
	vmovsd	.LCPI2_9(%rip), %xmm1           # xmm1 = mem[0],zero
	vmovddup	.LCPI2_5(%rip), %xmm2           # xmm2 = [NaN,NaN]
                                        # xmm2 = mem[0,0]
	.p2align	4, 0x90
.LBB2_23:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rcx,8), %xmm3            # xmm3 = mem[0],zero
	vfmadd132sd	%xmm0, %xmm1, %xmm3     # xmm3 = (xmm3 * xmm0) + xmm1
	vandpd	%xmm2, %xmm3, %xmm3
	xorl	%edx, %edx
	vucomisd	%xmm4, %xmm3
	seta	%dl
	addl	%edx, %esi
	incq	%rcx
	cmpq	%rcx, %r14
	jne	.LBB2_23
.LBB2_44:
	movl	$.L.str.38, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vzeroupper
	jmp	printf                          # TAILCALL
.Lfunc_end2:
	.size	checkSTREAMresults, .Lfunc_end2-checkSTREAMresults
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function checktick
.LCPI3_0:
	.quad	0x3eb0c6f7a0b5ed8d              #  9.9999999999999995E-7
.LCPI3_1:
	.quad	0x412e848000000000              #  1.0E+6
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_2:
	.long	1000000                         # 0xf4240
	.text
	.globl	checktick
	.p2align	4, 0x90
	.type	checktick,@function
checktick:                              # 
	.cfi_startproc
# %bb.0:
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_1
# %bb.2:
	vmovsd	%xmm0, 16(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_3
# %bb.4:
	vmovsd	%xmm0, 24(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_5
# %bb.6:
	vmovsd	%xmm0, 32(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_7
# %bb.8:
	vmovsd	%xmm0, 40(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_9
# %bb.10:
	vmovsd	%xmm0, 48(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_11
# %bb.12:
	vmovsd	%xmm0, 56(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_13
# %bb.14:
	vmovsd	%xmm0, 64(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_15
# %bb.16:
	vmovsd	%xmm0, 72(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_17
# %bb.18:
	vmovsd	%xmm0, 80(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_19
# %bb.20:
	vmovsd	%xmm0, 88(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_21:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_21
# %bb.22:
	vmovsd	%xmm0, 96(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_23:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_23
# %bb.24:
	vmovsd	%xmm0, 104(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_25:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_25
# %bb.26:
	vmovsd	%xmm0, 112(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_27:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_27
# %bb.28:
	vmovsd	%xmm0, 120(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_29:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_29
# %bb.30:
	vmovsd	%xmm0, 128(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_31:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_31
# %bb.32:
	vmovsd	%xmm0, 136(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_33:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_33
# %bb.34:
	vmovsd	%xmm0, 144(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_35:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_35
# %bb.36:
	vmovsd	%xmm0, 152(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_37:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_37
# %bb.38:
	vmovsd	%xmm0, 160(%rsp)
	callq	MPI_Wtime
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_39:                               # =>This Inner Loop Header: Depth=1
	callq	MPI_Wtime
	vsubsd	8(%rsp), %xmm0, %xmm1           # 8-byte Folded Reload
	vucomisd	.LCPI3_0(%rip), %xmm1
	jb	.LBB3_39
# %bb.40:
	vmovsd	%xmm0, 168(%rsp)
	vmovupd	24(%rsp), %ymm0
	vmovupd	56(%rsp), %ymm1
	vmovupd	88(%rsp), %ymm2
	vsubpd	16(%rsp), %ymm0, %ymm0
	vbroadcastsd	.LCPI3_1(%rip), %ymm3   # ymm3 = [1.0E+6,1.0E+6,1.0E+6,1.0E+6]
	vmulpd	%ymm3, %ymm0, %ymm0
	vcvttpd2dq	%ymm0, %xmm0
	vmovupd	120(%rsp), %ymm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpmaxsd	%xmm5, %xmm0, %xmm0
	vsubpd	48(%rsp), %ymm1, %ymm1
	vmulpd	%ymm3, %ymm1, %ymm1
	vcvttpd2dq	%ymm1, %xmm1
	vpmaxsd	%xmm5, %xmm1, %xmm1
	vpminsd	%xmm1, %xmm0, %xmm0
	vsubpd	80(%rsp), %ymm2, %ymm1
	vmulpd	%ymm3, %ymm1, %ymm1
	vcvttpd2dq	%ymm1, %xmm1
	vpmaxsd	%xmm5, %xmm1, %xmm1
	vsubpd	112(%rsp), %ymm4, %ymm2
	vmulpd	%ymm3, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vpmaxsd	%xmm5, %xmm2, %xmm2
	vpminsd	%xmm2, %xmm1, %xmm1
	vpminsd	%xmm1, %xmm0, %xmm0
	vpminsd	.LCPI3_2(%rip){1to4}, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpminsd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpbroadcastd	%xmm0, %xmm0
	movb	$7, %al
	kmovb	%eax, %k1
	vmovupd	152(%rsp), %ymm2 {%k1} {z}
	vsubpd	144(%rsp), %ymm2, %ymm2
	vpminsd	%xmm1, %xmm0, %xmm0
	vmulpd	%ymm3, %ymm2, %ymm1
	vcvttpd2dq	%ymm1, %xmm1
	vpmaxsd	%xmm5, %xmm1, %xmm1
	vpminsd	%xmm1, %xmm0, %xmm1
	vpblendd	$8, %xmm0, %xmm1, %xmm0         # xmm0 = xmm1[0,1,2],xmm0[3]
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpminsd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpminsd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	addq	$184, %rsp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end3:
	.size	checktick, .Lfunc_end3-checktick
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR: MPI Initialization failed with return code %d\n"
	.size	.L.str, 54

	.type	array_elements,@object          # 
	.bss
	.globl	array_elements
	.p2align	3, 0x0
array_elements:
	.quad	0                               # 0x0
	.size	array_elements, 8

	.type	array_alignment,@object         # 
	.globl	array_alignment
	.p2align	3, 0x0
array_alignment:
	.quad	0                               # 0x0
	.size	array_alignment, 8

	.type	array_bytes,@object             # 
	.globl	array_bytes
	.p2align	3, 0x0
array_bytes:
	.quad	0                               # 0x0
	.size	array_bytes, 8

	.type	a,@object                       # 
	.globl	a
	.p2align	3, 0x0
a:
	.quad	0
	.size	a, 8

	.type	.L.str.1,@object                # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Rank %d: Allocation of array a failed, return code is %d\n"
	.size	.L.str.1, 58

	.type	b,@object                       # 
	.bss
	.globl	b
	.p2align	3, 0x0
b:
	.quad	0
	.size	b, 8

	.type	.L.str.2,@object                # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Rank %d: Allocation of array b failed, return code is %d\n"
	.size	.L.str.2, 58

	.type	c,@object                       # 
	.bss
	.globl	c
	.p2align	3, 0x0
c:
	.quad	0
	.size	c, 8

	.type	.L.str.3,@object                # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Rank %d: Allocation of array c failed, return code is %d\n"
	.size	.L.str.3, 58

	.type	.L.str.6,@object                # 
.L.str.6:
	.asciz	"This system uses %d bytes per array element.\n"
	.size	.L.str.6, 46

	.type	.L.str.7,@object                # 
.L.str.7:
	.asciz	"Total Aggregate Array size = %llu (elements)\n"
	.size	.L.str.7, 46

	.type	.L.str.8,@object                # 
.L.str.8:
	.asciz	"Total Aggregate Memory per array = %.1f MiB (= %.1f GiB).\n"
	.size	.L.str.8, 59

	.type	.L.str.9,@object                # 
.L.str.9:
	.asciz	"Total Aggregate memory required = %.1f MiB (= %.1f GiB).\n"
	.size	.L.str.9, 58

	.type	.L.str.10,@object               # 
.L.str.10:
	.asciz	"Data is distributed across %d MPI ranks\n"
	.size	.L.str.10, 41

	.type	.L.str.11,@object               # 
.L.str.11:
	.asciz	"   Array size per MPI rank = %llu (elements)\n"
	.size	.L.str.11, 46

	.type	.L.str.12,@object               # 
.L.str.12:
	.asciz	"   Memory per array per MPI rank = %.1f MiB (= %.1f GiB).\n"
	.size	.L.str.12, 59

	.type	.L.str.13,@object               # 
.L.str.13:
	.asciz	"   Total memory per MPI rank = %.1f MiB (= %.1f GiB).\n"
	.size	.L.str.13, 55

	.type	.L.str.14,@object               # 
.L.str.14:
	.asciz	"Each kernel will be executed %d times.\n"
	.size	.L.str.14, 40

	.type	.L.str.17,@object               # 
.L.str.17:
	.asciz	"The SCALAR value used for this run is %f\n"
	.size	.L.str.17, 42

	.type	.L.str.20,@object               # 
.L.str.20:
	.asciz	"Your timer granularity/precision appears to be %d microseconds.\n"
	.size	.L.str.20, 65

	.type	.L.str.22,@object               # 
.L.str.22:
	.asciz	"Each test below will take on the order of %d microseconds.\n"
	.size	.L.str.22, 60

	.type	.L.str.23,@object               # 
.L.str.23:
	.asciz	"   (= %d timer ticks)\n"
	.size	.L.str.23, 23

	.type	avgtime,@object                 # 
	.local	avgtime
	.comm	avgtime,32,16
	.type	mintime,@object                 # 
	.data
	.p2align	5, 0x0
mintime:
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
	.size	mintime, 32

	.type	maxtime,@object                 # 
	.local	maxtime
	.comm	maxtime,32,32
	.type	.L.str.30,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"%s%11.1f  %11.6f  %11.6f  %11.6f\n"
	.size	.L.str.30, 34

	.type	.L.str.31,@object               # 
.L.str.31:
	.asciz	"Failed Validation on array a[], AvgRelAbsErr > epsilon (%e)\n"
	.size	.L.str.31, 61

	.type	.L.str.32,@object               # 
.L.str.32:
	.asciz	"     Expected Value: %e, AvgAbsErr: %e, AvgRelAbsErr: %e\n"
	.size	.L.str.32, 58

	.type	.L.str.33,@object               # 
.L.str.33:
	.asciz	"     For array a[], %d errors were found.\n"
	.size	.L.str.33, 43

	.type	.L.str.34,@object               # 
.L.str.34:
	.asciz	"Failed Validation on array b[], AvgRelAbsErr > epsilon (%e)\n"
	.size	.L.str.34, 61

	.type	.L.str.35,@object               # 
.L.str.35:
	.asciz	"     AvgRelAbsErr > Epsilon (%e)\n"
	.size	.L.str.35, 34

	.type	.L.str.36,@object               # 
.L.str.36:
	.asciz	"     For array b[], %d errors were found.\n"
	.size	.L.str.36, 43

	.type	.L.str.37,@object               # 
.L.str.37:
	.asciz	"Failed Validation on array c[], AvgRelAbsErr > epsilon (%e)\n"
	.size	.L.str.37, 61

	.type	.L.str.38,@object               # 
.L.str.38:
	.asciz	"     For array c[], %d errors were found.\n"
	.size	.L.str.38, 43

	.type	.L.str.39,@object               # 
.L.str.39:
	.asciz	"Solution Validates: avg error less than %e on all three arrays\n"
	.size	.L.str.39, 64

	.type	.L.str.43,@object               # 
.L.str.43:
	.asciz	"Triad:     "
	.size	.L.str.43, 12

	.type	.Lstr.44,@object                # 
.Lstr.44:
	.asciz	"Function    Best Rate MB/s  Avg time     Min time     Max time"
	.size	.Lstr.44, 63

	.type	.Lstr.46,@object                # 
.Lstr.46:
	.asciz	"Increase the size of the arrays if this shows that"
	.size	.Lstr.46, 51

	.type	.Lstr.47,@object                # 
.Lstr.47:
	.asciz	"you are not getting at least 20 timer ticks per test."
	.size	.Lstr.47, 54

	.type	.Lstr.49,@object                # 
.Lstr.49:
	.asciz	"WARNING -- The above is only a rough guideline."
	.size	.Lstr.49, 48

	.type	.Lstr.50,@object                # 
.Lstr.50:
	.asciz	"For best results, please be sure you know the"
	.size	.Lstr.50, 46

	.type	.Lstr.51,@object                # 
.Lstr.51:
	.asciz	"precision of your system timer."
	.size	.Lstr.51, 32

	.type	.Lstr.54,@object                # 
.Lstr.54:
	.asciz	"Your timer granularity appears to be less than one microsecond."
	.size	.Lstr.54, 64

	.type	.Lstr.55,@object                # 
.Lstr.55:
	.asciz	"Ooops -- allocation of arrays to collect timing data on MPI rank 0 failed"
	.size	.Lstr.55, 74

	.type	.Lstr.56,@object                # 
.Lstr.56:
	.asciz	"Ooops -- allocation of arrays to collect errors on MPI rank 0 failed"
	.size	.Lstr.56, 69

	.type	.Lstr.58,@object                # 
.Lstr.58:
	.asciz	"STREAM version $Revision: 1.8 $"
	.size	.Lstr.58, 32

	.type	.Lstr.61,@object                # 
.Lstr.61:
	.asciz	"-------------------------------------------------------------"
	.size	.Lstr.61, 62

	.type	.Lstr.62,@object                # 
.Lstr.62:
	.asciz	" The *best* time for each kernel (excluding the first iteration)"
	.size	.Lstr.62, 65

	.type	.Lstr.63,@object                # 
.Lstr.63:
	.asciz	" will be used to compute the reported bandwidth."
	.size	.Lstr.63, 49

	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2024.0.2 (2024.0.2.20231213)"
	.section	".note.GNU-stack","",@progbits
