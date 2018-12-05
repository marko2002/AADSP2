@echo off

SET CONFIGURATION=exeFiles


: TO DO: Add additional command line args for your program
SET ADDITIONAL_ARGS=0.1 -0.1

SET COMPARE="PCMCompare.exe"

: Delete log files first.

del /Q OutCmp\*
del /Q OutStreams\*




: For each Test stream
for %%f in (TestStreams\*.*) do ( 
	@echo Running tests for stream: %%~nf%%~xf

	: Execute Model 0, Model 1 and Model 2
	echo     model 0
    %CONFIGURATION%\model0.exe %%f OutStreams//%%~nf_model0.wav %ADDITIONAL_ARGS%
	echo     model 1
	%CONFIGURATION%\model1.exe %%f OutStreams//%%~nf_model1.wav %ADDITIONAL_ARGS% 
	echo     model 2
	%CONFIGURATION%\model2.exe %%f OutStreams//%%~nf_model2.wav %ADDITIONAL_ARGS% 
	

	
	: Generate new logs
	%COMPARE% OutStreams//%%~nf_model0.wav OutStreams//%%~nf_model1.wav 2> OutCmp//%%~nf_Model0_vs_Model1.txt
	%COMPARE% OutStreams//%%~nf_model1.wav OutStreams//%%~nf_model2.wav 2> OutCmp//%%~nf_Model1_vs_Model2.txt
	
	
)