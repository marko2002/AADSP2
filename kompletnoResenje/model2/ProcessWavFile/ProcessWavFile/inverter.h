#include "defines.h"

typedef struct {
	DSPfract degree;
	DSPfract gain;
} inverter_data_t;



void audio_invert_init(inverter_data_t * data, DSPfract degree, DSPfract gain);
void gst_audio_invert_transform(inverter_data_t * data,DSPfract * input, DSPfract * output);