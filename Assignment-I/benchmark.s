	.file	"benchmark.c"
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
# -D __CRAYXT_COMPUTE_LINUX_TARGET -D __TARGET_LINUX__ benchmark.c
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
.LC1:
	.string	"Execution time: %11.8f s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	leaq	24(%rsp), %rsi	#, tmp111
	leaq	32(%rsp), %rdi	#, tmp112
	call	gettimeofday	#
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp101
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp102
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	leaq	24(%rsp), %rsi	#, tmp114
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	32(%rsp), %xmm0, %xmm0	# tp.tv_sec, tmp102, tmp102
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	leaq	32(%rsp), %rdi	#, tmp115
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	40(%rsp), %xmm1, %xmm1	# tp.tv_usec, tmp101, tmp101
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vfmadd132sd	.LC0(%rip), %xmm0, %xmm1	#, tmp102, tmp101
	vmovsd	%xmm1, 8(%rsp)	# tmp101, %sfp
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	call	gettimeofday	#
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp106
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp107
# benchmark.c:24:   printf("Execution time: %11.8f s\n", (t2 - t1));
	movb	$1, %al	#,
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	40(%rsp), %xmm0, %xmm0	# tp.tv_usec, tmp106, tmp106
# benchmark.c:24:   printf("Execution time: %11.8f s\n", (t2 - t1));
	movl	$.LC1, %edi	#,
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	32(%rsp), %xmm1, %xmm1	# tp.tv_sec, tmp107, tmp107
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vfmadd132sd	.LC0(%rip), %xmm1, %xmm0	#, tmp107, _15
# benchmark.c:24:   printf("Execution time: %11.8f s\n", (t2 - t1));
	vsubsd	8(%rsp), %xmm0, %xmm0	# %sfp, _15, tmp109
	call	printf	#
# benchmark.c:26: }
	xorl	%eax, %eax	#
	addq	$56, %rsp	#,
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
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	leaq	8(%rsp), %rsi	#, tmp98
	leaq	16(%rsp), %rdi	#, tmp99
	call	gettimeofday	#
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp94
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp95
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	24(%rsp), %xmm0, %xmm0	# tp.tv_usec, tmp94, tmp94
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vcvtsi2sdq	16(%rsp), %xmm1, %xmm1	# tp.tv_sec, tmp95, tmp95
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	vfmadd132sd	.LC0(%rip), %xmm1, %xmm0	#, tmp95, <retval>
# benchmark.c:36: }
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE12:
	.size	mysecond, .-mysecond
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2696277389
	.long	1051772663
	.ident	"GCC: (GNU) 8.1.0 20180502 (Cray Inc.)"
	.section	.note.GNU-stack,"",@progbits
