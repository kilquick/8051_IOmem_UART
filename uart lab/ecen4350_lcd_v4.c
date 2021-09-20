/*
	author: Tyler Zoucha
	version: v4.0
  
  	Adapted from: Matthew Boeding, lab/class TA after being adapted from Subharthi Banerjee, Ph.D.

	README
/// Note: Most of the code is input one place. This is not ideal and I plan to change
///   it input the future

/// Use C or inline assembly program as you please.

/// ** the code uses P0 for 8-bit interface
/// ** IOM --> P3^5
/// ** CD --> P3^4
////  I recommend leaving these definitions for UART implementation later.
////
/// ** RD --> P3^3
/// ** WR --> P3^2

/// Refer to the header file to change decoding addresses for your specific design.

/// Please do not post any of the code from this course to GITHUB.

*/

///  *************** IMPORTANT *********************

// #include <reg51.h> // change microcontroller header when using AT89C55WD

#include "ecen4350lcdh.h"
#include "font.h"

// keypad configuration
const unsigned char keypad[4][4] = {{'1', '4', '7', 'F'},
							  		{'2', '5', '8', '0'},
							  		{'3', '6', '9', 'E'},
							  		{'A', 'B', 'C', 'D'}};
unsigned char colloc, rowloc;

__xdata unsigned char *lcd_address = (unsigned char __xdata *)__LCD_ADDRESS__;			//LCD address pointer
__xdata unsigned char *seg7_address = (unsigned char __xdata *)__SEG_7_ADDRESS__;		//7segment address poitner

volatile unsigned char received_byte = 0;
volatile unsigned char received_flag = 0;

__idata unsigned char selection;
__idata unsigned char UART_en = 0;
__idata unsigned char baudSet = 0;
__idata u16 baudRate;
__idata unsigned char bitSet = 0;
__idata u8 bitMode;
__idata unsigned char paritySet = 0;
__idata u8 parityBit;

#define write8inline(d)   \
	{                     \
		IOM = 1;          \
		*lcd_address = d; \
		IOM = 0;          \
	}

#define write8 write8inline
// data write
#define write8DataInline(d) \
	{                       \
		CD = 1;             \
		write8(d);          \
	}
// command or register write
#define write8RegInline(d) \
	{                      \
		CD = 0;            \
		write8(d);         \
	}

// inline definitions
#define write8Reg write8RegInline
#define write8Data write8DataInline

u16 cursor_x, cursor_y; /// cursor_y and cursor_x globals
u8 textsize, rotation;	/// textsize and rotation
u16
	textcolor,	 ////< 16-bit background color for print()
	textbgcolor; ////< 16-bit text color for print()
u16
	_width,	 ////< Display width as modified by current rotation
	_height; ////< Display height as modified by current rotation

inline void iowrite8(unsigned char __xdata *map_address, unsigned char d) {
	IOM = 1;
	*map_address = d;
	IOM = 0;
}

inline unsigned char ioread8(unsigned char __xdata *map_address)
{
	unsigned char d = 0;
	IOM = 1;
	d = *map_address;
	IOM = 0;
	return d;
}

inline void ramWrite8(unsigned char __xdata *map_address, unsigned char d)
{
	IOM = 0;
	*map_address = d;
	IOM = 1;
}

inline unsigned char ramRead8(unsigned char __xdata *map_address)
{
	unsigned char d = 0;
	IOM = 0;
	d = *map_address;
	IOM = 1;
	return d;
}

void writeAllRAM(unsigned char d)
{
	unsigned long i;
	__xdata unsigned char *ram_address;

	for (i = (long) __START_RAM__; i <= (long) __END_RAM__; i++)
	{
		IOM = 0;
		ram_address = (unsigned char __xdata *)(i);
		*ram_address = d;
		IOM = 1;
	}
}

void checkAllRAM(unsigned char d)
{
	__xdata unsigned char *ram_address;
	for (unsigned long i =(long) __START_RAM__; i<=(long)__END_RAM__; i++) {
		IOM = 0;
		ram_address = (unsigned char __xdata *)(i);
		
		if(d != *ram_address) {
			iowrite8(seg7_address, SEG_F);	// Write F to 7-segment; RAM test fail
			setCursor(0,0);
			LCD_string_write("ERROR FOUND At: ");
			print16Hex(i);
			delay(40);
		}
		iowrite8(seg7_address, SEG_P);		// Write A to 7-segment
		IOM = 1;
	}
}

void delay(int d) /// x 1ms
{
	int i, j;
	for (i = 0; i < d; i++) /// this is For(); loop delay used to define delay value input Embedded C
	{
	for (j = 0; j < 1000; j++);
	}
}

void UART_Init(){
    /*SCON = 0x50;  // Asynchronous mode, 8-bit data and 1-stop bit
    TMOD = 0x20;  // Timer1 input Mode2. input 8 bit auto reload
  	TR1 = 1;      // Turn ON the timer for Baud rate generation
    ES  = 1;      // Enable Serial Interrupt
    EA  = 1;      // Enable Global Interrupt bit*/
}


void UART_transmit(unsigned char byte){
    SBUF = byte;
    while(TI == 1);
    TI = 0;
}

void ISR_receive() __interrupt (4) {
	if (RI == 1){
		received_byte = SBUF;
		RI = 0;
		received_flag= 1;
	}
}

void writeRegister8(u8 address, u8 d)
{
	//IOM = 0;
	CD = __CMD__;
	write8(address);
	CD = __DATA__;
	write8(d);
	//IOM = 1;
}

void writeRegister16(u16 address, u16 d)
{
	unsigned short int hi, lo;
	hi = (address) >> 8;
	lo = (address);
	//IOM = 0;
	//	CD = 0;
	write8Reg(hi);
	write8Reg(lo);
	hi = (d) >> 8;
	lo = (d);
	CD = 1;
	write8Data(hi);
	write8Data(lo);
	//	IOM =1;
}

void seg7Test(void)
{	
	delay(4);
	iowrite8(seg7_address, ON);
	delay(4);
	iowrite8(seg7_address, ZERO);
	delay(4);
	iowrite8(seg7_address, ONE);
	delay(4);
	iowrite8(seg7_address, TWO);
	delay(4);
	iowrite8(seg7_address, THREE);
	delay(4);
	iowrite8(seg7_address, FOUR);
	delay(4);
	iowrite8(seg7_address, FIVE);
	delay(4);
	iowrite8(seg7_address, SIX);
	delay(4);
	iowrite8(seg7_address, SEVEN);
	delay(4);
	iowrite8(seg7_address, EIGHT);
	delay(4);
	iowrite8(seg7_address, NINE);
	delay(4);
	iowrite8(seg7_address, SEG_A);
	delay(4);
	iowrite8(seg7_address, SEG_B);
	delay(4);
	iowrite8(seg7_address, SEG_C);
	delay(4);
	iowrite8(seg7_address, SEG_D);
	delay(4);
	iowrite8(seg7_address, SEG_E);
	delay(4);
	iowrite8(seg7_address, SEG_F);
	delay(4);
	iowrite8(seg7_address, OFF);
	delay(4);
}

/// +=======================RTC functions===============================
void rtcInit(void)
{
	//rtcCmd(__REG_F__, __HR_24__);
	unsigned int i;
	rtcCmd(__REG_F__, __HR_24__ | __STOP__ | __RESET__); // stop and reset

	// clear the registers
	for (i = __S1_REG__; i < __REG_D__; i++)
	{
		rtcWrite(i, 0x00);
	}

	rtcCmd(__REG_F__, __HR_24__);
}

void rtcBusy(void)
{
	__xdata unsigned char *map_address = (unsigned char __xdata *)(__REG_D__);
	while ((ioread8(map_address) & 0x02))		;
}

inline void rtcCmd(unsigned int addr, unsigned char d)
{
	__xdata unsigned char *map_address = (unsigned char __xdata *)addr;
	iowrite8(map_address, d);
}

inline void rtcWrite(unsigned int addr, unsigned char d)
{
	__xdata unsigned char *map_address = (unsigned char __xdata *)addr;
	rtcCmd(__REG_D__, 0x01);
	rtcBusy();
	iowrite8(map_address, 0x00);
	rtcCmd(__REG_D__, d);
}

inline unsigned char rtcRead(unsigned int addr)
{
	unsigned char d;
	__xdata unsigned char *map_address = (unsigned char __xdata *)addr;
	rtcCmd(__REG_D__, 0x01); // hold on
	rtcBusy();
	d = ioread8(map_address);

	d = (d & 0x0f) | 0x30;	 // ascii the lower word
	rtcCmd(__REG_D__, 0x00); // hold off
	return d;
}

void rtcPrint(void)
{
	unsigned char mi1, mi10, s1, s10, h1, h10;
	unsigned char printval[9];
	printval[8] = '\0'; // end with address null character for string
	printval[2] = ':';
	printval[5] = ':';

	mi1 = 0x30;
	mi10 = 0x30;
	s1 = 0x30;
	s10 = 0x30;
	h1 = 0x30;
	h10 = 0x30; // char zero
	mi1 = rtcRead(__MI1_REG__);
	mi10 = rtcRead(__MI10_REG__);
	h1 = rtcRead(__H1_REG__);
	h10 = rtcRead(__H10_REG__);
	s1 = rtcRead(__S1_REG__);
	s10 = rtcRead(__S10_REG__);
	printval[0] = h10;
	printval[1] = h1;
	printval[3] = mi10;
	printval[4] = mi1;
	printval[6] = s10;
	printval[7] = s1;
	LCD_string_write(printval);
}

void setCursor(u16 x, u16 y)
{
	cursor_x = x;
	cursor_y = y;
}
// set text color
void setTextColor(u16 x, u16 y)
{
	textcolor = x;
	textbgcolor = y;
}

// set text size
void setTextSize(u8 s)
{
	if (s > 8)
		return;
	textsize = (s > 0) ? s : 1;
}

