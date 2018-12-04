
#include "processing.h"

extern double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];


void processing(inverter_data_t* inverter)
{
	
	double bufferL[BLOCK_SIZE];
	double bufferR[BLOCK_SIZE];

	double *p;
	double *buffL = bufferL;
	double *buffR = bufferR;



	for(p = sampleBuffer[0]; p < sampleBuffer[0] + BLOCK_SIZE; p++)
	{
		//Left side
		*p =*p * GAIN_MINUS_6D; 
		*buffL++ = *p;
		//Right side
		*(p+BLOCK_SIZE) *= GAIN_MINUS_6D;
		*buffR++ = *(p+BLOCK_SIZE);
	}

		buffL = bufferL;
		buffR = bufferR;

	
	for(p = sampleBuffer[0]; p < sampleBuffer[0] + BLOCK_SIZE; p++)
	{
		*(p+32) = (*p + *(p+16))*GAIN_MINUS_3D;
	}
	

	gst_audio_invert_transform(inverter,buffL,buffL);
	gst_audio_invert_transform(inverter,buffR,buffR);

	for(p = sampleBuffer[0]; p < sampleBuffer[0] + BLOCK_SIZE; p++){
		
		*p = *(p+32) * GAIN_MINUS_6D;
		*(p+16) = *(p+32) * GAIN_MINUS_6D;
			
		*(p+48) = (*buffL*GAIN_MINUS_2D) + (*p);
		*(p+64) = (*buffR*GAIN_MINUS_2D) + (*(p+16));

		*buffL++;
		*buffR++;
		}

	buffL = bufferL;
	buffR = bufferR;

}