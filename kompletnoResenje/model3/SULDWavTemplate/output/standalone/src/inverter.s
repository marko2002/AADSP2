	.public _audio_invert_init
	.public _gst_audio_invert_transform
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x7fdf3b64)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x20c49c)
	.code_ovly



_audio_invert_init:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 12 | 
	i7 += 1			# LN: 12 | 
	i7 = i7 + (0x3)			# LN: 12 | 
	i1 = i7 - (0x1)			# LN: 12 | 
	xmem[i1] = i0			# LN: 12 | 
	i0 = i7 - (0x2)			# LN: 12 | 
	xmem[i0] = a0h			# LN: 12 | 
	i0 = i7 - (0x3)			# LN: 12 | 
	xmem[i0] = a1h			# LN: 12 | 
cline_12_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 14 | 
	a0 = xmem[i0]			# LN: 14 | 
	AnyReg(i0, a0h)			# LN: 14 | 
	i1 = i7 - (0x2)			# LN: 14 | 
	a0 = xmem[i1]			# LN: 14 | 
	xmem[i0] = a0h			# LN: 14 | 
cline_14_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 15 | 
	i0 = xmem[i0]			# LN: 15 | 
	i1 = i7 - (0x3)			# LN: 15 | 
	i0 += 1			# LN: 15 | 
	a0 = xmem[i1]			# LN: 15 | 
	xmem[i0] = a0h			# LN: 15 | 
cline_15_0:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 16 | 
__epilogue_104:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 16 | 
	i7 -= 1			# LN: 16 | 
	ret			# LN: 16 | 



_gst_audio_invert_transform:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 18 | 
	i7 += 1			# LN: 18 | 
	i7 = i7 + (0xa)			# LN: 18 | 
	i5 = i7 - (0x1)			# LN: 18 | 
	xmem[i5] = i0			# LN: 18 | 
	i0 = i7 - (0x2)			# LN: 18 | 
	xmem[i0] = i1			# LN: 18 | 
	i0 = i7 - (0x3)			# LN: 18 | 
	xmem[i0] = i4			# LN: 18 | 
cline_18_0:			/* LN: 21 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 21 | 
	a0 = xmem[i0]			# LN: 21 | 
	AnyReg(i0, a0h)			# LN: 21 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 21 | 
	a1 = xmem[i0]			# LN: 21 | 
	a0 = a0 - a1			# LN: 21 | 
	i0 = i7 - (0x4)			# LN: 21 | 
	xmem[i0] = a0h			# LN: 21 | 
cline_21_0:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 24 | 
	a0 = (0x4000)			# LN: 24 | 
	xmem[i0] = a0h			# LN: 24 | 
cline_24_0:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 25 | 
	a0 = xmem[i0]			# LN: 25 | 
	a1 = xmem[__extractedConst_1_1 + 0]			# LN: 25 | 
	a0 = a0 + a1			# LN: 25 | 
	i0 = i7 - (0x4)			# LN: 25 | 
	xmem[i0] = a0h			# LN: 25 | 
cline_25_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 27 | 
	a0 = 0			# LN: 27 | 
	xmem[i0] = a0h			# LN: 27 | 
	do (0x10), label_end_92			# LN: 27 | 
cline_27_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 29 | 
	i0 = xmem[i0]			# LN: 29 | 
	i1 = i7 - (0x5)			# LN: 29 | 
	a0 = ymem[i0]			# LN: 29 | 
	a1 = xmem[i1]; a0 = a0 >> 1			# LN: 29, 29 | 
	a0 = a1 + a0			# LN: 29 | 
	i0 = i7 - (0x7)			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 30 | 
	i0 = xmem[i0]			# LN: 30 | 
	i1 = i7 - (0x4)			# LN: 30 | 
	a0 = ymem[i0]			# LN: 30 | 
	x0 = xmem[i1]; a0 = a0 >> 1			# LN: 30, 30 | 
	x1 = a0h			# LN: 30 | 
	i0 = i7 - (0x1)			# LN: 30 | 
	a0 = xmem[i0]; a1 = x1 * x0			# LN: 30, 30 | 
	AnyReg(i0, a0h)			# LN: 30 | 
	i1 = i7 - (0x7)			# LN: 30 | 
	x0 = xmem[i0]			# LN: 30 | 
	x1 = xmem[i1]			# LN: 30 | 
	a1 -= x1 * x0			# LN: 30 | 
	i0 = i7 - (0xa)			# LN: 30 | 
	xmem[i0] = a1g; i0 += 1			# LN: 30, 30 | 
	xmem[i0] = a1h; i0 += 1			# LN: 30, 30 | 
	xmem[i0] = a1l			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 31 | 
	i0 = xmem[i0]			# LN: 31 | 
	i1 = i7 - (0x2)			# LN: 31 | 
	i0 += 1			# LN: 31 | 
	xmem[i1] = i0			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 32 | 
	a0g = xmem[i0]; i0 += 1			# LN: 32, 32 | 
	a0h = xmem[i0]; i0 += 1			# LN: 32, 32 | 
	a0l = xmem[i0]			# LN: 32 | 
	i0 = i7 - (0x1)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	x0 = a0			# LN: 32 | 
	i0 += 1			# LN: 32 | 
	x1 = xmem[i0]			# LN: 32 | 
	a0 = x0 * x1			# LN: 32 | 
	i0 = i7 - (0x3)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	a0 = a0 << 1			# LN: 32 | 
	ymem[i0] = a0			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 33 | 
	i0 = xmem[i0]			# LN: 33 | 
	i1 = i7 - (0x3)			# LN: 33 | 
	i0 += 1			# LN: 33 | 
	xmem[i1] = i0			# LN: 33 | 
cline_33_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 27 | 
	a0 = xmem[i0]			# LN: 27 | 
	uhalfword(a1) = (0x1)			# LN: 27 | 
	a0 = a0 + a1			# LN: 27 | 
	i0 = i7 - (0x6)			# LN: 27 | 
label_end_92:			# LN: 27 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 27 | 
cline_27_1:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_106)			# LN: 35 | 
__epilogue_106:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xa)			# LN: 35 | 
	i7 -= 1			# LN: 35 | 
	ret			# LN: 35 | 