void setRotation(u8 flag)
{
	switch (flag)
	{
	case 0:
		flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
		_width = TFTWIDTH;
		_height = TFTHEIGHT;
		break;
	case 1:
		flag = (ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
		_width = TFTHEIGHT;
		_height = TFTWIDTH;
		break;
	case 2:
		flag = (ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
		_width = TFTWIDTH;
		_height = TFTHEIGHT;
		break;
	case 3:
		flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_MY | ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
		_width = TFTHEIGHT;
		_height = TFTWIDTH;
		break;
	default:
		flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
		_width = TFTWIDTH;
		_height = TFTHEIGHT;
		break;
	}
	writeRegister8(ILI9341_MEMCONTROL, flag);
}

// set address definition
void setAddress(unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2)
{
	//IOM =0;
	write8Reg(0x2A);
	write8Data(x1 >> 8);
	write8Data(x1);
	write8Data(x2 >> 8);
	write8Data(x2);

	write8Reg(0x2B);
	write8Data(y1 >> 8);
	write8Data(y1);
	write8Data(y2 >> 8);
	write8Data(y2);
	//write8Reg(0x2C);
	//IOM =1;
}

void TFT_LCD_INIT(void)
{
	//char ID[5];
	///int id;
	_width = TFTWIDTH;
	_height = TFTHEIGHT;

	// all low
	IOM = 0;
	//RDN = 1;
	CD = 1;

	write8Reg(0x00);
	write8Data(0x00);
	write8Data(0x00);
	write8Data(0x00);
	//IOM = 1;
	delay(100);						// changed from 200 to 100

	//IOM = 0;

	writeRegister8(ILI9341_SOFTRESET, 0);
	delay(50);
	writeRegister8(ILI9341_DISPLAYOFF, 0);
	delay(10);

	writeRegister8(ILI9341_POWERCONTROL1, 0x23);
	writeRegister8(ILI9341_POWERCONTROL2, 0x11);
	write8Reg(ILI9341_VCOMCONTROL1);
	write8Data(0x3d);
	write8Data(0x30);
	writeRegister8(ILI9341_VCOMCONTROL2, 0xaa);
	writeRegister8(ILI9341_MEMCONTROL, ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	write8Reg(ILI9341_PIXELFORMAT);
	write8Data(0x55);
	write8Data(0x00);
	writeRegister16(ILI9341_FRAMECONTROL, 0x001B);

	writeRegister8(ILI9341_ENTRYMODE, 0x07);
	/* writeRegister32(ILI9341_DISPLAYFUNC, 0x0A822700);*/

	writeRegister8(ILI9341_SLEEPOUT, 0);
	delay(100);								// changed from 150 to 100
	writeRegister8(ILI9341_DISPLAYON, 0);
	delay(150);								// changed from 200 to 150
	setAddress(0, 0, _width - 1, _height - 1);
	///************* Start Initial Sequence ILI9341 controller **********///

	// IOM = 1;
}
void drawPixel(u16 x3, u16 y3, u16 color1)
{

	// not using to speed up
	//if ((x3 < 0) ||(x3 >= TFTWIDTH) || (y3 < 0) || (y3 >= TFTHEIGHT))
	//{
	//	return;
	//}
	setAddress(x3, y3, x3 + 1, y3 + 1);

	//IOM = 0;

	CD = 0;
	write8(0x2C);

	CD = 1;
	write8(color1 >> 8);
	write8(color1);
	//IOM = 1;
}

// draw address circle with this function

void drawCircle(int x0, int y0, int r, u16 color)
{
	int f = 1 - r;
	int ddF_x = 1;
	int ddF_y = -2 * r;
	int x = 0;
	int y = r;

	drawPixel(x0, y0 + r, color);
	drawPixel(x0, y0 - r, color);
	drawPixel(x0 + r, y0, color);
	drawPixel(x0 - r, y0, color);

	while (x < y)
	{
		if (f >= 0)
		{
			y--;
			ddF_y += 2;
			f += ddF_y;
		}
		x++;
		ddF_x += 2;
		f += ddF_x;

		drawPixel(x0 + x, y0 + y, color);
		drawPixel(x0 - x, y0 + y, color);
		drawPixel(x0 + x, y0 - y, color);
		drawPixel(x0 - x, y0 - y, color);
		drawPixel(x0 + y, y0 + x, color);
		drawPixel(x0 - y, y0 + x, color);
		drawPixel(x0 + y, y0 - x, color);
		drawPixel(x0 - y, y0 - x, color);
	}
}

void testCircles(u8 radius, u16 color)
{

	int x, y, r2 = radius * 2, w = _width + radius, h = _height + radius;

	for (x = 0; x < w; x += r2)
	{
		for (y = 0; y < h; y += r2)
		{
			drawCircle(x, y, radius, color);
		}
	}
}
void fillRect(u16 x, u16 y, u16 w, u16 h, u16 color)
{
	if ((x >= TFTWIDTH) || (y >= TFTHEIGHT))
	{
		return;
	}

	if ((x + w - 1) >= TFTWIDTH)
	{
		w = TFTWIDTH - x;
	}

	if ((y + h - 1) >= TFTHEIGHT)
	{
		h = TFTHEIGHT - y;
	}

	setAddress(x, y, x + w - 1, y + h - 1);
	//IOM = 0;

	write8Reg(0x2C);
	//IOM = 1; IOM = 0;
	CD = 1;
	for (y = h; y > 0; y--)
	{
		for (x = w; x > 0; x--)
		{

			write8(color >> 8);
			write8(color);
		}
	}
	//IOM = 1;
}

void fillTop(unsigned int Color) {
	long len = (long)TFTWIDTH * 40;
	int blocks;

	unsigned char i, hi = Color >> 8, 
					 lo = Color;
	
	blocks = (u16)(len / 64); // 64 pixels/block
	setAddress(0, 0, TFTWIDTH - 1, 39);

	write8Reg(0x2C);
	//IOM = 1; IOM = 0;
	CD = 1;
	write8(hi);
	write8(lo);

	len--;
	while (blocks--)
	{
		i = 16; // 64 pixels/block / 4 pixels/pass
		do
		{

			write8(hi);
			write8(lo);
			write8(hi);
			write8(lo);
			write8(hi);
			write8(lo);
			write8(hi);
			write8(lo);
		} while (--i);
	}
	for (i = (char)len & 63; i--;)
	{

		write8(hi);
		write8(lo);
	}

	//IOM = 1;
}

void fillScreen(unsigned int Color)
{
	//unsigned char VH,VL;
	long len = (long)TFTWIDTH * (long)TFTHEIGHT;

	int blocks;

	unsigned char i, hi = Color >> 8,
					 lo = Color;

	blocks = (u16)(len / 64); // 64 pixels/block
	setAddress(0, 0, TFTWIDTH - 1, TFTHEIGHT - 1);

	//IOM = 0;

	write8Reg(0x2C);
	//IOM = 1; IOM = 0;
	CD = 1;
	write8(hi);
	write8(lo);

	len--;
	while (blocks--)
	{
		i = 16; // 64 pixels/block / 4 pixels/pass
		do
		{

			write8(hi);
			write8(lo);
			write8(hi);
			write8(lo);
			write8(hi);
			write8(lo);
			write8(hi);
			write8(lo);
		} while (--i);
	}
	for (i = (char)len & 63; i--;)
	{

		write8(hi);
		write8(lo);
	}

	//IOM = 1;
}

void clearLCD (void)
{
	fillScreen(colorBackground);
}
void drawChar(int x, int y, unsigned char c, u16 color, u16 bg, u8 size)
{
	if ((x >= TFTWIDTH) ||			// Clip right
		(y >= TFTHEIGHT) ||			// Clip bottom
		((x + 6 * size - 1) < 0) || // Clip left
		((y + 8 * size - 1) < 0))	// Clip top
	{
		return;
	}

	for (char i = 0; i < 6; i++)
	{
		u8 line;

		if (i == 5)
		{
			line = 0x0;
		}
		else
		{
			line = pgm_read_byte(font + (c * 5) + i);
		}

		for (char j = 0; j < 8; j++)
		{
			if (line & 0x1)
			{
				if (size == 1) // default size
				{
					drawPixel(x + i, y + j, color);
				}
				else
				{ // big size
					fillRect(x + (i * size), y + (j * size), size, size, color);
				}
			}
			else if (bg != color)
			{
				if (size == 1) // default size
				{
					drawPixel(x + i, y + j, bg);
				}
				else
				{ // big size
					fillRect(x + i * size, y + j * size, size, size, bg);
				}
			}

			line >>= 1;
		}
	}
}

void write(u8 c) //write address character at setted coordinates after setting location and colour
{
	if (c == '\n')
	{
		cursor_y += textsize * 8;
		cursor_x = 0;
	}
	else if (c == '\r')
	{
		// skip em
	}
	else
	{
		drawChar(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize);
		cursor_x += textsize * 6;
	}
}
void LCD_string_write(char *str)
{
	int i;
	for (i = 0; str[i] != 0; i++) /* Send each char of string till the NULL */
	{
		write(str[i]); /* Call transmit data function */
	}
}

void writeNewLine(void)
{
	write('\n');
}

void freeType()
{
	unsigned char count = 0;
	unsigned char d;
	u8 row = 1;

	clearLCD();
	setCursor(0,0);
	setTextColor(colorSelect, colorBackground);
	LCD_string_write("Free Type: \n");
	setTextColor(colorText, colorBackground);
	LCD_string_write("0x");
	while (1)
	{

		if (count == 8)
		{
			d = '\n';
			count = 0;
			write(d);
			if (row == 4)
			{
				delay(5);
				clearLCD();
				setTextColor(colorSelect, colorBackground);
				rtcPrint();
				clearLCD();
				setCursor(0,0);
				setTextColor(colorSelect, colorBackground);
				LCD_string_write("Free Type: \n");
				setTextColor(colorText, colorBackground);
				LCD_string_write("0x");

				row = 1;
			} else 
			{
				LCD_string_write("0x");
				row++;
			}
		}
		else
		{
			d = keyDetect();
			write(d);
			count++;
		}

		//count++;
	}
}

// Scan P1 matrix keypad or serial interrupt for input
unsigned char keyDetect()
{
	u8 portdata;
	__KEYPAD_PORT__ = 0xF0; 										/* set port direction as input-output */
	do 
	{
		portdata = (__KEYPAD_PORT__ & 0xF0);
	}	while (portdata != 0xF0);									/* wait until no buttons pressed to continue */

	do
	{
		do
		{							
			//__KEYPAD_PORT__ = 0xF0;								
			colloc = __KEYPAD_PORT__;								/* read back columns -> the grounded rows will ground address column bit when button pressed */
			colloc &= 0xF0;		  									/* mask port for column read only */
		} while ((colloc == 0xF0) && (received_flag == 0)); 		/* read status of column repeatedly until key is pressed or serial interrupt received */
		delay(10);													/* 15ms key debounce time */
		portdata = (__KEYPAD_PORT__ & 0xF0);						/* resample port data after debounce */
	} while ((colloc != portdata) && (received_flag == 0));			/* repeat until input is clear to interpret */

	while (1)
	{
		if (received_flag == 1)											/* check for key input via serial interrupt */
		{
			received_byte -= 0x40;										/* For some reason received_byte needs 0x40 subtracted */
			break;														/* break outside while() */
		}
		/* now check for rows */
		__KEYPAD_PORT__ = 0xFE; 										/* check for pressed key input 1st row -> (_KEYPAD_PORT_ == 0b11111110) */
		colloc = (__KEYPAD_PORT__ & 0xF0);								/* (1111 1110) & (1111  0000) == (1111 0000) if 1st row free */
		if (colloc != 0xF0)
		{
			rowloc = 0;
			break;
		}

		__KEYPAD_PORT__ = 0xFD; 										/* check for pressed key input 2nd row -> (_KEYPAD_PORT_ == 0b11111101) */
		colloc = (__KEYPAD_PORT__ & 0xF0);
		if (colloc != 0xF0)
		{
			rowloc = 1;
			break;
		}

		__KEYPAD_PORT__ = 0xFB; 										/* check for pressed key input 3rd row -> (_KEYPAD_PORT_ == 0b11111011) */
		colloc = (__KEYPAD_PORT__ & 0xF0);
		if (colloc != 0xF0)
		{
			rowloc = 2;
			break;
		}

		__KEYPAD_PORT__ = 0xF7; 										/* check for pressed key input 4th row -> (_KEYPAD_PORT_ == 0b11110111) */
		colloc = (__KEYPAD_PORT__ & 0xF0);
		if (colloc != 0xF0)
		{
			rowloc = 3;
			break;
		}
	}

	if (received_flag == 1)
	{
		received_flag = 0;
		return received_byte;
	}
	else if (colloc == 0xE0)
	{
		return (keypad[rowloc][0]);
	}
	else if (colloc == 0xD0)
	{
		return (keypad[rowloc][1]);
	}
	else if (colloc == 0xB0)
	{
		return (keypad[rowloc][2]);
	}
	else
	{
		return (keypad[rowloc][3]);
	}
}

unsigned int reverse(unsigned char d)
{
	unsigned int rev = 0;
	unsigned int val = 0;
	while (d >= 1)
	{

		val = d % 10;
		d = d / 10;
		rev = rev * 10 + val;
	}
	return rev;
}

unsigned int reverse16(unsigned int d)
{
	unsigned int rev = 0;
	unsigned int val = 0;
	while (d >= 1)
	{

		val = d % 10;
		d = d / 10;
		rev = rev * 10 + val;
	}
	return rev;
}

unsigned char hexToASCII(unsigned char key) {
	if(key == 0x0) return '0';
	if(key == 0x1) return '1';
	if(key == 0x2) return '2';
	if(key == 0x3) return '3';
	if(key == 0x4) return '4';
	if(key == 0x5) return '5';
	if(key == 0x6) return '6';
	if(key == 0x7) return '7';
	if(key == 0x8) return '8';
	if(key == 0x9) return '9';
	if(key == 0xA) return 'A';
	if(key == 0xB) return 'B';
	if(key == 0xC) return 'C';
	if(key == 0xD) return 'D';
	if(key == 0xE) return 'E';
	if(key == 0xF) return 'F';
	else
		return 0xff;
}

unsigned char ASCIItoHex(unsigned char key) {
	if(key == '0') return 0x0;
	if(key == '1') return 0x1;
	if(key == '2') return 0x2;
	if(key == '3') return 0x3;
	if(key == '4') return 0x4;
	if(key == '5') return 0x5;
	if(key == '6') return 0x6;
	if(key == '7') return 0x7;
	if(key == '8') return 0x8;
	if(key == '9') return 0x9;
	if(key == 'A') return 0xA;
	if(key == 'B') return 0xB;
	if(key == 'C') return 0xC;
	if(key == 'D') return 0xD;
	if(key == 'E') return 0xE;
	if(key == 'F') return 0xF;
	else
		return 0xff;
}

void asciiToDec(unsigned char d)
{
	unsigned char val;
	unsigned int id;
	id = reverse(d);
	while (id >= 1)
	{

		val = id % 10;
		id = id / 10;
		write(val + '0');
	}
	write('\n');
}

void asciiToHex(unsigned char d)
{
	unsigned char val;
	unsigned char store[2];
	unsigned char i = 0;
	store[0] = 0;
	store[1] = 0;
	while (d >= 1)
	{

		val = d % 16;
		d = d / 16;
		if (val <= 9)
		{

			store[i] = val + '0';
		}
		else
		{
			store[i] = (val % 10) + 'A';
		}
		i++;
	}
	write(store[1]);
	write(store[0]);
	//write('\n');
}


void print4Hex(unsigned char num) {
	write((u8) hexToASCII(num));
}
	
void print8Hex(unsigned char num) {
	print4Hex(num >> 4);
	print4Hex(num & 0x0F);
}

void print16Hex(unsigned int num) {
	print8Hex((unsigned char)(num >> 8));
	print8Hex((unsigned char)num);
}

void print16Dec(unsigned int num) {
	unsigned int val;
	unsigned int id;
	id = reverse16(num);
	while (id >= 1) {
		val = id % 10;
		id = id/10;
		write(val + '0');
	}
}

void print8ASCII(unsigned char num) {
	write((u8)num);
}

void print16ASCII(unsigned int num) {
	print8ASCII((unsigned char)(num >> 8));
	print8ASCII((unsigned char)num);
}

// LCD Power On Self-Test and Welcome message
void writeSomeLines()
{
	setRotation(0);		//rotation 0 is for flat/flush LCD
	//setRotation(2); 		//rotation 2 is for tiled outward LCD
	fillScreen(CYAN);
	fillTop(BLACK);
	setTextSize(5);
	setTextColor(CYAN, BLACK);
	setCursor(10,0);
	LCD_string_write("Welcome\n");
	setTextSize(2);
	setTextColor(BLACK, CYAN);
	LCD_string_write("\n Tyler Zoucha\n  ECEN-4350\n  Fall 2021");
	delay(40);
}


void setColorDefault() {
	setTextColor(colorText, colorBackground);
} 

void setColorSelect() {
	setTextColor(colorSelect, colorBackground);
}

void setColorHighlight1() {
	setTextColor(colorSelect, CYAN);
}

void setColorHighlight2() {
	setTextColor(BLACK, CYAN);
}

void setColorGray() {
	setTextColor(GRAY, colorBackground);
}

void setColorMenu() {
	setTextColor(BLACK, GRAY);
}

void setColorRed() {
	setTextColor(RED, colorBackground);
}

void setColorWhite() {
	setTextColor(WHITE, colorBackground);
}

void setColorGreen() {
	setTextColor(GREEN, colorBackground);
}

void setColorYellow() {
	setTextColor(YELLOW, colorBackground);
}

unsigned int inputAddress()
{
	__idata unsigned int address = 0;				// B' XXXX XXXX XXXX XXXX
	__idata unsigned char input;					// B' XXXX XXXX

	input = keyDetect();					

	/* Highest Order Address Nibble: (-xxx) */
	write(input);									// Print to screen
	input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	address |= (int) input * 16 * 16 * 16;			// highest order nibble = (input) * 0x1000
	
	input = keyDetect();							// second highest address nibble

	/* Second Address Nibble: (x-xx) */
	write(input);									// Print to screen
	input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	address |= (int) input * 16 * 16;				// store nibble; (input) * 0x0100
	
	input = keyDetect();

	/* Third Address Nibble: (xx-x) */
	write(input);
	input = ASCIItoHex(input);
	address |= (int) input * 16;					// *0x0010
	
	input = keyDetect();

	/* Fourth Address Nibble: (xxx-) */
	write(input);
	input = ASCIItoHex(input);
	address |= (int) input;							// *0x0001
	
	//return 16-bit address
	return address;									// yeet
}

unsigned char inputBlockType() {
	__idata u8 blockType = 0;
	__idata u8 invalidType = 1;

	// Sanitize input until correct block type chosen
	//while(invalidType) {
		selection = keyDetect();
		blockType = ASCIItoHex(selection);

		/*if (selection == '1')
		{
			invalidType = 0;
		}
		if (selection == '2')
		{
			invalidType = 0;
		}
		if (selection == '4')
		{
			invalidType = 0;
		}*/
	//}
	return blockType;
}

unsigned char inputBlockSize() {
	__idata u8 blockSize = 0;

	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	blockSize |= selection * 16;
	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	blockSize |= selection;
	return blockSize;
}

// Main Menu
void printMenu() {

	setCursor(0,0);
	clearLCD();
	
	//print main menu
	fillTop(GRAY);
	setTextSize(5);
	setColorMenu();
	setCursor(30, 0);
	LCD_string_write("<Menu>\n");
	
	setTextSize(2);
	
	setCursor(0, 60);
	setColorWhite();
	LCD_string_write(" <D>");
	setColorDefault();
	LCD_string_write(" DUMP\n");
	
	setCursor(120, 60);
	setColorWhite();
	LCD_string_write(" <B>");
	setColorDefault();
	LCD_string_write(" MOVE\n");
	
	setCursor(0, 100);
	setColorWhite();
	LCD_string_write(" <E>");
	setColorDefault();
	LCD_string_write(" EDIT\n");
	
	setCursor(120, 100);
	setColorWhite();
	LCD_string_write(" <F>");
	setColorDefault();
	LCD_string_write(" FIND\n");
	
	setCursor(0, 140);
	setColorWhite();
	LCD_string_write(" <C>");
	setColorDefault();
	LCD_string_write(" COUNT\n");
	
	setCursor(0, 180);
	setColorWhite();
	LCD_string_write(" <A>");
	setColorDefault();
	LCD_string_write(" MEM CHECK\n");

	setCursor(0, 220);
	setColorWhite();
	LCD_string_write(" <1>");
	setColorDefault();
	LCD_string_write(" UART");
	setTextSize(1);
	if (UART_en == 0) {
		LCD_string_write(" [Disabled]\n");
	} if (UART_en == 1) {
		LCD_string_write(" [Enabled]\n");
	}
	setTextSize(2);
	return;
}

void dump()
{
	unsigned char __xdata* d;
	__idata unsigned int address = 0; 				// B' XXXX XXXX XXXX XXXX
	__idata unsigned char blockSize = 0;
	__idata unsigned char blockType = 0;
	__idata unsigned char exit = 1;
	__idata unsigned char invalidType = 1;
	__idata unsigned char invalidSize = 1;

	clearLCD();

	//print dump menu
	fillTop(GRAY);
	setTextSize(5);
	setColorMenu();
	setCursor(30, 0);
	LCD_string_write("[DUMP]\n");
	setColorDefault();
	setTextSize(2);
	setCursor(0, 60);
	LCD_string_write(" Address Location:\n");
	setCursor(0, 80);
	setColorGray();
	LCD_string_write(" 0x____");
	setColorDefault();
	setCursor(0, 140);
	LCD_string_write(" Choose Block Type:\n");
	setCursor(0, 160); 
	setColorGray();
	LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	setCursor(0, 240);
	LCD_string_write(" Input Size:");
	setColorGray();
	LCD_string_write(" _");

	/* 	Step 1:
	 * 	Prompt & Store User Input
	 */

	// Highlight address prompt
	setColorSelect();
	setCursor(0, 60);
	LCD_string_write(" Address Location:");
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight1();
	LCD_string_write("0x");
	address = inputAddress();				// input 16-bit address and store in memory
	d = (unsigned char __xdata *)(address);

	// Remove previous section highlight
	setColorDefault();
	setCursor(0, 60);
	LCD_string_write(" Address Location:");
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight2();
	LCD_string_write("0x");
	print16Hex(address);					// print 16-bit address from stored memory

	// Highlight block type prompt
	setColorSelect();
	setCursor(0, 140);
	LCD_string_write(" Choose Block Type:");
	setCursor(0, 160); 
	setColorWhite();
	LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	
	// blockType switch
	while (invalidType) {
		setCursor(0, 160);
		setColorWhite();
		LCD_string_write("\n\n");
	
		blockType = inputBlockType();

		if (blockType == 0x1) {
			invalidType = 0;
			// Remove previous selection highlight
			setColorDefault();
			setCursor(0, 140);
			LCD_string_write(" Choose Block Type:");
			setCursor(0, 160);
			LCD_string_write("  ");
			setColorHighlight2();
			LCD_string_write("<1> BYTE\n");
			setColorGray();
			LCD_string_write("\n\n                \n                ");
		} if (blockType == 0x2) {
			invalidType = 0;
			// Remove previous selection highlight
			setColorDefault();
			setCursor(0, 140);
			LCD_string_write(" Choose Block Type:");
			setCursor(0, 160);
			setColorGray();
			LCD_string_write("\n  ");
			setColorHighlight2();
			LCD_string_write("<2> WORD\n");
			setColorGray();
			LCD_string_write("\n                \n                ");
		} if (blockType == 0x4) {
			invalidType = 0;
			// Remove previous selection highlight
			setColorDefault();
			setCursor(0, 140);
			LCD_string_write(" Choose Block Type:");
			setCursor(0, 160);
			setColorGray();
			LCD_string_write("\n\n  ");
			setColorHighlight2();
			LCD_string_write("<4> DWORD");
			setColorGray();
			LCD_string_write("\n                \n                ");
		}
		if (invalidType) {
			setColorRed();
			LCD_string_write("\n  Input Error\n  Try Again");
		}
	}
	

	// Input user block size and shift appropriately.
	while (invalidSize)
	{
		// Prompt Block Size
		setCursor(0, 240);
		setColorSelect();
		LCD_string_write(" Input Size: ");
		setColorHighlight1();
		selection = keyDetect();
		write(selection);
		blockSize = ASCIItoHex(selection);
		setColorDefault();
		
		if (blockSize != blockType) {
			setColorSelect();
			LCD_string_write(" Input Size:");
			setColorGray();
			LCD_string_write(" _");
			setCursor(0,260);
			setColorRed();
			LCD_string_write(" Mismatch Error\n Try Again");
			setCursor(0, 240);
		} else {
			setCursor(0, 240);
			setColorDefault();
			LCD_string_write(" Input Size: ");
			setColorHighlight2();
			write(selection);
			invalidSize = 0;
			setCursor(0,260);
			setColorGreen();
			LCD_string_write(" Match Confirmed\n                ");
		}
	}

	delay(40);
	clearLCD();
	fillTop(GRAY);

	/* 	Step 2:
	 *	Print memory dump
	 */

	//print dump results
	setTextSize(5);
	setColorMenu();
	setCursor(30, 0);
	LCD_string_write("[DUMP]\n");
	setColorDefault();

	while (exit) {
		setTextSize(2);
		setColorWhite();
		setCursor(0, 60);
		LCD_string_write(" Address:");
		setColorDefault();
		setCursor(0, 80);
		LCD_string_write(" 0x");
		print16Hex(address);
		if (blockType == 0x1)
			{
				setCursor(0, 120);
				setColorWhite();
				LCD_string_write(" Hex Data:");
				setColorDefault();
				setCursor(10, 140);
				print8Hex(ramRead8(d));

				setCursor(0, 180);
				setColorWhite();
				LCD_string_write(" ASCII Data:");
				setColorDefault();
				setCursor(10, 200);
				print8ASCII(ramRead8(d));

				setCursor(0, 240);
				setColorWhite();
				LCD_string_write(" Data Type:");
				setCursor(0, 260);
				setColorDefault();
				LCD_string_write(" BYTE");
			}
		if (blockType == 0x2)
			{
				setCursor(0, 120);
				setColorWhite();
				LCD_string_write(" Hex Data:");
				setColorDefault();
				setCursor(10, 140);
				print8Hex(ramRead8(d));
				d++;
				print8Hex(ramRead8(d));
				d--;

				setCursor(0, 180);
				setColorWhite();
				LCD_string_write(" ASCII Data:");
				setColorDefault();
				setCursor(10, 200);
				print8ASCII(ramRead8(d));
				d++;
				print8ASCII(ramRead8(d));

				setCursor(0, 240);
				setColorWhite();
				LCD_string_write(" Data Type:");
				setColorDefault();
				setCursor(0, 260);
				LCD_string_write(" WORD");
			}
		if (blockType == 0x4)
			{
				setCursor(0, 120);
				setColorWhite();
				LCD_string_write(" Hex Data:");
				setColorDefault();
				setCursor(10, 140);
				print8Hex(ramRead8(d));
				d++;
				print8Hex(ramRead8(d));
				d++;
				print8Hex(ramRead8(d));
				d++;
				print8Hex(ramRead8(d));
				d--;
				d--;
				d--;

				setCursor(0, 180);
				setColorWhite();
				LCD_string_write(" ASCII Data:");
				setColorDefault();
				setCursor(10, 200);
				print8ASCII(ramRead8(d));
				d++;
				print8ASCII(ramRead8(d));
				d++;
				print8ASCII(ramRead8(d));
				d++;
				print8ASCII(ramRead8(d));

				setCursor(0, 240);
				setColorWhite();
				LCD_string_write(" Data Type:");
				setColorDefault();
				setCursor(0, 260);
				LCD_string_write(" DWORD");
			}
		setCursor(50, 300);
		setColorWhite();
		LCD_string_write(" <0> Exit\n");

		selection = keyDetect();

		if (selection == '0' ) {
			exit = 0;
			setCursor(50, 300);
			setColorSelect();
			LCD_string_write(" ");
			setColorHighlight2();
			LCD_string_write("<0> Exit\n");
			delay(40);
		}
	}
	return;
}

void move() {
	unsigned char __xdata* d;
	__idata unsigned int sourceAddress= 0;
	__idata unsigned int destAddress = 0;
	__idata unsigned int blockSize = 0;
	__idata unsigned char blockType = 0;
	__idata unsigned char invalidType = 1;
	__idata unsigned char invalidSize = 1;

	clearLCD();

	//print move menu
	fillTop(GRAY);
	setTextSize(5);
	setColorMenu();
	setCursor(30, 0);
	LCD_string_write("[MOVE]\n");
	setColorDefault();
	setTextSize(2);
	setCursor(0, 60);
	LCD_string_write(" Source Address:");
	setCursor(0, 80);
	setColorGray();
	LCD_string_write(" 0x____");
	setCursor(0, 110);
	setColorDefault();
	LCD_string_write(" Destination:");
	setCursor(0, 130);
	setColorGray();
	LCD_string_write(" 0x____");
	setCursor(0, 160);
	setColorDefault();
	LCD_string_write(" Choose Block Type:");
	setCursor(0, 180);
	setColorGray();
	LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	setCursor(0, 260);
	setColorDefault();
	LCD_string_write(" Input Size:");
	setColorGray();
	LCD_string_write(" _");

	/* 	Step 1:
	 * 	Prompt & Store User Input
	 */

	// Highlight source address prompt
	setCursor(0, 60);
	setColorSelect();
	LCD_string_write(" Source Address:");
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight1();
	LCD_string_write("0x");
	sourceAddress = inputAddress();

	// Remove previous selection highlight
	setColorDefault();
	setCursor(0, 60);
	LCD_string_write(" Source Address:");
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight2();
	LCD_string_write("0x");
	print16Hex(sourceAddress);

	// Highlight destination address prompt
	setCursor(0, 110);
	setColorSelect();
	LCD_string_write(" Destination:");
	setCursor(0, 130);
	LCD_string_write(" ");
	setColorHighlight1();
	LCD_string_write("0x");
	destAddress = inputAddress();

	// Remove previous selection highlight
	setColorDefault();
	setCursor(0, 110);
	LCD_string_write( " Destination:");
	setCursor(0, 130);
	LCD_string_write(" ");
	setColorHighlight2();
	LCD_string_write("0x");
	print16Hex(destAddress);

	// Highlight block type prompt
	setCursor(0, 160);
	setColorSelect();
	LCD_string_write(" Choose Block Type:");
	setCursor(0, 180);
	setColorWhite();
	LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");

	while (invalidType) {
		setCursor(0, 180);
		setColorWhite();
		LCD_string_write("\n\n");

		blockType = inputBlockType();

		if (blockType == 0x1) {
			invalidType = 0;
			// Remove previous selection highlight
			setColorDefault();
			setCursor(0, 160);
			LCD_string_write(" Choose Block Type:");
			setCursor(0, 180);
			LCD_string_write("  ");
			setColorHighlight2();
			LCD_string_write("<1> BYTE\n");
			setColorGray();
			LCD_string_write("\n\n                \n                ");
			
		} if (blockType == 0x2) {
			invalidType = 0;
			// Remove previous selection highlight
			setColorDefault();
			setCursor(0, 160);
			LCD_string_write(" Choose Block Type:");
			setCursor(0, 180);
			setColorGray();
			LCD_string_write("\n  ");
			setColorHighlight2();
			LCD_string_write("<2> WORD\n");
			setColorGray();
			LCD_string_write("\n                \n                ");
		} if (blockType == 0x4) {
			invalidType = 0;
			// Remove previous selection highlight
			setColorDefault();
			setCursor(0, 160);
			LCD_string_write(" Choose Block Type:");
			setColorGray();
			setCursor(0, 180);
			LCD_string_write("\n\n  ");
			setColorHighlight2();
			LCD_string_write("<4> DWORD");
			setColorGray();
			LCD_string_write("\n                \n                ");
		}
		if (invalidType) {
			setColorRed();
			LCD_string_write("\n  Input Error\n  Try Again");
		} 
	}
	

	// Input user block size and shift appropriately.
	while (invalidSize)
	{
		// Prompt Block Size
		setCursor(0, 260);
		setColorSelect();
		LCD_string_write(" Input Size: ");
		selection = keyDetect();
		setColorHighlight1();
		write(selection);
		blockSize = ASCIItoHex(selection);
		setColorDefault();
		
		if (blockSize != blockType) {
			setCursor(0,280);
			setColorRed();
			LCD_string_write(" Mismatch Error\n Try Again");
			setCursor(0, 260);
			setColorSelect();
			LCD_string_write(" Input Size:");
			setColorGray();
			LCD_string_write(" _");
		} else {
			setCursor(0, 260);
			setColorDefault();
			LCD_string_write(" Input Size: ");
			setColorHighlight2();
			write(selection);
			invalidSize = 0;
			setCursor(0,280);
			setColorGreen();
			LCD_string_write(" Match Confirmed\n                ");
		}
	} 
	
	
	// Iterate through RAM space, copy data from source address to destination
	for(unsigned int i = sourceAddress; i < (sourceAddress + blockSize); i++) {
		d = (unsigned char __xdata*)(destAddress);
		ramWrite8(d,ramRead8((unsigned char __xdata*)i));
		if (destAddress == 0xFFFF) {						// check end of RAM
			destAddress = 0x0000;
		} else {
			destAddress++;
		}
	}

	setCursor(0, 300);
	setColorGreen();
	LCD_string_write(" Move Complete\n");
	delay(60);
	selection = 'null';
	return;
}

void edit(){
	unsigned char __xdata* d;
	__idata unsigned int address = 0;
	__idata unsigned char value = 0;
	__idata unsigned char exit = 1;
	__idata unsigned char invalid = 1;
	
	clearLCD();

	// Print edit menu
	fillTop(GRAY);
	setTextSize(5);
	setColorMenu();
	setCursor(30, 0);
	LCD_string_write("[EDIT]\n");
	setTextSize(2);
	setColorDefault();
	setCursor(0, 60);
	LCD_string_write(" Edit Address:");
	setCursor(0, 80);
	setColorGray();
	LCD_string_write(" 0x____");
	setCursor(0, 110);
	setColorDefault();
	LCD_string_write(" Location Contents:\n");
	setColorGray();
	LCD_string_write(" __");
	setCursor(0, 160);
	setColorDefault();
	LCD_string_write(" Enter New Value:\n");
	setColorGray();
	LCD_string_write(" __");
	setCursor(0,210);
	setColorDefault();
	LCD_string_write(" Choose Next Action:\n");
	setColorGray();
	LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	LCD_string_write("  <0> Exit");

	/*	Step 1: 
	 *	Prompt first address edit
	*/

	// Highlight address prompt
	setColorSelect();
	setCursor(0, 60);
	LCD_string_write(" Edit Address:");
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight1();
	LCD_string_write("0x");
	address = inputAddress();		// input 16-bit address and store in memory
	d = (unsigned char __xdata*)address;

	// Remove previous section highlight
	setColorDefault();
	setCursor(0, 60);
	LCD_string_write(" Edit Address:");
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight2();
	LCD_string_write("0x");
	print16Hex(address);		// print 16-bit address from stored memory

	// Print original data
	setCursor(0, 110);
	setColorDefault();
	LCD_string_write("\n ");
	setColorHighlight2();
	print8Hex(ramRead8(d));
	
	// Prompt for new data
	setCursor(0, 160);
	setColorSelect();
	LCD_string_write(" Enter New Value:\n ");
	setColorHighlight1();
	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	value |= selection * 16;
	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	value |= selection;

	// Remove highlight
	setColorDefault();
	setCursor(0, 160);
	LCD_string_write(" Enter New Value:\n ");
	setColorHighlight2();
	print8Hex(value);

	ramWrite8(d, value);

	//Highlight next choice
	setCursor(0, 210);
	setColorSelect();
	LCD_string_write(" Choose Next Action:\n");
	setColorWhite();
	LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	LCD_string_write("  <0> Exit");
	
	/*	Step 2:
	 *	Based on input, either exit or edit next/new address
	 */

	while(exit){
		selection = keyDetect();
		invalid = 1;
		if (selection == '1') {		/* Highlight choice and gray out others */
			invalid = 0;
			value = 0;
			setCursor(0, 210);
			setColorDefault();
			LCD_string_write("\n  ");
			setColorHighlight2();
			LCD_string_write("<1> Next Address\n");
			setColorGray();
			LCD_string_write("\n\n               ");
			delay(60);

			//Reset screen
			setCursor(0, 80);
			setColorGray();
			LCD_string_write(" 0x____");
			setCursor(0, 110);
			LCD_string_write("\n __");
			setCursor(0, 160);
			LCD_string_write("\n __");
			setCursor(0, 210);
			LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");

			// Print address to screen
			address++;
			d = (unsigned char __xdata*)address;
			setCursor(0, 80);
			LCD_string_write(" ");
			setColorHighlight2();
			LCD_string_write("0x");
			print16Hex(address);		// print 16-bit address from stored memory

			// Print original data
			setCursor(0, 110);
			setColorDefault();
			LCD_string_write("\n ");
			setColorHighlight2();
			print8Hex(ramRead8(d));

			// Prompt for new data
			setCursor(0, 160);
			setColorSelect();
			LCD_string_write(" Enter New Value:\n ");
			setColorHighlight1();
			selection = keyDetect();
			write(selection);
			selection = ASCIItoHex(selection);
			value |= selection * 16;
			selection = keyDetect();
			write(selection);
			selection = ASCIItoHex(selection);
			value |= selection;

			// Remove highlight
			setColorDefault();
			setCursor(0, 160);
			LCD_string_write(" Enter New Value:\n ");
			setColorHighlight2();
			print8Hex(value);

			ramWrite8(d, value);

			//Highlight next choice
			setCursor(0, 210);
			setColorSelect();
			LCD_string_write(" Choose Next Action:\n");
			setColorWhite();
			LCD_string_write("  <1> Next Address\n  <2> New Address\n");
			LCD_string_write("  <0> Exit");
			}
		if (selection == '2') {			/* Highlight choice and gray out others*/
			invalid = 0;
			value = 0;
			setCursor(0, 210);
			setColorDefault();
			LCD_string_write(" Choose Next Action:\n  ");
			setColorGray();
			LCD_string_write("\n  ");
			setColorHighlight2();
			LCD_string_write("<2> New Address\n");
			setColorGray();
			LCD_string_write("\n               ");
			delay(60);

			//Reset screen
			setCursor(0, 80);
			setColorGray();
			LCD_string_write(" 0x____");
			setCursor(0, 110);
			LCD_string_write("\n __");
			setCursor(0, 160);
			LCD_string_write("\n __");
			setCursor(0, 210);
			LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");
			
			// Get Address 
			setCursor(0, 60);
			setColorSelect();
			LCD_string_write(" Edit Address");
			setCursor(0, 80);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("0x");
			address = inputAddress();		// input 16-bit address and store in memory
			d = (unsigned char __xdata*)address;

			// Remove highlight and print
			setColorDefault();
			setCursor(0, 60);
			LCD_string_write(" Edit Address:");
			setCursor(0, 80);
			LCD_string_write(" ");
			setColorHighlight2();
			LCD_string_write("0x");
			print16Hex(address);		// print 16-bit address from stored memory

			// Print original data
			setCursor(0, 110);
			setColorDefault();
			LCD_string_write("\n ");
			setColorHighlight2();
			print8Hex(ramRead8(d));
	
			// Prompt for new data
			setCursor(0, 160);
			setColorSelect();
			LCD_string_write(" Enter New Value:\n ");
			setColorHighlight1();
			selection = keyDetect();
			write(selection);
			selection = ASCIItoHex(selection);
			value |= selection * 16;
			selection = keyDetect();
			write(selection);
			selection = ASCIItoHex(selection);
			value |= selection;

			// Remove highlight
			setColorDefault();
			setCursor(0, 160);
			LCD_string_write(" Enter New Value:\n ");
			setColorHighlight2();
			print8Hex(value);

			ramWrite8(d, value);

			//Highlight next choice
			setCursor(0, 210);
			setColorSelect();
			LCD_string_write(" Choose Next Action:\n");
			setColorWhite();
			LCD_string_write("  <1> Next Address\n  <2> New Address\n");
			LCD_string_write("  <0> Exit");
		}
		if (selection == '0') {			/* Highlight choice and gray out others */
			exit = 0;
			invalid = 0;
			setCursor(0, 210);
			setColorDefault();
			LCD_string_write("\n");
			setColorGray();
			LCD_string_write("\n\n  ");
			setColorHighlight2();
			LCD_string_write("<0> Exit");
			setColorGray();
			LCD_string_write("\n               ");
			delay(60);
		}
		if (invalid) {
			setCursor(0, 210);
			setColorRed();
			LCD_string_write("\n\n\n\n Input Error ");
		}
	}
	return;
}

void find() {
	unsigned char __xdata* d;
	__idata unsigned int address = 0;
	__idata unsigned int destination = 0;
	__idata unsigned char blockSize = 0;
	__idata unsigned char value = 0;
	__idata unsigned char scan = 0;
	__idata unsigned char page = 0;
	__idata unsigned char noneFound = 1;
	__idata unsigned char invalidInput = 1;
	__idata unsigned char exit = 1;
	
	clearLCD();

	// Print find menu
	setTextSize(5);
	fillTop(GRAY);
	setColorMenu();
	setCursor(30, 0);
	LCD_string_write("[FIND]\n");
	setColorDefault();
	setTextSize(2);
	setCursor(0, 60);
	LCD_string_write(" Find Value:");
	setCursor(0, 80);
	setColorGray();
	LCD_string_write(" __");
	setCursor(0, 110);
	setColorDefault();
	LCD_string_write(" Search Address:");
	setCursor(0, 130 );
	setColorGray();
	LCD_string_write(" 0x____");
	setCursor(0, 160);
	setColorDefault();
	LCD_string_write(" Input Block Size:\n");
	setColorGray();
	LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	LCD_string_write("  <FF> (SCAN)");
	setCursor
	(0, 250);
	setColorGray();
	LCD_string_write("   __");

	/* 	Step 1:
	 * 	Prompt & Store User Input
	 */

	// Highlight value prompt
	setColorSelect();
	setCursor(0, 60);
	LCD_string_write(" Find Value:");
	setCursor(0, 80);
	setColorWhite();
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight1();
	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	value |= selection * 16;
	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	value |= selection;

	// Remove previous highlight
	setColorDefault();
	setCursor(0, 60);
	LCD_string_write(" Find Value:");
	setCursor(0, 80);
	setColorWhite();
	LCD_string_write(" ");
	setColorHighlight2();
	print8Hex(value);

	// Highlight address prompt
	setColorSelect();
	setCursor(0, 110);
	LCD_string_write(" Search Address:");
	setCursor(0, 130);
	LCD_string_write(" ");
	setColorHighlight1();
	LCD_string_write("0x");
	address = inputAddress();

	// Remove previous highlight
	setColorDefault();
	setCursor(0, 110);
	LCD_string_write(" Search Address:");
	setCursor(0, 130);
	LCD_string_write(" ");
	setColorHighlight2();
	LCD_string_write("0x");
	print16Hex(address);

	// Highlight Block Size prompt
	setColorSelect();
	setCursor(0, 160);
	LCD_string_write(" Input Block Size:\n");
	setColorWhite();
	LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	LCD_string_write("  <FF> (SCAN)");
	while (invalidInput) {
		setCursor(0, 250);
		setColorGray();
		LCD_string_write("   __");
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight1();
		blockSize = inputBlockSize();
		if (blockSize == 0x01) {
			invalidInput = 0;
			setColorDefault();
			LCD_string_write("\n                ");
		} else if (blockSize == 0x02) {
			invalidInput = 0;
			setColorDefault();
			LCD_string_write("\n                ");
		} else if (blockSize == 0x04) {
			invalidInput = 0;
			setColorDefault();
			LCD_string_write("\n                ");
		} else if (blockSize == 0xFF) {
			invalidInput = 0;
		}
		else {
			setColorRed();
			LCD_string_write("\n Try again");
		}
	} 

	// Remove previous highlight
	setCursor(0, 160);
	setColorDefault();
	LCD_string_write(" Input Block Size:\n");
	if (blockSize == 0x01){
		LCD_string_write("  ");
		setColorHighlight2();
		LCD_string_write("<01> BYTE\n");
		setColorGray();
		LCD_string_write("  <02> WORD\n");
		LCD_string_write("  <04> DWORD\n");
		LCD_string_write("  <FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n BYTE [8 bits]");
	} else if (blockSize == 0x02) {
		setColorGray();
		LCD_string_write("  <01> BYTE\n  ");
		setColorHighlight2();
		LCD_string_write("<02> WORD\n");
		setColorGray();
		LCD_string_write("  <04> DWORD\n");
		LCD_string_write("  <FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n WORD [16 bits]");
	} else if (blockSize == 0x04) {
		setColorGray();
		LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
		setColorHighlight2();
		LCD_string_write("<04> DWORD\n");
		setColorGray();
		LCD_string_write("  <FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n DWORD [32 bits]");
	} else if (blockSize == 0xFF) {
		scan = 1;
		setColorGray();
		LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
		LCD_string_write("<04> DWORD\n  ");
		setColorHighlight2();
		LCD_string_write("<FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n [256 Blocks]");
	}

	// Reset screen
	delay(40);
	clearLCD();
	fillTop(GRAY);
	setTextSize(5);
	setColorMenu();
	setCursor(30,0);
	LCD_string_write("[FIND]\n");
	setColorDefault();
	setTextSize(2);


	/* 	Step 2:
	 *	Search and print
	 */
	while (exit) {
		/* Check if 0xFF was entered for non-interactive scan*/
		if (scan) {	
			setCursor(0, 60);
			setColorYellow();
			LCD_string_write(" [Non-Interactive]\n");
			setColorWhite();
			LCD_string_write(" Search Value:\n ");
			setColorDefault();
			print8Hex(value);
			for(unsigned int i = 0; i < blockSize; i++) {
				d = (unsigned char __xdata*)(i+address);
				if(value == ramRead8(d)){
					noneFound = 0;
					/* Print only the first 'Found at...' header to speed up LCD printing during scan */
					if (page == 0) {		
						setColorWhite();
						setCursor(0, 120);
						LCD_string_write(" Found at Location:\n");
						setColorDefault();
						LCD_string_write(" 0x");
						print16Hex(i);
						page++;
					} else {
						setCursor(0, 120);
						LCD_string_write("\n 0x");
						print16Hex(i);
					}
				}
			}
			exit = 0;
		} else {
			setCursor(0, 60);
			setColorYellow();
			LCD_string_write(" [Interactive]\n");
			setColorWhite();
			LCD_string_write(" Search Value:\n ");
			setColorDefault();
			print8Hex(value);

			/* Interactive search through memory block */
			for (unsigned int i = 0; i < blockSize; i++) {
				d = (unsigned char __xdata*)(i+address);
				if(value == ramRead8(d)){
					noneFound = 0;		// toggle flag
					setCursor(0, 120);
					setColorWhite();
					LCD_string_write(" Found at Location \n");
					setColorDefault();
					LCD_string_write(" 0x");
					print16Hex(page+address);
					setCursor(50, 300);
					setColorGray();
					LCD_string_write("Page: ");
					setColorHighlight2();
					print8Hex(page+1);


					/*Case 1: Page 0 Options*/
					if (i == 0) {					// At beginning, page <0>
						if (i != blockSize - 1) {	// not at the end yet, no previous page
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write(" <1> Next\n <0> Exit\n              ");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '1'){
									setCursor(0, 180);
									LCD_string_write(" ");
									setColorHighlight2();
									LCD_string_write("<1> Next");
									invalidInput = 0;
									page++;
								} if(selection == '0') {
									setColorDefault();
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									exit = 0;		// set exit flag
									invalidInput = 0;
								} 
							}
						} else if (i == blockSize - 1) {	// starts at the end, no previous or next page
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write("          \n <0> Exit\n              ");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '0') {
									setColorDefault();
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									exit = 0;		// set exit flag
									invalidInput = 0;
								}
							}
						}
						if (exit == 0) {	// check exit flag
							break;			// break out of for loop iteration
						}
					}

					/*Case 2: Page End Options*/
					else if (i == blockSize - 1) {		// At Page End 
						if (i != 0) {				// not at beginning, no next page
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write("          \n <0> Exit\n <2> Previous");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '0'){
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit\n");
									invalidInput = 0;
									exit = 0;
								} if (selection == '2') {
									setCursor(0, 180);
									setColorWhite();
									LCD_string_write("\n\n ");
									setColorHighlight2();
									LCD_string_write("<2> Previous");
									invalidInput = 0;
									i--;			// two decrements plus next loop increment is equal to one decrement
									i--;
									page--;			// decrement to previous page
								}
							}
						}
						else if (i == 0){				// end at beginning, no next or previous
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write("          \n <0> Exit\n              ");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '0') {
									setColorDefault();
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									exit = 0;		// set exit flag
									invalidInput = 0;
								}
							}
						}
						if (exit == 0) {	// check exit flag
							break;			// break out of for loop iteration
						}
					}

					/*Case 3: Mid Page*/
					else if (i != blockSize - 1)  {	// in mid page, with previous and next options
						if (i != 0) {
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if (selection == '1') {
									setCursor(0, 180);
									LCD_string_write(" ");
									setColorHighlight2();
									LCD_string_write("<1> Next");
									invalidInput = 0;
									page++;
								} if (selection == '2') {
									setCursor(0, 180);
									setColorWhite();
									LCD_string_write("\n\n ");
									setColorHighlight2();
									LCD_string_write("<2> Previous");
									invalidInput = 0;
									i--;
									i--;		// two decrements plus next loop increment is equal to one decrement
									page--;		// decrement to previous page
								} if (selection == '0') {
									setColorWhite();
									setCursor(0, 180);
									LCD_string_write(" <1> Next\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									setColorWhite();
									LCD_string_write("\n <2> Previous");
									exit = 0;		// set exit flag
									invalidInput = 0;
								}
							}			
						}
						if (exit == 0) {		// check exit flag
							break;			// break out the loop
						}
					}			
				}
			}
		}
		if(noneFound) {
			setColorRed();
			setCursor(0, 140);
			LCD_string_write(" Value Not Found\n Within Block\n ");
			setColorWhite();
			LCD_string_write("\n <0> Exit");
			invalidInput = 1;
		
			while (invalidInput) {
				selection = keyDetect();
				if (selection == '0'){
					setCursor(0, 140);
					LCD_string_write("\n\n\n ");
					setColorHighlight2();
					LCD_string_write("<0> Exit");
					invalidInput = 0;
					exit = 0;
				}
			}
		}
	}
	delay(80);
	return;
}

