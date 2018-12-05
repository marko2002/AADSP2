	.public _deegreTmp
	.public _gainTmp
	.public _inverter
	.public _sampleBuffer
	.extern _audio_invert_init
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.xdata_ovly
_deegreTmp
	.dw  (0xf3333333)
	.xdata_ovly
_gainTmp
	.dw  (0xccccccc)
	.xdata_ovly
_inverter
	.bss (0x2)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x32)
	.dw  (0x63)
	.dw  (0x68)
	.dw  (0x5f)
	.dw  (0x63)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x74)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x72)
	.dw  (0x5f)
	.dw  (0x6e)
	.dw  (0x65)
	.dw  (0x34)
	.dw  (0x30)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x34)
	.dw  (0x62)
	.dw  (0x5f)
	.dw  (0x34)
	.dw  (0x38)
	.dw  (0x6b)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x33)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 18 | 
	i7 += 1			# LN: 18 | 
	i7 = i7 + (0x20e)			# LN: 18 | 
	i1 = i7 - (0x1)			# LN: 18 | 
	xmem[i1] = a0h			# LN: 18 | 
	i1 = i7 - (0x2)			# LN: 18 | 
	xmem[i1] = i0			# LN: 18 | 
cline_18_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 34 | 
	a0 = 0			# LN: 34 | 
	xmem[i0] = a0h			# LN: 34 | 
	do (0x8), label_end_93			# LN: 34 | 
cline_34_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 35 | 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
	do (0x10), label_end_92			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 36 | 
	a0 = xmem[i0]; a1 = 0			# LN: 36, 36 | 
	a0 = a0 << 4			# LN: 36 | 
	i0 = a0			# LN: 36 | 
	i1 = i7 - (0x4)			# LN: 36 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 36 | 
	a0 = xmem[i1]			# LN: 36 | 
	b0 = i0			# LN: 36 | 
	a0 = a0 + b0			# LN: 36 | 
	AnyReg(i0, a0h)			# LN: 36 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 36 | 
cline_36_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	uhalfword(a1) = (0x1)			# LN: 35 | 
	a0 = a0 + a1			# LN: 35 | 
	i0 = i7 - (0x4)			# LN: 35 | 
label_end_92:			# LN: 35 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 35 | 
cline_35_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 34 | 
	a0 = xmem[i0]			# LN: 34 | 
	uhalfword(a1) = (0x1)			# LN: 34 | 
	a0 = a0 + a1			# LN: 34 | 
	i0 = i7 - (0x3)			# LN: 34 | 
label_end_93:			# LN: 34 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 34 | 
cline_34_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 42 | 
	i1 = (0) + (_string_const_0)			# LN: 42 | 
	call (_strcpy)			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 43 | 
	call (_cl_wavread_open)			# LN: 43 | 
	AnyReg(i0, a0h)			# LN: 43 | 
	i1 = i7 - (0x105)			# LN: 43 | 
	xmem[i1] = i0			# LN: 43 | 
cline_43_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 44 | 
	a0 = xmem[i0]			# LN: 44 | 
	a0 & a0			# LN: 44 | 
	if (a != 0) jmp (else_0)			# LN: 44 | 
cline_44_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 46 | 
	call (_printf)			# LN: 46 | 
cline_46_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 47 | 
	jmp (__epilogue_226)			# LN: 47 | 
cline_47_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	call (_cl_wavread_getnchannels)			# LN: 53 | 
	i0 = i7 - (0x106)			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	call (_cl_wavread_bits_per_sample)			# LN: 54 | 
	i0 = i7 - (0x107)			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	call (_cl_wavread_frame_rate)			# LN: 55 | 
	i0 = i7 - (0x108)			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	call (_cl_wavread_number_of_frames)			# LN: 56 | 
	i0 = i7 - (0x109)			# LN: 56 | 
	xmem[i0] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 61 | 
	i1 = (0) + (_string_const_2)			# LN: 61 | 
	call (_strcpy)			# LN: 61 | 
cline_61_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 62 | 
	i1 = i7 - (0x107)			# LN: 62 | 
	a0 = xmem[i1]			# LN: 62 | 
	uhalfword(a1) = (0x5)			# LN: 62 | 
	i1 = i7 - (0x108)			# LN: 62 | 
	b0 = xmem[i1]			# LN: 62 | 
	call (_cl_wavwrite_open)			# LN: 62 | 
	AnyReg(i0, a0h)			# LN: 62 | 
	i1 = i7 - (0x20a)			# LN: 62 | 
	xmem[i1] = i0			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	a0 & a0			# LN: 63 | 
	if (a != 0) jmp (else_1)			# LN: 63 | 
