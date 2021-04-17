	.file	"benchmark_mod.c"
# GNU C17 (GCC) version 8.1.0 20180502 (Cray Inc.) (x86_64-suse-linux)
#	compiled by GNU C version 8.1.0 20180502 (Cray Inc.), GMP version 6.0.0, MPFR version 3.1.3, MPC version 1.0.3, isl version isl-0.15-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I /opt/cray/pe/libsci/20.06.1/GNU/8.1/x86_64/include
# -I /opt/cray/pe/mpt/7.7.14/gni/mpich-gnu/8.2/include
# -I /opt/cray/rca/2.2.20-7.0.2.1_2.38__g8e3fb5b.ari/include
# -I /opt/cray/pe/pmi/5.0.16/include
# -I /opt/cray/xpmem/2.2.20-7.0.2.1_2.31__g87eb960.ari/include
# -I /opt/cray/gni-headers/5.0.12.0-7.0.2.1_2.8__g3b1768f.ari/include
# -I /opt/cray/ugni/6.0.14.0-7.0.2.1_3.32__ge78e5b0.ari/include
# -I /opt/cray/udreg/2.3.2-7.0.2.1_2.25__g8175d3d.ari/include
# -I /opt/cray/pe/atp/3.7.5/include
# -I /opt/cray/alps/6.6.59-7.0.2.1_3.25__g872a8d62.ari/include
# -I /opt/cray/wlm_detect/1.3.3-7.0.2.1_2.8__g7109084.ari/include
# -I /opt/cray/alps/6.6.59-7.0.2.1_3.25__g872a8d62.ari/include
# -I /opt/cray/krca/2.2.7-7.0.2.1_2.32__ge897ee1.ari/include
# -I /opt/cray-hss-devel/9.0.0/include -D __CRAYXC -D __CRAY_HASWELL
# -D __CRAYXT_COMPUTE_LINUX_TARGET -D __TARGET_LINUX__ benchmark_mod.c
# -march=core-avx2 -O2 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -falign-labels
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
# -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
# -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
# -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-blocks-and-partition -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstore-merging -fstrict-aliasing -fstrict-volatile-bitfields
# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
# -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
# -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vrp -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387 -maes
# -malign-stringops -mavx -mavx2 -mbmi -mbmi2 -mcx16 -mf16c
# -mfancy-math-387 -mfma -mfp-ret-in-387 -mfsgsbase -mfxsr -mglibc -mhle
# -mieee-fp -mlong-double-80 -mlzcnt -mmmx -mmovbe -mpclmul -mpopcnt
# -mpush-args -mrdrnd -mred-zone -msahf -msse -msse2 -msse3 -msse4 -msse4.1
# -msse4.2 -mssse3 -mstv -mtls-direct-seg-refs -mvzeroupper -mxsave
# -mxsaveopt

	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"Failed integrity check!"
.LC8:
	.string	"Execution time: %11.8f s\n"
.LC9:
	.string	"Min time: %11.8f s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax	# ivtmp.42
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$120072, %rsp	#,
	.cfi_def_cfa_offset 120096
	vmovsd	.LC2(%rip), %xmm1	#, tmp149
	vmovsd	.LC3(%rip), %xmm0	#, tmp150
.L2:
# benchmark_mod.c:15:     a[i] = 47.0;
	vmovsd	%xmm1, 64(%rsp,%rax)	# tmp149, MEM[symbol: a, index: ivtmp.42_20, offset: 0B]
# benchmark_mod.c:16:     b[i] = 3.1415;
	vmovsd	%xmm0, 40064(%rsp,%rax)	# tmp150, MEM[symbol: b, index: ivtmp.42_20, offset: 0B]
	addq	$8, %rax	#, ivtmp.42
# benchmark_mod.c:14:   for (i = 0; i < N; i++){
	cmpq	$40000, %rax	#, ivtmp.42
	jne	.L2	#,
	xorl	%eax, %eax	# ivtmp.33