void count() {
	unsigned char __xdata* d;
	__idata unsigned int address = 0;
	__idata unsigned int destination = 0;
	__idata unsigned char blockSize = 0;
	__idata unsigned char value = 0;
	__idata unsigned char scan = 0;
	__idata unsigned char page = 0;
	__idata unsigned char noneFound = 1;
	__idata unsigned char invalidInput = 1;
	__idata unsigned char exit = 1;
	
	clearLCD();

	// Print count menu
	setTextSize(5);
	fillTop(GRAY);
	setColorMenu();
	setCursor(15, 0);
	LCD_string_write("[COUNT]\n");
	setColorDefault();
	setTextSize(2);
	setCursor(0, 60);
	LCD_string_write(" Search Value:");
	setCursor(0, 80);
	setColorGray();
	LCD_string_write(" __");
	setCursor(0, 110);
	setColorDefault();
	LCD_string_write(" Search Address:");
	setCursor(0, 130 );
	setColorGray();
	LCD_string_write(" 0x____");
	setCursor(0, 160);
	setColorDefault();
	LCD_string_write(" Input Block Size:\n");
	setColorGray();
	LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	LCD_string_write("  <FF> (SCAN)");
	setCursor(0, 250);
	setColorGray();
	LCD_string_write("   __");

	/* 	Step 1:
	 * 	Prompt & Store User Input
	 */

	// Highlight value prompt
	setColorSelect();
	setCursor(0, 60);
	LCD_string_write(" Search Value:");
	setCursor(0, 80);
	setColorWhite();
	setCursor(0, 80);
	LCD_string_write(" ");
	setColorHighlight1();
	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	value |= selection * 16;
	selection = keyDetect();
	write(selection);
	selection = ASCIItoHex(selection);
	value |= selection;

	// Remove previous highlight
	setColorDefault();
	setCursor(0, 60);
	LCD_string_write(" Search Value:");
	setCursor(0, 80);
	setColorWhite();
	LCD_string_write(" ");
	setColorHighlight2();
	print8Hex(value);

	// Highlight address prompt
	setColorSelect();
	setCursor(0, 110);
	LCD_string_write(" Search Address:");
	setCursor(0, 130);
	LCD_string_write(" ");
	setColorHighlight1();
	LCD_string_write("0x");
	address = inputAddress();

	// Remove previous highlight
	setColorDefault();
	setCursor(0, 110);
	LCD_string_write(" Search Address:");
	setCursor(0, 130);
	LCD_string_write(" ");
	setColorHighlight2();
	LCD_string_write("0x");
	print16Hex(address);

	// Highlight Block Size prompt
	setColorSelect();
	setCursor(0, 160);
	LCD_string_write(" Input Block Size:\n");
	setColorWhite();
	LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	LCD_string_write("  <FF> (SCAN)");
	while (invalidInput) {
		setCursor(0, 250);
		setColorGray();
		LCD_string_write("   __");
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight1();
		blockSize = inputBlockSize();
		if (blockSize == 0x01) {
			invalidInput = 0;
			setColorDefault();
			LCD_string_write("\n                ");
		} else if (blockSize == 0x02) {
			invalidInput = 0;
			setColorDefault();
			LCD_string_write("\n                ");
		} else if (blockSize == 0x04) {
			invalidInput = 0;
			setColorDefault();
			LCD_string_write("\n                ");
		} else if (blockSize == 0xFF) {
			invalidInput = 0;
		}
		else {
			setColorRed();
			LCD_string_write("\n Try again");
		}
	} 

	// Remove previous highlight
	setCursor(0, 160);
	setColorDefault();
	LCD_string_write(" Input Block Size:\n");
	if (blockSize == 0x01){
		LCD_string_write("  ");
		setColorHighlight2();
		LCD_string_write("<01> BYTE\n");
		setColorGray();
		LCD_string_write("  <02> WORD\n");
		LCD_string_write("  <04> DWORD\n");
		LCD_string_write("  <FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n BYTE [8 bits]");
	} else if (blockSize == 0x02) {
		setColorGray();
		LCD_string_write("  <01> BYTE\n  ");
		setColorHighlight2();
		LCD_string_write("<02> WORD\n");
		setColorGray();
		LCD_string_write("  <04> DWORD\n");
		LCD_string_write("  <FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n WORD [16 bits]");
	} else if (blockSize == 0x04) {
		setColorGray();
		LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
		setColorHighlight2();
		LCD_string_write("<04> DWORD\n");
		setColorGray();
		LCD_string_write("  <FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n DWORD [32 bits]");
	} else if (blockSize == 0xFF) {
		scan = 1;
		setColorGray();
		LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
		LCD_string_write("<04> DWORD\n  ");
		setColorHighlight2();
		LCD_string_write("<FF> (SCAN)");
		setColorDefault();
		setCursor(0, 250);
		LCD_string_write("   ");
		setColorHighlight2();
		print8Hex(blockSize);
		setColorDefault();
		LCD_string_write("\n Search Size Limit:");
		setColorWhite();
		LCD_string_write("\n [256 Blocks]");
	}

	// Reset screen
	delay(40);
	clearLCD();
	fillTop(GRAY);
	setTextSize(5);
	setColorMenu();
	setCursor(15,0);
	LCD_string_write("[COUNT]\n");
	setColorDefault();
	setTextSize(2);


	/* 	Step 2:
	 *	Search and print
	 */
	while (exit) {
		/* Check if 0xFF was entered for non-interactive scan*/
		if (scan) {	
			setCursor(0, 60);
			setColorYellow();
			LCD_string_write(" [Non-Interactive]\n");
			setColorWhite();
			LCD_string_write(" Search Value:\n ");
			setColorDefault();
			print8Hex(value);
			for(unsigned int i = 0; i < blockSize; i++) {
				d = (unsigned char __xdata*)(i+address);
				if(value == ramRead8(d)){
					noneFound = 0;
					page++;
				}
			}
			setCursor(0, 120);
			setColorWhite();
			LCD_string_write(" Found in\n ");
			setColorDefault();
			LCD_string_write("0x");
			print8Hex(page);
			LCD_string_write(" Bytes (Hex)\n ");
			exit = 0;
		} else {
			setCursor(0, 60);
			setColorYellow();
			LCD_string_write(" [Interactive]\n");
			setColorWhite();
			LCD_string_write(" Search Value:\n ");
			setColorDefault();

			/* Interactive search through memory block */
			for (unsigned int i = 0; i < blockSize; i++) {
				d = (unsigned char __xdata*)(i+address);
				if(value == ramRead8(d)){
					noneFound = 0;		// toggle flag
					setCursor(0, 120);
					setColorWhite();
					LCD_string_write(" Found at Location \n");
					setColorDefault();
					LCD_string_write(" 0x");
					print16Hex(page+address);
					setCursor(50, 300);
					setColorGray();
					LCD_string_write("Count: ");
					setColorHighlight2();
					print8Hex(page+1);


					/*Case 1: Page 0 Options*/
					if (i == 0) {					// At beginning, page <0>
						if (i != blockSize - 1) {	// not at the end yet, no previous page
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write(" <1> Next\n <0> Exit\n              ");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '1'){
									setCursor(0, 180);
									LCD_string_write(" ");
									setColorHighlight2();
									LCD_string_write("<1> Next");
									invalidInput = 0;
									page++;
								} if(selection == '0') {
									setColorDefault();
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									exit = 0;		// set exit flag
									invalidInput = 0;
								} 
							}
						} else if (i == blockSize - 1) {	// starts at the end, no previous or next page
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write("          \n <0> Exit\n              ");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '0') {
									setColorDefault();
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									exit = 0;		// set exit flag
									invalidInput = 0;
								}
							}
						}
						if (exit == 0) {	// check exit flag
							break;			// break out of for loop iteration
						}
					}

					/*Case 2: Page End Options*/
					else if (i == blockSize - 1) {		// At Page End 
						if (i != 0) {				// not at beginning, no next page
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write("          \n <0> Exit\n <2> Previous");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '0'){
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit\n");
									invalidInput = 0;
									exit = 0;
								} if (selection == '2') {
									setCursor(0, 180);
									setColorWhite();
									LCD_string_write("\n\n ");
									setColorHighlight2();
									LCD_string_write("<2> Previous");
									invalidInput = 0;
									i--;			// two decrements plus next loop increment is equal to one decrement
									i--;
									page--;			// decrement to previous page
								}
							}
						}
						else if (i == 0){				// end at beginning, no next or previous
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write("          \n <0> Exit\n              ");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if(selection == '0') {
									setColorDefault();
									setCursor(0, 180);
									LCD_string_write("\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									exit = 0;		// set exit flag
									invalidInput = 0;
								}
							}
						}
						if (exit == 0) {	// check exit flag
							break;			// break out of for loop iteration
						}
					}

					/*Case 3: Mid Page*/
					else if (i != blockSize - 1)  {	// in mid page, with previous and next options
						if (i != 0) {
							setCursor(0, 180);
							setColorWhite();
							LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
							invalidInput = 1;
							while (invalidInput) {
								selection = keyDetect();
								if (selection == '1') {
									setCursor(0, 180);
									LCD_string_write(" ");
									setColorHighlight2();
									LCD_string_write("<1> Next");
									invalidInput = 0;
									page++;
								} if (selection == '2') {
									setCursor(0, 180);
									setColorWhite();
									LCD_string_write("\n\n ");
									setColorHighlight2();
									LCD_string_write("<2> Previous");
									invalidInput = 0;
									i--;
									i--;		// two decrements plus next loop increment is equal to one decrement
									page--;		// decrement to previous page
								} if (selection == '0') {
									setColorWhite();
									setCursor(0, 180);
									LCD_string_write(" <1> Next\n ");
									setColorHighlight2();
									LCD_string_write("<0> Exit");
									setColorWhite();
									LCD_string_write("\n <2> Previous");
									exit = 0;		// set exit flag
									invalidInput = 0;
								}
							}			
						}
						if (exit == 0) {		// check exit flag
							break;			// break out the loop
						}
					}			
				}
			}
		}
		if(noneFound) {
			setColorRed();
			setCursor(0, 160);
			LCD_string_write(" Value Not Found\n Within Block\n ");
			setColorWhite();
			LCD_string_write("\n <0> Exit");
			invalidInput = 1;
		
			while (invalidInput) {
				selection = keyDetect();
				if (selection == '0'){
					setCursor(0, 160);
					LCD_string_write("\n\n\n ");
					setColorHighlight2();
					LCD_string_write("<0> Exit");
					invalidInput = 0;
					exit = 0;
				}
			}
		}
	}
	delay(80);
	return;
}

