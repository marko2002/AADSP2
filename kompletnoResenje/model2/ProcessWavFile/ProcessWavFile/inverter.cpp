/**
 *
 * Swaps upper and lower half of audio samples. Mixing an inverted sample on top of
 * the original with a slight delay can produce effects that sound like resonance.
 * Creating a stereo sample from a mono source, with one channel inverted produces wide-stereo sounds.
 *
 */

#include "inverter.h"


void audio_invert_init(inverter_data_t * data, DSPfract degree, DSPfract gain)
{
	data->degree = degree;
	data->gain = gain;
}

void gst_audio_invert_transform(inverter_data_t * data, DSPfract * input, DSPfract * output)
{
  DSPint i;
  DSPfract dry = FRACT_NUM(0.999) - data->degree;
  dry = dry + FRACT_NUM(0.001);
  DSPfract val;

  for (i = 0; i < BLOCK_SIZE; i++) {
	val = (*input) * dry - (FRACT_NUM(0.9990) + (*input)) * data->degree;
	*input++;
    (*output) = val * data->gain;
	*output++;
  }
}

