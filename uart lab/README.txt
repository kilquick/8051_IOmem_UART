SDCC Instructions:

NOTE: version 4.1.0 gives errors when trying to compile, use version 4.0.0
		Windows download: https://sourceforge.net/projects/sdcc/files/sdcc-win64/4.0.0/

	
Changes before compiling:
	In the header file design specific changes will need to be made:
		IOM and C/D are defined as P3_4 and P3_5 (I recommend keeping these the same.)
		LCD and 7_SEG address will be design specific, be sure to change those. 
	
Compiling:
	For the example code use the following instructions:
		"sdcc ecen4330_lcd_v3.c"
		"packihx ecen4330_lcd_v3.ihx > ecen4330_lcd_v3.hex"