void check() {
	__idata u8 temp;
	clearLCD();

	//print check menu
	fillTop(GRAY);
	setTextSize(5);
	setColorMenu();
	setCursor(15, 0);
	LCD_string_write("[CHECK]\n");
	setColorDefault();
	setTextSize(2);
	setCursor(0, 60);
	LCD_string_write(" Enter Value:\n");
	setColorGray();
	LCD_string_write(" __");

	setCursor(0,60);
	LCD_string_write("\n ");
	setColorHighlight1();
	selection = 0;
	temp = keyDetect();
	write(temp);
	temp = ASCIItoHex(temp);
	selection |= temp * 16;
	temp = keyDetect();
	write(temp);
	temp = ASCIItoHex(temp);
	selection |= temp;
	setColorDefault();
	LCD_string_write("\n\n Writing byte to\n all memory\n locations...");
	writeAllRAM(selection);
	setColorWhite();
	LCD_string_write("\n Verifying write...");
	checkAllRAM(selection);
	LCD_string_write("\n Complete.");
	setTextColor(BLUE, colorBackground);
	LCD_string_write("\n\n Toggling bits in\n each nibble...");
	selection = ~selection;
	setColorSelect();
	LCD_string_write("\n Writing new byte...");
	writeAllRAM(selection);
	setColorYellow();
	LCD_string_write("\n Verifying write...");
	checkAllRAM(selection);
	setColorGreen();
	LCD_string_write("\n\n Check Complete.");
	delay(120);
	return;
}

