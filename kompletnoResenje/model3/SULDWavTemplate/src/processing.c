/*
#include "processing.h"

__memY extern DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
__memY	DSPfract bufferL[BLOCK_SIZE];
__memY	DSPfract bufferR[BLOCK_SIZE];

void processing(__memX inverter_data_t* inverter)
{
	


__memY	DSPfract *p;
__memY	DSPfract *buffL = bufferL;
__memY	DSPfract *buffR = bufferR;

 DSPint i;
 p=sampleBuffer[0];
	for(i = 0; i<BLOCK_SIZE; i++)
	{
		//Left side
		*p =(*p) * GAIN_MINUS_6D;
		*buffL++ = *p;
		//Right side
		*(p+BLOCK_SIZE) = *(p+BLOCK_SIZE) * GAIN_MINUS_6D;
		*buffR++ = *(p+BLOCK_SIZE);
		p++;

	}

		buffL = bufferL;
		buffR = bufferR;

	p=sampleBuffer[0];
	for(i = 0; i<BLOCK_SIZE; i++)
	{
		*(p+32) = (*p + *(p+16))*GAIN_MINUS_3D;
		p++;
	}
	

	gst_audio_invert_transform(inverter,buffL,buffL);
	gst_audio_invert_transform(inverter,buffR,buffR);
	p=sampleBuffer[0];
	for(i = 0; i<BLOCK_SIZE; i++){
		
		*p = *(p+32) * GAIN_MINUS_6D;
		*(p+16) = *(p+32) * GAIN_MINUS_6D;
			
		*(p+48) = (*buffL*GAIN_MINUS_2D) + (*p);
		*(p+64) = (*buffR*GAIN_MINUS_2D) + (*(p+16));

		*buffL++;
		*buffR++;
		p++;
		}

	buffL = bufferL;
	buffR = bufferR;

}

*/
