	.extern _sampleBuffer
	.extern _gst_audio_invert_transform
	.public _processing
	.xdata_ovly
__extractedConst_0_4
	.dw  (0x4026e547)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x5a9df97b)
	.xdata_ovly
__extractedConst_2_2
	.dw  (0x65ac8a37)
	.code_ovly



_processing:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 7 | 
	i7 += 1			# LN: 7 | 
	i7 = i7 + (0x24)			# LN: 7 | 
	i1 = i7 - (0x1)			# LN: 7 | 
	xmem[i1] = i0			# LN: 7 | 
cline_7_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x12)			# LN: 14 | 
	i1 = i7 - (17 - 0)			# LN: 14 | 
	a0 = i1			# LN: 14 | 
	xmem[i0] = a0			# LN: 14 | 
cline_14_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x23)			# LN: 15 | 
	i1 = i7 - (34 - 0)			# LN: 15 | 
	a0 = i1			# LN: 15 | 
	xmem[i0] = a0			# LN: 15 | 
cline_15_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 19 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 19 | 
	xmem[i0] = a0			# LN: 19 | 
for_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 19 | 
	a0 = xmem[i0]			# LN: 19 | 
	uhalfword(a1) = (_sampleBuffer + 16)			# LN: 19 | 
	a0 - a1			# LN: 19 | 
	if (a >= 0) jmp (for_end_0)			# LN: 19 | 