void uart() {
	__idata u8 initLock;
	__idata u8 temp = 0;
	__idata u8 baudType = 0;
	__idata u8 _8b = 0;
	__idata u16 frame_NES = 0;		//	bitMode | Even/odd | Set/not
										//	X000 = 8bit, odd, no_parity
										// 	X001 = 8bit, odd, parity
										//	X010 = 8bit, even, no_parity
										//	X011 = 8bit, even, parity
										//	X100 = 9bit, odd, no_parity
										//	X101 = 9bit, odd, parity
										//	X110 = 9bit, even, no_parity
										//	X111 = 9bit, even, parity

	//print UART menu options
	uartMenu:
		clearLCD();
		fillTop(GRAY);
		setTextSize(5);
		setColorMenu();
		setCursor(30, 0);
		LCD_string_write("[UART]\n");
		
	uartMain:
		initLock = 0;
		if (UART_en == 1){
			setTextSize(2);
			setColorDefault();
			setCursor(0, 60);
			LCD_string_write(" <1> ");
			if (baudType == 0x1) {
				LCD_string_write("1200");
			}
			if (baudType == 0x2) {
				LCD_string_write("2400");
			} if (baudType == 0x3){
				LCD_string_write("4800");
			} if (baudType == 0x4){
				LCD_string_write("9600");
			} if (baudType == 0x5) {
				LCD_string_write("19200");
			}
			LCD_string_write(" baud\n");
			setCursor(0, 100);
			LCD_string_write(" <2> ");
			if (_8b == 1) {
				LCD_string_write("8");
			} if (_8b == 0) {
				LCD_string_write("9");
			}
			LCD_string_write("-bit Mode\n");
			setCursor(0, 140);
			LCD_string_write(" <3> ");
			LCD_string_write(" Parity");
			setCursor(0, 180);
			LCD_string_write(" <4> Disable UART\n");
			LCD_string_write("     (Enabled)\n");
		} if (UART_en == 0) {
			setTextSize(2);
			setColorDefault();
			setCursor(0, 60);
			LCD_string_write(" <1> Set Data Rate\n");
			setCursor(0, 100);
			LCD_string_write(" <2> Number of Bits\n     (8 or 9 bits)\n");
			setCursor(0, 140);
			LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
			setCursor(0, 180);
			LCD_string_write(" <4> Enable UART\n");
			LCD_string_write("     (Disabled)\n");
		}
		setCursor(0, 240);
		LCD_string_write(" <0> Exit \n");
		
	mainInput:
		selection = keyDetect();
		if (selection =='0') {
			setCursor (0, 240);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<0> ");
			setColorHighlight2();
			LCD_string_write("Exit\n");
			delay(20);
			goto finish;
		}
		if (selection == '4') {
			setCursor (0, 180);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<4> ");
			setColorHighlight2();
			if (UART_en == 1) {
				LCD_string_write("Disable UART\n");
				setColorDefault();
				LCD_string_write("     ");
				setColorHighlight1();
				LCD_string_write("(Enabled)");
				setColorDefault();
				initLock = 0;
				temp = 0;
				_8b = 'null';
				frame_NES = 0;
				temp = 0;
				UART_en = 0;
				baudSet = 0;
				bitSet = 0;
				paritySet = 0;
				goto mainInput;
			} if (UART_en == 0 ){
				LCD_string_write("Enable UART\n");
				setColorDefault();
				LCD_string_write("     ");
				setColorHighlight1();
				LCD_string_write("(Disabled)");
				setColorDefault();
			}
			delay(40);
			initLock = 1;
			goto verifyUART;
		} if (selection == '1') {
			setCursor (0, 60);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<1> ");
			setColorHighlight2();
			LCD_string_write("Set Data Rate\n");
			delay(20);
			if (UART_en == 1) {
				setCursor(0, 200);
				setColorRed();
				LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
				setColorDefault();
				setCursor(0, 60);
				LCD_string_write(" <1> Set Data Rate\n");
				goto mainInput;
			} if (UART_en == 0) {
				goto setRate;
			}
		}
		if (selection == '2') {
			setCursor (0, 100);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<2> ");
			setColorHighlight2();
			LCD_string_write("Number of Bits\n");
			setColorDefault();
			LCD_string_write("     ");
			setColorHighlight1();
			LCD_string_write("(8 or 9 bits)\n");
			if (UART_en == 1) {
				setCursor(0, 200);
				setColorRed();
				LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
				setColorDefault();
				setCursor(0, 100);		
				LCD_string_write(" <2> Number of Bits\n     (8 or 9 bits)\n");
				goto mainInput;
			} if (UART_en == 0) goto setBit;
		} if (selection == '3') {
			setCursor (0, 140);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<3> ");
			setColorHighlight2();
			LCD_string_write("Parity ");
			setColorHighlight1();
			LCD_string_write("(Even/\n");
			setColorDefault();
			LCD_string_write("     ");
			setColorHighlight1();
			LCD_string_write("(Odd/None)\n");
			if (UART_en == 1) {
				setCursor(0, 200);
				setColorRed();
				LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
				setColorDefault();
				setCursor(0, 140);
				LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
				goto mainInput;
			} if (UART_en == 0) goto setParity;
		} else {
		setColorRed();
		setCursor(0, 200);
		LCD_string_write("\n\n\n\n Incorrect input\n  Try again.\n");
		setColorDefault();
		goto mainInput;
		}

	verifyUART:
		clearLCD();
		setCursor(0, 120);
		if (initLock == 1) {
			if (UART_en == 1) {
				setColorGreen();
				LCD_string_write("\n Disabling UART...\n");
				setColorDefault();
				delay(40);
				UART_en = 0;
				bitSet = 0;
				paritySet = 0;
				baudSet = 0;
				setColorDefault();
				goto uartMenu;
			} if (UART_en == 0) {
				if ((baudSet == 1) && (paritySet == 1) && (bitSet == 1)) {
					setColorSelect();
					LCD_string_write("\n Settings Verified:\n");
					setColorDefault();
					LCD_string_write(" Enabling UART...");
					//UART_Init();
					UART_en = 1;
					//init UARt with settings
					delay(40);
					goto uartMenu;
				} else {
					if (baudSet == 0) {
						setColorRed();
						LCD_string_write(" BAUD ERROR\n");
						setColorDefault();
						LCD_string_write(" Entering Baud...\n");
						delay(40);
						goto setRate;
					} if (bitSet == 0) {
						setColorRed();
						LCD_string_write(" BIT ERROR\n");
						setColorDefault();
						LCD_string_write(" Entering Bits...\n");
						delay(40);
						goto setBit;
					} if (paritySet == 0) {
						setColorRed();
						LCD_string_write(" PARITY ERROR\n");
						setColorDefault();
						LCD_string_write(" Entering Parity...\n");
						delay(40);
						goto setParity;
					}
				}
			}
		} else goto uartMenu;
	
	setRate: 
		clearLCD();
		fillTop(GRAY);
		setTextSize(5);
		setColorMenu();
		setCursor(30, 0);
		LCD_string_write("[UART]\n");
		setTextSize(2);
		setColorDefault();
		setCursor(0, 60);
		LCD_string_write(" <1> 1200 Baud\n");
		setCursor(0, 100);
		LCD_string_write(" <2> 2400 Baud\n");
		setCursor(0, 140);
		LCD_string_write(" <3> 4800 Baud\n");
		setCursor(0, 180);
		LCD_string_write(" <4> 9600 Baud\n");
		setCursor(0, 220);
		LCD_string_write(" <5> 19200 Baud\n");
	baudInput:
		selection = keyDetect();
		if (selection == '1' ) {
			setCursor(0, 60);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<1> ");
			setColorHighlight2();
			LCD_string_write("1200 Baud\n");
			TH1 = 0xE6;	// 1200 baud
			PCON = 0x00; //SMOD = 0
			baudSet = 1;
			baudType = 0x1;
			if (initLock == 1) goto verifyUART;
			else goto uartMenu;
		}
		if (selection == '2' ) {
			setCursor(0, 100);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<2> ");
			setColorHighlight2();
			LCD_string_write("2400 Baud\n");
			TH1 = 0xF3; // 2400 baud
			PCON = 0x00; //SMOD = 0
			baudSet = 1;
			baudType = 0x2;
			if (initLock == 1) goto verifyUART;
			else goto uartMenu;
		}
		if (selection == '3' ) {
			setCursor(0, 140);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<3> ");
			setColorHighlight2();
			LCD_string_write("4800 Baud\n");
			TH1 = 0xF3; //4800 baud
			PCON = 0x80; //SMOD 1
			baudSet = 1; 
			baudType = 0x3;
			if (initLock == 1) goto verifyUART;
			else goto uartMenu;
		}
		if (selection == '4' ) {
			setCursor(0, 180);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<4> ");
			setColorHighlight2();
			LCD_string_write("9600 Baud\n");
			TH1 = 0xFD; //9600 baud
			PCON = 0x00; //SMOD 0
			baudSet = 1;
			baudType = 0x4;
			if (initLock == 1) goto verifyUART;
			else goto uartMenu;
		}
		if (selection == '5' ) {
			setCursor(0, 220);
			LCD_string_write(" ");
			setColorHighlight1();
			LCD_string_write("<5> ");
			setColorHighlight2();
			LCD_string_write("19200 Baud\n");
			TH1 = 0xFD;	//19200 baud
			PCON = 0x80; //SMOD 1
			baudSet = 1;
			baudType = 0x5;
			if (initLock == 1) goto verifyUART;
			} else {
			setColorRed();
			setCursor(0, 240);
			LCD_string_write(" INPUT ERROR");
			setColorDefault();
			goto mainInput;
			}

		setBit:
			clearLCD();
			fillTop(GRAY);
			setTextSize(5);
			setColorMenu();
			setCursor(30, 0);
			LCD_string_write("[UART]\n");
			setTextSize(2);
			setColorDefault();
			setCursor(0, 60);
			LCD_string_write(" <1> 8-bit Mode\n");
			setCursor(0, 100);
			LCD_string_write(" <2> 9-bit Mode\n");
		sel:
		selection = keyDetect();
			if (selection == '1') {
				setCursor(0, 60);
				LCD_string_write(" ");
				setColorHighlight1();
				LCD_string_write("<1> ");
				setColorHighlight2();
				LCD_string_write("8-bit Mode\n");
				bitSet = 1;
				_8b = 1;
				temp = 1;
				goto cont;
			} if (selection == '2') {
				setCursor(0, 100);
				LCD_string_write(" ");
				setColorHighlight1();
				LCD_string_write("<2> ");
				setColorHighlight2();
				LCD_string_write("9-bit Mode\n");
				bitSet = 1;
				_8b = 0;
				temp = 2;
				goto cont;
			} else {
				bitSet = 0;
				goto sel;
			}

		setParity:
			if (temp == 0) {
				setCursor(0, 240);
				setColorRed();
				writeNewLine();
				LCD_string_write("\n Please set the\n  bit mode first.\n");
				setColorDefault();
				setCursor(0, 140);
				LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
				goto mainInput;
			} if (temp == 1) {
				_8b = 1;
			} if (temp == 2) {
				_8b = 0;
			}
			clearLCD();
			fillTop(GRAY);
			setTextSize(5);
			setColorMenu();
			setCursor(30, 0);
			LCD_string_write("[UART]\n");
			setTextSize(2);
			setColorDefault();
			setCursor(0, 60);
			LCD_string_write(" <1> Even Parity\n");
			setCursor(0, 100);
			LCD_string_write(" <2> Odd Parity\n");
			setCursor(0, 140);
			LCD_string_write(" <3> No Parity");

			boop: 
				selection = keyDetect();
				if (selection == '1') {
					setCursor(0, 60);
					LCD_string_write(" ");
					setColorHighlight1();
					LCD_string_write("<1> ");
					setColorHighlight2();
					LCD_string_write("Even Parity\n");
					if(_8b == 0) {
						frame_NES = 0x111;	//9 bit, Even, Parity Set
						bitSet = 1;
						goto setFrame;
					} if (_8b == 1){
						frame_NES = 0x011;	//8 bit, even, Parity Set
						bitSet = 1;
						goto setFrame;
					} else {
						frame_NES = 0x100;	//exit
						goto finish;
					}
				} if (selection == '2') {
					setCursor(0, 100);
					LCD_string_write(" ");
					setColorHighlight1();
					LCD_string_write("<2> ");
					setColorHighlight2();
					LCD_string_write("Odd Parity\n");

					if (_8b == 0) {
						frame_NES = 0x101;		//9 bit, odd, parity set
						bitSet = 1;
						goto setFrame;
					} if (_8b == 1) {
						frame_NES = 0x001;		//8 bit, odd, parity set
						bitSet = 1;
						goto setFrame;
					} else {
						frame_NES = 0x100;		//exit
						goto finish;
					}
				} if (selection == '3') {
					setCursor(0, 140);
					LCD_string_write(" ");
					setColorHighlight1();
					LCD_string_write("<3> ");
					setColorHighlight2();
					LCD_string_write("No Parity\n");
					
					if (_8b == 0) {
						frame_NES = 0x100; 			//9 bit, odd, no parity
						bitSet = 1;
						goto setFrame;
					} if (_8b == 1) {
						frame_NES = 0x000;		 	//8 bit, odd, no parity
						bitSet = 1;
						goto setFrame;
					}
				} else goto boop; 

			setFrame:	
				if ((frame_NES == 0x000) || 	//8 bit, odd, no parity
					(frame_NES == 0x001) ||		//8 bit, odd, parity set
					(frame_NES == 0x010) ||
					(frame_NES == 0x011) ||
					(frame_NES == 0x100) ||
					(frame_NES == 0x101) ||
					(frame_NES == 0x110) ||
					(frame_NES == 0x111)) {
						paritySet = 1;
						goto cont;
				}
				else {
						writeNewLine();
						LCD_string_write(" Something is wrong.");
						delay(80);
						bitSet = 0;
						goto uartMenu;
				}
			cont:
				if (initLock == 1) goto verifyUART;
				else goto uartMenu;
			finish:
				return;
		
}


