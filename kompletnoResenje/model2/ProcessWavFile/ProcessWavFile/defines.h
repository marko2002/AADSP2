#ifndef _COMMON_H
#define _COMMON_H

#include "fixed_point_math.h"
#include "stdfix_emu.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define NMBR_CHANELS 5

#define GAIN_MINUS_6D 0.501187
#define GAIN_MINUS_3D 0.707946
#define GAIN_MINUS_2D 0.794328


typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;					/* DSP fixed-point fractional */
typedef long_accum DSPaccum;			/* DSP fixed-point fractional */

#endif 