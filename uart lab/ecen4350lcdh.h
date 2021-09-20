/// all the required header for project here

# include <AT89C55.h>
# include "registers.h"
# include "bmp_image.h"

// define any address for lcd for address decoding
// use a latch
# define __LCD_ADDRESS__ 0x4000
# define __SEG_7_ADDRESS__ 0x8000
# define __RTC_ADDRESS__ 0x0000

// RTC address registers

# define __S1_REG__			__RTC_ADDRESS__ + 0x00
# define __S10_REG__		__RTC_ADDRESS__ + 0x01
# define __MI1_REG__		__RTC_ADDRESS__ + 0x02
# define __MI10_REG__		__RTC_ADDRESS__ + 0x03
# define __H1_REG__			__RTC_ADDRESS__ + 0x04
# define __H10_REG__		__RTC_ADDRESS__ + 0x05
# define __D1_REG__ 		__RTC_ADDRESS__ + 0x06
# define __D10_REG__		__RTC_ADDRESS__ + 0x07
# define __M1_REG__			__RTC_ADDRESS__ + 0x08
# define __M10_REG__		__RTC_ADDRESS__ + 0x09
# define __Y1_REG__			__RTC_ADDRESS__ + 0x0A
# define __Y10_REG__		__RTC_ADDRESS__ + 0x0B
# define __W_REG__			__RTC_ADDRESS__ + 0x0C
# define __REG_D__			__RTC_ADDRESS__ + 0x0D
# define __REG_E__			__RTC_ADDRESS__ + 0x0E
# define __REG_F__			__RTC_ADDRESS__ + 0x0F

// F register values
# define __HR_24__ 			0x04
# define __STOP__			0x02
# define __RESET__			0x01

# define __START_RAM__ 0x0000
# define __END_RAM__ 0xFFFF
/// LCD specific variables
// width and height of lcd in pixels
# define TFTWIDTH 240
# define TFTHEIGHT 320



// if needed to remeber command/data lines and active/idle signals

# define __ACTIVE__ 0
# define __IDLE__ 1
# define __CMD__ 0
# define __DATA__ 1

# define __KEYPAD_PORT__ P1


// defining important pins for LCD interfacing
// This is how it is defined for
# define IOM P3_5
# define CD P3_4


// 7-Seg Numbers
#define ZERO 0xC0
#define ONE 0xF9
#define TWO 0xA4
#define THREE 0xB0
#define FOUR 0x99
#define FIVE 0x92
#define SIX 0x82
#define SEVEN 0xF8
#define EIGHT 0x80
#define NINE 0x98
#define SEG_A 0x88
#define SEG_B 0x83
#define SEG_C 0xC6
#define SEG_D 0xA1
#define SEG_E 0x86
#define SEG_F 0x8E
#define SEG_H 0x89
#define SEG_P 0x8C
#define SEG_U 0xC1
#define OFF 0xFF
#define ON 0x00

// definition of colors in 2-bytes
#define BLACK 0x0000
#define GRAY 0xD6BA
#define BLUE 0x001F
#define RED 0xF800
#define GREEN 0x07E0
#define CYAN 0x07FF
#define MAGENTA 0xF81F
#define YELLOW 0xFFE0
#define WHITE 0xFFFF

#define colorSelect MAGENTA
#define colorBackground BLACK
#define colorText CYAN

// variable definitions

#define	u8 unsigned char
#define	u16 unsigned int
#define	u32 unsigned long


/// function declaration


void TFT_LCD_INIT(void);  // init function
void delay(int d);  // delay function for d ms

//void write8(u8 d);
//void write8Data(u8 d);
//void writeProbe(void);


void TFT_LCD_BEGIN(void);  // begin LCD
void writeRegister8(u8 a, u8 d);
void writeRegister16(u16 a, u16 d);
void fillTop(unsigned int color);
void fillScreen(unsigned int color);  // fill screen with the color defined
void clearLCD(void);
// set address to bound your operational area
void setAddress(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y);
// reset your LCD
void reset(void);



// draw PIXEL at one pixel
void drawPixel(u16 x3,u16 y3,u16 colour1);
// fill your LCD in operating region
void lcdfill(u16 xsta,u16 ysta,u16 xend,u16 yend,u16 color);


void fillRect(u16 x,u16 y,u16 w,u16 h,u16 color);

// draw a character
void drawchar(int x, int y, unsigned char c,u16 color, u16 bg, u8 size);
//void write(u8 c);
// set cursor in certain pixel
void setCursor(u16 x, u16 y);
// set textcolor
void setTextColor(u16 x, u16 y);
// set textsize
void setTextSize(u8 s);

// set string write
void LCD_string_write(char *str);
void writeNewLine(void);
// dont really need this function
void drawGrayscaleBitmap(int x, int y, const u16 bitmap[], int w, int h, u16 color) ;

// draw circles
void drawCircle(int x0, int y0, int r, u16 color);
// test circles
void testCircles(u8 radius, u16 color);
//void DrawRectangle(u16 x1, u16 y1, u16 x2, u16 y2);
u32 myPow(u8 m, u8 n);
void showNumberLCD(u16 x, u16 y, u32 num, u8 len);
void showNumber2LCD(u16 x, u16 y, u32 num, u8 len);

unsigned char keyDetect();
void writeAllRAM(unsigned char d);
void checkAllRAM(unsigned char d);
void freeType();
unsigned int reverse(unsigned char d);
unsigned int reverse16(unsigned int d);
void asciiToDec(unsigned char d);
void asciiToHex(unsigned char d);
void rtcInit(void);
void rtcBusy(void);
inline void rtcCmd(unsigned int addr, unsigned char d);
inline void rtcWrite(unsigned int addr, unsigned char d);
inline unsigned char rtcRead(unsigned int addr);
void rtcPrint(void);
void seg7Test(void);

void setColorDefault(void);
void setColorSelect(void);
void setColorHighlight1(void);
void setColorHighlight2(void);
void setColorMenu(void);
void setColorGray(void);
void setColorRed(void);
void setColorWhite(void);
void setColorGreen(void);
void setColorYellow(void);

inline void iowrite8(unsigned char __xdata* map_address, unsigned char d);
inline unsigned char ioread8(unsigned char __xdata* map_address);
inline void ramWrite8(unsigned char __xdata* map_address, unsigned char d);
inline unsigned char ramRead8(unsigned char __xdata* map_address);

unsigned int inputAddress();
unsigned char inputBlockType();
unsigned char inputBlockSize();

unsigned int getBaud(void);
unsigned char getBits(void);
unsigned char getParity(void);

void printMenu(void);                           // display main menu

void dump(void);                                // memory dump
void move(void);                                // memory move
void edit(void);                                // memory edit
void find(void);                                // memory find
void count(void);                               // memory count
void check(void);                               // memory check
void uart(void);                                // uart function

unsigned char hexToASCII(unsigned char key);        // convert hex value to ascii
unsigned char ASCIItoHex(unsigned char key);         // convert ascii to hex value

void print4Hex(unsigned char num);              // print 4 bit hex value
void print8Hex(unsigned char num);              // print 8 bit hex value
void print8ASCII(unsigned char num);            // print 8 bit ASCII value
void print16Hex(unsigned int num);              // print 16 bit hex value
void print16Dec(unsigned int num);              // print 16 bit decimal value
void print16ASCII(unsigned int num);            // print 16 bit ASCII value
void main(void);