.L3:
# benchmark_mod.c:21:     c[i] = a[i]*b[i];
	vmovsd	64(%rsp,%rax), %xmm0	# MEM[symbol: a, index: ivtmp.33_67, offset: 0B], MEM[symbol: a, index: ivtmp.33_67, offset: 0B]
	vmulsd	40064(%rsp,%rax), %xmm0, %xmm0	# MEM[symbol: b, index: ivtmp.33_67, offset: 0B], MEM[symbol: a, index: ivtmp.33_67, offset: 0B], tmp123
	addq	$8, %rax	#, ivtmp.33
# benchmark_mod.c:21:     c[i] = a[i]*b[i];
	vmovsd	%xmm0, 80056(%rsp,%rax)	# tmp123, MEM[symbol: c, index: ivtmp.33_67, offset: 0B]
# benchmark_mod.c:20:   for(i = 0; i < N; i++)
	cmpq	$40000, %rax	#, ivtmp.33
	jne	.L3	#,
# benchmark_mod.c:24:   double min = 1;
	vmovsd	.LC0(%rip), %xmm7	#, min
	movl	$100, %ebx	#, ivtmp_16
	vmovsd	%xmm7, 8(%rsp)	# min, %sfp
# benchmark_mod.c:23:   double total = 0;
	vxorpd	%xmm7, %xmm7, %xmm7	# total
	vmovsd	%xmm7, 16(%rsp)	# total, %sfp
.L7:
# benchmark_mod.c:53:   i = gettimeofday(&tp,&tzp);
	leaq	40(%rsp), %rsi	#, tmp156
	leaq	48(%rsp), %rdi	#, tmp157
	call	gettimeofday	#
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp127
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp128
	xorl	%eax, %eax	# ivtmp.17
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	56(%rsp), %xmm1, %xmm1	# tp.tv_usec, tmp127, tmp127
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	48(%rsp), %xmm0, %xmm0	# tp.tv_sec, tmp128, tmp128
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vfmadd132sd	.LC4(%rip), %xmm0, %xmm1	#, tmp128, tmp127
	vmovsd	%xmm1, 24(%rsp)	# tmp127, %sfp
	.p2align 4,,10
	.p2align 3
.L4:
# benchmark_mod.c:29: 	    c[i] = a[i]*b[i];
	vmovsd	64(%rsp,%rax), %xmm0	# MEM[symbol: a, index: ivtmp.17_73, offset: 0B], MEM[symbol: a, index: ivtmp.17_73, offset: 0B]
	vmulsd	40064(%rsp,%rax), %xmm0, %xmm0	# MEM[symbol: b, index: ivtmp.17_73, offset: 0B], MEM[symbol: a, index: ivtmp.17_73, offset: 0B], tmp133
	addq	$8, %rax	#, ivtmp.17
# benchmark_mod.c:29: 	    c[i] = a[i]*b[i];
	vmovsd	%xmm0, 80056(%rsp,%rax)	# tmp133, MEM[symbol: c, index: ivtmp.17_73, offset: 0B]
# benchmark_mod.c:28: 	  for(i = 0; i < N; i++)
	cmpq	$40000, %rax	#, ivtmp.17
	jne	.L4	#,
# benchmark_mod.c:53:   i = gettimeofday(&tp,&tzp);
	leaq	40(%rsp), %rsi	#, tmp159
	leaq	48(%rsp), %rdi	#, tmp160
	call	gettimeofday	#
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp137
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp138
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	56(%rsp), %xmm0, %xmm0	# tp.tv_usec, tmp137, tmp137
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	48(%rsp), %xmm1, %xmm1	# tp.tv_sec, tmp138, tmp138
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vfmadd132sd	.LC4(%rip), %xmm1, %xmm0	#, tmp138, _54
# benchmark_mod.c:31: 	  double elapsed = t2 - t1;
	vsubsd	24(%rsp), %xmm0, %xmm0	# %sfp, _54, elapsed
