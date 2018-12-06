#include "defines.h"

typedef struct {
	DSPfract degree;
	DSPfract gain;
} inverter_data_t;



void audio_invert_init(__memX inverter_data_t * data, DSPfract degree,DSPfract gain);
void gst_audio_invert_transform(__memX inverter_data_t * data,__memY DSPfract * input,__memY DSPfract * output);
