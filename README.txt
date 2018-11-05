SnookAR

	Ahmed Mohamed Elsalahy Mohamed
	Benjamin Ayodele Olayinka
	David Rene Gonzalez
	Henrique Gonçalves Nogueira
	Muhammad Jazib Khan

- Folder/File structure:
	-ip_repo folder contains the ip instantiated in the block diagram for the hardware design. Inside this folder you may find our ip packaged modules "balls_overlay_1.0" and "color_detector_1.0". Additionally, this folder contains other ip created by other authors and integrated into our designed. The ip "ov7670_decode_stream" has also been modified by us.
	-snookAR folder contains the files for the Vivado 2018 project. By default, the compilation generates a bitstream.bin file rather than a *.bit file because a posthook tcl script is automatically ran after bitstream generation
	-sysconfig.c is the source code for a C program that configures and initializes the VDMA
	-snookAR.c is the source code for the C program that runs the ball simulation and interacts with the hardware through AXI4 Lite interfaces

- How to build and run the project?

1. Start by building the bitstream by opening the project "snookAR.xpr" on Vivado 2018 and generating the bitstream. After this step a binary file should be generated in "/snookAR/snookAR.runs/impl_1/bitstream.bin".
2. Boot Zedboard with the Archlinux distribution and connect it to the internet. The Zedboard should be connected to the OV7670 external camera and to a screen through a VGA port.
3. Transfer the project files to the Zedboard through an ssh connection. The files are the following:
	- "./snookAR.c"
	- "./sysconfig.c"
	- "/snookAR/snookAR.runs/impl_1/bitstream.bin"
4. Compile the software files by running the following commands:
	- gcc -o snookAR snookAR.c -lpthread -lm
	- gcc -o sysconfig sysconfig.c
5. Start by runing the VDMA configuration/initialization program with the command: ./sysconfig
6. Run the simulation program with the command: ./snookAR
7. Press the left button of the Zedboard to configure the camera correctly
8. Position the camera towards a dark canvas and use a white tipped marker to control the detected position