# benchmark_mod.c:32: 	  if (elapsed < min) min = elapsed;
	vminsd	8(%rsp), %xmm0, %xmm3	# %sfp, elapsed, min
# benchmark_mod.c:33: 	  total += elapsed;
	vaddsd	16(%rsp), %xmm0, %xmm5	# %sfp, elapsed, total
# benchmark_mod.c:32: 	  if (elapsed < min) min = elapsed;
	vmovsd	%xmm3, 8(%rsp)	# min, %sfp
# benchmark_mod.c:33: 	  total += elapsed;
	vmovsd	%xmm5, 16(%rsp)	# total, %sfp
# benchmark_mod.c:25:   for (j = 0; j < REPEAT; ++j) {
	decl	%ebx	# ivtmp_16
	jne	.L7	#,
	leaq	80064(%rsp), %rbx	#, tmp166
	leaq	120064(%rsp), %rbp	#, _75
	vmovsd	.LC5(%rip), %xmm0	#, tmp152
	jmp	.L10	#
.L8:
	addq	$8, %rbx	#, ivtmp.6
# benchmark_mod.c:36:   for (i = 0; i < N; ++i) {
	cmpq	%rbp, %rbx	# _75, ivtmp.6
	je	.L20	#,
.L10:
# benchmark_mod.c:37:     if (c[i] != 47.0 * 3.1415) {
	vucomisd	(%rbx), %xmm0	# MEM[base: _76, offset: 0B], tmp152
	jp	.L12	#,
	je	.L8	#,
.L12:
# benchmark_mod.c:38: 	printf("Failed integrity check!");
	movl	$.LC6, %edi	#,
	xorl	%eax, %eax	#
	addq	$8, %rbx	#, ivtmp.6
	call	printf	#
	movq	.LC5(%rip), %rax	#, tmp172
	vmovq	%rax, %xmm0	# tmp172, tmp152
# benchmark_mod.c:36:   for (i = 0; i < N; ++i) {
	cmpq	%rbp, %rbx	# _75, ivtmp.6
	jne	.L10	#,
.L20:
# benchmark_mod.c:42:   printf("Execution time: %11.8f s\n", total/(double)REPEAT);
	movl	$.LC8, %edi	#,
	movb	$1, %al	#,
	vmovsd	16(%rsp), %xmm7	# %sfp, total
	vdivsd	.LC7(%rip), %xmm7, %xmm0	#, total, tmp142
	call	printf	#
# benchmark_mod.c:43:   printf("Min time: %11.8f s\n", min);
	vmovsd	8(%rsp), %xmm0	# %sfp,
	movl	$.LC9, %edi	#,
	movb	$1, %al	#,
	call	printf	#
# benchmark_mod.c:45: }
	addq	$120072, %rsp	#,
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	mysecond
	.type	mysecond, @function
mysecond:
.LFB12:
	.cfi_startproc
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 48
# benchmark_mod.c:53:   i = gettimeofday(&tp,&tzp);
	leaq	8(%rsp), %rsi	#, tmp98
	leaq	16(%rsp), %rdi	#, tmp99
	call	gettimeofday	#
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp94
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp95
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	24(%rsp), %xmm0, %xmm0	# tp.tv_usec, tmp94, tmp94
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	16(%rsp), %xmm1, %xmm1	# tp.tv_sec, tmp95, tmp95
# benchmark_mod.c:54:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vfmadd132sd	.LC4(%rip), %xmm1, %xmm0	#, tmp95, <retval>
# benchmark_mod.c:55: }
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE12:
	.size	mysecond, .-mysecond
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1078427648
	.align 8
.LC3:
	.long	3229815407
	.long	1074340298
	.align 8
.LC4:
	.long	2696277389
	.long	1051772663
	.align 8
.LC5:
	.long	3848290698
	.long	1080194256
	.align 8
.LC7:
	.long	0
	.long	1079574528
	.ident	"GCC: (GNU) 8.1.0 20180502 (Cray Inc.)"
	.section	.note.GNU-stack,"",@progbits
