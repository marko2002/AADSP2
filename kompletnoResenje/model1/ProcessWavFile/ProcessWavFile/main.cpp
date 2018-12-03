
#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"
#include "inverter.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define NMBR_CHANELS 5

#define GAIN_MINUS_6D 0.501187
#define GAIN_MINUS_3D 0.707946
#define GAIN_MINUS_2D 0.794328

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
double bufferL[BLOCK_SIZE];
double bufferR[BLOCK_SIZE];

double *p;
double *buffL = bufferL;
double *buffR = bufferR;

void processing(inverter_data_t* inverter)
{
	int i;


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
	

	gst_audio_invert_transform(inverter,buffL,buffL,BLOCK_SIZE);
	gst_audio_invert_transform(inverter,buffR,buffR,BLOCK_SIZE);

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

int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];

	WAV_HEADER inputWAVhdr,outputWAVhdr;	
	inverter_data_t inverter;

	// Init channel buffers
	for(int i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
	//-------------------------------------------------

	
	audio_invert_init(&inverter,(float)atof(argv[3]), (float)atof(argv[4]));



	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
//	outputWAVhdr.fmt.NumChannels = inputWAVhdr.fmt.NumChannels; // change number of channels
	outputWAVhdr.fmt.NumChannels = NMBR_CHANELS;
	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			processing(&inverter);

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = sampleBuffer[k][j] * SAMPLE_SCALE ;	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample/8, 1, wav_out);		
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}