cline_19_0:			/* LN: 22 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 22 | 
	i0 = xmem[i0]			# LN: 22 | 
	x0 = xmem[__extractedConst_0_4 + 0]			# LN: 22 | 
	x1 = xmem[i0]			# LN: 22 | 
	i0 = i7 - (0x24)			# LN: 22 | 
	i0 = xmem[i0]			# LN: 22 | 
	a0 = x1 * x0			# LN: 22 | 
	xmem[i0] = a0			# LN: 22 | 
cline_22_0:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x12)			# LN: 23 | 
	i1 = i7 - (0x24)			# LN: 23 | 
	i1 = xmem[i1]			# LN: 23 | 
	i0 = xmem[i0]			# LN: 23 | 
	a0 = xmem[i1]			# LN: 23 | 
	xmem[i0] = a0h			# LN: 23 | 
	i0 = i7 - (0x12)			# LN: 23 | 
	i0 = xmem[i0]			# LN: 23 | 
	i1 = i7 - (0x12)			# LN: 23 | 
	i0 += 1			# LN: 23 | 
	xmem[i1] = i0			# LN: 23 | 
cline_23_0:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 25 | 
	i0 = xmem[i0]			# LN: 25 | 
	i1 = i7 - (0x24)			# LN: 25 | 
	i1 = xmem[i1]			# LN: 25 | 
	i0 = i0 + (0x10)			# LN: 25 | 
	i1 = i1 + (0x10)			# LN: 25 | 
	x0 = xmem[i1]			# LN: 25 | 
	x1 = xmem[__extractedConst_0_4 + 0]			# LN: 25 | 
	a0 = x0 * x1			# LN: 25 | 
	xmem[i0] = a0			# LN: 25 | 
cline_25_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x23)			# LN: 26 | 
	i1 = i7 - (0x24)			# LN: 26 | 
	i1 = xmem[i1]			# LN: 26 | 
	i0 = xmem[i0]			# LN: 26 | 
	i1 = i1 + (0x10)			# LN: 26 | 
	a0 = xmem[i1]			# LN: 26 | 
	xmem[i0] = a0h			# LN: 26 | 
	i0 = i7 - (0x23)			# LN: 26 | 
	i0 = xmem[i0]			# LN: 26 | 
	i1 = i7 - (0x23)			# LN: 26 | 
	i0 += 1			# LN: 26 | 
	xmem[i1] = i0			# LN: 26 | 
cline_26_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 19 | 
	i0 = xmem[i0]			# LN: 19 | 
	i1 = i7 - (0x24)			# LN: 19 | 
	i0 += 1			# LN: 19 | 
	xmem[i1] = i0			# LN: 19 | 
	jmp (for_0)			# LN: 19 | 
cline_19_1:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x12)			# LN: 29 | 
	i1 = i7 - (17 - 0)			# LN: 29 | 
	a0 = i1			# LN: 29 | 
	xmem[i0] = a0			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x23)			# LN: 30 | 
	i1 = i7 - (34 - 0)			# LN: 30 | 
	a0 = i1			# LN: 30 | 
	xmem[i0] = a0			# LN: 30 | 
cline_30_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 33 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 33 | 
	xmem[i0] = a0			# LN: 33 | 
for_1:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 33 | 
	a0 = xmem[i0]			# LN: 33 | 
	uhalfword(a1) = (_sampleBuffer + 16)			# LN: 33 | 
	a0 - a1			# LN: 33 | 
	if (a >= 0) jmp (for_end_1)			# LN: 33 | 
cline_33_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 35 | 
	i0 = xmem[i0]			# LN: 35 | 
	i1 = i7 - (0x24)			# LN: 35 | 
	i0 = i0 + (0x20)			# LN: 35 | 
	i1 = xmem[i1]			# LN: 35 | 
	i4 = i7 - (0x24)			# LN: 35 | 
	i4 = xmem[i4]			# LN: 35 | 
	a0 = xmem[i1]			# LN: 35 | 
	i1 = i4 + (0x10)			# LN: 35 | 
	a1 = xmem[i1]			# LN: 35 | 
	a0 = a0 + a1			# LN: 35 | 
	x0 = a0h			# LN: 35 | 
	x1 = xmem[__extractedConst_1_1 + 0]			# LN: 35 | 
	a0 = x0 * x1			# LN: 35 | 
	xmem[i0] = a0			# LN: 35 | 
cline_35_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 33 | 
	i0 = xmem[i0]			# LN: 33 | 
	i1 = i7 - (0x24)			# LN: 33 | 
	i0 += 1			# LN: 33 | 
	xmem[i1] = i0			# LN: 33 | 
	jmp (for_1)			# LN: 33 | 
cline_33_1:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 39 | 
	i0 = xmem[i0]			# LN: 39 | 
	i1 = i7 - (0x12)			# LN: 39 | 
	i1 = xmem[i1]			# LN: 39 | 
	i4 = i7 - (0x12)			# LN: 39 | 
	i4 = xmem[i4]			# LN: 39 | 
	call (_gst_audio_invert_transform)			# LN: 39 | 
cline_39_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	i1 = i7 - (0x23)			# LN: 40 | 
	i1 = xmem[i1]			# LN: 40 | 
	i4 = i7 - (0x23)			# LN: 40 | 
	i4 = xmem[i4]			# LN: 40 | 
	call (_gst_audio_invert_transform)			# LN: 40 | 
cline_40_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 42 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 42 | 
	xmem[i0] = a0			# LN: 42 | 
for_2:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	uhalfword(a1) = (_sampleBuffer + 16)			# LN: 42 | 
	a0 - a1			# LN: 42 | 
	if (a >= 0) jmp (for_end_2)			# LN: 42 | 
cline_42_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	x0 = xmem[__extractedConst_0_4 + 0]			# LN: 44 | 
	i0 = i0 + (0x20)			# LN: 44 | 
	x1 = xmem[i0]			# LN: 44 | 
	i0 = i7 - (0x24)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	a0 = x1 * x0			# LN: 44 | 
	xmem[i0] = a0			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	i1 = i7 - (0x24)			# LN: 45 | 
	i1 = xmem[i1]			# LN: 45 | 
	i0 = i0 + (0x10)			# LN: 45 | 
	i1 = i1 + (0x20)			# LN: 45 | 
	x0 = xmem[i1]			# LN: 45 | 
	x1 = xmem[__extractedConst_0_4 + 0]			# LN: 45 | 
	a0 = x0 * x1			# LN: 45 | 
	xmem[i0] = a0			# LN: 45 | 
cline_45_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	i1 = i7 - (0x12)			# LN: 47 | 
	i0 = i0 + (0x30)			# LN: 47 | 
	i1 = xmem[i1]			# LN: 47 | 
	i4 = i7 - (0x24)			# LN: 47 | 
	i4 = xmem[i4]			# LN: 47 | 
	x0 = xmem[__extractedConst_2_2 + 0]			# LN: 47 | 
	a0 = xmem[i4]			# LN: 47 | 
	x1 = xmem[i1]			# LN: 47 | 
	a0 += x1 * x0			# LN: 47 | 
	xmem[i0] = a0			# LN: 47 | 
cline_47_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 48 | 
	i0 = xmem[i0]			# LN: 48 | 
	i1 = i7 - (0x23)			# LN: 48 | 
	i0 = i0 + (0x40)			# LN: 48 | 
	i1 = xmem[i1]			# LN: 48 | 
	i4 = i7 - (0x24)			# LN: 48 | 
	i4 = xmem[i4]			# LN: 48 | 
	x0 = xmem[__extractedConst_2_2 + 0]			# LN: 48 | 
	i4 = i4 + (0x10)			# LN: 48 | 
	a0 = xmem[i4]			# LN: 48 | 
	x1 = xmem[i1]			# LN: 48 | 
	a0 += x1 * x0			# LN: 48 | 
	xmem[i0] = a0			# LN: 48 | 
cline_48_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x12)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	i1 = i7 - (0x12)			# LN: 50 | 
	i0 += 1			# LN: 50 | 
	xmem[i1] = i0			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x23)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	i1 = i7 - (0x23)			# LN: 51 | 
	i0 += 1			# LN: 51 | 
	xmem[i1] = i0			# LN: 51 | 
cline_51_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 42 | 
	i0 = xmem[i0]			# LN: 42 | 
	i1 = i7 - (0x24)			# LN: 42 | 
	i0 += 1			# LN: 42 | 
	xmem[i1] = i0			# LN: 42 | 
	jmp (for_2)			# LN: 42 | 
cline_42_1:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x12)			# LN: 54 | 
	i1 = i7 - (17 - 0)			# LN: 54 | 
	a0 = i1			# LN: 54 | 
	xmem[i0] = a0			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x23)			# LN: 55 | 
	i1 = i7 - (34 - 0)			# LN: 55 | 
	a0 = i1			# LN: 55 | 
	xmem[i0] = a0			# LN: 55 | 
cline_55_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_108)			# LN: 57 | 
__epilogue_108:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x24)			# LN: 57 | 
	i7 -= 1			# LN: 57 | 
	ret			# LN: 57 | 
