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
  DSPaccum val;
  DSPfract tmp;
  DSPfract tmp1 = FRACT_NUM(0.5);
  dry = dry + FRACT_NUM(0.001);

  for(i = 0; i < BLOCK_SIZE; i++)
  {
	tmp = (tmp1 + ((*input)>>1));
	val = ((*input)>>1) * (dry) - tmp * data->degree;
	input++;
	(*output) = ((DSPfract)val * data->gain)<<1;
	output++;
  }
}
