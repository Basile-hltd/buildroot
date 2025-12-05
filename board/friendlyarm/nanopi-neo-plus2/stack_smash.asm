
board/friendlyarm/nanopi-neo-plus2/stack_smash:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000660 <_init>:
 660:	d503201f 	nop
 664:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 668:	910003fd 	mov	x29, sp
 66c:	94000032 	bl	734 <call_weak_fn>
 670:	a8c17bfd 	ldp	x29, x30, [sp], #16
 674:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000680 <.plt>:
 680:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 684:	b0000010 	adrp	x16, 1000 <__FRAME_END__+0x688>
 688:	f947ce11 	ldr	x17, [x16, #3992]
 68c:	913e6210 	add	x16, x16, #0xf98
 690:	d61f0220 	br	x17
 694:	d503201f 	nop
 698:	d503201f 	nop
 69c:	d503201f 	nop

00000000000006a0 <__libc_start_main@plt>:
 6a0:	b0000010 	adrp	x16, 1000 <__FRAME_END__+0x688>
 6a4:	f947d211 	ldr	x17, [x16, #4000]
 6a8:	913e8210 	add	x16, x16, #0xfa0
 6ac:	d61f0220 	br	x17

00000000000006b0 <__cxa_finalize@plt>:
 6b0:	b0000010 	adrp	x16, 1000 <__FRAME_END__+0x688>
 6b4:	f947d611 	ldr	x17, [x16, #4008]
 6b8:	913ea210 	add	x16, x16, #0xfa8
 6bc:	d61f0220 	br	x17

00000000000006c0 <__stack_chk_fail@plt>:
 6c0:	b0000010 	adrp	x16, 1000 <__FRAME_END__+0x688>
 6c4:	f947da11 	ldr	x17, [x16, #4016]
 6c8:	913ec210 	add	x16, x16, #0xfb0
 6cc:	d61f0220 	br	x17

00000000000006d0 <__gmon_start__@plt>:
 6d0:	b0000010 	adrp	x16, 1000 <__FRAME_END__+0x688>
 6d4:	f947de11 	ldr	x17, [x16, #4024]
 6d8:	913ee210 	add	x16, x16, #0xfb8
 6dc:	d61f0220 	br	x17

00000000000006e0 <abort@plt>:
 6e0:	b0000010 	adrp	x16, 1000 <__FRAME_END__+0x688>
 6e4:	f947e211 	ldr	x17, [x16, #4032]
 6e8:	913f0210 	add	x16, x16, #0xfc0
 6ec:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000700 <_start>:
 700:	d503201f 	nop
 704:	d280001d 	mov	x29, #0x0                   	// #0
 708:	d280001e 	mov	x30, #0x0                   	// #0
 70c:	aa0003e5 	mov	x5, x0
 710:	f94003e1 	ldr	x1, [sp]
 714:	910023e2 	add	x2, sp, #0x8
 718:	910003e6 	mov	x6, sp
 71c:	b0000000 	adrp	x0, 1000 <__FRAME_END__+0x688>
 720:	f947f800 	ldr	x0, [x0, #4080]
 724:	d2800003 	mov	x3, #0x0                   	// #0
 728:	d2800004 	mov	x4, #0x0                   	// #0
 72c:	97ffffdd 	bl	6a0 <__libc_start_main@plt>
 730:	97ffffec 	bl	6e0 <abort@plt>

0000000000000734 <call_weak_fn>:
 734:	b0000000 	adrp	x0, 1000 <__FRAME_END__+0x688>
 738:	f947f000 	ldr	x0, [x0, #4064]
 73c:	b4000040 	cbz	x0, 744 <call_weak_fn+0x10>
 740:	17ffffe4 	b	6d0 <__gmon_start__@plt>
 744:	d65f03c0 	ret

0000000000000748 <deregister_tm_clones>:
 748:	d0000000 	adrp	x0, 2000 <__data_start>
 74c:	91004000 	add	x0, x0, #0x10
 750:	d0000001 	adrp	x1, 2000 <__data_start>
 754:	91004021 	add	x1, x1, #0x10
 758:	eb00003f 	cmp	x1, x0
 75c:	540000c0 	b.eq	774 <deregister_tm_clones+0x2c>  // b.none
 760:	b0000001 	adrp	x1, 1000 <__FRAME_END__+0x688>
 764:	f947e821 	ldr	x1, [x1, #4048]
 768:	b4000061 	cbz	x1, 774 <deregister_tm_clones+0x2c>
 76c:	aa0103f0 	mov	x16, x1
 770:	d61f0200 	br	x16
 774:	d65f03c0 	ret

0000000000000778 <register_tm_clones>:
 778:	d0000000 	adrp	x0, 2000 <__data_start>
 77c:	91004000 	add	x0, x0, #0x10
 780:	d0000001 	adrp	x1, 2000 <__data_start>
 784:	91004021 	add	x1, x1, #0x10
 788:	cb000021 	sub	x1, x1, x0
 78c:	d2800042 	mov	x2, #0x2                   	// #2
 790:	9343fc21 	asr	x1, x1, #3
 794:	9ac20c21 	sdiv	x1, x1, x2
 798:	b40000c1 	cbz	x1, 7b0 <register_tm_clones+0x38>
 79c:	b0000002 	adrp	x2, 1000 <__FRAME_END__+0x688>
 7a0:	f947fc42 	ldr	x2, [x2, #4088]
 7a4:	b4000062 	cbz	x2, 7b0 <register_tm_clones+0x38>
 7a8:	aa0203f0 	mov	x16, x2
 7ac:	d61f0200 	br	x16
 7b0:	d65f03c0 	ret

00000000000007b4 <__do_global_dtors_aux>:
 7b4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 7b8:	910003fd 	mov	x29, sp
 7bc:	f9000bf3 	str	x19, [sp, #16]
 7c0:	d0000013 	adrp	x19, 2000 <__data_start>
 7c4:	39404260 	ldrb	w0, [x19, #16]
 7c8:	35000140 	cbnz	w0, 7f0 <__do_global_dtors_aux+0x3c>
 7cc:	b0000000 	adrp	x0, 1000 <__FRAME_END__+0x688>
 7d0:	f947ec00 	ldr	x0, [x0, #4056]
 7d4:	b4000080 	cbz	x0, 7e4 <__do_global_dtors_aux+0x30>
 7d8:	d0000000 	adrp	x0, 2000 <__data_start>
 7dc:	f9400400 	ldr	x0, [x0, #8]
 7e0:	97ffffb4 	bl	6b0 <__cxa_finalize@plt>
 7e4:	97ffffd9 	bl	748 <deregister_tm_clones>
 7e8:	52800020 	mov	w0, #0x1                   	// #1
 7ec:	39004260 	strb	w0, [x19, #16]
 7f0:	f9400bf3 	ldr	x19, [sp, #16]
 7f4:	a8c27bfd 	ldp	x29, x30, [sp], #32
 7f8:	d65f03c0 	ret

00000000000007fc <frame_dummy>:
 7fc:	17ffffdf 	b	778 <register_tm_clones>

0000000000000800 <main>:
 800:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 804:	910003fd 	mov	x29, sp
 808:	b0000000 	adrp	x0, 1000 <__FRAME_END__+0x688>
 80c:	f947f400 	ldr	x0, [x0, #4072]
 810:	f9400001 	ldr	x1, [x0]
 814:	f9000fe1 	str	x1, [sp, #24]
 818:	d2800001 	mov	x1, #0x0                   	// #0
 81c:	910043e2 	add	x2, sp, #0x10
 820:	90000000 	adrp	x0, 0 <__abi_tag-0x254>
 824:	91224001 	add	x1, x0, #0x890
 828:	aa0203e0 	mov	x0, x2
 82c:	79400022 	ldrh	w2, [x1]
 830:	79000002 	strh	w2, [x0]
 834:	39400821 	ldrb	w1, [x1, #2]
 838:	39000801 	strb	w1, [x0, #2]
 83c:	52800000 	mov	w0, #0x0                   	// #0
 840:	2a0003e1 	mov	w1, w0
 844:	b0000000 	adrp	x0, 1000 <__FRAME_END__+0x688>
 848:	f947f400 	ldr	x0, [x0, #4072]
 84c:	f9400fe3 	ldr	x3, [sp, #24]
 850:	f9400002 	ldr	x2, [x0]
 854:	eb020063 	subs	x3, x3, x2
 858:	d2800002 	mov	x2, #0x0                   	// #0
 85c:	54000040 	b.eq	864 <main+0x64>  // b.none
 860:	97ffff98 	bl	6c0 <__stack_chk_fail@plt>
 864:	2a0103e0 	mov	w0, w1
 868:	a8c27bfd 	ldp	x29, x30, [sp], #32
 86c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000870 <_fini>:
 870:	d503201f 	nop
 874:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 878:	910003fd 	mov	x29, sp
 87c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 880:	d65f03c0 	ret