cline_63_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 65 | 
	call (_printf)			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 66 | 
	jmp (__epilogue_226)			# LN: 66 | 
cline_66_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_gainTmp + 0]			# LN: 71 | 
	a1 = xmem[_deegreTmp + 0]			# LN: 71 | 
	i0 = (0) + (_inverter)			# LN: 71 | 
	call (_audio_invert_init)			# LN: 71 | 
cline_71_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
for_2:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x10)			# LN: 82 | 
	call (__div)			# LN: 82 | 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a1 = xmem[i0]			# LN: 82 | 
	a1 - a0			# LN: 82 | 
	if (a >= 0) jmp (for_end_2)			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 84 | 
	a0 = 0			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
	do (0x10), label_end_94			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 86 | 
	a0 = 0			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
for_4:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	i0 = i7 - (0x106)			# LN: 86 | 
	a1 = xmem[i0]			# LN: 86 | 
	a0 - a1			# LN: 86 | 
	if (a >= 0) jmp (for_end_4)			# LN: 86 | 
cline_86_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	call (_cl_wavread_recvsample)			# LN: 88 | 
	i0 = i7 - (0x20e)			# LN: 88 | 
	xmem[i0] = a0h			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	a0 = a0 << 4			# LN: 89 | 
	i0 = a0			# LN: 89 | 
	i1 = i7 - (0x20c)			# LN: 89 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 89 | 
	a0 = xmem[i1]			# LN: 89 | 
	a1 = i0			# LN: 89 | 
	a0 = a1 + a0			# LN: 89 | 
	AnyReg(i0, a0h)			# LN: 89 | 
	i1 = i7 - (0x20e)			# LN: 89 | 
	a0 = xmem[i1]			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
cline_89_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	uhalfword(a1) = (0x1)			# LN: 86 | 
	a0 = a0 + a1			# LN: 86 | 
	i0 = i7 - (0x20d)			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
	jmp (for_4)			# LN: 86 | 
cline_86_1:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	uhalfword(a1) = (0x1)			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	i0 = i7 - (0x20c)			# LN: 84 | 
label_end_94:			# LN: 84 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 84 | 
cline_84_1:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_inverter)			# LN: 93 | 
	call (_processing)			# LN: 93 | 
cline_93_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 95 | 
	a0 = 0			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
	do (0x10), label_end_96			# LN: 95 | 
cline_95_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 97 | 
	a0 = 0			# LN: 97 | 
	xmem[i0] = a0h			# LN: 97 | 
	do (0x5), label_end_95			# LN: 97 | 
cline_97_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	a0 = a0 << 4			# LN: 99 | 
	i0 = a0			# LN: 99 | 
	i1 = i7 - (0x20c)			# LN: 99 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 99 | 
	a0 = xmem[i1]			# LN: 99 | 
	a1 = i0			# LN: 99 | 
	a0 = a1 + a0			# LN: 99 | 
	AnyReg(i0, a0h)			# LN: 99 | 
	i1 = i7 - (0x20e)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	xmem[i1] = a0h			# LN: 99 | 
cline_99_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 100 | 
	i1 = i7 - (0x20e)			# LN: 100 | 
	a0 = xmem[i1]			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	call (_cl_wavwrite_sendsample)			# LN: 100 | 
cline_100_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	uhalfword(a1) = (0x1)			# LN: 97 | 
	a0 = a0 + a1			# LN: 97 | 
	i0 = i7 - (0x20d)			# LN: 97 | 
label_end_95:			# LN: 97 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 97 | 
cline_97_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	uhalfword(a1) = (0x1)			# LN: 95 | 
	a0 = a0 + a1			# LN: 95 | 
	i0 = i7 - (0x20c)			# LN: 95 | 
label_end_96:			# LN: 95 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 95 | 
cline_95_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x1)			# LN: 82 | 
	a0 = a0 + a1			# LN: 82 | 
	i0 = i7 - (0x20b)			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	jmp (for_2)			# LN: 82 | 
cline_82_1:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	call (_cl_wavread_close)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	call (_cl_wavwrite_close)			# LN: 109 | 
cline_109_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 112 | 
	jmp (__epilogue_226)			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
__epilogue_226:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 113 | 
	i7 -= 1			# LN: 113 | 
	ret			# LN: 113 | 