void main() {
	__idata unsigned char validKey = 1;
	
	
	delay(10);
	iowrite8(seg7_address, ON);
	delay(5);
	CD = 0;
	IOM = 0;
	rtcInit();							// RTC init

	TFT_LCD_INIT();						// LCD init
	iowrite8(seg7_address, SEG_H);		// [H]
	delay(40);							
	iowrite8(seg7_address, 0b01111011); // [i.]
	delay(40);
	iowrite8(seg7_address, OFF);
	delay(20);
	//seg7Test();
	//UART_Init();						// UART init
	writeSomeLines();					// LCD Power On Self-Test and Welcome message

	clearLCD();							// set LCD background
	setColorDefault();	// set text color
/*	setCursor(30, 120);				
	LCD_string_write("RAM POST\n");
	writeAllRAM(0xAA);
	setCursor(30, 150);
	LCD_string_write("...\n");
	checkAllRAM(0xAA);
	UART_en = 0;*/
	
	while (1) {
	loop:
		validKey = 1;
		iowrite8(seg7_address, OFF);
		clearLCD();
		setCursor(30, 120);
		setTextSize(3);
		setColorSelect();
		rtcPrint();
		printMenu();
		inputKey:
		selection = keyDetect();
		if (selection == 'D') {
			iowrite8(seg7_address, ON);
			setCursor(10, 60);
			setColorHighlight1();
			LCD_string_write("<D>");
			setColorHighlight2();
			LCD_string_write(" DUMP\n");
			delay(20);
			iowrite8(seg7_address, SEG_D);
			if (validKey == 0) {
				setColorDefault();
				setCursor(60, 280);
				LCD_string_write("          ");
			}
			dump();
			goto loop;
		} if(selection == 'B') {
			iowrite8(seg7_address, ON);
			setCursor(130, 60);
			setColorHighlight1();
			LCD_string_write("<B>");
			setColorHighlight2();
			LCD_string_write(" MOVE\n");
			delay(20);
			iowrite8(seg7_address, SEG_B);
			if (validKey == 0) {
				setColorDefault();
				setCursor(60, 280);
				LCD_string_write("          ");
			}
			move();
			goto loop;
		} if(selection == 'E') {
			iowrite8(seg7_address, ON);
			setCursor(10, 100);
			setColorHighlight1();
			LCD_string_write("<E>");
			setColorHighlight2();
			LCD_string_write(" EDIT\n");
			delay(20);
			iowrite8(seg7_address, SEG_E);
			if (validKey == 0) {
				setColorDefault();
				setCursor(60, 280);
				LCD_string_write("          ");
			}
			edit();
			goto loop;
		} if(selection == 'F') {
			iowrite8(seg7_address, ON);
			setCursor(130, 100);
			setColorHighlight1();
			LCD_string_write("<F>");
			setColorHighlight2();
			LCD_string_write(" FIND\n");
			delay(20);
			iowrite8(seg7_address, SEG_F);
			if (validKey == 0) {
				setColorDefault();
				setCursor(60, 280);
				LCD_string_write("          ");
			}
			find();
			goto loop;
		} if(selection == 'C') {
			iowrite8(seg7_address, ON);
			setCursor(10, 160);
			setColorHighlight1();
			LCD_string_write("<C>");
			setColorHighlight2();
			LCD_string_write(" COUNT\n");
			delay(20);
			iowrite8(seg7_address, SEG_C);
			if (validKey == 0) {
				setColorDefault();
				setCursor(60, 280);
				LCD_string_write("          ");
			}
			count();
			goto loop;
		} if(selection == 'A') {
			iowrite8(seg7_address, ON);
			setCursor(10, 180);
			setColorHighlight1();
			LCD_string_write("<A>");
			setColorHighlight2();
			LCD_string_write(" MEM CHECK\n");
			delay(20);
			iowrite8(seg7_address, SEG_A);
			if (validKey == 0) {
				setColorDefault();
				setCursor(60, 280);
				LCD_string_write("          ");
			}
			check();
			goto loop;
		} if(selection == '1') {
				iowrite8(seg7_address, ON);
				setCursor(10, 220);
				setColorHighlight1();
				LCD_string_write("<1>");
				setColorHighlight2();
				LCD_string_write(" UART");
				setTextSize(1);
				if (UART_en == 1) {
				 	LCD_string_write(" [Enabled]\n");
				} if (UART_en == 0) {
					LCD_string_write(" [Disabled]\n");
				}
				setTextSize(2);
				delay(20);
				iowrite8(seg7_address, SEG_U);
				if (validKey == 0) {
					setColorDefault();
					setCursor(60, 280);
					LCD_string_write("          ");
				}
	
			uart();
			goto loop;
		} else {
			setCursor(45, 260);
			setColorRed();
			LCD_string_write("INVALID INPUT\n");
			setCursor(60, 280);
			LCD_string_write("Try again.");
			validKey = 0;
			delay(20);
			setColorDefault();
			setCursor(45, 260);
			LCD_string_write("               \n");
			goto inputKey;
		}			
		
	}
}
			
			