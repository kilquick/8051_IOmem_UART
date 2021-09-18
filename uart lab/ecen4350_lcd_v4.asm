;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module ecen4350_lcd_v4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setAddress_PARM_4
	.globl _setAddress_PARM_3
	.globl _setAddress_PARM_2
	.globl _setTextColor_PARM_2
	.globl _setCursor_PARM_2
	.globl _rtcCmd_PARM_2
	.globl _writeRegister16_PARM_2
	.globl _writeRegister8_PARM_2
	.globl _ramWrite8_PARM_2
	.globl _iowrite8_PARM_2
	.globl _keypad
	.globl _writeSomeLines
	.globl _write
	.globl _drawChar
	.globl _setRotation
	.globl _ISR_receive
	.globl _UART_transmit
	.globl _UART_Init
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _bitSet
	.globl _paritySet
	.globl _baudSet
	.globl _UART_en
	.globl _selection
	.globl _drawChar_PARM_6
	.globl _drawChar_PARM_5
	.globl _drawChar_PARM_4
	.globl _drawChar_PARM_3
	.globl _drawChar_PARM_2
	.globl _fillRect_PARM_5
	.globl _fillRect_PARM_4
	.globl _fillRect_PARM_3
	.globl _fillRect_PARM_2
	.globl _testCircles_PARM_2
	.globl _drawCircle_PARM_4
	.globl _drawCircle_PARM_3
	.globl _drawCircle_PARM_2
	.globl _drawPixel_PARM_3
	.globl _drawPixel_PARM_2
	.globl _rtcWrite_PARM_2
	.globl __height
	.globl __width
	.globl _textbgcolor
	.globl _textcolor
	.globl _rotation
	.globl _textsize
	.globl _cursor_y
	.globl _cursor_x
	.globl _received_flag
	.globl _received_byte
	.globl _seg7_address
	.globl _lcd_address
	.globl _rowloc
	.globl _colloc
	.globl _iowrite8
	.globl _ioread8
	.globl _ramWrite8
	.globl _ramRead8
	.globl _writeAllRAM
	.globl _checkAllRAM
	.globl _delay
	.globl _writeRegister8
	.globl _writeRegister16
	.globl _seg7Test
	.globl _rtcInit
	.globl _rtcBusy
	.globl _rtcCmd
	.globl _rtcWrite
	.globl _rtcRead
	.globl _rtcPrint
	.globl _setCursor
	.globl _setTextColor
	.globl _setTextSize
	.globl _setAddress
	.globl _TFT_LCD_INIT
	.globl _drawPixel
	.globl _drawCircle
	.globl _testCircles
	.globl _fillRect
	.globl _fillTop
	.globl _fillScreen
	.globl _clearLCD
	.globl _LCD_string_write
	.globl _writeNewLine
	.globl _freeType
	.globl _keyDetect
	.globl _reverse
	.globl _reverse16
	.globl _hexToASCII
	.globl _ASCIItoHex
	.globl _asciiToDec
	.globl _asciiToHex
	.globl _print4Hex
	.globl _print8Hex
	.globl _print16Hex
	.globl _print16Dec
	.globl _print8ASCII
	.globl _print16ASCII
	.globl _setColorDefault
	.globl _setColorSelect
	.globl _setColorHighlight1
	.globl _setColorHighlight2
	.globl _setColorGray
	.globl _setColorMenu
	.globl _setColorRed
	.globl _setColorWhite
	.globl _setColorGreen
	.globl _setColorYellow
	.globl _inputAddress
	.globl _inputBlockType
	.globl _inputBlockSize
	.globl _printMenu
	.globl _dump
	.globl _move
	.globl _edit
	.globl _find
	.globl _count
	.globl _check
	.globl _uart
	.globl _main
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_colloc::
	.ds 1
_rowloc::
	.ds 1
_lcd_address::
	.ds 2
_seg7_address::
	.ds 2
_received_byte::
	.ds 1
_received_flag::
	.ds 1
_cursor_x::
	.ds 2
_cursor_y::
	.ds 2
_textsize::
	.ds 1
_rotation::
	.ds 1
_textcolor::
	.ds 2
_textbgcolor::
	.ds 2
__width::
	.ds 2
__height::
	.ds 2
_rtcWrite_PARM_2:
	.ds 1
_rtcPrint_printval_65536_222:
	.ds 9
_drawPixel_PARM_2:
	.ds 2
_drawPixel_PARM_3:
	.ds 2
_drawCircle_PARM_2:
	.ds 2
_drawCircle_PARM_3:
	.ds 2
_drawCircle_PARM_4:
	.ds 2
_drawCircle_x0_65536_389:
	.ds 2
_drawCircle_f_65536_390:
	.ds 2
_drawCircle_ddF_x_65536_390:
	.ds 2
_drawCircle_x_65536_390:
	.ds 2
_testCircles_PARM_2:
	.ds 2
_testCircles_w_65536_394:
	.ds 2
_testCircles_h_65536_394:
	.ds 2
_fillRect_PARM_2:
	.ds 2
_fillRect_PARM_3:
	.ds 2
_fillRect_PARM_4:
	.ds 2
_fillRect_PARM_5:
	.ds 2
_drawChar_PARM_2:
	.ds 2
_drawChar_PARM_3:
	.ds 1
_drawChar_PARM_4:
	.ds 2
_drawChar_PARM_5:
	.ds 2
_drawChar_PARM_6:
	.ds 1
_drawChar_x_65536_454:
	.ds 2
_drawChar_i_131072_457:
	.ds 1
_drawChar_line_196608_458:
	.ds 1
_drawChar_sloc0_1_0:
	.ds 2
_asciiToHex_store_65536_515:
	.ds 2
_dump_d_65536_547:
	.ds 2
_dump_sloc0_1_0:
	.ds 1
_move_d_65536_603:
	.ds 2
_move_i_131072_612:
	.ds 2
_edit_d_65536_622:
	.ds 2
_find_i_262144_659:
	.ds 2
_find_sloc0_1_0:
	.ds 1
_find_sloc1_1_0:
	.ds 2
_count_i_262144_715:
	.ds 2
_count_sloc0_1_0:
	.ds 1
_count_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_iowrite8_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_ramWrite8_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_writeRegister8_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_writeRegister16_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_rtcCmd_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_setCursor_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
_setTextColor_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_setAddress_PARM_2:
	.ds 2
_setAddress_PARM_3:
	.ds 2
_setAddress_PARM_4:
	.ds 2
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_selection::
	.ds 1
_UART_en::
	.ds 1
_baudSet::
	.ds 1
_paritySet::
	.ds 1
_bitSet::
	.ds 1
_dump_address_65536_547:
	.ds 2
_dump_exit_65536_547:
	.ds 1
_move_sourceAddress_65536_603:
	.ds 2
_move_invalidSize_65536_603:
	.ds 1
_edit_exit_65536_622:
	.ds 1
_edit_invalid_65536_622:
	.ds 1
_find_address_65536_646:
	.ds 2
_find_blockSize_65536_646:
	.ds 1
_find_value_65536_646:
	.ds 1
_find_scan_65536_646:
	.ds 1
_find_noneFound_65536_646:
	.ds 1
_find_exit_65536_646:
	.ds 1
_count_address_65536_702:
	.ds 2
_count_blockSize_65536_702:
	.ds 1
_count_value_65536_702:
	.ds 1
_count_scan_65536_702:
	.ds 1
_count_noneFound_65536_702:
	.ds 1
_count_exit_65536_702:
	.ds 1
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_receive
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	.\ecen4350_lcd_v4.c:45: __xdata unsigned char *lcd_address = (unsigned char __xdata *)__LCD_ADDRESS__;			//LCD address pointer
	mov	_lcd_address,#0x00
	mov	(_lcd_address + 1),#0x40
;	.\ecen4350_lcd_v4.c:46: __xdata unsigned char *seg7_address = (unsigned char __xdata *)__SEG_7_ADDRESS__;		//7segment address poitner
	mov	_seg7_address,#0x00
	mov	(_seg7_address + 1),#0x80
;	.\ecen4350_lcd_v4.c:48: volatile unsigned char received_byte = 0;
	mov	_received_byte,#0x00
;	.\ecen4350_lcd_v4.c:49: volatile unsigned char received_flag = 0;
	mov	_received_flag,#0x00
;	.\ecen4350_lcd_v4.c:52: __idata unsigned char UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:53: __idata unsigned char baudSet = 0;
	mov	r0,#_baudSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:54: __idata unsigned char paritySet = 0;
	mov	r0,#_paritySet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:55: __idata unsigned char bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'iowrite8'
;------------------------------------------------------------
;d                         Allocated with name '_iowrite8_PARM_2'
;map_address               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:92: inline void iowrite8(unsigned char __xdata *map_address, unsigned char d) {
;	-----------------------------------------
;	 function iowrite8
;	-----------------------------------------
_iowrite8:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,_iowrite8_PARM_2
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ioread8'
;------------------------------------------------------------
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:98: inline unsigned char ioread8(unsigned char __xdata *map_address)
;	-----------------------------------------
;	 function ioread8
;	-----------------------------------------
_ioread8:
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:104: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramWrite8'
;------------------------------------------------------------
;d                         Allocated with name '_ramWrite8_PARM_2'
;map_address               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:107: inline void ramWrite8(unsigned char __xdata *map_address, unsigned char d)
;	-----------------------------------------
;	 function ramWrite8
;	-----------------------------------------
_ramWrite8:
;	.\ecen4350_lcd_v4.c:109: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:110: *map_address = d;
	mov	a,_ramWrite8_PARM_2
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:111: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramRead8'
;------------------------------------------------------------
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:114: inline unsigned char ramRead8(unsigned char __xdata *map_address)
;	-----------------------------------------
;	 function ramRead8
;	-----------------------------------------
_ramRead8:
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:120: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeAllRAM'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;i                         Allocated to registers r3 r4 r5 r6 
;ram_address               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:123: void writeAllRAM(unsigned char d)
;	-----------------------------------------
;	 function writeAllRAM
;	-----------------------------------------
_writeAllRAM:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:128: for (i = (long) __START_RAM__; i <= (long) __END_RAM__; i++)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
00102$:
;	.\ecen4350_lcd_v4.c:130: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:131: ram_address = (unsigned char __xdata *)(i);
	mov	dpl,r3
	mov	dph,r4
;	.\ecen4350_lcd_v4.c:132: *ram_address = d;
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:133: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:128: for (i = (long) __START_RAM__; i <= (long) __END_RAM__; i++)
	inc	r3
	cjne	r3,#0x00,00111$
	inc	r4
	cjne	r4,#0x00,00111$
	inc	r5
	cjne	r5,#0x00,00111$
	inc	r6
00111$:
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0xff
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	jnc	00102$
;	.\ecen4350_lcd_v4.c:135: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkAllRAM'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;ram_address               Allocated to registers 
;i                         Allocated to registers r3 r4 r5 r6 
;__3276800001              Allocated to registers 
;__3276800002              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440004              Allocated to registers 
;__2621440005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:137: void checkAllRAM(unsigned char d)
;	-----------------------------------------
;	 function checkAllRAM
;	-----------------------------------------
_checkAllRAM:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:140: for (unsigned long i =(long) __START_RAM__; i<=(long)__END_RAM__; i++) {
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
00107$:
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0xff
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	jnc	00124$
	ret
00124$:
;	.\ecen4350_lcd_v4.c:141: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:142: ram_address = (unsigned char __xdata *)(i);
	mov	dpl,r3
	mov	dph,r4
;	.\ecen4350_lcd_v4.c:144: if(d != *ram_address) {
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	cjne	a,ar2,00125$
	sjmp	00102$
00125$:
;	.\ecen4350_lcd_v4.c:145: iowrite8(seg7_address, SEG_F);	// Write F to 7-segment; RAM test fail
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:146: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:147: LCD_string_write("ERROR FOUND At: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:148: print16Hex(i);
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:149: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:151: iowrite8(seg7_address, SEG_P);		// Write A to 7-segment
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x8c
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:152: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:140: for (unsigned long i =(long) __START_RAM__; i<=(long)__END_RAM__; i++) {
	inc	r3
	cjne	r3,#0x00,00126$
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
	cjne	r5,#0x00,00126$
	inc	r6
00126$:
;	.\ecen4350_lcd_v4.c:154: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:156: void delay(int d) /// x 1ms
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:159: for (i = 0; i < d; i++) /// this is For(); loop delay used to define delay value input Embedded C
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	.\ecen4350_lcd_v4.c:161: for (j = 0; j < 1000; j++);
	mov	r2,#0xe8
	mov	r3,#0x03
00105$:
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	ar2,r0
	mov	ar3,r1
	mov	a,r0
	orl	a,r1
	jnz	00105$
;	.\ecen4350_lcd_v4.c:159: for (i = 0; i < d; i++) /// this is For(); loop delay used to define delay value input Embedded C
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	.\ecen4350_lcd_v4.c:163: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:165: void UART_Init(){
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	.\ecen4350_lcd_v4.c:166: SCON = 0x50;  // Asynchronous mode, 8-bit data and 1-stop bit
	mov	_SCON,#0x50
;	.\ecen4350_lcd_v4.c:167: TMOD = 0x20;  // Timer1 input Mode2. input 8 bit auto reload
	mov	_TMOD,#0x20
;	.\ecen4350_lcd_v4.c:168: TR1 = 1;      // Turn ON the timer for Baud rate generation
;	assignBit
	setb	_TR1
;	.\ecen4350_lcd_v4.c:169: ES  = 1;      // Enable Serial Interrupt
;	assignBit
	setb	_ES
;	.\ecen4350_lcd_v4.c:170: EA  = 1;      // Enable Global Interrupt bit
;	assignBit
	setb	_EA
;	.\ecen4350_lcd_v4.c:171: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_transmit'
;------------------------------------------------------------
;byte                      Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:174: void UART_transmit(unsigned char byte){
;	-----------------------------------------
;	 function UART_transmit
;	-----------------------------------------
_UART_transmit:
	mov	_SBUF,dpl
;	.\ecen4350_lcd_v4.c:176: while(TI == 1);
00101$:
	jb	_TI,00101$
;	.\ecen4350_lcd_v4.c:177: TI = 0;
;	assignBit
	clr	_TI
;	.\ecen4350_lcd_v4.c:178: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_receive'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:180: void ISR_receive() __interrupt (4) {
;	-----------------------------------------
;	 function ISR_receive
;	-----------------------------------------
_ISR_receive:
;	.\ecen4350_lcd_v4.c:181: if (RI == 1){
	jnb	_RI,00103$
;	.\ecen4350_lcd_v4.c:182: received_byte = SBUF;
	mov	_received_byte,_SBUF
;	.\ecen4350_lcd_v4.c:183: RI = 0;
;	assignBit
	clr	_RI
;	.\ecen4350_lcd_v4.c:184: received_flag= 1;
	mov	_received_flag,#0x01
00103$:
;	.\ecen4350_lcd_v4.c:186: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegister8'
;------------------------------------------------------------
;d                         Allocated with name '_writeRegister8_PARM_2'
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:188: void writeRegister8(u8 address, u8 d)
;	-----------------------------------------
;	 function writeRegister8
;	-----------------------------------------
_writeRegister8:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:191: CD = __CMD__;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:192: write8(address);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:193: CD = __DATA__;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:194: write8(d);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_writeRegister8_PARM_2
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:196: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegister16'
;------------------------------------------------------------
;d                         Allocated with name '_writeRegister16_PARM_2'
;address                   Allocated to registers r6 r7 
;hi                        Allocated to registers r6 r7 
;lo                        Allocated to registers r4 r5 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:198: void writeRegister16(u16 address, u16 d)
;	-----------------------------------------
;	 function writeRegister16
;	-----------------------------------------
_writeRegister16:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:201: hi = (address) >> 8;
	mov	ar4,r7
;	.\ecen4350_lcd_v4.c:202: lo = (address);
;	.\ecen4350_lcd_v4.c:205: write8Reg(hi);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r4
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:206: write8Reg(lo);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:207: hi = (d) >> 8;
	mov	r6,(_writeRegister16_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:208: lo = (d);
	mov	r4,_writeRegister16_PARM_2
;	.\ecen4350_lcd_v4.c:209: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:210: write8Data(hi);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:211: write8Data(lo);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r4
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:213: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seg7Test'
;------------------------------------------------------------
;__1310720007              Allocated to registers 
;__1310720008              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720010              Allocated to registers 
;__1310720011              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720013              Allocated to registers 
;__1310720014              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720019              Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720025              Allocated to registers 
;__1310720026              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720028              Allocated to registers 
;__1310720029              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720031              Allocated to registers 
;__1310720032              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720034              Allocated to registers 
;__1310720035              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720037              Allocated to registers 
;__1310720038              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720040              Allocated to registers 
;__1310720041              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720043              Allocated to registers 
;__1310720044              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720046              Allocated to registers 
;__1310720047              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720049              Allocated to registers 
;__1310720050              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720052              Allocated to registers 
;__1310720053              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720055              Allocated to registers 
;__1310720056              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720058              Allocated to registers 
;__1310720059              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:215: void seg7Test(void)
;	-----------------------------------------
;	 function seg7Test
;	-----------------------------------------
_seg7Test:
;	.\ecen4350_lcd_v4.c:217: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:218: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:219: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:220: iowrite8(seg7_address, ZERO);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xc0
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:221: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:222: iowrite8(seg7_address, ONE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xf9
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:223: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:224: iowrite8(seg7_address, TWO);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xa4
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:225: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:226: iowrite8(seg7_address, THREE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xb0
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:227: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:228: iowrite8(seg7_address, FOUR);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x99
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:229: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:230: iowrite8(seg7_address, FIVE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x92
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:231: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:232: iowrite8(seg7_address, SIX);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x82
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:233: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:234: iowrite8(seg7_address, SEVEN);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xf8
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:235: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:236: iowrite8(seg7_address, EIGHT);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x80
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:237: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:238: iowrite8(seg7_address, NINE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x98
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:239: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:240: iowrite8(seg7_address, SEG_A);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x88
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:241: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:242: iowrite8(seg7_address, SEG_B);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x83
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:243: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:244: iowrite8(seg7_address, SEG_C);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xc6
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:245: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:246: iowrite8(seg7_address, SEG_D);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xa1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:247: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:248: iowrite8(seg7_address, SEG_E);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x86
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:249: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:250: iowrite8(seg7_address, SEG_F);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:251: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:252: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:253: delay(4);
	mov	dptr,#0x0004
;	.\ecen4350_lcd_v4.c:254: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcInit'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:257: void rtcInit(void)
;	-----------------------------------------
;	 function rtcInit
;	-----------------------------------------
_rtcInit:
;	.\ecen4350_lcd_v4.c:261: rtcCmd(__REG_F__, __HR_24__ | __STOP__ | __RESET__); // stop and reset
	mov	_rtcCmd_PARM_2,#0x07
	mov	dptr,#0x000f
	lcall	_rtcCmd
;	.\ecen4350_lcd_v4.c:264: for (i = __S1_REG__; i < __REG_D__; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	.\ecen4350_lcd_v4.c:266: rtcWrite(i, 0x00);
	mov	_rtcWrite_PARM_2,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_rtcWrite
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:264: for (i = __S1_REG__; i < __REG_D__; i++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x0d
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	.\ecen4350_lcd_v4.c:269: rtcCmd(__REG_F__, __HR_24__);
	mov	_rtcCmd_PARM_2,#0x04
	mov	dptr,#0x000f
;	.\ecen4350_lcd_v4.c:270: }
	ljmp	_rtcCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcBusy'
;------------------------------------------------------------
;__1310720061              Allocated to registers 
;map_address               Allocated to registers 
;__1310720062              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:272: void rtcBusy(void)
;	-----------------------------------------
;	 function rtcBusy
;	-----------------------------------------
_rtcBusy:
;	.\ecen4350_lcd_v4.c:275: while ((ioread8(map_address) & 0x02))		;
00101$:
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dptr,#0x000d
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:275: while ((ioread8(map_address) & 0x02))		;
	mov	a,r7
	jb	acc.1,00101$
;	.\ecen4350_lcd_v4.c:276: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcCmd'
;------------------------------------------------------------
;d                         Allocated with name '_rtcCmd_PARM_2'
;addr                      Allocated to registers r6 r7 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers r7 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:278: inline void rtcCmd(unsigned int addr, unsigned char d)
;	-----------------------------------------
;	 function rtcCmd
;	-----------------------------------------
_rtcCmd:
;	.\ecen4350_lcd_v4.c:280: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:281: iowrite8(map_address, d);
	mov	r7,_rtcCmd_PARM_2
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:281: iowrite8(map_address, d);
;	.\ecen4350_lcd_v4.c:282: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcWrite'
;------------------------------------------------------------
;d                         Allocated with name '_rtcWrite_PARM_2'
;addr                      Allocated to registers r6 r7 
;map_address               Allocated to registers r6 r7 
;__1310720067              Allocated to registers 
;__1310720068              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720070              Allocated to registers 
;__1310720071              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720073              Allocated to registers 
;__1310720074              Allocated to registers r7 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:284: inline void rtcWrite(unsigned int addr, unsigned char d)
;	-----------------------------------------
;	 function rtcWrite
;	-----------------------------------------
_rtcWrite:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:286: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:288: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:290: rtcCmd(__REG_D__, d);
	mov	r7,_rtcWrite_PARM_2
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:290: rtcCmd(__REG_D__, d);
;	.\ecen4350_lcd_v4.c:291: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcRead'
;------------------------------------------------------------
;addr                      Allocated to registers r6 r7 
;__1310720079              Allocated to registers 
;d                         Allocated to registers r7 
;map_address               Allocated to registers r6 r7 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r6 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:293: inline unsigned char rtcRead(unsigned int addr)
;	-----------------------------------------
;	 function rtcRead
;	-----------------------------------------
_rtcRead:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:296: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:298: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r6
	orl	a,#0x30
	mov	r7,a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:303: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:304: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcPrint'
;------------------------------------------------------------
;__1310720100              Allocated to registers 
;__1310720097              Allocated to registers 
;__1310720094              Allocated to registers 
;__1310720091              Allocated to registers 
;__1310720088              Allocated to registers 
;__1310720085              Allocated to registers 
;mi1                       Allocated to registers 
;mi10                      Allocated to registers 
;s1                        Allocated to registers 
;s10                       Allocated to registers 
;h1                        Allocated to registers 
;h10                       Allocated to registers 
;printval                  Allocated with name '_rtcPrint_printval_65536_222'
;__1310720086              Allocated to registers 
;addr                      Allocated to registers 
;__1310720079              Allocated to registers 
;d                         Allocated to registers r7 
;map_address               Allocated to registers 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720089              Allocated to registers 
;addr                      Allocated to registers 
;__1310720079              Allocated to registers 
;d                         Allocated to registers r6 
;map_address               Allocated to registers 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r6 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720092              Allocated to registers 
;addr                      Allocated to registers 
;__1310720079              Allocated to registers 
;d                         Allocated to registers r5 
;map_address               Allocated to registers 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r5 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720095              Allocated to registers 
;addr                      Allocated to registers 
;__1310720079              Allocated to registers 
;d                         Allocated to registers r4 
;map_address               Allocated to registers 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r4 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720098              Allocated to registers 
;addr                      Allocated to registers 
;__1310720079              Allocated to registers 
;d                         Allocated to registers r3 
;map_address               Allocated to registers 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r3 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720101              Allocated to registers 
;addr                      Allocated to registers 
;__1310720079              Allocated to registers 
;d                         Allocated to registers r2 
;map_address               Allocated to registers 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r2 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720064              Allocated to registers 
;__1310720065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:306: void rtcPrint(void)
;	-----------------------------------------
;	 function rtcPrint
;	-----------------------------------------
_rtcPrint:
;	.\ecen4350_lcd_v4.c:310: printval[8] = '\0'; // end with address null character for string
	mov	(_rtcPrint_printval_65536_222 + 0x0008),#0x00
;	.\ecen4350_lcd_v4.c:311: printval[2] = ':';
	mov	(_rtcPrint_printval_65536_222 + 0x0002),#0x3a
;	.\ecen4350_lcd_v4.c:312: printval[5] = ':';
	mov	(_rtcPrint_printval_65536_222 + 0x0005),#0x3a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:298: rtcBusy();
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dptr,#0x0002
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r7
	orl	a,#0x30
	mov	r7,a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:298: rtcBusy();
	push	ar7
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dptr,#0x0003
	movx	a,@dptr
	mov	r6,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r6
	orl	a,#0x30
	mov	r6,a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:298: rtcBusy();
	push	ar6
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dptr,#0x0004
	movx	a,@dptr
	mov	r5,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r5
	orl	a,#0x30
	mov	r5,a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:298: rtcBusy();
	push	ar5
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dptr,#0x0005
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r4
	orl	a,#0x30
	mov	r4,a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:298: rtcBusy();
	push	ar4
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dptr,#0x0000
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r3
	orl	a,#0x30
	mov	r3,a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:298: rtcBusy();
	push	ar3
	lcall	_rtcBusy
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:101: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:102: d = *map_address;
	mov	dptr,#0x0001
	movx	a,@dptr
	mov	r2,a
;	.\ecen4350_lcd_v4.c:103: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r2
	orl	a,#0x30
	mov	r2,a
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:326: printval[0] = h10;
	mov	_rtcPrint_printval_65536_222,r4
;	.\ecen4350_lcd_v4.c:327: printval[1] = h1;
	mov	(_rtcPrint_printval_65536_222 + 0x0001),r5
;	.\ecen4350_lcd_v4.c:328: printval[3] = mi10;
	mov	(_rtcPrint_printval_65536_222 + 0x0003),r6
;	.\ecen4350_lcd_v4.c:329: printval[4] = mi1;
	mov	(_rtcPrint_printval_65536_222 + 0x0004),r7
;	.\ecen4350_lcd_v4.c:330: printval[6] = s10;
	mov	(_rtcPrint_printval_65536_222 + 0x0006),r2
;	.\ecen4350_lcd_v4.c:331: printval[7] = s1;
	mov	(_rtcPrint_printval_65536_222 + 0x0007),r3
;	.\ecen4350_lcd_v4.c:332: LCD_string_write(printval);
	mov	dptr,#_rtcPrint_printval_65536_222
	mov	b,#0x40
;	.\ecen4350_lcd_v4.c:333: }
	ljmp	_LCD_string_write
;------------------------------------------------------------
;Allocation info for local variables in function 'setCursor'
;------------------------------------------------------------
;y                         Allocated with name '_setCursor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:335: void setCursor(u16 x, u16 y)
;	-----------------------------------------
;	 function setCursor
;	-----------------------------------------
_setCursor:
	mov	_cursor_x,dpl
	mov	(_cursor_x + 1),dph
;	.\ecen4350_lcd_v4.c:338: cursor_y = y;
	mov	_cursor_y,_setCursor_PARM_2
	mov	(_cursor_y + 1),(_setCursor_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:339: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextColor'
;------------------------------------------------------------
;y                         Allocated with name '_setTextColor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:341: void setTextColor(u16 x, u16 y)
;	-----------------------------------------
;	 function setTextColor
;	-----------------------------------------
_setTextColor:
	mov	_textcolor,dpl
	mov	(_textcolor + 1),dph
;	.\ecen4350_lcd_v4.c:344: textbgcolor = y;
	mov	_textbgcolor,_setTextColor_PARM_2
	mov	(_textbgcolor + 1),(_setTextColor_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextSize'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:348: void setTextSize(u8 s)
;	-----------------------------------------
;	 function setTextSize
;	-----------------------------------------
_setTextSize:
;	.\ecen4350_lcd_v4.c:350: if (s > 8)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x08
	jnc	00102$
;	.\ecen4350_lcd_v4.c:351: return;
	ret
00102$:
;	.\ecen4350_lcd_v4.c:352: textsize = (s > 0) ? s : 1;
	mov	a,r7
	jz	00105$
	mov	ar6,r7
	mov	r7,#0x00
	sjmp	00106$
00105$:
	mov	r6,#0x01
	mov	r7,#0x00
00106$:
	mov	_textsize,r6
;	.\ecen4350_lcd_v4.c:353: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setRotation'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:355: void setRotation(u8 flag)
;	-----------------------------------------
;	 function setRotation
;	-----------------------------------------
_setRotation:
;	.\ecen4350_lcd_v4.c:357: switch (flag)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	.\ecen4350_lcd_v4.c:359: case 0:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	.\ecen4350_lcd_v4.c:360: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	.\ecen4350_lcd_v4.c:361: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:362: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:363: break;
;	.\ecen4350_lcd_v4.c:364: case 1:
	sjmp	00106$
00102$:
;	.\ecen4350_lcd_v4.c:365: flag = (ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0x28
;	.\ecen4350_lcd_v4.c:366: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	.\ecen4350_lcd_v4.c:367: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	.\ecen4350_lcd_v4.c:368: break;
;	.\ecen4350_lcd_v4.c:369: case 2:
	sjmp	00106$
00103$:
;	.\ecen4350_lcd_v4.c:370: flag = (ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	r7,#0x88
;	.\ecen4350_lcd_v4.c:371: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:372: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:373: break;
;	.\ecen4350_lcd_v4.c:374: case 3:
	sjmp	00106$
00104$:
;	.\ecen4350_lcd_v4.c:375: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_MY | ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0xe8
;	.\ecen4350_lcd_v4.c:376: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	.\ecen4350_lcd_v4.c:377: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	.\ecen4350_lcd_v4.c:378: break;
;	.\ecen4350_lcd_v4.c:379: default:
	sjmp	00106$
00105$:
;	.\ecen4350_lcd_v4.c:380: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	.\ecen4350_lcd_v4.c:381: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:382: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:384: }
00106$:
;	.\ecen4350_lcd_v4.c:385: writeRegister8(ILI9341_MEMCONTROL, flag);
	mov	_writeRegister8_PARM_2,r7
	mov	dpl,#0x36
;	.\ecen4350_lcd_v4.c:386: }
	ljmp	_writeRegister8
;------------------------------------------------------------
;Allocation info for local variables in function 'setAddress'
;------------------------------------------------------------
;y1                        Allocated with name '_setAddress_PARM_2'
;x2                        Allocated with name '_setAddress_PARM_3'
;y2                        Allocated with name '_setAddress_PARM_4'
;x1                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:389: void setAddress(unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2)
;	-----------------------------------------
;	 function setAddress
;	-----------------------------------------
_setAddress:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:392: write8Reg(0x2A);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:393: write8Data(x1 >> 8);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	ar5,r7
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:394: write8Data(x1);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:395: write8Data(x2 >> 8);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_setAddress_PARM_3 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:396: write8Data(x2);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_setAddress_PARM_3
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:398: write8Reg(0x2B);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2b
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:399: write8Data(y1 >> 8);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_setAddress_PARM_2 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:400: write8Data(y1);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_setAddress_PARM_2
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:401: write8Data(y2 >> 8);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_setAddress_PARM_4 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:402: write8Data(y2);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_setAddress_PARM_4
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:405: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TFT_LCD_INIT'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:407: void TFT_LCD_INIT(void)
;	-----------------------------------------
;	 function TFT_LCD_INIT
;	-----------------------------------------
_TFT_LCD_INIT:
;	.\ecen4350_lcd_v4.c:411: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:412: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:415: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:417: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:419: write8Reg(0x00);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:420: write8Data(0x00);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:421: write8Data(0x00);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:422: write8Data(0x00);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:424: delay(100);						// changed from 200 to 100
	mov	dptr,#0x0064
	lcall	_delay
;	.\ecen4350_lcd_v4.c:428: writeRegister8(ILI9341_SOFTRESET, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:429: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	.\ecen4350_lcd_v4.c:430: writeRegister8(ILI9341_DISPLAYOFF, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x28
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:431: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:433: writeRegister8(ILI9341_POWERCONTROL1, 0x23);
	mov	_writeRegister8_PARM_2,#0x23
	mov	dpl,#0xc0
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:434: writeRegister8(ILI9341_POWERCONTROL2, 0x11);
	mov	_writeRegister8_PARM_2,#0x11
	mov	dpl,#0xc1
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:435: write8Reg(ILI9341_VCOMCONTROL1);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0xc5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:436: write8Data(0x3d);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x3d
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:437: write8Data(0x30);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x30
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:438: writeRegister8(ILI9341_VCOMCONTROL2, 0xaa);
	mov	_writeRegister8_PARM_2,#0xaa
	mov	dpl,#0xc7
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:439: writeRegister8(ILI9341_MEMCONTROL, ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	_writeRegister8_PARM_2,#0x88
	mov	dpl,#0x36
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:440: write8Reg(ILI9341_PIXELFORMAT);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x3a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:441: write8Data(0x55);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x55
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:442: write8Data(0x00);
;	assignBit
	setb	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:443: writeRegister16(ILI9341_FRAMECONTROL, 0x001B);
	mov	_writeRegister16_PARM_2,#0x1b
	mov	(_writeRegister16_PARM_2 + 1),#0x00
	mov	dptr,#0x00b1
	lcall	_writeRegister16
;	.\ecen4350_lcd_v4.c:445: writeRegister8(ILI9341_ENTRYMODE, 0x07);
	mov	_writeRegister8_PARM_2,#0x07
	mov	dpl,#0xb7
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:448: writeRegister8(ILI9341_SLEEPOUT, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x11
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:449: delay(100);								// changed from 150 to 100
	mov	dptr,#0x0064
	lcall	_delay
;	.\ecen4350_lcd_v4.c:450: writeRegister8(ILI9341_DISPLAYON, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x29
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:451: delay(150);								// changed from 200 to 150
	mov	dptr,#0x0096
	lcall	_delay
;	.\ecen4350_lcd_v4.c:452: setAddress(0, 0, _width - 1, _height - 1);
	mov	a,__width
	add	a,#0xff
	mov	_setAddress_PARM_3,a
	mov	a,(__width + 1)
	addc	a,#0xff
	mov	(_setAddress_PARM_3 + 1),a
	mov	a,__height
	add	a,#0xff
	mov	_setAddress_PARM_4,a
	mov	a,(__height + 1)
	addc	a,#0xff
	mov	(_setAddress_PARM_4 + 1),a
	clr	a
	mov	_setAddress_PARM_2,a
	mov	(_setAddress_PARM_2 + 1),a
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:456: }
	ljmp	_setAddress
;------------------------------------------------------------
;Allocation info for local variables in function 'drawPixel'
;------------------------------------------------------------
;y3                        Allocated with name '_drawPixel_PARM_2'
;color1                    Allocated with name '_drawPixel_PARM_3'
;x3                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:457: void drawPixel(u16 x3, u16 y3, u16 color1)
;	-----------------------------------------
;	 function drawPixel
;	-----------------------------------------
_drawPixel:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:465: setAddress(x3, y3, x3 + 1, y3 + 1);
	mov	a,#0x01
	add	a,r6
	mov	_setAddress_PARM_3,a
	clr	a
	addc	a,r7
	mov	(_setAddress_PARM_3 + 1),a
	mov	a,#0x01
	add	a,_drawPixel_PARM_2
	mov	_setAddress_PARM_4,a
	clr	a
	addc	a,(_drawPixel_PARM_2 + 1)
	mov	(_setAddress_PARM_4 + 1),a
	mov	_setAddress_PARM_2,_drawPixel_PARM_2
	mov	(_setAddress_PARM_2 + 1),(_drawPixel_PARM_2 + 1)
	mov	dpl,r6
	mov	dph,r7
	lcall	_setAddress
;	.\ecen4350_lcd_v4.c:469: CD = 0;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:470: write8(0x2C);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:472: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:473: write8(color1 >> 8);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_drawPixel_PARM_3 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:474: write8(color1);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_drawPixel_PARM_3
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:476: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'drawCircle'
;------------------------------------------------------------
;y0                        Allocated with name '_drawCircle_PARM_2'
;r                         Allocated with name '_drawCircle_PARM_3'
;color                     Allocated with name '_drawCircle_PARM_4'
;x0                        Allocated with name '_drawCircle_x0_65536_389'
;f                         Allocated with name '_drawCircle_f_65536_390'
;ddF_x                     Allocated with name '_drawCircle_ddF_x_65536_390'
;ddF_y                     Allocated to registers r2 r3 
;x                         Allocated with name '_drawCircle_x_65536_390'
;y                         Allocated to registers r0 r1 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:480: void drawCircle(int x0, int y0, int r, u16 color)
;	-----------------------------------------
;	 function drawCircle
;	-----------------------------------------
_drawCircle:
	mov	_drawCircle_x0_65536_389,dpl
	mov	(_drawCircle_x0_65536_389 + 1),dph
;	.\ecen4350_lcd_v4.c:482: int f = 1 - r;
	mov	a,#0x01
	clr	c
	subb	a,_drawCircle_PARM_3
	mov	_drawCircle_f_65536_390,a
	clr	a
	subb	a,(_drawCircle_PARM_3 + 1)
	mov	(_drawCircle_f_65536_390 + 1),a
;	.\ecen4350_lcd_v4.c:484: int ddF_y = -2 * r;
	mov	__mulint_PARM_2,_drawCircle_PARM_3
	mov	(__mulint_PARM_2 + 1),(_drawCircle_PARM_3 + 1)
	mov	dptr,#0xfffe
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
;	.\ecen4350_lcd_v4.c:486: int y = r;
	mov	r0,_drawCircle_PARM_3
	mov	r1,(_drawCircle_PARM_3 + 1)
;	.\ecen4350_lcd_v4.c:488: drawPixel(x0, y0 + r, color);
	mov	a,r0
	add	a,_drawCircle_PARM_2
	mov	_drawPixel_PARM_2,a
	mov	a,r1
	addc	a,(_drawCircle_PARM_2 + 1)
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,_drawCircle_x0_65536_389
	mov	dph,(_drawCircle_x0_65536_389 + 1)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
;	.\ecen4350_lcd_v4.c:489: drawPixel(x0, y0 - r, color);
	mov	a,_drawCircle_PARM_2
	clr	c
	subb	a,r0
	mov	_drawPixel_PARM_2,a
	mov	a,(_drawCircle_PARM_2 + 1)
	subb	a,r1
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,_drawCircle_x0_65536_389
	mov	dph,(_drawCircle_x0_65536_389 + 1)
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
;	.\ecen4350_lcd_v4.c:490: drawPixel(x0 + r, y0, color);
	mov	a,r0
	add	a,_drawCircle_x0_65536_389
	mov	dpl,a
	mov	a,r1
	addc	a,(_drawCircle_x0_65536_389 + 1)
	mov	dph,a
	mov	_drawPixel_PARM_2,_drawCircle_PARM_2
	mov	(_drawPixel_PARM_2 + 1),(_drawCircle_PARM_2 + 1)
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
;	.\ecen4350_lcd_v4.c:491: drawPixel(x0 - r, y0, color);
	mov	a,_drawCircle_x0_65536_389
	clr	c
	subb	a,r0
	mov	dpl,a
	mov	a,(_drawCircle_x0_65536_389 + 1)
	subb	a,r1
	mov	dph,a
	mov	_drawPixel_PARM_2,_drawCircle_PARM_2
	mov	(_drawPixel_PARM_2 + 1),(_drawCircle_PARM_2 + 1)
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:493: while (x < y)
	clr	a
	mov	_drawCircle_x_65536_390,a
	mov	(_drawCircle_x_65536_390 + 1),a
	mov	_drawCircle_ddF_x_65536_390,#0x01
;	1-genFromRTrack replaced	mov	(_drawCircle_ddF_x_65536_390 + 1),#0x00
	mov	(_drawCircle_ddF_x_65536_390 + 1),a
00103$:
	clr	c
	mov	a,_drawCircle_x_65536_390
	subb	a,r0
	mov	a,(_drawCircle_x_65536_390 + 1)
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ret
00121$:
;	.\ecen4350_lcd_v4.c:495: if (f >= 0)
	mov	a,(_drawCircle_f_65536_390 + 1)
	jb	acc.7,00102$
;	.\ecen4350_lcd_v4.c:497: y--;
	dec	r0
	cjne	r0,#0xff,00123$
	dec	r1
00123$:
;	.\ecen4350_lcd_v4.c:498: ddF_y += 2;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
;	.\ecen4350_lcd_v4.c:499: f += ddF_y;
	mov	a,r2
	add	a,_drawCircle_f_65536_390
	mov	_drawCircle_f_65536_390,a
	mov	a,r3
	addc	a,(_drawCircle_f_65536_390 + 1)
	mov	(_drawCircle_f_65536_390 + 1),a
00102$:
;	.\ecen4350_lcd_v4.c:501: x++;
	push	ar2
	push	ar3
	inc	_drawCircle_x_65536_390
	clr	a
	cjne	a,_drawCircle_x_65536_390,00124$
	inc	(_drawCircle_x_65536_390 + 1)
00124$:
;	.\ecen4350_lcd_v4.c:502: ddF_x += 2;
	mov	a,#0x02
	add	a,_drawCircle_ddF_x_65536_390
	mov	_drawCircle_ddF_x_65536_390,a
	clr	a
	addc	a,(_drawCircle_ddF_x_65536_390 + 1)
	mov	(_drawCircle_ddF_x_65536_390 + 1),a
;	.\ecen4350_lcd_v4.c:503: f += ddF_x;
	mov	a,_drawCircle_ddF_x_65536_390
	add	a,_drawCircle_f_65536_390
	mov	_drawCircle_f_65536_390,a
	mov	a,(_drawCircle_ddF_x_65536_390 + 1)
	addc	a,(_drawCircle_f_65536_390 + 1)
	mov	(_drawCircle_f_65536_390 + 1),a
;	.\ecen4350_lcd_v4.c:505: drawPixel(x0 + x, y0 + y, color);
	mov	a,_drawCircle_x_65536_390
	add	a,_drawCircle_x0_65536_389
	mov	r6,a
	mov	a,(_drawCircle_x_65536_390 + 1)
	addc	a,(_drawCircle_x0_65536_389 + 1)
	mov	r7,a
	mov	a,r0
	add	a,_drawCircle_PARM_2
	mov	r4,a
	mov	a,r1
	addc	a,(_drawCircle_PARM_2 + 1)
	mov	r5,a
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:506: drawPixel(x0 - x, y0 + y, color);
	mov	a,_drawCircle_x0_65536_389
	clr	c
	subb	a,_drawCircle_x_65536_390
	mov	r2,a
	mov	a,(_drawCircle_x0_65536_389 + 1)
	subb	a,(_drawCircle_x_65536_390 + 1)
	mov	r3,a
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:507: drawPixel(x0 + x, y0 - y, color);
	mov	a,_drawCircle_PARM_2
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,(_drawCircle_PARM_2 + 1)
	subb	a,r1
	mov	r5,a
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:508: drawPixel(x0 - x, y0 - y, color);
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:509: drawPixel(x0 + y, y0 + x, color);
	mov	a,r0
	add	a,_drawCircle_x0_65536_389
	mov	r6,a
	mov	a,r1
	addc	a,(_drawCircle_x0_65536_389 + 1)
	mov	r7,a
	mov	a,_drawCircle_x_65536_390
	add	a,_drawCircle_PARM_2
	mov	r4,a
	mov	a,(_drawCircle_x_65536_390 + 1)
	addc	a,(_drawCircle_PARM_2 + 1)
	mov	r5,a
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:510: drawPixel(x0 - y, y0 + x, color);
	mov	a,_drawCircle_x0_65536_389
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,(_drawCircle_x0_65536_389 + 1)
	subb	a,r1
	mov	r3,a
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:511: drawPixel(x0 + y, y0 - x, color);
	mov	a,_drawCircle_PARM_2
	clr	c
	subb	a,_drawCircle_x_65536_390
	mov	r4,a
	mov	a,(_drawCircle_PARM_2 + 1)
	subb	a,(_drawCircle_x_65536_390 + 1)
	mov	r5,a
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:512: drawPixel(x0 - y, y0 - x, color);
	mov	_drawPixel_PARM_2,r4
	mov	(_drawPixel_PARM_2 + 1),r5
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar3
	pop	ar2
;	.\ecen4350_lcd_v4.c:514: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'testCircles'
;------------------------------------------------------------
;color                     Allocated with name '_testCircles_PARM_2'
;radius                    Allocated to registers r7 
;x                         Allocated to registers r0 r1 
;y                         Allocated to registers r2 r3 
;r2                        Allocated to registers r4 r5 
;w                         Allocated with name '_testCircles_w_65536_394'
;h                         Allocated with name '_testCircles_h_65536_394'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:516: void testCircles(u8 radius, u16 color)
;	-----------------------------------------
;	 function testCircles
;	-----------------------------------------
_testCircles:
;	.\ecen4350_lcd_v4.c:519: int x, y, r2 = radius * 2, w = _width + radius, h = _height + radius;
	mov	r6,dpl
	mov	r7,#0x00
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	mov	a,r2
	add	a,__width
	mov	_testCircles_w_65536_394,a
	mov	a,r3
	addc	a,(__width + 1)
	mov	(_testCircles_w_65536_394 + 1),a
	mov	a,r2
	add	a,__height
	mov	_testCircles_h_65536_394,a
	mov	a,r3
	addc	a,(__height + 1)
	mov	(_testCircles_h_65536_394 + 1),a
;	.\ecen4350_lcd_v4.c:521: for (x = 0; x < w; x += r2)
	mov	r0,#0x00
	mov	r1,#0x00
00107$:
	clr	c
	mov	a,r0
	subb	a,_testCircles_w_65536_394
	mov	a,r1
	xrl	a,#0x80
	mov	b,(_testCircles_w_65536_394 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	.\ecen4350_lcd_v4.c:523: for (y = 0; y < h; y += r2)
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,_testCircles_h_65536_394
	mov	a,r3
	xrl	a,#0x80
	mov	b,(_testCircles_h_65536_394 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	.\ecen4350_lcd_v4.c:525: drawCircle(x, y, radius, color);
	mov	_drawCircle_PARM_2,r2
	mov	(_drawCircle_PARM_2 + 1),r3
	mov	_drawCircle_PARM_3,r6
	mov	(_drawCircle_PARM_3 + 1),r7
	mov	_drawCircle_PARM_4,_testCircles_PARM_2
	mov	(_drawCircle_PARM_4 + 1),(_testCircles_PARM_2 + 1)
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawCircle
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:523: for (y = 0; y < h; y += r2)
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	sjmp	00104$
00108$:
;	.\ecen4350_lcd_v4.c:521: for (x = 0; x < w; x += r2)
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	sjmp	00107$
00109$:
;	.\ecen4350_lcd_v4.c:528: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillRect'
;------------------------------------------------------------
;y                         Allocated with name '_fillRect_PARM_2'
;w                         Allocated with name '_fillRect_PARM_3'
;h                         Allocated with name '_fillRect_PARM_4'
;color                     Allocated with name '_fillRect_PARM_5'
;x                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:529: void fillRect(u16 x, u16 y, u16 w, u16 h, u16 color)
;	-----------------------------------------
;	 function fillRect
;	-----------------------------------------
_fillRect:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:531: if ((x >= TFTWIDTH) || (y >= TFTHEIGHT))
	clr	c
	mov	a,r6
	subb	a,#0xf0
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
	clr	c
	mov	a,_fillRect_PARM_2
	subb	a,#0x40
	mov	a,(_fillRect_PARM_2 + 1)
	subb	a,#0x01
	jc	00102$
00101$:
;	.\ecen4350_lcd_v4.c:533: return;
	ret
00102$:
;	.\ecen4350_lcd_v4.c:536: if ((x + w - 1) >= TFTWIDTH)
	mov	a,_fillRect_PARM_3
	add	a,r6
	mov	r4,a
	mov	a,(_fillRect_PARM_3 + 1)
	addc	a,r7
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00161$
	dec	r5
00161$:
	clr	c
	mov	a,r4
	subb	a,#0xf0
	mov	a,r5
	subb	a,#0x00
	jc	00105$
;	.\ecen4350_lcd_v4.c:538: w = TFTWIDTH - x;
	mov	a,#0xf0
	clr	c
	subb	a,r6
	mov	_fillRect_PARM_3,a
	clr	a
	subb	a,r7
	mov	(_fillRect_PARM_3 + 1),a
00105$:
;	.\ecen4350_lcd_v4.c:541: if ((y + h - 1) >= TFTHEIGHT)
	mov	a,_fillRect_PARM_4
	add	a,_fillRect_PARM_2
	mov	r4,a
	mov	a,(_fillRect_PARM_4 + 1)
	addc	a,(_fillRect_PARM_2 + 1)
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00163$
	dec	r5
00163$:
	clr	c
	mov	a,r4
	subb	a,#0x40
	mov	a,r5
	subb	a,#0x01
	jc	00107$
;	.\ecen4350_lcd_v4.c:543: h = TFTHEIGHT - y;
	mov	a,#0x40
	clr	c
	subb	a,_fillRect_PARM_2
	mov	_fillRect_PARM_4,a
	mov	a,#0x01
	subb	a,(_fillRect_PARM_2 + 1)
	mov	(_fillRect_PARM_4 + 1),a
00107$:
;	.\ecen4350_lcd_v4.c:546: setAddress(x, y, x + w - 1, y + h - 1);
	mov	a,_fillRect_PARM_3
	add	a,r6
	mov	r4,a
	mov	a,(_fillRect_PARM_3 + 1)
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#0xff
	mov	_setAddress_PARM_3,a
	mov	a,r5
	addc	a,#0xff
	mov	(_setAddress_PARM_3 + 1),a
	mov	a,_fillRect_PARM_4
	add	a,_fillRect_PARM_2
	mov	r4,a
	mov	a,(_fillRect_PARM_4 + 1)
	addc	a,(_fillRect_PARM_2 + 1)
	mov	r5,a
	mov	a,r4
	add	a,#0xff
	mov	_setAddress_PARM_4,a
	mov	a,r5
	addc	a,#0xff
	mov	(_setAddress_PARM_4 + 1),a
	mov	_setAddress_PARM_2,_fillRect_PARM_2
	mov	(_setAddress_PARM_2 + 1),(_fillRect_PARM_2 + 1)
	mov	dpl,r6
	mov	dph,r7
	lcall	_setAddress
;	.\ecen4350_lcd_v4.c:549: write8Reg(0x2C);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:551: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:552: for (y = h; y > 0; y--)
	mov	r7,(_fillRect_PARM_5 + 1)
	mov	r5,_fillRect_PARM_4
	mov	r6,(_fillRect_PARM_4 + 1)
00114$:
	mov	a,r5
	orl	a,r6
	jz	00116$
;	.\ecen4350_lcd_v4.c:554: for (x = w; x > 0; x--)
	mov	r3,_fillRect_PARM_3
	mov	r4,(_fillRect_PARM_3 + 1)
00111$:
	mov	a,r3
	orl	a,r4
	jz	00115$
;	.\ecen4350_lcd_v4.c:557: write8(color >> 8);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:558: write8(color);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_fillRect_PARM_5
	mov	r2,a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:554: for (x = w; x > 0; x--)
	dec	r3
	cjne	r3,#0xff,00167$
	dec	r4
00167$:
	sjmp	00111$
00115$:
;	.\ecen4350_lcd_v4.c:552: for (y = h; y > 0; y--)
	dec	r5
	cjne	r5,#0xff,00168$
	dec	r6
00168$:
	sjmp	00114$
00116$:
;	.\ecen4350_lcd_v4.c:562: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillTop'
;------------------------------------------------------------
;Color                     Allocated to registers r6 r7 
;len                       Allocated to registers 
;blocks                    Allocated to registers r4 r7 
;i                         Allocated to registers r3 
;hi                        Allocated to registers r5 
;lo                        Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:564: void fillTop(unsigned int Color) {
;	-----------------------------------------
;	 function fillTop
;	-----------------------------------------
_fillTop:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:568: unsigned char i, hi = Color >> 8, 
	mov	ar5,r7
;	.\ecen4350_lcd_v4.c:569: lo = Color;
;	.\ecen4350_lcd_v4.c:572: setAddress(0, 0, TFTWIDTH - 1, 39);
	clr	a
	mov	_setAddress_PARM_2,a
	mov	(_setAddress_PARM_2 + 1),a
	mov	_setAddress_PARM_3,#0xef
;	1-genFromRTrack replaced	mov	(_setAddress_PARM_3 + 1),#0x00
	mov	(_setAddress_PARM_3 + 1),a
	mov	_setAddress_PARM_4,#0x27
;	1-genFromRTrack replaced	mov	(_setAddress_PARM_4 + 1),#0x00
	mov	(_setAddress_PARM_4 + 1),a
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setAddress
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:574: write8Reg(0x2C);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:576: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:577: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:578: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:581: while (blocks--)
	mov	r4,#0x96
	mov	r7,#0x00
00104$:
	mov	ar2,r4
	mov	ar3,r7
	dec	r4
	cjne	r4,#0xff,00140$
	dec	r7
00140$:
	mov	a,r2
	orl	a,r3
	jz	00106$
;	.\ecen4350_lcd_v4.c:584: do
	mov	r3,#0x10
00101$:
;	.\ecen4350_lcd_v4.c:587: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:588: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:589: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:590: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:591: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:592: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:593: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:594: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:595: } while (--i);
	djnz	r3,00101$
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:597: for (i = (char)len & 63; i--;)
	mov	r7,#0x3f
00109$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00111$
;	.\ecen4350_lcd_v4.c:600: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:601: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
	sjmp	00109$
00111$:
;	.\ecen4350_lcd_v4.c:605: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillScreen'
;------------------------------------------------------------
;Color                     Allocated to registers r6 r7 
;len                       Allocated to registers 
;blocks                    Allocated to registers r4 r7 
;i                         Allocated to registers r3 
;hi                        Allocated to registers r5 
;lo                        Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:607: void fillScreen(unsigned int Color)
;	-----------------------------------------
;	 function fillScreen
;	-----------------------------------------
_fillScreen:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:614: unsigned char i, hi = Color >> 8,
	mov	ar5,r7
;	.\ecen4350_lcd_v4.c:615: lo = Color;
;	.\ecen4350_lcd_v4.c:618: setAddress(0, 0, TFTWIDTH - 1, TFTHEIGHT - 1);
	clr	a
	mov	_setAddress_PARM_2,a
	mov	(_setAddress_PARM_2 + 1),a
	mov	_setAddress_PARM_3,#0xef
;	1-genFromRTrack replaced	mov	(_setAddress_PARM_3 + 1),#0x00
	mov	(_setAddress_PARM_3 + 1),a
	mov	_setAddress_PARM_4,#0x3f
	mov	(_setAddress_PARM_4 + 1),#0x01
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setAddress
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:622: write8Reg(0x2C);
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:624: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:625: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:626: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:629: while (blocks--)
	mov	r4,#0xb0
	mov	r7,#0x04
00104$:
	mov	ar2,r4
	mov	ar3,r7
	dec	r4
	cjne	r4,#0xff,00140$
	dec	r7
00140$:
	mov	a,r2
	orl	a,r3
	jz	00106$
;	.\ecen4350_lcd_v4.c:632: do
	mov	r3,#0x10
00101$:
;	.\ecen4350_lcd_v4.c:635: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:636: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:637: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:638: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:639: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:640: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:641: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:642: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:643: } while (--i);
	djnz	r3,00101$
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:645: for (i = (char)len & 63; i--;)
	mov	r7,#0x3f
00109$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00111$
;	.\ecen4350_lcd_v4.c:648: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:649: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
	sjmp	00109$
00111$:
;	.\ecen4350_lcd_v4.c:653: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearLCD'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:655: void clearLCD (void)
;	-----------------------------------------
;	 function clearLCD
;	-----------------------------------------
_clearLCD:
;	.\ecen4350_lcd_v4.c:657: fillScreen(colorBackground);
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:658: }
	ljmp	_fillScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'drawChar'
;------------------------------------------------------------
;y                         Allocated with name '_drawChar_PARM_2'
;c                         Allocated with name '_drawChar_PARM_3'
;color                     Allocated with name '_drawChar_PARM_4'
;bg                        Allocated with name '_drawChar_PARM_5'
;size                      Allocated with name '_drawChar_PARM_6'
;x                         Allocated with name '_drawChar_x_65536_454'
;i                         Allocated with name '_drawChar_i_131072_457'
;line                      Allocated with name '_drawChar_line_196608_458'
;j                         Allocated to registers r0 
;sloc0                     Allocated with name '_drawChar_sloc0_1_0'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:659: void drawChar(int x, int y, unsigned char c, u16 color, u16 bg, u8 size)
;	-----------------------------------------
;	 function drawChar
;	-----------------------------------------
_drawChar:
	mov	_drawChar_x_65536_454,dpl
	mov	(_drawChar_x_65536_454 + 1),dph
;	.\ecen4350_lcd_v4.c:661: if ((x >= TFTWIDTH) ||			// Clip right
	clr	c
	mov	a,_drawChar_x_65536_454
	subb	a,#0xf0
	mov	a,(_drawChar_x_65536_454 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	.\ecen4350_lcd_v4.c:662: (y >= TFTHEIGHT) ||			// Clip bottom
	clr	c
	mov	a,_drawChar_PARM_2
	subb	a,#0x40
	mov	a,(_drawChar_PARM_2 + 1)
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00101$
;	.\ecen4350_lcd_v4.c:663: ((x + 6 * size - 1) < 0) || // Clip left
	mov	r4,_drawChar_PARM_6
	mov	r5,#0x00
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0006
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,_drawChar_x_65536_454
	mov	r2,a
	mov	a,r3
	addc	a,(_drawChar_x_65536_454 + 1)
	mov	r3,a
	dec	r2
	cjne	r2,#0xff,00182$
	dec	r3
00182$:
	mov	a,r3
	jb	acc.7,00101$
;	.\ecen4350_lcd_v4.c:664: ((y + 8 * size - 1) < 0))	// Clip top
	mov	a,r5
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,_drawChar_PARM_2
	mov	r4,a
	mov	a,r5
	addc	a,(_drawChar_PARM_2 + 1)
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00184$
	dec	r5
00184$:
	mov	a,r5
	jnb	acc.7,00141$
00101$:
;	.\ecen4350_lcd_v4.c:666: return;
	ret
;	.\ecen4350_lcd_v4.c:669: for (char i = 0; i < 6; i++)
00141$:
	mov	a,#0x01
	cjne	a,_drawChar_PARM_6,00186$
	mov	a,#0x01
	sjmp	00187$
00186$:
	clr	a
00187$:
	mov	r5,a
	mov	r4,a
	mov	a,_drawChar_PARM_4
	cjne	a,_drawChar_PARM_5,00188$
	mov	a,(_drawChar_PARM_4 + 1)
	cjne	a,(_drawChar_PARM_5 + 1),00188$
	mov	a,#0x01
	sjmp	00189$
00188$:
	clr	a
00189$:
	mov	r3,a
	mov	_drawChar_i_131072_457,#0x00
00126$:
	mov	a,#0x100 - 0x06
	add	a,_drawChar_i_131072_457
	jnc	00190$
	ret
00190$:
;	.\ecen4350_lcd_v4.c:673: if (i == 5)
	mov	a,#0x05
	cjne	a,_drawChar_i_131072_457,00107$
;	.\ecen4350_lcd_v4.c:675: line = 0x0;
	mov	_drawChar_line_196608_458,#0x00
	sjmp	00140$
00107$:
;	.\ecen4350_lcd_v4.c:679: line = pgm_read_byte(font + (c * 5) + i);
	mov	__mulint_PARM_2,_drawChar_PARM_3
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r0,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r0
	add	a,#_font
	mov	r0,a
	mov	a,r7
	addc	a,#(_font >> 8)
	mov	r7,a
	mov	a,_drawChar_i_131072_457
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_drawChar_line_196608_458,a
;	.\ecen4350_lcd_v4.c:682: for (char j = 0; j < 8; j++)
00140$:
	mov	b,_drawChar_i_131072_457
	mov	a,_drawChar_PARM_6
	mul	ab
	add	a,_drawChar_x_65536_454
	mov	r6,a
	mov	a,(_drawChar_x_65536_454 + 1)
	addc	a,b
	mov	r7,a
	mov	_drawChar_sloc0_1_0,r6
	mov	(_drawChar_sloc0_1_0 + 1),r7
	mov	r0,#0x00
00123$:
	cjne	r0,#0x08,00193$
00193$:
	jc	00194$
	ljmp	00127$
00194$:
;	.\ecen4350_lcd_v4.c:684: if (line & 0x1)
	mov	a,_drawChar_line_196608_458
	jb	acc.0,00195$
	ljmp	00118$
00195$:
;	.\ecen4350_lcd_v4.c:686: if (size == 1) // default size
	mov	a,r5
	jz	00110$
;	.\ecen4350_lcd_v4.c:688: drawPixel(x + i, y + j, color);
	mov	r1,_drawChar_i_131072_457
	mov	r2,#0x00
	mov	a,r1
	add	a,_drawChar_x_65536_454
	mov	dpl,a
	mov	a,r2
	addc	a,(_drawChar_x_65536_454 + 1)
	mov	dph,a
	mov	ar1,r0
	mov	r2,#0x00
	mov	a,r1
	add	a,_drawChar_PARM_2
	mov	_drawPixel_PARM_2,a
	mov	a,r2
	addc	a,(_drawChar_PARM_2 + 1)
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawChar_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawChar_PARM_4 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00119$
00110$:
;	.\ecen4350_lcd_v4.c:692: fillRect(x + (i * size), y + (j * size), size, size, color);
	mov	b,r0
	mov	a,_drawChar_PARM_6
	mul	ab
	add	a,_drawChar_PARM_2
	mov	_fillRect_PARM_2,a
	mov	a,(_drawChar_PARM_2 + 1)
	addc	a,b
	mov	(_fillRect_PARM_2 + 1),a
	mov	r1,_drawChar_PARM_6
	mov	r2,#0x00
	mov	_fillRect_PARM_3,r1
	mov	(_fillRect_PARM_3 + 1),r2
	mov	_fillRect_PARM_4,r1
	mov	(_fillRect_PARM_4 + 1),r2
	mov	_fillRect_PARM_5,_drawChar_PARM_4
	mov	(_fillRect_PARM_5 + 1),(_drawChar_PARM_4 + 1)
	mov	dpl,_drawChar_sloc0_1_0
	mov	dph,(_drawChar_sloc0_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar0
	lcall	_fillRect
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00119$
00118$:
;	.\ecen4350_lcd_v4.c:695: else if (bg != color)
	mov	a,r3
	jz	00197$
	ljmp	00119$
00197$:
;	.\ecen4350_lcd_v4.c:697: if (size == 1) // default size
	mov	a,r4
	jz	00113$
;	.\ecen4350_lcd_v4.c:699: drawPixel(x + i, y + j, bg);
	mov	r1,_drawChar_i_131072_457
	mov	r2,#0x00
	mov	a,r1
	add	a,_drawChar_x_65536_454
	mov	dpl,a
	mov	a,r2
	addc	a,(_drawChar_x_65536_454 + 1)
	mov	dph,a
	mov	ar1,r0
	mov	r2,#0x00
	mov	a,r1
	add	a,_drawChar_PARM_2
	mov	_drawPixel_PARM_2,a
	mov	a,r2
	addc	a,(_drawChar_PARM_2 + 1)
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawChar_PARM_5
	mov	(_drawPixel_PARM_3 + 1),(_drawChar_PARM_5 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00119$
00113$:
;	.\ecen4350_lcd_v4.c:703: fillRect(x + i * size, y + j * size, size, size, bg);
	mov	b,r0
	mov	a,_drawChar_PARM_6
	mul	ab
	add	a,_drawChar_PARM_2
	mov	_fillRect_PARM_2,a
	mov	a,(_drawChar_PARM_2 + 1)
	addc	a,b
	mov	(_fillRect_PARM_2 + 1),a
	mov	r1,_drawChar_PARM_6
	mov	r2,#0x00
	mov	_fillRect_PARM_3,r1
	mov	(_fillRect_PARM_3 + 1),r2
	mov	_fillRect_PARM_4,r1
	mov	(_fillRect_PARM_4 + 1),r2
	mov	_fillRect_PARM_5,_drawChar_PARM_5
	mov	(_fillRect_PARM_5 + 1),(_drawChar_PARM_5 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar0
	lcall	_fillRect
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00119$:
;	.\ecen4350_lcd_v4.c:707: line >>= 1;
	mov	a,_drawChar_line_196608_458
	clr	c
	rrc	a
	mov	_drawChar_line_196608_458,a
;	.\ecen4350_lcd_v4.c:682: for (char j = 0; j < 8; j++)
	inc	r0
	ljmp	00123$
00127$:
;	.\ecen4350_lcd_v4.c:669: for (char i = 0; i < 6; i++)
	inc	_drawChar_i_131072_457
;	.\ecen4350_lcd_v4.c:710: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:712: void write(u8 c) //write address character at setted coordinates after setting location and colour
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:714: if (c == '\n')
	cjne	r7,#0x0a,00105$
;	.\ecen4350_lcd_v4.c:716: cursor_y += textsize * 8;
	mov	r5,_textsize
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r5
	swap	a
	rr	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf8
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,r5
	add	a,_cursor_y
	mov	_cursor_y,a
	mov	a,r6
	addc	a,(_cursor_y + 1)
	mov	(_cursor_y + 1),a
;	.\ecen4350_lcd_v4.c:717: cursor_x = 0;
	clr	a
	mov	_cursor_x,a
	mov	(_cursor_x + 1),a
	ret
00105$:
;	.\ecen4350_lcd_v4.c:719: else if (c == '\r')
	cjne	r7,#0x0d,00119$
	ret
00119$:
;	.\ecen4350_lcd_v4.c:725: drawChar(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize);
	mov	_drawChar_PARM_2,_cursor_y
	mov	(_drawChar_PARM_2 + 1),(_cursor_y + 1)
	mov	_drawChar_PARM_3,r7
	mov	_drawChar_PARM_4,_textcolor
	mov	(_drawChar_PARM_4 + 1),(_textcolor + 1)
	mov	_drawChar_PARM_5,_textbgcolor
	mov	(_drawChar_PARM_5 + 1),(_textbgcolor + 1)
	mov	_drawChar_PARM_6,_textsize
	mov	dpl,_cursor_x
	mov	dph,(_cursor_x + 1)
	lcall	_drawChar
;	.\ecen4350_lcd_v4.c:726: cursor_x += textsize * 6;
	mov	__mulint_PARM_2,_textsize
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0006
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,_cursor_x
	mov	_cursor_x,a
	mov	a,r7
	addc	a,(_cursor_x + 1)
	mov	(_cursor_x + 1),a
;	.\ecen4350_lcd_v4.c:728: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_string_write'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:729: void LCD_string_write(char *str)
;	-----------------------------------------
;	 function LCD_string_write
;	-----------------------------------------
_LCD_string_write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	.\ecen4350_lcd_v4.c:732: for (i = 0; str[i] != 0; i++) /* Send each char of string till the NULL */
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jz	00105$
;	.\ecen4350_lcd_v4.c:734: write(str[i]); /* Call transmit data function */
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:732: for (i = 0; str[i] != 0; i++) /* Send each char of string till the NULL */
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00105$:
;	.\ecen4350_lcd_v4.c:736: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeNewLine'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:738: void writeNewLine(void)
;	-----------------------------------------
;	 function writeNewLine
;	-----------------------------------------
_writeNewLine:
;	.\ecen4350_lcd_v4.c:740: write('\n');
	mov	dpl,#0x0a
;	.\ecen4350_lcd_v4.c:741: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'freeType'
;------------------------------------------------------------
;count                     Allocated to registers r7 
;d                         Allocated to registers 
;row                       Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:743: void freeType()
;	-----------------------------------------
;	 function freeType
;	-----------------------------------------
_freeType:
;	.\ecen4350_lcd_v4.c:745: unsigned char count = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:747: u8 row = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:749: clearLCD();
	push	ar7
	push	ar6
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:750: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:751: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:752: LCD_string_write("Free Type: \n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:753: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:754: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:755: while (1)
00108$:
;	.\ecen4350_lcd_v4.c:758: if (count == 8)
	cjne	r7,#0x08,00124$
	sjmp	00125$
00124$:
	ljmp	00105$
00125$:
;	.\ecen4350_lcd_v4.c:761: count = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:762: write(d);
	mov	dpl,#0x0a
	push	ar7
	push	ar6
	lcall	_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:763: if (row == 4)
	cjne	r6,#0x04,00102$
;	.\ecen4350_lcd_v4.c:765: delay(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay
;	.\ecen4350_lcd_v4.c:766: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:767: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:768: rtcPrint();
	lcall	_rtcPrint
;	.\ecen4350_lcd_v4.c:769: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:770: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:771: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:772: LCD_string_write("Free Type: \n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:773: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:774: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:776: row = 1;
	mov	r6,#0x01
	sjmp	00108$
00102$:
;	.\ecen4350_lcd_v4.c:779: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:780: row++;
	inc	r6
	ljmp	00108$
00105$:
;	.\ecen4350_lcd_v4.c:785: d = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:786: write(d);
	lcall	_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:787: count++;
	inc	r7
;	.\ecen4350_lcd_v4.c:792: }
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'keyDetect'
;------------------------------------------------------------
;portdata                  Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:795: unsigned char keyDetect()
;	-----------------------------------------
;	 function keyDetect
;	-----------------------------------------
_keyDetect:
;	.\ecen4350_lcd_v4.c:798: __KEYPAD_PORT__ = 0xF0; 										/* set port direction as input-output */
	mov	_P1,#0xf0
;	.\ecen4350_lcd_v4.c:799: do 
00101$:
;	.\ecen4350_lcd_v4.c:801: portdata = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	r7,a
;	.\ecen4350_lcd_v4.c:802: }	while (portdata != 0xF0);									/* wait until no buttons pressed to continue */
	cjne	r7,#0xf0,00101$
;	.\ecen4350_lcd_v4.c:806: do
00105$:
;	.\ecen4350_lcd_v4.c:809: colloc = __KEYPAD_PORT__;								/* read back columns -> the grounded rows will ground address column bit when button pressed */
	mov	_colloc,_P1
;	.\ecen4350_lcd_v4.c:810: colloc &= 0xF0;		  									/* mask port for column read only */
	anl	_colloc,#0xf0
;	.\ecen4350_lcd_v4.c:811: } while ((colloc == 0xF0) && (received_flag == 0)); 		/* read status of column repeatedly until key is pressed or serial interrupt received */
	mov	a,#0xf0
	cjne	a,_colloc,00107$
	mov	a,_received_flag
	jz	00105$
00107$:
;	.\ecen4350_lcd_v4.c:812: delay(10);													/* 15ms key debounce time */
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:813: portdata = (__KEYPAD_PORT__ & 0xF0);						/* resample port data after debounce */
	mov	a,_P1
	anl	a,#0xf0
;	.\ecen4350_lcd_v4.c:814: } while ((colloc != portdata) && (received_flag == 0));			/* repeat until input is clear to interpret */
	mov	r7,a
	cjne	a,_colloc,00214$
	sjmp	00123$
00214$:
	mov	a,_received_flag
	jz	00105$
;	.\ecen4350_lcd_v4.c:816: while (1)
00123$:
;	.\ecen4350_lcd_v4.c:818: if (received_flag == 1)											/* check for key input via serial interrupt */
	mov	a,#0x01
	cjne	a,_received_flag,00113$
;	.\ecen4350_lcd_v4.c:820: received_byte -= 0x40;										/* For some reason received_byte needs 0x40 subtracted */
	mov	a,_received_byte
	mov	r7,a
	add	a,#0xc0
	mov	_received_byte,a
;	.\ecen4350_lcd_v4.c:821: break;														/* break outside while() */
	sjmp	00124$
00113$:
;	.\ecen4350_lcd_v4.c:824: __KEYPAD_PORT__ = 0xFE; 										/* check for pressed key input 1st row -> (_KEYPAD_PORT_ == 0b11111110) */
	mov	_P1,#0xfe
;	.\ecen4350_lcd_v4.c:825: colloc = (__KEYPAD_PORT__ & 0xF0);								/* (1111 1110) & (1111  0000) == (1111 0000) if 1st row free */
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:826: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00218$
	sjmp	00115$
00218$:
;	.\ecen4350_lcd_v4.c:828: rowloc = 0;
	mov	_rowloc,#0x00
;	.\ecen4350_lcd_v4.c:829: break;
	sjmp	00124$
00115$:
;	.\ecen4350_lcd_v4.c:832: __KEYPAD_PORT__ = 0xFD; 										/* check for pressed key input 2nd row -> (_KEYPAD_PORT_ == 0b11111101) */
	mov	_P1,#0xfd
;	.\ecen4350_lcd_v4.c:833: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:834: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00219$
	sjmp	00117$
00219$:
;	.\ecen4350_lcd_v4.c:836: rowloc = 1;
	mov	_rowloc,#0x01
;	.\ecen4350_lcd_v4.c:837: break;
	sjmp	00124$
00117$:
;	.\ecen4350_lcd_v4.c:840: __KEYPAD_PORT__ = 0xFB; 										/* check for pressed key input 3rd row -> (_KEYPAD_PORT_ == 0b11111011) */
	mov	_P1,#0xfb
;	.\ecen4350_lcd_v4.c:841: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:842: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00220$
	sjmp	00119$
00220$:
;	.\ecen4350_lcd_v4.c:844: rowloc = 2;
	mov	_rowloc,#0x02
;	.\ecen4350_lcd_v4.c:845: break;
	sjmp	00124$
00119$:
;	.\ecen4350_lcd_v4.c:848: __KEYPAD_PORT__ = 0xF7; 										/* check for pressed key input 4th row -> (_KEYPAD_PORT_ == 0b11110111) */
	mov	_P1,#0xf7
;	.\ecen4350_lcd_v4.c:849: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:850: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00221$
	sjmp	00123$
00221$:
;	.\ecen4350_lcd_v4.c:852: rowloc = 3;
	mov	_rowloc,#0x03
;	.\ecen4350_lcd_v4.c:853: break;
00124$:
;	.\ecen4350_lcd_v4.c:857: if (received_flag == 1)
	mov	a,#0x01
	cjne	a,_received_flag,00135$
;	.\ecen4350_lcd_v4.c:859: received_flag = 0;
	mov	_received_flag,#0x00
;	.\ecen4350_lcd_v4.c:860: return received_byte;
	mov	dpl,_received_byte
	ret
00135$:
;	.\ecen4350_lcd_v4.c:862: else if (colloc == 0xE0)
	mov	a,#0xe0
	cjne	a,_colloc,00132$
;	.\ecen4350_lcd_v4.c:864: return (keypad[rowloc][0]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	dpl,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00132$:
;	.\ecen4350_lcd_v4.c:866: else if (colloc == 0xD0)
	mov	a,#0xd0
	cjne	a,_colloc,00129$
;	.\ecen4350_lcd_v4.c:868: return (keypad[rowloc][1]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	r6,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00129$:
;	.\ecen4350_lcd_v4.c:870: else if (colloc == 0xB0)
	mov	a,#0xb0
	cjne	a,_colloc,00126$
;	.\ecen4350_lcd_v4.c:872: return (keypad[rowloc][2]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	r6,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00126$:
;	.\ecen4350_lcd_v4.c:876: return (keypad[rowloc][3]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	r6,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
;	.\ecen4350_lcd_v4.c:878: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;rev                       Allocated to registers r5 r6 
;val                       Allocated to registers r1 r2 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:880: unsigned int reverse(unsigned char d)
;	-----------------------------------------
;	 function reverse
;	-----------------------------------------
_reverse:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:882: unsigned int rev = 0;
	mov	r5,#0x00
	mov	r6,#0x00
;	.\ecen4350_lcd_v4.c:884: while (d >= 1)
00101$:
	cjne	r7,#0x01,00114$
00114$:
	jc	00103$
;	.\ecen4350_lcd_v4.c:887: val = d % 10;
	mov	ar3,r7
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:888: d = d / 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	push	ar1
	lcall	__divsint
	mov	r3,dpl
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	mov	ar7,r3
;	.\ecen4350_lcd_v4.c:889: rev = rev * 10 + val;
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000a
	push	ar7
	push	ar2
	push	ar1
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar2
	pop	ar7
	add	a,r1
	mov	r5,a
	mov	a,r2
	addc	a,b
	mov	r6,a
	sjmp	00101$
00103$:
;	.\ecen4350_lcd_v4.c:891: return rev;
	mov	dpl,r5
	mov	dph,r6
;	.\ecen4350_lcd_v4.c:892: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse16'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;rev                       Allocated to registers r4 r5 
;val                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:894: unsigned int reverse16(unsigned int d)
;	-----------------------------------------
;	 function reverse16
;	-----------------------------------------
_reverse16:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:896: unsigned int rev = 0;
	mov	r4,#0x00
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:898: while (d >= 1)
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00103$
;	.\ecen4350_lcd_v4.c:901: val = d % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:902: d = d / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:903: rev = rev * 10 + val;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	add	a,r2
	mov	r4,a
	mov	a,r3
	addc	a,b
	mov	r5,a
	sjmp	00101$
00103$:
;	.\ecen4350_lcd_v4.c:905: return rev;
	mov	dpl,r4
	mov	dph,r5
;	.\ecen4350_lcd_v4.c:906: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hexToASCII'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:908: unsigned char hexToASCII(unsigned char key) {
;	-----------------------------------------
;	 function hexToASCII
;	-----------------------------------------
_hexToASCII:
;	.\ecen4350_lcd_v4.c:909: if(key == 0x0) return '0';
	mov	a,dpl
	mov	r7,a
	jnz	00102$
	mov	dpl,#0x30
	ret
00102$:
;	.\ecen4350_lcd_v4.c:910: if(key == 0x1) return '1';
	cjne	r7,#0x01,00104$
	mov	dpl,#0x31
	ret
00104$:
;	.\ecen4350_lcd_v4.c:911: if(key == 0x2) return '2';
	cjne	r7,#0x02,00106$
	mov	dpl,#0x32
	ret
00106$:
;	.\ecen4350_lcd_v4.c:912: if(key == 0x3) return '3';
	cjne	r7,#0x03,00108$
	mov	dpl,#0x33
	ret
00108$:
;	.\ecen4350_lcd_v4.c:913: if(key == 0x4) return '4';
	cjne	r7,#0x04,00110$
	mov	dpl,#0x34
	ret
00110$:
;	.\ecen4350_lcd_v4.c:914: if(key == 0x5) return '5';
	cjne	r7,#0x05,00112$
	mov	dpl,#0x35
	ret
00112$:
;	.\ecen4350_lcd_v4.c:915: if(key == 0x6) return '6';
	cjne	r7,#0x06,00114$
	mov	dpl,#0x36
	ret
00114$:
;	.\ecen4350_lcd_v4.c:916: if(key == 0x7) return '7';
	cjne	r7,#0x07,00116$
	mov	dpl,#0x37
	ret
00116$:
;	.\ecen4350_lcd_v4.c:917: if(key == 0x8) return '8';
	cjne	r7,#0x08,00118$
	mov	dpl,#0x38
	ret
00118$:
;	.\ecen4350_lcd_v4.c:918: if(key == 0x9) return '9';
	cjne	r7,#0x09,00120$
	mov	dpl,#0x39
	ret
00120$:
;	.\ecen4350_lcd_v4.c:919: if(key == 0xA) return 'A';
	cjne	r7,#0x0a,00122$
	mov	dpl,#0x41
	ret
00122$:
;	.\ecen4350_lcd_v4.c:920: if(key == 0xB) return 'B';
	cjne	r7,#0x0b,00124$
	mov	dpl,#0x42
	ret
00124$:
;	.\ecen4350_lcd_v4.c:921: if(key == 0xC) return 'C';
	cjne	r7,#0x0c,00126$
	mov	dpl,#0x43
	ret
00126$:
;	.\ecen4350_lcd_v4.c:922: if(key == 0xD) return 'D';
	cjne	r7,#0x0d,00128$
	mov	dpl,#0x44
	ret
00128$:
;	.\ecen4350_lcd_v4.c:923: if(key == 0xE) return 'E';
	cjne	r7,#0x0e,00130$
	mov	dpl,#0x45
	ret
00130$:
;	.\ecen4350_lcd_v4.c:924: if(key == 0xF) return 'F';
	cjne	r7,#0x0f,00132$
	mov	dpl,#0x46
	ret
00132$:
;	.\ecen4350_lcd_v4.c:926: return 0xff;
	mov	dpl,#0xff
;	.\ecen4350_lcd_v4.c:927: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ASCIItoHex'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:929: unsigned char ASCIItoHex(unsigned char key) {
;	-----------------------------------------
;	 function ASCIItoHex
;	-----------------------------------------
_ASCIItoHex:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:930: if(key == '0') return 0x0;
	cjne	r7,#0x30,00102$
	mov	dpl,#0x00
	ret
00102$:
;	.\ecen4350_lcd_v4.c:931: if(key == '1') return 0x1;
	cjne	r7,#0x31,00104$
	mov	dpl,#0x01
	ret
00104$:
;	.\ecen4350_lcd_v4.c:932: if(key == '2') return 0x2;
	cjne	r7,#0x32,00106$
	mov	dpl,#0x02
	ret
00106$:
;	.\ecen4350_lcd_v4.c:933: if(key == '3') return 0x3;
	cjne	r7,#0x33,00108$
	mov	dpl,#0x03
	ret
00108$:
;	.\ecen4350_lcd_v4.c:934: if(key == '4') return 0x4;
	cjne	r7,#0x34,00110$
	mov	dpl,#0x04
	ret
00110$:
;	.\ecen4350_lcd_v4.c:935: if(key == '5') return 0x5;
	cjne	r7,#0x35,00112$
	mov	dpl,#0x05
	ret
00112$:
;	.\ecen4350_lcd_v4.c:936: if(key == '6') return 0x6;
	cjne	r7,#0x36,00114$
	mov	dpl,#0x06
	ret
00114$:
;	.\ecen4350_lcd_v4.c:937: if(key == '7') return 0x7;
	cjne	r7,#0x37,00116$
	mov	dpl,#0x07
	ret
00116$:
;	.\ecen4350_lcd_v4.c:938: if(key == '8') return 0x8;
	cjne	r7,#0x38,00118$
	mov	dpl,#0x08
	ret
00118$:
;	.\ecen4350_lcd_v4.c:939: if(key == '9') return 0x9;
	cjne	r7,#0x39,00120$
	mov	dpl,#0x09
	ret
00120$:
;	.\ecen4350_lcd_v4.c:940: if(key == 'A') return 0xA;
	cjne	r7,#0x41,00122$
	mov	dpl,#0x0a
	ret
00122$:
;	.\ecen4350_lcd_v4.c:941: if(key == 'B') return 0xB;
	cjne	r7,#0x42,00124$
	mov	dpl,#0x0b
	ret
00124$:
;	.\ecen4350_lcd_v4.c:942: if(key == 'C') return 0xC;
	cjne	r7,#0x43,00126$
	mov	dpl,#0x0c
	ret
00126$:
;	.\ecen4350_lcd_v4.c:943: if(key == 'D') return 0xD;
	cjne	r7,#0x44,00128$
	mov	dpl,#0x0d
	ret
00128$:
;	.\ecen4350_lcd_v4.c:944: if(key == 'E') return 0xE;
	cjne	r7,#0x45,00130$
	mov	dpl,#0x0e
	ret
00130$:
;	.\ecen4350_lcd_v4.c:945: if(key == 'F') return 0xF;
	cjne	r7,#0x46,00132$
	mov	dpl,#0x0f
	ret
00132$:
;	.\ecen4350_lcd_v4.c:947: return 0xff;
	mov	dpl,#0xff
;	.\ecen4350_lcd_v4.c:948: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asciiToDec'
;------------------------------------------------------------
;d                         Allocated to registers 
;val                       Allocated to registers r4 
;id                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:950: void asciiToDec(unsigned char d)
;	-----------------------------------------
;	 function asciiToDec
;	-----------------------------------------
_asciiToDec:
;	.\ecen4350_lcd_v4.c:954: id = reverse(d);
	lcall	_reverse
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:955: while (id >= 1)
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00103$
;	.\ecen4350_lcd_v4.c:958: val = id % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:959: id = id / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
;	.\ecen4350_lcd_v4.c:960: write(val + '0');
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_write
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	.\ecen4350_lcd_v4.c:962: write('\n');
	mov	dpl,#0x0a
;	.\ecen4350_lcd_v4.c:963: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'asciiToHex'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;val                       Allocated to registers r2 
;store                     Allocated with name '_asciiToHex_store_65536_515'
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:965: void asciiToHex(unsigned char d)
;	-----------------------------------------
;	 function asciiToHex
;	-----------------------------------------
_asciiToHex:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:970: store[0] = 0;
	mov	_asciiToHex_store_65536_515,#0x00
;	.\ecen4350_lcd_v4.c:971: store[1] = 0;
	mov	(_asciiToHex_store_65536_515 + 0x0001),#0x00
;	.\ecen4350_lcd_v4.c:972: while (d >= 1)
	mov	r6,#0x00
00104$:
	cjne	r7,#0x01,00122$
00122$:
	jc	00106$
;	.\ecen4350_lcd_v4.c:975: val = d % 16;
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0f
	anl	a,r4
	mov	r2,a
;	.\ecen4350_lcd_v4.c:976: d = d / 16;
	mov	__divsint_PARM_2,#0x10
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	push	ar6
	push	ar2
	lcall	__divsint
	mov	r4,dpl
	pop	ar2
	pop	ar6
	mov	ar7,r4
;	.\ecen4350_lcd_v4.c:977: if (val <= 9)
	mov	a,r2
	add	a,#0xff - 0x09
	jc	00102$
;	.\ecen4350_lcd_v4.c:980: store[i] = val + '0';
	mov	a,r6
	add	a,#_asciiToHex_store_65536_515
	mov	r1,a
	mov	ar5,r2
	mov	a,#0x30
	add	a,r5
	mov	@r1,a
	sjmp	00103$
00102$:
;	.\ecen4350_lcd_v4.c:984: store[i] = (val % 10) + 'A';
	mov	a,r6
	add	a,#_asciiToHex_store_65536_515
	mov	r1,a
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar1
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar1
	pop	ar6
	pop	ar7
	mov	a,#0x41
	add	a,r4
	mov	@r1,a
00103$:
;	.\ecen4350_lcd_v4.c:986: i++;
	inc	r6
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:988: write(store[1]);
	mov	dpl,(_asciiToHex_store_65536_515 + 0x0001)
	lcall	_write
;	.\ecen4350_lcd_v4.c:989: write(store[0]);
	mov	dpl,_asciiToHex_store_65536_515
;	.\ecen4350_lcd_v4.c:991: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print4Hex'
;------------------------------------------------------------
;num                       Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:994: void print4Hex(unsigned char num) {
;	-----------------------------------------
;	 function print4Hex
;	-----------------------------------------
_print4Hex:
;	.\ecen4350_lcd_v4.c:995: write((u8) hexToASCII(num));
	lcall	_hexToASCII
;	.\ecen4350_lcd_v4.c:996: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print8Hex'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:998: void print8Hex(unsigned char num) {
;	-----------------------------------------
;	 function print8Hex
;	-----------------------------------------
_print8Hex:
;	.\ecen4350_lcd_v4.c:999: print4Hex(num >> 4);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_print4Hex
	pop	ar7
;	.\ecen4350_lcd_v4.c:1000: print4Hex(num & 0x0F);
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:1001: }
	ljmp	_print4Hex
;------------------------------------------------------------
;Allocation info for local variables in function 'print16Hex'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1003: void print16Hex(unsigned int num) {
;	-----------------------------------------
;	 function print16Hex
;	-----------------------------------------
_print16Hex:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1004: print8Hex((unsigned char)(num >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_print8Hex
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1005: print8Hex((unsigned char)num);
	mov	dpl,r6
;	.\ecen4350_lcd_v4.c:1006: }
	ljmp	_print8Hex
;------------------------------------------------------------
;Allocation info for local variables in function 'print16Dec'
;------------------------------------------------------------
;num                       Allocated to registers 
;val                       Allocated to registers r4 r5 
;id                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1008: void print16Dec(unsigned int num) {
;	-----------------------------------------
;	 function print16Dec
;	-----------------------------------------
_print16Dec:
;	.\ecen4350_lcd_v4.c:1011: id = reverse16(num);
	lcall	_reverse16
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1012: while (id >= 1) {
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00104$
;	.\ecen4350_lcd_v4.c:1013: val = id % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1014: id = id/10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:1015: write(val + '0');
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_write
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	.\ecen4350_lcd_v4.c:1017: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print8ASCII'
;------------------------------------------------------------
;num                       Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1019: void print8ASCII(unsigned char num) {
;	-----------------------------------------
;	 function print8ASCII
;	-----------------------------------------
_print8ASCII:
;	.\ecen4350_lcd_v4.c:1020: write((u8)num);
;	.\ecen4350_lcd_v4.c:1021: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print16ASCII'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1023: void print16ASCII(unsigned int num) {
;	-----------------------------------------
;	 function print16ASCII
;	-----------------------------------------
_print16ASCII:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1024: print8ASCII((unsigned char)(num >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_print8ASCII
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1025: print8ASCII((unsigned char)num);
	mov	dpl,r6
;	.\ecen4350_lcd_v4.c:1026: }
	ljmp	_print8ASCII
;------------------------------------------------------------
;Allocation info for local variables in function 'writeSomeLines'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1029: void writeSomeLines()
;	-----------------------------------------
;	 function writeSomeLines
;	-----------------------------------------
_writeSomeLines:
;	.\ecen4350_lcd_v4.c:1031: setRotation(0);		//rotation 0 is for flat/flush LCD
	mov	dpl,#0x00
	lcall	_setRotation
;	.\ecen4350_lcd_v4.c:1033: fillScreen(CYAN);
	mov	dptr,#0x07ff
	lcall	_fillScreen
;	.\ecen4350_lcd_v4.c:1034: fillTop(BLACK);
	mov	dptr,#0x0000
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1035: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1036: setTextColor(CYAN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:1037: setCursor(10,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000a
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1038: LCD_string_write("Welcome\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1039: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1040: setTextColor(BLACK, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0x0000
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:1041: LCD_string_write("\n Tyler Zoucha\n  ECEN-4350\n  Fall 2021");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1042: delay(40);
	mov	dptr,#0x0028
;	.\ecen4350_lcd_v4.c:1043: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorDefault'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1046: void setColorDefault() {
;	-----------------------------------------
;	 function setColorDefault
;	-----------------------------------------
_setColorDefault:
;	.\ecen4350_lcd_v4.c:1047: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
;	.\ecen4350_lcd_v4.c:1048: } 
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorSelect'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1050: void setColorSelect() {
;	-----------------------------------------
;	 function setColorSelect
;	-----------------------------------------
_setColorSelect:
;	.\ecen4350_lcd_v4.c:1051: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
;	.\ecen4350_lcd_v4.c:1052: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorHighlight1'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1054: void setColorHighlight1() {
;	-----------------------------------------
;	 function setColorHighlight1
;	-----------------------------------------
_setColorHighlight1:
;	.\ecen4350_lcd_v4.c:1055: setTextColor(colorSelect, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0xf81f
;	.\ecen4350_lcd_v4.c:1056: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorHighlight2'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1058: void setColorHighlight2() {
;	-----------------------------------------
;	 function setColorHighlight2
;	-----------------------------------------
_setColorHighlight2:
;	.\ecen4350_lcd_v4.c:1059: setTextColor(BLACK, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:1060: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorGray'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1062: void setColorGray() {
;	-----------------------------------------
;	 function setColorGray
;	-----------------------------------------
_setColorGray:
;	.\ecen4350_lcd_v4.c:1063: setTextColor(GRAY, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xd6ba
;	.\ecen4350_lcd_v4.c:1064: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorMenu'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1066: void setColorMenu() {
;	-----------------------------------------
;	 function setColorMenu
;	-----------------------------------------
_setColorMenu:
;	.\ecen4350_lcd_v4.c:1067: setTextColor(BLACK, GRAY);
	mov	_setTextColor_PARM_2,#0xba
	mov	(_setTextColor_PARM_2 + 1),#0xd6
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:1068: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorRed'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1070: void setColorRed() {
;	-----------------------------------------
;	 function setColorRed
;	-----------------------------------------
_setColorRed:
;	.\ecen4350_lcd_v4.c:1071: setTextColor(RED, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf800
;	.\ecen4350_lcd_v4.c:1072: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorWhite'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1074: void setColorWhite() {
;	-----------------------------------------
;	 function setColorWhite
;	-----------------------------------------
_setColorWhite:
;	.\ecen4350_lcd_v4.c:1075: setTextColor(WHITE, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
;	.\ecen4350_lcd_v4.c:1076: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorGreen'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1078: void setColorGreen() {
;	-----------------------------------------
;	 function setColorGreen
;	-----------------------------------------
_setColorGreen:
;	.\ecen4350_lcd_v4.c:1079: setTextColor(GREEN, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
;	.\ecen4350_lcd_v4.c:1080: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorYellow'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1082: void setColorYellow() {
;	-----------------------------------------
;	 function setColorYellow
;	-----------------------------------------
_setColorYellow:
;	.\ecen4350_lcd_v4.c:1083: setTextColor(YELLOW, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffe0
;	.\ecen4350_lcd_v4.c:1084: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'inputAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 r6 
;input                     Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1086: unsigned int inputAddress()
;	-----------------------------------------
;	 function inputAddress
;	-----------------------------------------
_inputAddress:
;	.\ecen4350_lcd_v4.c:1091: input = keyDetect();					
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1094: write(input);									// Print to screen
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:1095: input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	mov	dpl,r7
	lcall	_ASCIItoHex
;	.\ecen4350_lcd_v4.c:1096: address |= (int) input * 16 * 16 * 16;			// highest order nibble = (input) * 0x1000
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1098: input = keyDetect();							// second highest address nibble
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1101: write(input);									// Print to screen
	mov  r5,dpl
	push	ar5
	lcall	_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:1102: input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	mov	dpl,r5
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1103: address |= (int) input * 16 * 16;				// store nibble; (input) * 0x0100
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r7
	orl	ar5,a
	mov	a,r6
	orl	ar4,a
;	.\ecen4350_lcd_v4.c:1105: input = keyDetect();
	push	ar5
	push	ar4
	lcall	_keyDetect
	mov	r7,dpl
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:1108: write(input);
	mov	dpl,r7
	push	ar7
	push	ar5
	push	ar4
	lcall	_write
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1109: input = ASCIItoHex(input);
	mov	dpl,r7
	push	ar5
	push	ar4
	lcall	_ASCIItoHex
	mov	r7,dpl
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:1110: address |= (int) input * 16;					// *0x0010
	clr	a
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	.\ecen4350_lcd_v4.c:1112: input = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1115: write(input);
	mov  r5,dpl
	push	ar5
	lcall	_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:1116: input = ASCIItoHex(input);
	mov	dpl,r5
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1117: address |= (int) input;							// *0x0001
	mov	r4,#0x00
	mov	a,r5
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	.\ecen4350_lcd_v4.c:1120: return address;									// yeet
;	.\ecen4350_lcd_v4.c:1121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inputBlockType'
;------------------------------------------------------------
;blockType                 Allocated to registers 
;invalidType               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1123: unsigned char inputBlockType() {
;	-----------------------------------------
;	 function inputBlockType
;	-----------------------------------------
_inputBlockType:
;	.\ecen4350_lcd_v4.c:1129: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1130: blockType = ASCIItoHex(selection);
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:1145: return blockType;
;	.\ecen4350_lcd_v4.c:1146: }
	ljmp	_ASCIItoHex
;------------------------------------------------------------
;Allocation info for local variables in function 'inputBlockSize'
;------------------------------------------------------------
;blockSize                 Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1148: unsigned char inputBlockSize() {
;	-----------------------------------------
;	 function inputBlockSize
;	-----------------------------------------
_inputBlockSize:
;	.\ecen4350_lcd_v4.c:1151: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1152: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1153: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1154: blockSize |= selection * 16;
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
;	.\ecen4350_lcd_v4.c:1155: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:1156: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:1157: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:1158: blockSize |= selection;
	mov	a,r6
	orl	a,r7
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:1159: return blockSize;
;	.\ecen4350_lcd_v4.c:1160: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printMenu'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1163: void printMenu() {
;	-----------------------------------------
;	 function printMenu
;	-----------------------------------------
_printMenu:
;	.\ecen4350_lcd_v4.c:1165: if (UART_en == 1) goto withUART;
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00111$
	ljmp	00103$
00111$:
;	.\ecen4350_lcd_v4.c:1166: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1167: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1170: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1171: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1172: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1173: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1174: LCD_string_write("<Menu>\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1176: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1178: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1179: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1180: LCD_string_write(" <D>");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1181: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1182: LCD_string_write(" DUMP\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1184: setCursor(120, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1185: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1186: LCD_string_write(" <B>");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1187: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1188: LCD_string_write(" MOVE\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1190: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1191: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1192: LCD_string_write(" <E>");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1193: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1194: LCD_string_write(" EDIT\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1196: setCursor(120, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1197: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1198: LCD_string_write(" <F>");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1199: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1200: LCD_string_write(" FIND\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1202: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1203: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1204: LCD_string_write(" <C>");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1205: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1206: LCD_string_write(" COUNT\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1208: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1209: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1210: LCD_string_write(" <A>");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1211: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1212: LCD_string_write(" MEM CHECK\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1214: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1215: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1216: LCD_string_write(" <1>");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1217: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1218: LCD_string_write(" UART [Disabled]");
	mov	dptr,#___str_19
	mov	b,#0x80
;	.\ecen4350_lcd_v4.c:1219: goto exit;
	ljmp	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1221: withUART:
00103$:
;	.\ecen4350_lcd_v4.c:1222: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1223: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1226: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1227: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1228: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1229: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1230: LCD_string_write("<Menu>\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1232: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1234: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1235: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1236: LCD_string_write(" <D>");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1237: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1238: LCD_string_write(" DUMP\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1240: setCursor(120, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1241: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1242: LCD_string_write(" <B>");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1243: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1244: LCD_string_write(" MOVE\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1246: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1247: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1248: LCD_string_write(" <E>");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1249: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1250: LCD_string_write(" EDIT\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1252: setCursor(120, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1253: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1254: LCD_string_write(" <F>");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1255: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1256: LCD_string_write(" FIND\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1258: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1259: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1260: LCD_string_write(" <C>");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1261: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1262: LCD_string_write(" COUNT\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1264: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1265: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1266: LCD_string_write(" <A>");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1267: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1268: LCD_string_write(" MEM CHECK\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1270: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1271: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1272: LCD_string_write(" <1>");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1273: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1274: LCD_string_write(" UART [Enabled]");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1275: exit: 
;	.\ecen4350_lcd_v4.c:1276: return;
;	.\ecen4350_lcd_v4.c:1277: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump'
;------------------------------------------------------------
;d                         Allocated with name '_dump_d_65536_547'
;__2621440106              Allocated to registers 
;__2621440103              Allocated to registers 
;__2621440104              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440107              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440118              Allocated to registers 
;__2621440115              Allocated to registers 
;__2621440112              Allocated to registers 
;__2621440109              Allocated to registers 
;__2621440110              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440113              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440116              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440119              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440142              Allocated to registers 
;__2621440139              Allocated to registers 
;__2621440136              Allocated to registers 
;__2621440133              Allocated to registers 
;__2621440130              Allocated to registers 
;__2621440127              Allocated to registers 
;__2621440124              Allocated to registers 
;__2621440121              Allocated to registers 
;__2621440122              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440125              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440128              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440131              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r3 
;__2621440134              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440137              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440140              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440143              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;sloc0                     Allocated with name '_dump_sloc0_1_0'
;address                   Allocated with name '_dump_address_65536_547'
;blockSize                 Allocated to registers r5 
;blockType                 Allocated to registers r7 
;exit                      Allocated with name '_dump_exit_65536_547'
;invalidType               Allocated to registers r5 
;invalidSize               Allocated to registers r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1279: void dump()
;	-----------------------------------------
;	 function dump
;	-----------------------------------------
_dump:
;	.\ecen4350_lcd_v4.c:1284: __idata unsigned char blockType = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1285: __idata unsigned char exit = 1;
	mov	r0,#_dump_exit_65536_547
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1286: __idata unsigned char invalidType = 1;
	mov	r5,#0x01
;	.\ecen4350_lcd_v4.c:1287: __idata unsigned char invalidSize = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:1289: clearLCD();
	push	ar7
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1292: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1293: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1294: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1295: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1296: LCD_string_write("[DUMP]\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1297: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1298: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1299: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1300: LCD_string_write(" Address Location:\n");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1301: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1302: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1303: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1304: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1305: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1306: LCD_string_write(" Choose Block Type:\n");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1307: setCursor(0, 160); 
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1308: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1309: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1310: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1311: LCD_string_write(" Input Size:");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1312: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1313: LCD_string_write(" _");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1320: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1321: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1322: LCD_string_write(" Address Location:");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1323: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1324: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1325: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1326: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1327: address = inputAddress();				// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r0,#_dump_address_65536_547
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:1328: d = (unsigned char __xdata *)(address);
	mov	r0,#_dump_address_65536_547
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
;	.\ecen4350_lcd_v4.c:1331: setColorDefault();
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1332: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1333: LCD_string_write(" Address Location:");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1334: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1335: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1336: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1337: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1338: print16Hex(address);					// print 16-bit address from stored memory
	mov	r0,#_dump_address_65536_547
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1341: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1342: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1343: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1344: setCursor(0, 160); 
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1345: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1346: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1349: while (invalidType) {
00109$:
	mov	a,r5
	jnz	00235$
	ljmp	00153$
00235$:
;	.\ecen4350_lcd_v4.c:1350: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1351: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1352: LCD_string_write("\n\n");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1354: blockType = inputBlockType();
	lcall	_inputBlockType
	mov	r7,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1356: if (blockType == 0x1) {
	cjne	r7,#0x01,00102$
;	.\ecen4350_lcd_v4.c:1357: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1359: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1360: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1361: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1362: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1363: LCD_string_write("  ");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1364: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1365: LCD_string_write("<1> BYTE\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1366: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1367: LCD_string_write("\n\n                \n                ");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:1368: } if (blockType == 0x2) {
	cjne	r7,#0x02,00104$
;	.\ecen4350_lcd_v4.c:1369: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1371: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1372: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1373: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1374: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1375: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1376: LCD_string_write("\n  ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1377: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1378: LCD_string_write("<2> WORD\n");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1379: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1380: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:1381: } if (blockType == 0x4) {
	cjne	r7,#0x04,00106$
;	.\ecen4350_lcd_v4.c:1382: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1384: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1385: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1386: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1387: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1388: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1389: LCD_string_write("\n\n  ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1390: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1391: LCD_string_write("<4> DWORD");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1392: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1393: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
;	.\ecen4350_lcd_v4.c:1395: if (invalidType) {
	mov	a,r5
	jnz	00242$
	ljmp	00109$
00242$:
;	.\ecen4350_lcd_v4.c:1396: setColorRed();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1397: LCD_string_write("\n  Input Error\n  Try Again");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:1403: while (invalidSize)
00153$:
00115$:
	mov	a,r3
	jnz	00243$
	ljmp	00117$
00243$:
;	.\ecen4350_lcd_v4.c:1406: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1407: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1408: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1409: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1410: selection = keyDetect();
	lcall	_keyDetect
	mov	r5,dpl
	mov	r0,#_selection
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:1411: write(selection);
	mov	dpl,r5
	lcall	_write
;	.\ecen4350_lcd_v4.c:1412: blockSize = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:1413: setColorDefault();
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1415: if (blockSize != blockType) {
	mov	a,r5
	cjne	a,ar7,00244$
	sjmp	00113$
00244$:
;	.\ecen4350_lcd_v4.c:1416: setColorSelect();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1417: LCD_string_write(" Input Size:");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1418: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1419: LCD_string_write(" _");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1420: setCursor(0,260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1421: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1422: LCD_string_write(" Mismatch Error\n Try Again");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1423: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	ljmp	00115$
00113$:
;	.\ecen4350_lcd_v4.c:1425: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1426: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1427: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1428: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1429: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1430: invalidSize = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:1431: setCursor(0,260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1432: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1433: LCD_string_write(" Match Confirmed\n                ");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	ljmp	00115$
00117$:
;	.\ecen4350_lcd_v4.c:1437: delay(40);
	mov	dptr,#0x0028
	push	ar7
	push	ar6
	push	ar4
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1438: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1439: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1446: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1447: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1448: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1449: LCD_string_write("[DUMP]\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1450: setColorDefault();
	lcall	_setColorDefault
	pop	ar4
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1452: while (exit) {
	cjne	r7,#0x01,00245$
	mov	a,r7
	sjmp	00246$
00245$:
	clr	a
00246$:
	mov	r5,a
	clr	a
	cjne	r7,#0x02,00247$
	inc	a
00247$:
	mov	_dump_sloc0_1_0,a
	clr	a
	cjne	r7,#0x04,00249$
	inc	a
00249$:
	mov	r7,a
00126$:
	mov	r0,#_dump_exit_65536_547
	mov	a,@r0
	jnz	00251$
	ret
00251$:
;	.\ecen4350_lcd_v4.c:1453: setTextSize(2);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1454: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1455: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1456: LCD_string_write(" Address:");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1457: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1458: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1459: LCD_string_write(" 0x");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1460: print16Hex(address);
	mov	r0,#_dump_address_65536_547
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1461: if (blockType == 0x1)
	mov	a,r5
	jnz	00252$
	ljmp	00119$
00252$:
;	.\ecen4350_lcd_v4.c:1463: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1464: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1465: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1466: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1467: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1468: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1470: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1471: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1472: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1473: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1474: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1475: print8ASCII(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1477: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1478: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1479: LCD_string_write(" Data Type:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1480: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1481: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1482: LCD_string_write(" BYTE");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00119$:
;	.\ecen4350_lcd_v4.c:1484: if (blockType == 0x2)
	mov	a,_dump_sloc0_1_0
	jnz	00253$
	ljmp	00121$
00253$:
;	.\ecen4350_lcd_v4.c:1486: setCursor(0, 120);
	push	ar7
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1487: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1488: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1489: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1490: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1491: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1492: d++;
	mov	a,#0x01
	add	a,r4
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r7,a
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1493: print8Hex(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	lcall	_print8Hex
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1494: d--;
	dec	r3
	cjne	r3,#0xff,00254$
	dec	r7
00254$:
;	.\ecen4350_lcd_v4.c:1496: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1497: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1498: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1499: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1500: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1501: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	lcall	_print8ASCII
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1502: d++;
	mov	a,#0x01
	add	a,r3
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r6,a
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1503: print8ASCII(ramRead8(d));
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1505: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1506: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1507: LCD_string_write(" Data Type:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1508: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1509: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1510: LCD_string_write(" WORD");
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1566: return;
	pop	ar7
;	.\ecen4350_lcd_v4.c:1510: LCD_string_write(" WORD");
00121$:
;	.\ecen4350_lcd_v4.c:1512: if (blockType == 0x4)
	mov	a,r7
	jnz	00255$
	ljmp	00123$
00255$:
;	.\ecen4350_lcd_v4.c:1514: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1515: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1516: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1517: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1518: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1519: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1520: d++;
	mov	a,#0x01
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1521: print8Hex(ramRead8(d));
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8Hex
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1522: d++;
	inc	r2
	cjne	r2,#0x00,00256$
	inc	r3
00256$:
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1523: print8Hex(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8Hex
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:1524: d++;
	mov	a,#0x01
	add	a,r2
	mov	_dump_d_65536_547,a
	clr	a
	addc	a,r3
	mov	(_dump_d_65536_547 + 1),a
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,_dump_d_65536_547
	mov	dph,(_dump_d_65536_547 + 1)
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1525: print8Hex(ramRead8(d));
	mov	dpl,r3
	lcall	_print8Hex
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1526: d--;
	mov	a,_dump_d_65536_547
	add	a,#0xff
	mov	r2,a
	mov	a,(_dump_d_65536_547 + 1)
	addc	a,#0xff
	mov	r3,a
;	.\ecen4350_lcd_v4.c:1527: d--;
	dec	r2
	cjne	r2,#0xff,00257$
	dec	r3
00257$:
;	.\ecen4350_lcd_v4.c:1528: d--;
	dec	r2
	cjne	r2,#0xff,00258$
	dec	r3
00258$:
;	.\ecen4350_lcd_v4.c:1530: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1531: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1532: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1533: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1534: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1535: print8ASCII(ramRead8(d));
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1536: d++;
	inc	r2
	cjne	r2,#0x00,00259$
	inc	r3
00259$:
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1537: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1538: d++;
	inc	r2
	cjne	r2,#0x00,00260$
	inc	r3
00260$:
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1539: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:1540: d++;
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r6,a
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1541: print8ASCII(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1543: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1544: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1545: LCD_string_write(" Data Type:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1546: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1547: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1548: LCD_string_write(" DWORD");
	mov	dptr,#___str_51
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00123$:
;	.\ecen4350_lcd_v4.c:1550: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1551: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1552: LCD_string_write(" <0> Exit\n");
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1554: selection = keyDetect();
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:1556: if (selection == '0' ) {
	cjne	r3,#0x30,00261$
	sjmp	00262$
00261$:
	ljmp	00126$
00262$:
;	.\ecen4350_lcd_v4.c:1557: exit = 0;
	mov	r0,#_dump_exit_65536_547
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1558: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1559: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1560: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1561: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1562: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1563: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00126$
;	.\ecen4350_lcd_v4.c:1566: return;
;	.\ecen4350_lcd_v4.c:1567: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move'
;------------------------------------------------------------
;d                         Allocated with name '_move_d_65536_603'
;i                         Allocated with name '_move_i_131072_612'
;__2621440148              Allocated to registers 
;__2621440145              Allocated to registers 
;__2621440146              Allocated to registers 
;__3276800149              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r5 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;sourceAddress             Allocated with name '_move_sourceAddress_65536_603'
;destAddress               Allocated to registers r2 r3 
;blockSize                 Allocated to registers r6 r7 
;blockType                 Allocated to registers r5 
;invalidType               Allocated to registers r4 
;invalidSize               Allocated with name '_move_invalidSize_65536_603'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1569: void move() {
;	-----------------------------------------
;	 function move
;	-----------------------------------------
_move:
;	.\ecen4350_lcd_v4.c:1573: __idata unsigned int blockSize = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1574: __idata unsigned char blockType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1575: __idata unsigned char invalidType = 1;
	mov	r4,#0x01
;	.\ecen4350_lcd_v4.c:1576: __idata unsigned char invalidSize = 1;
	mov	r0,#_move_invalidSize_65536_603
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1578: clearLCD();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1581: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1582: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1583: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1584: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1585: LCD_string_write("[MOVE]\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1586: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1587: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1588: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1589: LCD_string_write(" Source Address:");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1590: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1591: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1592: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1593: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1594: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1595: LCD_string_write(" Destination:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1596: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1597: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1598: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1599: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1600: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1601: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1602: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1603: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1604: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1605: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1606: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1607: LCD_string_write(" Input Size:");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1608: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1609: LCD_string_write(" _");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1616: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1617: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1618: LCD_string_write(" Source Address:");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1619: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1620: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1621: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1622: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1623: sourceAddress = inputAddress();
	lcall	_inputAddress
	mov	r0,#_move_sourceAddress_65536_603
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:1626: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1627: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1628: LCD_string_write(" Source Address:");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1629: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1630: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1631: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1632: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1633: print16Hex(sourceAddress);
	mov	r0,#_move_sourceAddress_65536_603
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1636: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1637: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1638: LCD_string_write(" Destination:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1639: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1640: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1641: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1642: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1643: destAddress = inputAddress();
	lcall	_inputAddress
	mov	r2,dpl
	mov	r3,dph
;	.\ecen4350_lcd_v4.c:1646: setColorDefault();
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1647: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1648: LCD_string_write( " Destination:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1649: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1650: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1651: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1652: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:1653: print16Hex(destAddress);
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1656: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1657: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1658: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1659: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1660: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1661: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1663: while (invalidType) {
00109$:
	mov	a,r4
	jnz	00178$
	ljmp	00137$
00178$:
;	.\ecen4350_lcd_v4.c:1664: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1665: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1666: LCD_string_write("\n\n");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1668: blockType = inputBlockType();
	lcall	_inputBlockType
	mov	r5,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1670: if (blockType == 0x1) {
	cjne	r5,#0x01,00102$
;	.\ecen4350_lcd_v4.c:1671: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1673: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1674: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1675: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1676: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1677: LCD_string_write("  ");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1678: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1679: LCD_string_write("<1> BYTE\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1680: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1681: LCD_string_write("\n\n                \n                ");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:1683: } if (blockType == 0x2) {
	cjne	r5,#0x02,00104$
;	.\ecen4350_lcd_v4.c:1684: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1686: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1687: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1688: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1689: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1690: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1691: LCD_string_write("\n  ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1692: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1693: LCD_string_write("<2> WORD\n");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1694: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1695: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:1696: } if (blockType == 0x4) {
	cjne	r5,#0x04,00106$
;	.\ecen4350_lcd_v4.c:1697: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1699: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1700: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1701: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1702: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1703: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1704: LCD_string_write("\n\n  ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1705: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1706: LCD_string_write("<4> DWORD");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1707: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1708: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
;	.\ecen4350_lcd_v4.c:1710: if (invalidType) {
	mov	a,r4
	jnz	00185$
	ljmp	00109$
00185$:
;	.\ecen4350_lcd_v4.c:1711: setColorRed();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1712: LCD_string_write("\n  Input Error\n  Try Again");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:1718: while (invalidSize)
00137$:
00115$:
	mov	r0,#_move_invalidSize_65536_603
	mov	a,@r0
	jnz	00186$
	ljmp	00140$
00186$:
;	.\ecen4350_lcd_v4.c:1721: setCursor(0, 260);
	push	ar2
	push	ar3
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1722: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1723: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1724: selection = keyDetect();
	lcall	_keyDetect
	mov	a,dpl
	mov	r0,#_selection
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:1725: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1726: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1727: blockSize = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	mov	ar6,r4
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1728: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_setColorDefault
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1730: if (blockSize != blockType) {
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r6
	cjne	a,ar3,00187$
	mov	a,r7
	cjne	a,ar4,00187$
	pop	ar3
	pop	ar2
	sjmp	00113$
00187$:
	pop	ar3
	pop	ar2
;	.\ecen4350_lcd_v4.c:1731: setCursor(0,280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1732: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1733: LCD_string_write(" Mismatch Error\n Try Again");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1734: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1735: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1736: LCD_string_write(" Input Size:");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1737: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1738: LCD_string_write(" _");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00115$
00113$:
;	.\ecen4350_lcd_v4.c:1740: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1741: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1742: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1743: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1744: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1745: invalidSize = 0;
	mov	r0,#_move_invalidSize_65536_603
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1746: setCursor(0,280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1747: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1748: LCD_string_write(" Match Confirmed\n                ");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00115$
;	.\ecen4350_lcd_v4.c:1754: for(unsigned int i = sourceAddress; i < (sourceAddress + blockSize); i++) {
00140$:
	mov	r0,#_move_sourceAddress_65536_603
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r0,#_move_sourceAddress_65536_603
	mov	_move_i_131072_612,@r0
	inc	r0
	mov	(_move_i_131072_612 + 1),@r0
00125$:
	clr	c
	mov	a,_move_i_131072_612
	subb	a,r6
	mov	a,(_move_i_131072_612 + 1)
	subb	a,r7
	jnc	00121$
;	.\ecen4350_lcd_v4.c:1755: d = (unsigned char __xdata*)(destAddress);
	mov	_move_d_65536_603,r2
	mov	(_move_d_65536_603 + 1),r3
;	.\ecen4350_lcd_v4.c:1756: ramWrite8(d,ramRead8((unsigned char __xdata*)i));
	mov	dpl,_move_i_131072_612
	mov	dph,(_move_i_131072_612 + 1)
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	movx	a,@dptr
	mov	r5,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:109: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:110: *map_address = d;
	mov	dpl,_move_d_65536_603
	mov	dph,(_move_d_65536_603 + 1)
	mov	a,r5
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:111: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1757: if (destAddress == 0xFFFF) {						// check end of RAM
	cjne	r2,#0xff,00119$
	cjne	r3,#0xff,00119$
;	.\ecen4350_lcd_v4.c:1758: destAddress = 0x0000;
	mov	r2,#0x00
	mov	r3,#0x00
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:1760: destAddress++;
	inc	r2
	cjne	r2,#0x00,00191$
	inc	r3
00191$:
00126$:
;	.\ecen4350_lcd_v4.c:1754: for(unsigned int i = sourceAddress; i < (sourceAddress + blockSize); i++) {
	inc	_move_i_131072_612
	clr	a
	cjne	a,_move_i_131072_612,00125$
	inc	(_move_i_131072_612 + 1)
	sjmp	00125$
00121$:
;	.\ecen4350_lcd_v4.c:1764: setCursor(0, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1765: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1766: LCD_string_write(" Move Complete\n");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1767: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1768: selection = 'null';
	mov	r0,#_selection
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:1769: return;
;	.\ecen4350_lcd_v4.c:1770: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'edit'
;------------------------------------------------------------
;__1310720151              Allocated to registers 
;d                         Allocated with name '_edit_d_65536_622'
;__1310720152              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720154              Allocated to registers 
;__1310720155              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440157              Allocated to registers 
;__2621440158              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r2 
;__2621440160              Allocated to registers 
;__2621440161              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440163              Allocated to registers 
;__2621440164              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440166              Allocated to registers 
;__2621440167              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;address                   Allocated to registers r5 r6 
;value                     Allocated to registers r7 
;exit                      Allocated with name '_edit_exit_65536_622'
;invalid                   Allocated with name '_edit_invalid_65536_622'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1772: void edit(){
;	-----------------------------------------
;	 function edit
;	-----------------------------------------
_edit:
;	.\ecen4350_lcd_v4.c:1776: __idata unsigned char exit = 1;
	mov	r0,#_edit_exit_65536_622
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1779: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1782: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1783: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1784: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1785: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1786: LCD_string_write("[EDIT]\n");
	mov	dptr,#___str_58
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1787: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1788: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1789: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1790: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1791: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1792: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1793: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1794: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1795: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1796: LCD_string_write(" Location Contents:\n");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1797: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1798: LCD_string_write(" __");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1799: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1800: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1801: LCD_string_write(" Enter New Value:\n");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1802: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1803: LCD_string_write(" __");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1804: setCursor(0,210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1805: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1806: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_63
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1807: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1808: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1809: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1816: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1817: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1818: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1819: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1820: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1821: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1822: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1823: address = inputAddress();		// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r5,dpl
	mov	r6,dph
;	.\ecen4350_lcd_v4.c:1824: d = (unsigned char __xdata*)address;
	mov	ar3,r5
	mov	ar4,r6
;	.\ecen4350_lcd_v4.c:1827: setColorDefault();
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1828: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1829: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1830: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1831: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1832: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1833: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1834: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1837: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1838: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1839: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1840: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1841: print8Hex(ramRead8(d));
	push	ar4
	push	ar3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1844: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1845: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1846: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1847: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1848: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1849: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1850: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1851: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1852: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1853: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1854: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1855: value |= selection;
	mov	a,r2
	orl	ar7,a
;	.\ecen4350_lcd_v4.c:1858: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1859: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1860: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1861: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1862: print8Hex(value);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_print8Hex
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:109: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:110: *map_address = d;
	mov	dpl,r3
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:111: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1867: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1868: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1869: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_63
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1870: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1871: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1872: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1878: while(exit){
00109$:
	mov	r0,#_edit_exit_65536_622
	mov	a,@r0
	jnz	00150$
	ret
00150$:
;	.\ecen4350_lcd_v4.c:1879: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r7,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1880: invalid = 1;
	mov	r0,#_edit_invalid_65536_622
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1881: if (selection == '1') {		/* Highlight choice and gray out others */
	cjne	r7,#0x31,00151$
	sjmp	00152$
00151$:
	ljmp	00102$
00152$:
;	.\ecen4350_lcd_v4.c:1882: invalid = 0;
	mov	r0,#_edit_invalid_65536_622
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1884: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1885: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1886: LCD_string_write("\n  ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1887: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1888: LCD_string_write("<1> Next Address\n");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1889: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1890: LCD_string_write("\n\n               ");
	mov	dptr,#___str_69
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1891: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1894: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1895: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1896: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1897: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1898: LCD_string_write("\n __");
	mov	dptr,#___str_70
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1899: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1900: LCD_string_write("\n __");
	mov	dptr,#___str_70
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1901: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1902: LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1905: address++;
	inc	r5
	cjne	r5,#0x00,00153$
	inc	r6
00153$:
;	.\ecen4350_lcd_v4.c:1906: d = (unsigned char __xdata*)address;
	mov	_edit_d_65536_622,r5
	mov	(_edit_d_65536_622 + 1),r6
;	.\ecen4350_lcd_v4.c:1907: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1908: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1909: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1910: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1911: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1914: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1915: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1916: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1917: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,_edit_d_65536_622
	mov	dph,(_edit_d_65536_622 + 1)
	movx	a,@dptr
	mov	r2,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1918: print8Hex(ramRead8(d));
	mov	dpl,r2
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1921: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1922: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1923: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1924: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1925: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1926: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1927: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1928: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1929: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1930: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1931: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r7,dpl
	pop	ar2
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1932: value |= selection;
	mov	a,r2
	orl	ar7,a
;	.\ecen4350_lcd_v4.c:1935: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1936: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1937: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1938: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1939: print8Hex(value);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_print8Hex
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:109: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:110: *map_address = d;
	mov	dpl,_edit_d_65536_622
	mov	dph,(_edit_d_65536_622 + 1)
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:111: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1944: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1945: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1946: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_63
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1947: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1948: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1949: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
00102$:
;	.\ecen4350_lcd_v4.c:1951: if (selection == '2') {			/* Highlight choice and gray out others*/
	mov	r0,#_selection
	cjne	@r0,#0x32,00154$
	sjmp	00155$
00154$:
	ljmp	00104$
00155$:
;	.\ecen4350_lcd_v4.c:1952: invalid = 0;
	mov	r0,#_edit_invalid_65536_622
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1954: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1955: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1956: LCD_string_write(" Choose Next Action:\n  ");
	mov	dptr,#___str_72
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1957: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1958: LCD_string_write("\n  ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1959: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1960: LCD_string_write("<2> New Address\n");
	mov	dptr,#___str_73
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1961: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1962: LCD_string_write("\n               ");
	mov	dptr,#___str_74
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1963: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1966: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1967: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1968: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1969: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1970: LCD_string_write("\n __");
	mov	dptr,#___str_70
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1971: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1972: LCD_string_write("\n __");
	mov	dptr,#___str_70
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1973: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1974: LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1977: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1978: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1979: LCD_string_write(" Edit Address");
	mov	dptr,#___str_75
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1980: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1981: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1982: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1983: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1984: address = inputAddress();		// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r5,dpl
	mov	r6,dph
;	.\ecen4350_lcd_v4.c:1985: d = (unsigned char __xdata*)address;
	mov	ar3,r5
	mov	ar7,r6
;	.\ecen4350_lcd_v4.c:1988: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1989: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1990: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1991: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1992: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1993: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1994: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1995: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1998: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1999: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2000: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2001: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2002: print8Hex(ramRead8(d));
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2005: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2006: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2007: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2008: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2009: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2010: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:2011: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2012: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:2013: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2014: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:2015: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar2
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2016: value |= selection;
	mov	a,r2
	orl	ar4,a
;	.\ecen4350_lcd_v4.c:2019: setColorDefault();
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2020: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2021: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2022: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:2023: print8Hex(value);
	mov	dpl,r4
	push	ar4
	push	ar3
	lcall	_print8Hex
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:109: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:110: *map_address = d;
	mov	dpl,r3
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:111: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2028: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2029: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2030: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_63
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2031: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2032: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2033: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
00104$:
;	.\ecen4350_lcd_v4.c:2035: if (selection == '0') {			/* Highlight choice and gray out others */
	mov	r0,#_selection
	cjne	@r0,#0x30,00106$
;	.\ecen4350_lcd_v4.c:2036: exit = 0;
	mov	r0,#_edit_exit_65536_622
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2037: invalid = 0;
	mov	r0,#_edit_invalid_65536_622
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2038: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2039: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2040: LCD_string_write("\n");
	mov	dptr,#___str_76
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2041: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2042: LCD_string_write("\n\n  ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2043: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2044: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2045: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2046: LCD_string_write("\n               ");
	mov	dptr,#___str_74
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2047: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
	pop	ar5
	pop	ar6
00106$:
;	.\ecen4350_lcd_v4.c:2049: if (invalid) {
	mov	r0,#_edit_invalid_65536_622
	mov	a,@r0
	jnz	00158$
	ljmp	00109$
00158$:
;	.\ecen4350_lcd_v4.c:2050: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2051: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2052: LCD_string_write("\n\n\n\n Input Error ");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:2055: return;
;	.\ecen4350_lcd_v4.c:2056: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find'
;------------------------------------------------------------
;d                         Allocated to registers 
;i                         Allocated with name '_find_i_262144_659'
;__3932160169              Allocated to registers 
;__3932160170              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r4 
;i                         Allocated to registers r4 r6 
;__3932160172              Allocated to registers 
;__3932160173              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r3 
;sloc0                     Allocated with name '_find_sloc0_1_0'
;sloc1                     Allocated with name '_find_sloc1_1_0'
;address                   Allocated with name '_find_address_65536_646'
;destination               Allocated to registers 
;blockSize                 Allocated with name '_find_blockSize_65536_646'
;value                     Allocated with name '_find_value_65536_646'
;scan                      Allocated with name '_find_scan_65536_646'
;page                      Allocated to registers r5 
;noneFound                 Allocated with name '_find_noneFound_65536_646'
;invalidInput              Allocated to registers r7 
;exit                      Allocated with name '_find_exit_65536_646'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2058: void find() {
;	-----------------------------------------
;	 function find
;	-----------------------------------------
_find:
;	.\ecen4350_lcd_v4.c:2062: __idata unsigned char blockSize = 0;
	mov	r0,#_find_blockSize_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2064: __idata unsigned char scan = 0;
	mov	r0,#_find_scan_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2065: __idata unsigned char page = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:2066: __idata unsigned char noneFound = 1;
	mov	r0,#_find_noneFound_65536_646
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2067: __idata unsigned char invalidInput = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:2068: __idata unsigned char exit = 1;
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2070: clearLCD();
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2073: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2074: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2075: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2076: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2077: LCD_string_write("[FIND]\n");
	mov	dptr,#___str_79
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2078: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2079: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2080: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2081: LCD_string_write(" Find Value:");
	mov	dptr,#___str_80
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2082: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2083: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2084: LCD_string_write(" __");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2085: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2086: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2087: LCD_string_write(" Search Address:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2088: setCursor(0, 130 );
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2089: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2090: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2091: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2092: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2093: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2094: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2095: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2096: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2098: (0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2099: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2100: LCD_string_write("   __");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2107: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2108: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2109: LCD_string_write(" Find Value:");
	mov	dptr,#___str_80
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2110: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2111: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2112: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2113: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2114: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2115: selection = keyDetect();
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2116: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:2117: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2118: value |= selection * 16;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
;	.\ecen4350_lcd_v4.c:2119: selection = keyDetect();
	push	ar4
	push	ar3
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2120: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:2121: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar3
	pop	ar4
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2122: value |= selection;
	mov	r0,#_find_value_65536_646
	mov	a,r6
	orl	a,r4
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2125: setColorDefault();
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2126: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2127: LCD_string_write(" Find Value:");
	mov	dptr,#___str_80
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2128: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2129: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2130: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2131: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2132: print8Hex(value);
	mov	r0,#_find_value_65536_646
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2135: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2136: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2137: LCD_string_write(" Search Address:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2138: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2139: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2140: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2141: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2142: address = inputAddress();
	lcall	_inputAddress
	mov	r0,#_find_address_65536_646
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:2145: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2146: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2147: LCD_string_write(" Search Address:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2148: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2149: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2150: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2151: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2152: print16Hex(address);
	mov	r0,#_find_address_65536_646
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2155: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2156: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2157: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2158: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2159: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2160: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2161: while (invalidInput) {
00113$:
	mov	a,r3
	jnz	00539$
	ljmp	00115$
00539$:
;	.\ecen4350_lcd_v4.c:2162: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2163: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2164: LCD_string_write("   __");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2165: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2166: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2167: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2168: blockSize = inputBlockSize();
	lcall	_inputBlockSize
	mov	r0,#_find_blockSize_65536_646
	mov	@r0,dpl
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2169: if (blockSize == 0x01) {
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0x01,00111$
;	.\ecen4350_lcd_v4.c:2170: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2171: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2172: LCD_string_write("\n                ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	sjmp	00113$
00111$:
;	.\ecen4350_lcd_v4.c:2173: } else if (blockSize == 0x02) {
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0x02,00108$
;	.\ecen4350_lcd_v4.c:2174: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2175: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2176: LCD_string_write("\n                ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00108$:
;	.\ecen4350_lcd_v4.c:2177: } else if (blockSize == 0x04) {
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0x04,00105$
;	.\ecen4350_lcd_v4.c:2178: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2179: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2180: LCD_string_write("\n                ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00105$:
;	.\ecen4350_lcd_v4.c:2181: } else if (blockSize == 0xFF) {
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0xff,00102$
;	.\ecen4350_lcd_v4.c:2182: invalidInput = 0;
	mov	r3,#0x00
	ljmp	00113$
00102$:
;	.\ecen4350_lcd_v4.c:2185: setColorRed();
	push	ar5
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2186: LCD_string_write("\n Try again");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00115$:
;	.\ecen4350_lcd_v4.c:2191: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2192: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2193: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2194: if (blockSize == 0x01){
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0x01,00125$
;	.\ecen4350_lcd_v4.c:2195: LCD_string_write("  ");
	mov	dptr,#___str_32
	mov	b,#0x80
	push	ar5
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2196: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2197: LCD_string_write("<01> BYTE\n");
	mov	dptr,#___str_89
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2198: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2199: LCD_string_write("  <02> WORD\n");
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2200: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2201: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2202: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2203: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2204: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2205: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2206: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_646
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2207: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2208: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2209: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2210: LCD_string_write("\n BYTE [8 bits]");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00125$:
;	.\ecen4350_lcd_v4.c:2211: } else if (blockSize == 0x02) {
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0x02,00122$
;	.\ecen4350_lcd_v4.c:2212: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2213: LCD_string_write("  <01> BYTE\n  ");
	mov	dptr,#___str_94
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2214: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2215: LCD_string_write("<02> WORD\n");
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2216: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2217: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2218: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2219: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2220: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2221: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2222: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2223: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_646
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2224: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2225: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2226: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2227: LCD_string_write("\n WORD [16 bits]");
	mov	dptr,#___str_96
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00122$:
;	.\ecen4350_lcd_v4.c:2228: } else if (blockSize == 0x04) {
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0x04,00119$
;	.\ecen4350_lcd_v4.c:2229: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2230: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2231: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2232: LCD_string_write("<04> DWORD\n");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2233: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2234: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2235: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2236: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2237: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2238: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2239: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_646
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2240: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2241: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2242: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2243: LCD_string_write("\n DWORD [32 bits]");
	mov	dptr,#___str_99
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:2244: } else if (blockSize == 0xFF) {
	mov	r0,#_find_blockSize_65536_646
	cjne	@r0,#0xff,00126$
;	.\ecen4350_lcd_v4.c:2245: scan = 1;
	mov	r0,#_find_scan_65536_646
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2246: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2247: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2248: LCD_string_write("<04> DWORD\n  ");
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2249: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2250: LCD_string_write("<FF> (SCAN)");
	mov	dptr,#___str_101
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2251: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2252: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2253: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2254: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2255: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_646
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2256: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2257: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2258: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2259: LCD_string_write("\n [256 Blocks]");
	mov	dptr,#___str_102
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
00126$:
;	.\ecen4350_lcd_v4.c:2263: delay(40);
	mov	dptr,#0x0028
	push	ar5
	lcall	_delay
;	.\ecen4350_lcd_v4.c:2264: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2265: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2266: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2267: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2268: setCursor(30,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2269: LCD_string_write("[FIND]\n");
	mov	dptr,#___str_79
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2270: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2271: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
	pop	ar5
;	.\ecen4350_lcd_v4.c:2277: while (exit) {
00205$:
	mov	r0,#_find_exit_65536_646
	mov	a,@r0
	jnz	00556$
	ljmp	00207$
00556$:
;	.\ecen4350_lcd_v4.c:2279: if (scan) {	
	mov	r0,#_find_scan_65536_646
	mov	a,@r0
	jnz	00557$
	ljmp	00196$
00557$:
;	.\ecen4350_lcd_v4.c:2280: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2281: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2282: LCD_string_write(" [Non-Interactive]\n");
	mov	dptr,#___str_103
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2283: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2284: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2285: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2286: print8Hex(value);
	mov	r0,#_find_value_65536_646
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2287: for(unsigned int i = 0; i < blockSize; i++) {
	mov	ar3,r5
	clr	a
	mov	_find_i_262144_659,a
	mov	(_find_i_262144_659 + 1),a
00211$:
	mov	r0,#_find_blockSize_65536_646
	mov	ar2,@r0
	mov	r6,#0x00
	clr	c
	mov	a,_find_i_262144_659
	subb	a,r2
	mov	a,(_find_i_262144_659 + 1)
	subb	a,r6
	jc	00558$
	ljmp	00271$
00558$:
;	.\ecen4350_lcd_v4.c:2288: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_find_address_65536_646
	mov	a,@r0
	add	a,_find_i_262144_659
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,(_find_i_262144_659 + 1)
	mov	r6,a
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2289: if(value == ramRead8(d)){
	mov	r0,#_find_value_65536_646
	mov	a,@r0
	cjne	a,ar4,00212$
;	.\ecen4350_lcd_v4.c:2290: noneFound = 0;
	mov	r0,#_find_noneFound_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2292: if (page == 0) {		
	mov	a,r3
	jnz	00128$
;	.\ecen4350_lcd_v4.c:2293: setColorWhite();
	push	ar3
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2294: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2295: LCD_string_write(" Found at Location:\n");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2296: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2297: LCD_string_write(" 0x");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2298: print16Hex(i);
	mov	dpl,_find_i_262144_659
	mov	dph,(_find_i_262144_659 + 1)
	lcall	_print16Hex
	pop	ar3
;	.\ecen4350_lcd_v4.c:2299: page++;
	inc	r3
	sjmp	00212$
00128$:
;	.\ecen4350_lcd_v4.c:2301: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2302: LCD_string_write("\n 0x");
	mov	dptr,#___str_106
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2303: print16Hex(i);
	mov	dpl,_find_i_262144_659
	mov	dph,(_find_i_262144_659 + 1)
	lcall	_print16Hex
	pop	ar3
00212$:
;	.\ecen4350_lcd_v4.c:2287: for(unsigned int i = 0; i < blockSize; i++) {
	inc	_find_i_262144_659
	clr	a
	cjne	a,_find_i_262144_659,00562$
	inc	(_find_i_262144_659 + 1)
00562$:
	ljmp	00211$
00271$:
	mov	ar5,r3
;	.\ecen4350_lcd_v4.c:2307: exit = 0;
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x00
	ljmp	00197$
00196$:
;	.\ecen4350_lcd_v4.c:2309: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2310: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2311: LCD_string_write(" [Interactive]\n");
	mov	dptr,#___str_107
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2312: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2313: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2314: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2315: print8Hex(value);
	mov	r0,#_find_value_65536_646
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2318: for (unsigned int i = 0; i < blockSize; i++) {
	clr	a
	mov	_find_sloc1_1_0,a
	mov	(_find_sloc1_1_0 + 1),a
00214$:
	mov	r0,#_find_blockSize_65536_646
	mov	ar2,@r0
	mov	r3,#0x00
	clr	c
	mov	a,_find_sloc1_1_0
	subb	a,r2
	mov	a,(_find_sloc1_1_0 + 1)
	subb	a,r3
	jc	00563$
	ljmp	00197$
00563$:
;	.\ecen4350_lcd_v4.c:2319: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_find_address_65536_646
	mov	a,@r0
	add	a,_find_sloc1_1_0
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,(_find_sloc1_1_0 + 1)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2320: if(value == ramRead8(d)){
	mov	r0,#_find_value_65536_646
	mov	a,@r0
	cjne	a,ar3,00564$
	sjmp	00565$
00564$:
	ljmp	00215$
00565$:
;	.\ecen4350_lcd_v4.c:2321: noneFound = 0;		// toggle flag
	mov	r0,#_find_noneFound_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2322: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2323: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2324: LCD_string_write(" Found at Location \n");
	mov	dptr,#___str_108
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2325: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2326: LCD_string_write(" 0x");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2327: print16Hex(page+address);
	mov	ar2,r5
	mov	r3,#0x00
	mov	r0,#_find_address_65536_646
	mov	a,@r0
	add	a,r2
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	dph,a
	push	ar5
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2328: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2329: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2330: LCD_string_write("Page: ");
	mov	dptr,#___str_109
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2331: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
;	.\ecen4350_lcd_v4.c:2332: print8Hex(page+1);
	mov	ar3,r5
	mov	a,r3
	inc	a
	mov	dpl,a
	push	ar5
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2336: if (i == 0) {					// At beginning, page <0>
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jz	00566$
	ljmp	00190$
00566$:
;	.\ecen4350_lcd_v4.c:2337: if (i != blockSize - 1) {	// not at the end yet, no previous page
	push	ar5
	mov	r0,#_find_blockSize_65536_646
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xff
	mov	r5,a
	mov	a,r3
	addc	a,#0xff
	mov	r7,a
	mov	a,r5
	cjne	a,_find_sloc1_1_0,00567$
	mov	a,r7
	cjne	a,(_find_sloc1_1_0 + 1),00567$
	pop	ar5
	ljmp	00148$
00567$:
;	.\ecen4350_lcd_v4.c:2338: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2339: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2340: LCD_string_write(" <1> Next\n <0> Exit\n              ");
	mov	dptr,#___str_110
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2341: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2342: while (invalidInput) {
	mov	_find_sloc0_1_0,r5
00137$:
	mov	a,r7
	jnz	00568$
	ljmp	00272$
00568$:
;	.\ecen4350_lcd_v4.c:2343: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:2344: if(selection == '1'){
	cjne	r7,#0x31,00569$
	sjmp	00570$
00569$:
	pop	ar7
	sjmp	00134$
00570$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2345: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2346: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2347: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2348: LCD_string_write("<1> Next");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2349: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2350: page++;
	inc	_find_sloc0_1_0
00134$:
;	.\ecen4350_lcd_v4.c:2351: } if(selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00137$
;	.\ecen4350_lcd_v4.c:2352: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2353: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2354: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2355: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2356: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2357: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2358: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00137$
00148$:
;	.\ecen4350_lcd_v4.c:2361: } else if (i == blockSize - 1) {	// starts at the end, no previous or next page
	dec	r2
	cjne	r2,#0xff,00573$
	dec	r3
00573$:
	mov	a,r2
	cjne	a,_find_sloc1_1_0,00149$
	mov	a,r3
	cjne	a,(_find_sloc1_1_0 + 1),00149$
;	.\ecen4350_lcd_v4.c:2362: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2363: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2364: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2365: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2366: while (invalidInput) {
00142$:
	mov	a,r7
	jz	00149$
;	.\ecen4350_lcd_v4.c:2367: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:2368: if(selection == '0') {
	cjne	r3,#0x30,00142$
;	.\ecen4350_lcd_v4.c:2369: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2370: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2371: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2372: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2373: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2374: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2375: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00142$
00272$:
	mov	r5,_find_sloc0_1_0
00149$:
;	.\ecen4350_lcd_v4.c:2379: if (exit == 0) {	// check exit flag
	mov	r0,#_find_exit_65536_646
	mov	a,@r0
	jz	00579$
	ljmp	00215$
00579$:
;	.\ecen4350_lcd_v4.c:2380: break;			// break out of for loop iteration
	ljmp	00197$
00190$:
;	.\ecen4350_lcd_v4.c:2385: else if (i == blockSize - 1) {		// At Page End 
	push	ar5
	mov	r0,#_find_blockSize_65536_646
	mov	ar3,@r0
	mov	r7,#0x00
	mov	a,r3
	add	a,#0xff
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	a,r2
	cjne	a,_find_sloc1_1_0,00580$
	mov	a,r5
	cjne	a,(_find_sloc1_1_0 + 1),00580$
	sjmp	00581$
00580$:
	pop	ar5
	ljmp	00187$
00581$:
	pop	ar5
;	.\ecen4350_lcd_v4.c:2386: if (i != 0) {				// not at beginning, no next page
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jnz	00582$
	ljmp	00167$
00582$:
;	.\ecen4350_lcd_v4.c:2387: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2388: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2389: LCD_string_write("          \n <0> Exit\n <2> Previous");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2390: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2391: while (invalidInput) {
	mov	_find_sloc0_1_0,r5
00156$:
	mov	a,r7
	jnz	00583$
	ljmp	00273$
00583$:
;	.\ecen4350_lcd_v4.c:2392: selection = keyDetect();
	push	ar7
	push	ar7
	lcall	_keyDetect
	mov	r2,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2393: if(selection == '0'){
	cjne	r2,#0x30,00584$
	sjmp	00585$
00584$:
	pop	ar7
	sjmp	00153$
00585$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2394: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2395: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2396: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2397: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2398: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2399: exit = 0;
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x00
00153$:
;	.\ecen4350_lcd_v4.c:2400: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00156$
;	.\ecen4350_lcd_v4.c:2401: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2402: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2403: LCD_string_write("\n\n ");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2404: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2405: LCD_string_write("<2> Previous");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2406: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2407: i--;			// two decrements plus next loop increment is equal to one decrement
	mov	a,_find_sloc1_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_find_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2408: i--;
	mov	a,r2
	add	a,#0xff
	mov	_find_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_find_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2409: page--;			// decrement to previous page
	dec	_find_sloc0_1_0
	ljmp	00156$
00167$:
;	.\ecen4350_lcd_v4.c:2413: else if (i == 0){				// end at beginning, no next or previous
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
;	.\ecen4350_lcd_v4.c:2414: setCursor(0, 180);
	jnz	00168$
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2415: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2416: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2417: invalidInput = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:2418: while (invalidInput) {
00161$:
	mov	a,r6
	jz	00168$
;	.\ecen4350_lcd_v4.c:2419: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2420: if(selection == '0') {
	cjne	r4,#0x30,00161$
;	.\ecen4350_lcd_v4.c:2421: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2422: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2423: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2424: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2425: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2426: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2427: invalidInput = 0;
	mov	r6,#0x00
	sjmp	00161$
00273$:
	mov	r5,_find_sloc0_1_0
00168$:
;	.\ecen4350_lcd_v4.c:2431: if (exit == 0) {	// check exit flag
	mov	r0,#_find_exit_65536_646
	mov	a,@r0
	jz	00592$
	ljmp	00215$
00592$:
;	.\ecen4350_lcd_v4.c:2432: break;			// break out of for loop iteration
	ljmp	00197$
00187$:
;	.\ecen4350_lcd_v4.c:2437: else if (i != blockSize - 1)  {	// in mid page, with previous and next options
	dec	r3
	cjne	r3,#0xff,00593$
	dec	r7
00593$:
	mov	a,r3
	cjne	a,_find_sloc1_1_0,00594$
	mov	a,r7
	cjne	a,(_find_sloc1_1_0 + 1),00594$
	ljmp	00215$
00594$:
;	.\ecen4350_lcd_v4.c:2438: if (i != 0) {
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jnz	00595$
	ljmp	00181$
00595$:
;	.\ecen4350_lcd_v4.c:2439: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2440: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2441: LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2442: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2443: while (invalidInput) {
00177$:
	mov	a,r7
	jnz	00596$
	ljmp	00181$
00596$:
;	.\ecen4350_lcd_v4.c:2444: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2445: if (selection == '1') {
	cjne	r6,#0x31,00172$
;	.\ecen4350_lcd_v4.c:2446: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2447: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2448: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2449: LCD_string_write("<1> Next");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2450: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2451: page++;
	inc	r5
00172$:
;	.\ecen4350_lcd_v4.c:2452: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00174$
;	.\ecen4350_lcd_v4.c:2453: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2454: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2455: LCD_string_write("\n\n ");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2456: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2457: LCD_string_write("<2> Previous");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2458: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2459: i--;
	mov	a,_find_sloc1_1_0
	add	a,#0xff
	mov	r4,a
	mov	a,(_find_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2460: i--;		// two decrements plus next loop increment is equal to one decrement
	mov	a,r4
	add	a,#0xff
	mov	_find_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_find_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2461: page--;		// decrement to previous page
	dec	r5
00174$:
;	.\ecen4350_lcd_v4.c:2462: } if (selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00601$
	sjmp	00602$
00601$:
	ljmp	00177$
00602$:
;	.\ecen4350_lcd_v4.c:2463: setColorWhite();
	push	ar5
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2464: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2465: LCD_string_write(" <1> Next\n ");
	mov	dptr,#___str_117
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2466: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2467: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2468: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2469: LCD_string_write("\n <2> Previous");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2470: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2471: invalidInput = 0;
	mov	r7,#0x00
	ljmp	00177$
00181$:
;	.\ecen4350_lcd_v4.c:2475: if (exit == 0) {		// check exit flag
	mov	r0,#_find_exit_65536_646
	mov	a,@r0
	jz	00197$
;	.\ecen4350_lcd_v4.c:2476: break;			// break out the loop
00215$:
;	.\ecen4350_lcd_v4.c:2318: for (unsigned int i = 0; i < blockSize; i++) {
	inc	_find_sloc1_1_0
	clr	a
	cjne	a,_find_sloc1_1_0,00604$
	inc	(_find_sloc1_1_0 + 1)
00604$:
	ljmp	00214$
00197$:
;	.\ecen4350_lcd_v4.c:2482: if(noneFound) {
	mov	r0,#_find_noneFound_65536_646
	mov	a,@r0
	jnz	00605$
	ljmp	00205$
00605$:
;	.\ecen4350_lcd_v4.c:2483: setColorRed();
	push	ar5
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2484: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2485: LCD_string_write(" Value Not Found\n Within Block\n ");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2486: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2487: LCD_string_write("\n <0> Exit");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2488: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2490: while (invalidInput) {
00200$:
	mov	a,r7
	jnz	00606$
	ljmp	00205$
00606$:
;	.\ecen4350_lcd_v4.c:2491: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2492: if (selection == '0'){
	cjne	r6,#0x30,00200$
;	.\ecen4350_lcd_v4.c:2493: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2494: LCD_string_write("\n\n\n ");
	mov	dptr,#___str_121
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2495: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2496: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2497: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2498: exit = 0;
	mov	r0,#_find_exit_65536_646
	mov	@r0,#0x00
	sjmp	00200$
00207$:
;	.\ecen4350_lcd_v4.c:2503: delay(80);
	mov	dptr,#0x0050
;	.\ecen4350_lcd_v4.c:2504: return;
;	.\ecen4350_lcd_v4.c:2505: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'count'
;------------------------------------------------------------
;d                         Allocated to registers 
;i                         Allocated with name '_count_i_262144_715'
;__3932160175              Allocated to registers 
;__3932160176              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r4 
;i                         Allocated to registers r4 r6 
;__3932160178              Allocated to registers 
;__3932160179              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r3 
;sloc0                     Allocated with name '_count_sloc0_1_0'
;sloc1                     Allocated with name '_count_sloc1_1_0'
;address                   Allocated with name '_count_address_65536_702'
;destination               Allocated to registers 
;blockSize                 Allocated with name '_count_blockSize_65536_702'
;value                     Allocated with name '_count_value_65536_702'
;scan                      Allocated with name '_count_scan_65536_702'
;page                      Allocated to registers r5 
;noneFound                 Allocated with name '_count_noneFound_65536_702'
;invalidInput              Allocated to registers r7 
;exit                      Allocated with name '_count_exit_65536_702'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2507: void count() {
;	-----------------------------------------
;	 function count
;	-----------------------------------------
_count:
;	.\ecen4350_lcd_v4.c:2511: __idata unsigned char blockSize = 0;
	mov	r0,#_count_blockSize_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2513: __idata unsigned char scan = 0;
	mov	r0,#_count_scan_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2514: __idata unsigned char page = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:2515: __idata unsigned char noneFound = 1;
	mov	r0,#_count_noneFound_65536_702
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2516: __idata unsigned char invalidInput = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:2517: __idata unsigned char exit = 1;
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2519: clearLCD();
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2522: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2523: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2524: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2525: setCursor(15, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2526: LCD_string_write("[COUNT]\n");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2527: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2528: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2529: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2530: LCD_string_write(" Search Value:");
	mov	dptr,#___str_123
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2531: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2532: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2533: LCD_string_write(" __");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2534: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2535: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2536: LCD_string_write(" Search Address:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2537: setCursor(0, 130 );
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2538: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2539: LCD_string_write(" 0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2540: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2541: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2542: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2543: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2544: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2545: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2546: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2547: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2548: LCD_string_write("   __");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2555: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2556: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2557: LCD_string_write(" Search Value:");
	mov	dptr,#___str_123
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2558: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2559: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2560: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2561: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2562: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2563: selection = keyDetect();
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2564: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:2565: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2566: value |= selection * 16;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
;	.\ecen4350_lcd_v4.c:2567: selection = keyDetect();
	push	ar4
	push	ar3
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2568: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:2569: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar3
	pop	ar4
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2570: value |= selection;
	mov	r0,#_count_value_65536_702
	mov	a,r6
	orl	a,r4
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2573: setColorDefault();
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2574: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2575: LCD_string_write(" Search Value:");
	mov	dptr,#___str_123
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2576: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2577: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2578: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2579: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2580: print8Hex(value);
	mov	r0,#_count_value_65536_702
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2583: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2584: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2585: LCD_string_write(" Search Address:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2586: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2587: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2588: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2589: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2590: address = inputAddress();
	lcall	_inputAddress
	mov	r0,#_count_address_65536_702
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:2593: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2594: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2595: LCD_string_write(" Search Address:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2596: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2597: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2598: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2599: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2600: print16Hex(address);
	mov	r0,#_count_address_65536_702
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2603: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2604: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2605: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2606: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2607: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2608: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2609: while (invalidInput) {
00113$:
	mov	a,r3
	jnz	00530$
	ljmp	00115$
00530$:
;	.\ecen4350_lcd_v4.c:2610: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2611: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2612: LCD_string_write("   __");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2613: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2614: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2615: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2616: blockSize = inputBlockSize();
	lcall	_inputBlockSize
	mov	r0,#_count_blockSize_65536_702
	mov	@r0,dpl
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2617: if (blockSize == 0x01) {
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0x01,00111$
;	.\ecen4350_lcd_v4.c:2618: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2619: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2620: LCD_string_write("\n                ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	sjmp	00113$
00111$:
;	.\ecen4350_lcd_v4.c:2621: } else if (blockSize == 0x02) {
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0x02,00108$
;	.\ecen4350_lcd_v4.c:2622: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2623: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2624: LCD_string_write("\n                ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00108$:
;	.\ecen4350_lcd_v4.c:2625: } else if (blockSize == 0x04) {
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0x04,00105$
;	.\ecen4350_lcd_v4.c:2626: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2627: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2628: LCD_string_write("\n                ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00105$:
;	.\ecen4350_lcd_v4.c:2629: } else if (blockSize == 0xFF) {
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0xff,00102$
;	.\ecen4350_lcd_v4.c:2630: invalidInput = 0;
	mov	r3,#0x00
	ljmp	00113$
00102$:
;	.\ecen4350_lcd_v4.c:2633: setColorRed();
	push	ar5
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2634: LCD_string_write("\n Try again");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00115$:
;	.\ecen4350_lcd_v4.c:2639: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2640: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2641: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2642: if (blockSize == 0x01){
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0x01,00125$
;	.\ecen4350_lcd_v4.c:2643: LCD_string_write("  ");
	mov	dptr,#___str_32
	mov	b,#0x80
	push	ar5
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2644: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2645: LCD_string_write("<01> BYTE\n");
	mov	dptr,#___str_89
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2646: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2647: LCD_string_write("  <02> WORD\n");
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2648: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2649: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2650: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2651: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2652: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2653: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2654: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_702
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2655: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2656: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2657: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2658: LCD_string_write("\n BYTE [8 bits]");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00125$:
;	.\ecen4350_lcd_v4.c:2659: } else if (blockSize == 0x02) {
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0x02,00122$
;	.\ecen4350_lcd_v4.c:2660: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2661: LCD_string_write("  <01> BYTE\n  ");
	mov	dptr,#___str_94
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2662: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2663: LCD_string_write("<02> WORD\n");
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2664: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2665: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2666: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2667: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2668: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2669: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2670: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2671: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_702
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2672: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2673: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2674: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2675: LCD_string_write("\n WORD [16 bits]");
	mov	dptr,#___str_96
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00122$:
;	.\ecen4350_lcd_v4.c:2676: } else if (blockSize == 0x04) {
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0x04,00119$
;	.\ecen4350_lcd_v4.c:2677: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2678: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2679: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2680: LCD_string_write("<04> DWORD\n");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2681: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2682: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2683: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2684: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2685: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2686: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2687: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_702
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2688: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2689: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2690: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2691: LCD_string_write("\n DWORD [32 bits]");
	mov	dptr,#___str_99
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:2692: } else if (blockSize == 0xFF) {
	mov	r0,#_count_blockSize_65536_702
	cjne	@r0,#0xff,00126$
;	.\ecen4350_lcd_v4.c:2693: scan = 1;
	mov	r0,#_count_scan_65536_702
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2694: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2695: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2696: LCD_string_write("<04> DWORD\n  ");
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2697: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2698: LCD_string_write("<FF> (SCAN)");
	mov	dptr,#___str_101
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2699: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2700: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2701: LCD_string_write("   ");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2702: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2703: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_702
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2704: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2705: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2706: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2707: LCD_string_write("\n [256 Blocks]");
	mov	dptr,#___str_102
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
00126$:
;	.\ecen4350_lcd_v4.c:2711: delay(40);
	mov	dptr,#0x0028
	push	ar5
	lcall	_delay
;	.\ecen4350_lcd_v4.c:2712: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2713: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2714: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2715: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2716: setCursor(15,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2717: LCD_string_write("[COUNT]\n");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2718: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2719: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
	pop	ar5
;	.\ecen4350_lcd_v4.c:2725: while (exit) {
00202$:
	mov	r0,#_count_exit_65536_702
	mov	a,@r0
	jnz	00547$
	ljmp	00204$
00547$:
;	.\ecen4350_lcd_v4.c:2727: if (scan) {	
	mov	r0,#_count_scan_65536_702
	mov	a,@r0
	jnz	00548$
	ljmp	00193$
00548$:
;	.\ecen4350_lcd_v4.c:2728: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2729: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2730: LCD_string_write(" [Non-Interactive]\n");
	mov	dptr,#___str_103
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2731: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2732: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2733: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2734: print8Hex(value);
	mov	r0,#_count_value_65536_702
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2735: for(unsigned int i = 0; i < blockSize; i++) {
	mov	ar3,r5
	clr	a
	mov	_count_i_262144_715,a
	mov	(_count_i_262144_715 + 1),a
00208$:
	mov	r0,#_count_blockSize_65536_702
	mov	ar2,@r0
	mov	r6,#0x00
	clr	c
	mov	a,_count_i_262144_715
	subb	a,r2
	mov	a,(_count_i_262144_715 + 1)
	subb	a,r6
	jnc	00267$
;	.\ecen4350_lcd_v4.c:2736: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_count_address_65536_702
	mov	a,@r0
	add	a,_count_i_262144_715
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,(_count_i_262144_715 + 1)
	mov	r6,a
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2737: if(value == ramRead8(d)){
	mov	r0,#_count_value_65536_702
	mov	a,@r0
	cjne	a,ar4,00209$
;	.\ecen4350_lcd_v4.c:2738: noneFound = 0;
	mov	r0,#_count_noneFound_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2739: page++;
	inc	r3
00209$:
;	.\ecen4350_lcd_v4.c:2735: for(unsigned int i = 0; i < blockSize; i++) {
	inc	_count_i_262144_715
	clr	a
	cjne	a,_count_i_262144_715,00208$
	inc	(_count_i_262144_715 + 1)
	sjmp	00208$
00267$:
	mov	ar5,r3
;	.\ecen4350_lcd_v4.c:2742: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2743: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2744: LCD_string_write(" Found in\n ");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2745: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2746: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
;	.\ecen4350_lcd_v4.c:2747: print8Hex(page);
	mov	dpl,r3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2748: LCD_string_write(" Bytes (Hex)\n ");
	mov	dptr,#___str_125
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2749: exit = 0;
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x00
	ljmp	00194$
00193$:
;	.\ecen4350_lcd_v4.c:2751: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2752: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2753: LCD_string_write(" [Interactive]\n");
	mov	dptr,#___str_107
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2754: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2755: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2756: setColorDefault();
	lcall	_setColorDefault
	pop	ar5
;	.\ecen4350_lcd_v4.c:2759: for (unsigned int i = 0; i < blockSize; i++) {
	clr	a
	mov	_count_sloc1_1_0,a
	mov	(_count_sloc1_1_0 + 1),a
00211$:
	mov	r0,#_count_blockSize_65536_702
	mov	ar2,@r0
	mov	r3,#0x00
	clr	c
	mov	a,_count_sloc1_1_0
	subb	a,r2
	mov	a,(_count_sloc1_1_0 + 1)
	subb	a,r3
	jc	00553$
	ljmp	00194$
00553$:
;	.\ecen4350_lcd_v4.c:2760: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_count_address_65536_702
	mov	a,@r0
	add	a,_count_sloc1_1_0
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,(_count_sloc1_1_0 + 1)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
;	.\ecen4350_lcd_v4.c:117: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:118: d = *map_address;
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:119: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2761: if(value == ramRead8(d)){
	mov	r0,#_count_value_65536_702
	mov	a,@r0
	cjne	a,ar3,00554$
	sjmp	00555$
00554$:
	ljmp	00212$
00555$:
;	.\ecen4350_lcd_v4.c:2762: noneFound = 0;		// toggle flag
	mov	r0,#_count_noneFound_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2763: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2764: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2765: LCD_string_write(" Found at Location \n");
	mov	dptr,#___str_108
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2766: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2767: LCD_string_write(" 0x");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2768: print16Hex(page+address);
	mov	ar2,r5
	mov	r3,#0x00
	mov	r0,#_count_address_65536_702
	mov	a,@r0
	add	a,r2
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	dph,a
	push	ar5
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2769: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2770: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2771: LCD_string_write("Count: ");
	mov	dptr,#___str_126
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2772: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
;	.\ecen4350_lcd_v4.c:2773: print8Hex(page+1);
	mov	ar3,r5
	mov	a,r3
	inc	a
	mov	dpl,a
	push	ar5
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2777: if (i == 0) {					// At beginning, page <0>
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jz	00556$
	ljmp	00187$
00556$:
;	.\ecen4350_lcd_v4.c:2778: if (i != blockSize - 1) {	// not at the end yet, no previous page
	push	ar5
	mov	r0,#_count_blockSize_65536_702
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xff
	mov	r5,a
	mov	a,r3
	addc	a,#0xff
	mov	r7,a
	mov	a,r5
	cjne	a,_count_sloc1_1_0,00557$
	mov	a,r7
	cjne	a,(_count_sloc1_1_0 + 1),00557$
	pop	ar5
	ljmp	00145$
00557$:
;	.\ecen4350_lcd_v4.c:2779: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2780: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2781: LCD_string_write(" <1> Next\n <0> Exit\n              ");
	mov	dptr,#___str_110
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2782: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2783: while (invalidInput) {
	mov	_count_sloc0_1_0,r5
00134$:
	mov	a,r7
	jnz	00558$
	ljmp	00268$
00558$:
;	.\ecen4350_lcd_v4.c:2784: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:2785: if(selection == '1'){
	cjne	r7,#0x31,00559$
	sjmp	00560$
00559$:
	pop	ar7
	sjmp	00131$
00560$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2786: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2787: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2788: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2789: LCD_string_write("<1> Next");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2790: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2791: page++;
	inc	_count_sloc0_1_0
00131$:
;	.\ecen4350_lcd_v4.c:2792: } if(selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00134$
;	.\ecen4350_lcd_v4.c:2793: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2794: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2795: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2796: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2797: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2798: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2799: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00134$
00145$:
;	.\ecen4350_lcd_v4.c:2802: } else if (i == blockSize - 1) {	// starts at the end, no previous or next page
	dec	r2
	cjne	r2,#0xff,00563$
	dec	r3
00563$:
	mov	a,r2
	cjne	a,_count_sloc1_1_0,00146$
	mov	a,r3
	cjne	a,(_count_sloc1_1_0 + 1),00146$
;	.\ecen4350_lcd_v4.c:2803: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2804: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2805: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2806: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2807: while (invalidInput) {
00139$:
	mov	a,r7
	jz	00146$
;	.\ecen4350_lcd_v4.c:2808: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:2809: if(selection == '0') {
	cjne	r3,#0x30,00139$
;	.\ecen4350_lcd_v4.c:2810: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2811: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2812: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2813: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2814: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2815: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2816: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00139$
00268$:
	mov	r5,_count_sloc0_1_0
00146$:
;	.\ecen4350_lcd_v4.c:2820: if (exit == 0) {	// check exit flag
	mov	r0,#_count_exit_65536_702
	mov	a,@r0
	jz	00569$
	ljmp	00212$
00569$:
;	.\ecen4350_lcd_v4.c:2821: break;			// break out of for loop iteration
	ljmp	00194$
00187$:
;	.\ecen4350_lcd_v4.c:2826: else if (i == blockSize - 1) {		// At Page End 
	push	ar5
	mov	r0,#_count_blockSize_65536_702
	mov	ar3,@r0
	mov	r7,#0x00
	mov	a,r3
	add	a,#0xff
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	a,r2
	cjne	a,_count_sloc1_1_0,00570$
	mov	a,r5
	cjne	a,(_count_sloc1_1_0 + 1),00570$
	sjmp	00571$
00570$:
	pop	ar5
	ljmp	00184$
00571$:
	pop	ar5
;	.\ecen4350_lcd_v4.c:2827: if (i != 0) {				// not at beginning, no next page
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jnz	00572$
	ljmp	00164$
00572$:
;	.\ecen4350_lcd_v4.c:2828: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2829: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2830: LCD_string_write("          \n <0> Exit\n <2> Previous");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2831: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2832: while (invalidInput) {
	mov	_count_sloc0_1_0,r5
00153$:
	mov	a,r7
	jnz	00573$
	ljmp	00269$
00573$:
;	.\ecen4350_lcd_v4.c:2833: selection = keyDetect();
	push	ar7
	push	ar7
	lcall	_keyDetect
	mov	r2,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2834: if(selection == '0'){
	cjne	r2,#0x30,00574$
	sjmp	00575$
00574$:
	pop	ar7
	sjmp	00150$
00575$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2835: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2836: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2837: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2838: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2839: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2840: exit = 0;
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x00
00150$:
;	.\ecen4350_lcd_v4.c:2841: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00153$
;	.\ecen4350_lcd_v4.c:2842: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2843: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2844: LCD_string_write("\n\n ");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2845: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2846: LCD_string_write("<2> Previous");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2847: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2848: i--;			// two decrements plus next loop increment is equal to one decrement
	mov	a,_count_sloc1_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_count_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2849: i--;
	mov	a,r2
	add	a,#0xff
	mov	_count_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_count_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2850: page--;			// decrement to previous page
	dec	_count_sloc0_1_0
	ljmp	00153$
00164$:
;	.\ecen4350_lcd_v4.c:2854: else if (i == 0){				// end at beginning, no next or previous
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
;	.\ecen4350_lcd_v4.c:2855: setCursor(0, 180);
	jnz	00165$
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2856: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2857: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2858: invalidInput = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:2859: while (invalidInput) {
00158$:
	mov	a,r6
	jz	00165$
;	.\ecen4350_lcd_v4.c:2860: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2861: if(selection == '0') {
	cjne	r4,#0x30,00158$
;	.\ecen4350_lcd_v4.c:2862: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2863: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2864: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2865: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2866: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2867: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2868: invalidInput = 0;
	mov	r6,#0x00
	sjmp	00158$
00269$:
	mov	r5,_count_sloc0_1_0
00165$:
;	.\ecen4350_lcd_v4.c:2872: if (exit == 0) {	// check exit flag
	mov	r0,#_count_exit_65536_702
	mov	a,@r0
	jz	00582$
	ljmp	00212$
00582$:
;	.\ecen4350_lcd_v4.c:2873: break;			// break out of for loop iteration
	ljmp	00194$
00184$:
;	.\ecen4350_lcd_v4.c:2878: else if (i != blockSize - 1)  {	// in mid page, with previous and next options
	dec	r3
	cjne	r3,#0xff,00583$
	dec	r7
00583$:
	mov	a,r3
	cjne	a,_count_sloc1_1_0,00584$
	mov	a,r7
	cjne	a,(_count_sloc1_1_0 + 1),00584$
	ljmp	00212$
00584$:
;	.\ecen4350_lcd_v4.c:2879: if (i != 0) {
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jnz	00585$
	ljmp	00178$
00585$:
;	.\ecen4350_lcd_v4.c:2880: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2881: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2882: LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2883: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2884: while (invalidInput) {
00174$:
	mov	a,r7
	jnz	00586$
	ljmp	00178$
00586$:
;	.\ecen4350_lcd_v4.c:2885: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2886: if (selection == '1') {
	cjne	r6,#0x31,00169$
;	.\ecen4350_lcd_v4.c:2887: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2888: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2889: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2890: LCD_string_write("<1> Next");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2891: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2892: page++;
	inc	r5
00169$:
;	.\ecen4350_lcd_v4.c:2893: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00171$
;	.\ecen4350_lcd_v4.c:2894: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2895: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2896: LCD_string_write("\n\n ");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2897: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2898: LCD_string_write("<2> Previous");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2899: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2900: i--;
	mov	a,_count_sloc1_1_0
	add	a,#0xff
	mov	r4,a
	mov	a,(_count_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2901: i--;		// two decrements plus next loop increment is equal to one decrement
	mov	a,r4
	add	a,#0xff
	mov	_count_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_count_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2902: page--;		// decrement to previous page
	dec	r5
00171$:
;	.\ecen4350_lcd_v4.c:2903: } if (selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00591$
	sjmp	00592$
00591$:
	ljmp	00174$
00592$:
;	.\ecen4350_lcd_v4.c:2904: setColorWhite();
	push	ar5
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2905: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2906: LCD_string_write(" <1> Next\n ");
	mov	dptr,#___str_117
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2907: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2908: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2909: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2910: LCD_string_write("\n <2> Previous");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2911: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2912: invalidInput = 0;
	mov	r7,#0x00
	ljmp	00174$
00178$:
;	.\ecen4350_lcd_v4.c:2916: if (exit == 0) {		// check exit flag
	mov	r0,#_count_exit_65536_702
	mov	a,@r0
	jz	00194$
;	.\ecen4350_lcd_v4.c:2917: break;			// break out the loop
00212$:
;	.\ecen4350_lcd_v4.c:2759: for (unsigned int i = 0; i < blockSize; i++) {
	inc	_count_sloc1_1_0
	clr	a
	cjne	a,_count_sloc1_1_0,00594$
	inc	(_count_sloc1_1_0 + 1)
00594$:
	ljmp	00211$
00194$:
;	.\ecen4350_lcd_v4.c:2923: if(noneFound) {
	mov	r0,#_count_noneFound_65536_702
	mov	a,@r0
	jnz	00595$
	ljmp	00202$
00595$:
;	.\ecen4350_lcd_v4.c:2924: setColorRed();
	push	ar5
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2925: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2926: LCD_string_write(" Value Not Found\n Within Block\n ");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2927: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2928: LCD_string_write("\n <0> Exit");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2929: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2931: while (invalidInput) {
00197$:
	mov	a,r7
	jnz	00596$
	ljmp	00202$
00596$:
;	.\ecen4350_lcd_v4.c:2932: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2933: if (selection == '0'){
	cjne	r6,#0x30,00197$
;	.\ecen4350_lcd_v4.c:2934: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2935: LCD_string_write("\n\n\n ");
	mov	dptr,#___str_121
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2936: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2937: LCD_string_write("<0> Exit");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2938: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2939: exit = 0;
	mov	r0,#_count_exit_65536_702
	mov	@r0,#0x00
	sjmp	00197$
00204$:
;	.\ecen4350_lcd_v4.c:2944: delay(80);
	mov	dptr,#0x0050
;	.\ecen4350_lcd_v4.c:2945: return;
;	.\ecen4350_lcd_v4.c:2946: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'check'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2948: void check() {
;	-----------------------------------------
;	 function check
;	-----------------------------------------
_check:
;	.\ecen4350_lcd_v4.c:2950: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2953: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2954: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2955: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2956: setCursor(15, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2957: LCD_string_write("[CHECK]\n");
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2958: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2959: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2960: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2961: LCD_string_write(" Enter Value:\n");
	mov	dptr,#___str_128
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2962: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2963: LCD_string_write(" __");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2965: setCursor(0,60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2966: LCD_string_write("\n ");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2967: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2968: selection = 0;
	mov	r0,#_selection
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2969: temp = keyDetect();
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:2970: write(temp);
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:2971: temp = ASCIItoHex(temp);
	mov	dpl,r7
	lcall	_ASCIItoHex
;	.\ecen4350_lcd_v4.c:2972: selection |= temp * 16;
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	r0,#_selection
	mov	a,@r0
	orl	a,r7
	mov	r0,#_selection
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2973: temp = keyDetect();
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:2974: write(temp);
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:2975: temp = ASCIItoHex(temp);
	mov	dpl,r7
	lcall	_ASCIItoHex
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:2976: selection |= temp;
	mov	r0,#_selection
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2977: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2978: LCD_string_write("\n\n Writing byte to\n all memory\n locations...");
	mov	dptr,#___str_129
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2979: writeAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_writeAllRAM
;	.\ecen4350_lcd_v4.c:2980: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2981: LCD_string_write("\n Verifying write...");
	mov	dptr,#___str_130
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2982: checkAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_checkAllRAM
;	.\ecen4350_lcd_v4.c:2983: LCD_string_write("\n Complete.");
	mov	dptr,#___str_131
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2984: setTextColor(BLUE, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x001f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:2985: LCD_string_write("\n\n Toggling bits in\n each nibble...");
	mov	dptr,#___str_132
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2986: selection = ~selection;
	mov	r0,#_selection
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2987: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2988: LCD_string_write("\n Writing new byte...");
	mov	dptr,#___str_133
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2989: writeAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_writeAllRAM
;	.\ecen4350_lcd_v4.c:2990: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2991: LCD_string_write("\n Verifying write...");
	mov	dptr,#___str_130
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2992: checkAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_checkAllRAM
;	.\ecen4350_lcd_v4.c:2993: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:2994: LCD_string_write("\n\n Check Complete.");
	mov	dptr,#___str_134
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2995: delay(120);
	mov	dptr,#0x0078
;	.\ecen4350_lcd_v4.c:2996: return;
;	.\ecen4350_lcd_v4.c:2997: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'uart'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2999: void uart() {
;	-----------------------------------------
;	 function uart
;	-----------------------------------------
_uart:
;	.\ecen4350_lcd_v4.c:3000: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3001: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3002: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3003: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3004: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3005: LCD_string_write("[UART]\n");
	mov	dptr,#___str_135
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3009: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3010: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3011: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3012: LCD_string_write(" <1> Data Rate Set\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3013: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3014: LCD_string_write(" <2> Number of Bits\n    (8 or 9 bits)\n");
	mov	dptr,#___str_137
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3015: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3016: LCD_string_write(" <3> Parity\n    (Even/Odd/None)\n");
	mov	dptr,#___str_138
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3017: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3018: LCD_string_write(" <4> Enable UART\n");
	mov	dptr,#___str_139
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3019: keyInput:
00101$:
;	.\ecen4350_lcd_v4.c:3020: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:3021: if (selection == '4') {
	cjne	r7,#0x34,00234$
	sjmp	00112$
00234$:
;	.\ecen4350_lcd_v4.c:3024: if (selection == '1') {
	cjne	r7,#0x31,00103$
;	.\ecen4350_lcd_v4.c:3025: setCursor (0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3026: LCD_string_write("  {");
	mov	dptr,#___str_140
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3027: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3028: LCD_string_write("<1> ");
	mov	dptr,#___str_141
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3029: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3030: LCD_string_write("Date Rate\n");
	mov	dptr,#___str_142
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3031: goto baudInput;	
	ljmp	00133$
00103$:
;	.\ecen4350_lcd_v4.c:3033: if (selection == '2') {
	cjne	r7,#0x32,00237$
	ret
00237$:
;	.\ecen4350_lcd_v4.c:3035: } if (selection == '3') {
	cjne	r7,#0x33,00107$
;	.\ecen4350_lcd_v4.c:3036: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
	sjmp	00112$
00107$:
;	.\ecen4350_lcd_v4.c:3038: LCD_string_write("\n\n Incorrect input\n  Try again.\n");
	mov	dptr,#___str_143
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3039: goto keyInput;
;	.\ecen4350_lcd_v4.c:3043: verifyUART:	
	sjmp	00101$
00112$:
;	.\ecen4350_lcd_v4.c:3044: if (baudSet == 0) {
	mov	r0,#_baudSet
	mov	a,@r0
	jnz	00114$
;	.\ecen4350_lcd_v4.c:3045: LCD_string_write(" ERROR: No Baud Set\n");
	mov	dptr,#___str_144
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3046: LCD_string_write(" Please set a baud rate");
	mov	dptr,#___str_145
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3047: goto keyInput;
	ljmp	00101$
00114$:
;	.\ecen4350_lcd_v4.c:3048: } if (paritySet == 0) {
	mov	r0,#_paritySet
	mov	a,@r0
	jnz	00116$
;	.\ecen4350_lcd_v4.c:3049: LCD_string_write(" ERROR: Not Parity Set\n");
	mov	dptr,#___str_146
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3050: LCD_string_write(" Please set parity");
	mov	dptr,#___str_147
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3051: goto keyInput;
	ljmp	00101$
00116$:
;	.\ecen4350_lcd_v4.c:3052: } if (baudSet == 0) {
	mov	r0,#_baudSet
	mov	a,@r0
	jnz	00122$
;	.\ecen4350_lcd_v4.c:3053: LCD_string_write(" ERROR: No Baud Set\n");
	mov	dptr,#___str_144
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3054: LCD_string_write(" Please set a baud rate");
	mov	dptr,#___str_145
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3055: goto keyInput;
	ljmp	00101$
00122$:
;	.\ecen4350_lcd_v4.c:3057: if ((baudSet == 1) && (paritySet == 1) && (baudSet == 1)) {
	mov	r0,#_baudSet
	clr	a
	cjne	@r0,#0x01,00243$
	inc	a
00243$:
	mov	r7,a
	jz	00124$
	mov	r0,#_paritySet
	cjne	@r0,#0x01,00124$
	mov	a,r7
	jz	00124$
;	.\ecen4350_lcd_v4.c:3058: LCD_string_write(" Setttings Verified\n Enabling UART...");
	mov	dptr,#___str_148
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3060: UART_en = 1;
	mov	r0,#_UART_en
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3065: keyValidation:
00124$:
;	.\ecen4350_lcd_v4.c:3066: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:3067: if (selection == '1'){
	cjne	r7,#0x31,00126$
;	.\ecen4350_lcd_v4.c:3068: setCursor(0,60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3069: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3070: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3071: LCD_string_write("<1>");
	mov	dptr,#___str_149
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3072: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3073: LCD_string_write(" Data Rate\n");
	mov	dptr,#___str_150
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3074: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3076: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3077: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3078: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3079: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3080: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3081: LCD_string_write("[UART]\n");
	mov	dptr,#___str_135
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3082: goto setRate;
	ljmp	00132$
00126$:
;	.\ecen4350_lcd_v4.c:3084: if (selection == '2') {
	cjne	r7,#0x32,00128$
;	.\ecen4350_lcd_v4.c:3085: setCursor(0,100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3086: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3087: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3088: LCD_string_write("<2>");
	mov	dptr,#___str_151
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3089: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3090: LCD_string_write(" Number of Bits\n    (8 or 9 bits)\n");
	mov	dptr,#___str_152
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3091: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3093: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3094: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3095: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3096: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3097: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3098: LCD_string_write("[UART]\n");
	mov	dptr,#___str_135
	mov	b,#0x80
;	.\ecen4350_lcd_v4.c:3099: goto setBit;
	ljmp	_LCD_string_write
00128$:
;	.\ecen4350_lcd_v4.c:3101: if (selection == '3') {
	cjne	r7,#0x33,00253$
	sjmp	00254$
00253$:
	ljmp	00124$
00254$:
;	.\ecen4350_lcd_v4.c:3102: setCursor(0,140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3103: LCD_string_write(" ");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3104: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3105: LCD_string_write("<3>");
	mov	dptr,#___str_153
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3106: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3107: LCD_string_write(" Parity\n    (Even/Odd/None)\n");
	mov	dptr,#___str_154
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3108: delay(30);
	mov	dptr,#0x001e
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3110: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3111: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3112: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3113: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3114: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3115: LCD_string_write("[UART]\n");
	mov	dptr,#___str_135
	mov	b,#0x80
;	.\ecen4350_lcd_v4.c:3116: goto setParity;
	ljmp	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3121: setRate: 
00132$:
;	.\ecen4350_lcd_v4.c:3122: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3123: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3124: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3125: LCD_string_write(" <1> 1200 Baud\n");
	mov	dptr,#___str_155
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3126: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3127: LCD_string_write(" <2> 2400 Baud\n");
	mov	dptr,#___str_156
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3128: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3129: LCD_string_write(" <3> 4800 Baud\n");
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3130: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3131: LCD_string_write(" <4> 9600 Baud\n");
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3132: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3133: LCD_string_write(" <5> 19200 Baud\n");
	mov	dptr,#___str_159
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3134: baudInput:
00133$:
;	.\ecen4350_lcd_v4.c:3135: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:3136: if (selection == '1' ) {
	cjne	r7,#0x31,00135$
;	.\ecen4350_lcd_v4.c:3137: TH1 = 0xE6;
	mov	_TH1,#0xe6
;	.\ecen4350_lcd_v4.c:3138: PCON = 0x00; //SMOD = 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3139: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
00135$:
;	.\ecen4350_lcd_v4.c:3141: if (selection == '2' ) {
	cjne	r7,#0x32,00137$
;	.\ecen4350_lcd_v4.c:3142: TH1 = 0xF3;
	mov	_TH1,#0xf3
;	.\ecen4350_lcd_v4.c:3143: PCON = 0x00; //SMOD = 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3144: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
00137$:
;	.\ecen4350_lcd_v4.c:3146: if (selection == '3' ) {
	cjne	r7,#0x33,00139$
;	.\ecen4350_lcd_v4.c:3147: TH1 = 0xF3;
	mov	_TH1,#0xf3
;	.\ecen4350_lcd_v4.c:3148: PCON = 0x80; //SMOD 1
	mov	_PCON,#0x80
;	.\ecen4350_lcd_v4.c:3149: baudSet = 1; 
	mov	r0,#_baudSet
	mov	@r0,#0x01
00139$:
;	.\ecen4350_lcd_v4.c:3151: if (selection == '4' ) {
	cjne	r7,#0x34,00141$
;	.\ecen4350_lcd_v4.c:3152: TH1 = 0xFD;
	mov	_TH1,#0xfd
;	.\ecen4350_lcd_v4.c:3153: PCON = 0x00; //SMOD 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3154: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
00141$:
;	.\ecen4350_lcd_v4.c:3156: if (selection == '5' ) {
	cjne	r7,#0x35,00133$
;	.\ecen4350_lcd_v4.c:3157: TH1 = 0xFD;	
	mov	_TH1,#0xfd
;	.\ecen4350_lcd_v4.c:3158: PCON = 0x80; //SMOD 1
	mov	_PCON,#0x80
;	.\ecen4350_lcd_v4.c:3159: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3167: finish:
;	.\ecen4350_lcd_v4.c:3168: return;
;	.\ecen4350_lcd_v4.c:3169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__1310720181              Allocated to registers 
;__1310720182              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720184              Allocated to registers 
;__1310720185              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720187              Allocated to registers 
;__1310720188              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720190              Allocated to registers 
;__1310720191              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080193              Allocated to registers 
;__1966080194              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440196              Allocated to registers 
;__2621440197              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440199              Allocated to registers 
;__2621440200              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440202              Allocated to registers 
;__2621440203              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440205              Allocated to registers 
;__2621440206              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440208              Allocated to registers 
;__2621440209              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440211              Allocated to registers 
;__2621440212              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440214              Allocated to registers 
;__2621440215              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440217              Allocated to registers 
;__2621440218              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440220              Allocated to registers 
;__2621440221              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440223              Allocated to registers 
;__2621440224              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440226              Allocated to registers 
;__2621440227              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440229              Allocated to registers 
;__2621440230              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__3276800232              Allocated to registers 
;__3276800233              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__3276800235              Allocated to registers 
;__3276800236              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__3276800238              Allocated to registers 
;__3276800239              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__3276800241              Allocated to registers 
;__3276800242              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;validKey                  Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:3173: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\ecen4350_lcd_v4.c:3174: __idata unsigned char validKey = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:3176: delay(10);
	mov	dptr,#0x000a
	push	ar7
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3177: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3178: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3179: CD = 0;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:3180: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3181: rtcInit();							// RTC init
	lcall	_rtcInit
;	.\ecen4350_lcd_v4.c:3183: TFT_LCD_INIT();						// LCD init
	lcall	_TFT_LCD_INIT
;	.\ecen4350_lcd_v4.c:3184: iowrite8(seg7_address, SEG_H);		// [H]
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x89
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3185: delay(40);							
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3186: iowrite8(seg7_address, 0b01111011); // [i.]
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x7b
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3187: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3188: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3189: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3190: seg7Test();
	lcall	_seg7Test
;	.\ecen4350_lcd_v4.c:3192: writeSomeLines();					// LCD Power On Self-Test and Welcome message
	lcall	_writeSomeLines
;	.\ecen4350_lcd_v4.c:3194: clearLCD();							// set LCD background
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3195: setColorDefault();	// set text color
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3196: setCursor(30, 120);				
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x001e
	lcall	_setCursor
	pop	ar7
;	.\ecen4350_lcd_v4.c:3202: UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3205: loop:
00101$:
;	.\ecen4350_lcd_v4.c:3206: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3207: clearLCD();
	push	ar7
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3208: setCursor(30, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3209: setTextSize(3);
	mov	dpl,#0x03
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3210: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:3211: rtcPrint();
	lcall	_rtcPrint
;	.\ecen4350_lcd_v4.c:3212: printMenu();
	lcall	_printMenu
	pop	ar7
;	.\ecen4350_lcd_v4.c:3213: inputKey:
00102$:
;	.\ecen4350_lcd_v4.c:3214: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:3215: if (selection == 'D') {
	cjne	r6,#0x44,00106$
;	.\ecen4350_lcd_v4.c:3216: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3217: setCursor(10,60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3218: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3219: LCD_string_write("<D>");
	mov	dptr,#___str_160
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3220: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3221: LCD_string_write(" DUMP\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3222: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3223: iowrite8(seg7_address, SEG_D);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xa1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3224: if (validKey == 0) {
	mov	a,r7
	jnz	00104$
;	.\ecen4350_lcd_v4.c:3225: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3226: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3227: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:3229: dump();
	push	ar7
	lcall	_dump
	pop	ar7
;	.\ecen4350_lcd_v4.c:3230: goto loop;
	ljmp	00101$
00106$:
;	.\ecen4350_lcd_v4.c:3231: } if(selection == 'B') {
	cjne	r6,#0x42,00110$
;	.\ecen4350_lcd_v4.c:3232: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3233: setCursor(130, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0082
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3234: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3235: LCD_string_write("<B>");
	mov	dptr,#___str_162
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3236: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3237: LCD_string_write(" MOVE\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3238: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3239: iowrite8(seg7_address, SEG_B);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x83
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3240: if (validKey == 0) {
	mov	a,r7
	jnz	00108$
;	.\ecen4350_lcd_v4.c:3241: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3242: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3243: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
00108$:
;	.\ecen4350_lcd_v4.c:3245: move();
	push	ar7
	lcall	_move
	pop	ar7
;	.\ecen4350_lcd_v4.c:3246: goto loop;
	ljmp	00101$
00110$:
;	.\ecen4350_lcd_v4.c:3247: } if(selection == 'E') {
	cjne	r6,#0x45,00114$
;	.\ecen4350_lcd_v4.c:3248: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3249: setCursor(10, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3250: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3251: LCD_string_write("<E>");
	mov	dptr,#___str_163
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3252: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3253: LCD_string_write(" EDIT\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3254: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3255: iowrite8(seg7_address, SEG_E);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x86
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3256: if (validKey == 0) {
	mov	a,r7
	jnz	00112$
;	.\ecen4350_lcd_v4.c:3257: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3258: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3259: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
00112$:
;	.\ecen4350_lcd_v4.c:3261: edit();
	push	ar7
	lcall	_edit
	pop	ar7
;	.\ecen4350_lcd_v4.c:3262: goto loop;
	ljmp	00101$
00114$:
;	.\ecen4350_lcd_v4.c:3263: } if(selection == 'F') {
	cjne	r6,#0x46,00118$
;	.\ecen4350_lcd_v4.c:3264: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3265: setCursor(130, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0082
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3266: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3267: LCD_string_write("<F>");
	mov	dptr,#___str_164
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3268: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3269: LCD_string_write(" FIND\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3270: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3271: iowrite8(seg7_address, SEG_F);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3272: if (validKey == 0) {
	mov	a,r7
	jnz	00116$
;	.\ecen4350_lcd_v4.c:3273: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3274: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3275: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
00116$:
;	.\ecen4350_lcd_v4.c:3277: find();
	push	ar7
	lcall	_find
	pop	ar7
;	.\ecen4350_lcd_v4.c:3278: goto loop;
	ljmp	00101$
00118$:
;	.\ecen4350_lcd_v4.c:3279: } if(selection == 'C') {
	cjne	r6,#0x43,00122$
;	.\ecen4350_lcd_v4.c:3280: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3281: setCursor(10, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3282: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3283: LCD_string_write("<C>");
	mov	dptr,#___str_165
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3284: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3285: LCD_string_write(" COUNT\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3286: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3287: iowrite8(seg7_address, SEG_C);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xc6
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3288: if (validKey == 0) {
	mov	a,r7
	jnz	00120$
;	.\ecen4350_lcd_v4.c:3289: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3290: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3291: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
00120$:
;	.\ecen4350_lcd_v4.c:3293: count();
	push	ar7
	lcall	_count
	pop	ar7
;	.\ecen4350_lcd_v4.c:3294: goto loop;
	ljmp	00101$
00122$:
;	.\ecen4350_lcd_v4.c:3295: } if(selection == 'A') {
	cjne	r6,#0x41,00126$
;	.\ecen4350_lcd_v4.c:3296: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3297: setCursor(10, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3298: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3299: LCD_string_write("<A>");
	mov	dptr,#___str_166
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3300: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3301: LCD_string_write(" MEM CHECK\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3302: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3303: iowrite8(seg7_address, SEG_A);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0x88
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3304: if (validKey == 0) {
	mov	a,r7
	jnz	00124$
;	.\ecen4350_lcd_v4.c:3305: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3306: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3307: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
00124$:
;	.\ecen4350_lcd_v4.c:3309: check();
	push	ar7
	lcall	_check
	pop	ar7
;	.\ecen4350_lcd_v4.c:3310: goto loop;
	ljmp	00101$
00126$:
;	.\ecen4350_lcd_v4.c:3311: } if(selection == '1') {
	cjne	r6,#0x31,00253$
	sjmp	00254$
00253$:
	ljmp	00135$
00254$:
;	.\ecen4350_lcd_v4.c:3312: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00132$
;	.\ecen4350_lcd_v4.c:3313: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3314: setCursor(10, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3315: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3316: LCD_string_write("<1>");
	mov	dptr,#___str_149
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3317: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3318: LCD_string_write(" UART [Enabled]\n");
	mov	dptr,#___str_167
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3319: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3320: iowrite8(seg7_address, SEG_U);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xc1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3321: if (validKey == 0) {
	mov	a,r7
	jz	00257$
	ljmp	00133$
00257$:
;	.\ecen4350_lcd_v4.c:3322: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3323: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3324: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
	sjmp	00133$
00132$:
;	.\ecen4350_lcd_v4.c:3327: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3328: setCursor(10, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3329: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3330: LCD_string_write("<1>");
	mov	dptr,#___str_149
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3331: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3332: LCD_string_write(" UART [Disabled]\n");
	mov	dptr,#___str_168
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3333: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3334: iowrite8(seg7_address, SEG_U);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:93: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:94: *map_address = d;
	mov	a,#0xc1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:95: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3335: if (validKey == 0) {
	mov	a,r7
	jnz	00133$
;	.\ecen4350_lcd_v4.c:3336: setColorDefault();
	push	ar7
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3337: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3338: LCD_string_write("          ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
00133$:
;	.\ecen4350_lcd_v4.c:3341: uart();
	push	ar7
	lcall	_uart
	pop	ar7
;	.\ecen4350_lcd_v4.c:3342: goto loop;
	ljmp	00101$
00135$:
;	.\ecen4350_lcd_v4.c:3344: setCursor(45, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x002d
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3345: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3346: LCD_string_write("INVALID INPUT\n");
	mov	dptr,#___str_169
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3347: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3348: LCD_string_write("Try again.");
	mov	dptr,#___str_170
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3349: validKey = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3350: delay(20);
	mov	dptr,#0x0014
	push	ar7
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3351: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3352: setCursor(45, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x002d
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3353: LCD_string_write("               \n");
	mov	dptr,#___str_171
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:3354: goto inputKey;
;	.\ecen4350_lcd_v4.c:3357: }
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_font:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x5b	; 91
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x6b	; 107	'k'
	.db #0x4f	; 79	'O'
	.db #0x6b	; 107	'k'
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x57	; 87	'W'
	.db #0x7d	; 125
	.db #0x57	; 87	'W'
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x5e	; 94
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xc3	; 195
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xdb	; 219
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x3a	; 58
	.db #0x06	; 6
	.db #0x0e	; 14
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x79	; 121	'y'
	.db #0x29	; 41
	.db #0x26	; 38
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x05	; 5
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x5a	; 90	'Z'
	.db #0x3c	; 60
	.db #0xe7	; 231
	.db #0x3c	; 60
	.db #0x5a	; 90	'Z'
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x5f	; 95
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x5f	; 95
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x89	; 137
	.db #0x95	; 149
	.db #0x6a	; 106	'j'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x94	; 148
	.db #0xa2	; 162
	.db #0xff	; 255
	.db #0xa2	; 162
	.db #0x94	; 148
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x7e	; 126
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x7e	; 126
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1e	; 30
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x3e	; 62
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x06	; 6
	.db #0x0e	; 14
	.db #0x3e	; 62
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x56	; 86	'V'
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x4d	; 77	'M'
	.db #0x33	; 51	'3'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x59	; 89	'Y'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x5d	; 93
	.db #0x59	; 89	'Y'
	.db #0x4e	; 78	'N'
	.db #0x7c	; 124
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x73	; 115	's'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x26	; 38
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x61	; 97	'a'
	.db #0x59	; 89	'Y'
	.db #0x49	; 73	'I'
	.db #0x4d	; 77	'M'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x18	; 24
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0x9c	; 156
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0xfc	; 252
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x36	; 54	'6'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3c	; 60
	.db #0x26	; 38
	.db #0x23	; 35
	.db #0x26	; 38
	.db #0x3c	; 60
	.db #0x1e	; 30
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0x61	; 97	'a'
	.db #0x12	; 18
	.db #0x3a	; 58
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7a	; 122	'z'
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x59	; 89	'Y'
	.db #0x21	; 33
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x79	; 121	'y'
	.db #0x40	; 64
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x52	; 82	'R'
	.db #0x72	; 114	'r'
	.db #0x12	; 18
	.db #0x39	; 57	'9'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x59	; 89	'Y'
	.db #0x39	; 57	'9'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x59	; 89	'Y'
	.db #0x39	; 57	'9'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x7c	; 124
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x45	; 69	'E'
	.db #0x7d	; 125
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x45	; 69	'E'
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x7d	; 125
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7d	; 125
	.db #0xf0	; 240
	.db #0x28	; 40
	.db #0x25	; 37
	.db #0x28	; 40
	.db #0xf0	; 240
	.db #0x7c	; 124
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x7c	; 124
	.db #0x54	; 84	'T'
	.db #0x7c	; 124
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x3a	; 58
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3a	; 58
	.db #0x32	; 50	'2'
	.db #0x4a	; 74	'J'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x3a	; 58
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x7a	; 122	'z'
	.db #0x3a	; 58
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x9d	; 157
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x7d	; 125
	.db #0x3d	; 61
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3d	; 61
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0xff	; 255
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x48	; 72	'H'
	.db #0x7e	; 126
	.db #0x49	; 73	'I'
	.db #0x43	; 67	'C'
	.db #0x66	; 102	'f'
	.db #0x2b	; 43
	.db #0x2f	; 47
	.db #0xfc	; 252
	.db #0x2f	; 47
	.db #0x2b	; 43
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x29	; 41
	.db #0xf6	; 246
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x88	; 136
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x41	; 65	'A'
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x4a	; 74	'J'
	.db #0x32	; 50	'2'
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x7a	; 122	'z'
	.db #0x00	; 0
	.db #0x7a	; 122	'z'
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x72	; 114	'r'
	.db #0x7d	; 125
	.db #0x0d	; 13
	.db #0x19	; 25
	.db #0x31	; 49	'1'
	.db #0x7d	; 125
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x2f	; 47
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x26	; 38
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x4d	; 77	'M'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0xc8	; 200
	.db #0xac	; 172
	.db #0xba	; 186
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x34	; 52	'4'
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7b	; 123
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x2a	; 42
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x2a	; 42
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xf4	; 244
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x10	; 16
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x04	; 4
	.db #0xf4	; 244
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0xfc	; 252
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x34	; 52	'4'
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x63	; 99	'c'
	.db #0x55	; 85	'U'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x63	; 99	'c'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x20	; 32
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x99	; 153
	.db #0xa5	; 165
	.db #0xe7	; 231
	.db #0xa5	; 165
	.db #0x99	; 153
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x49	; 73	'I'
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x4c	; 76	'L'
	.db #0x72	; 114	'r'
	.db #0x01	; 1
	.db #0x72	; 114	'r'
	.db #0x4c	; 76	'L'
	.db #0x30	; 48	'0'
	.db #0x4a	; 74	'J'
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0xbc	; 188
	.db #0x62	; 98	'b'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7e	; 126
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x5f	; 95
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x51	; 81	'Q'
	.db #0x4a	; 74	'J'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x4a	; 74	'J'
	.db #0x51	; 81	'Q'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x6b	; 107	'k'
	.db #0x6b	; 107	'k'
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x12	; 18
	.db #0x36	; 54	'6'
	.db #0x24	; 36
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x1d	; 29
	.db #0x17	; 23
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_keypad:
	.db #0x31	; 49	'1'
	.db #0x34	; 52	'4'
	.db #0x37	; 55	'7'
	.db #0x46	; 70	'F'
	.db #0x32	; 50	'2'
	.db #0x35	; 53	'5'
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x36	; 54	'6'
	.db #0x39	; 57	'9'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.area CONST   (CODE)
___str_0:
	.ascii "ERROR FOUND At: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Free Type: "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Welcome"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.ascii " Tyler Zoucha"
	.db 0x0a
	.ascii "  ECEN-4350"
	.db 0x0a
	.ascii "  Fall 2021"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "<Menu>"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii " <D>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii " DUMP"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii " <B>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii " MOVE"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii " <E>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii " EDIT"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii " <F>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii " FIND"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii " <C>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii " COUNT"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii " <A>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii " MEM CHECK"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii " <1>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii " UART [Disabled]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii " UART [Enabled]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "[DUMP]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii " Address Location:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii " 0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii " Choose Block Type:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "  <1> BYTE"
	.db 0x0a
	.ascii "  <2> WORD"
	.db 0x0a
	.ascii "  <4> DWORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii " Input Size:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii " _"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii " Address Location:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii " Choose Block Type:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "<1> BYTE"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x0a
	.db 0x0a
	.ascii "                "
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "<2> WORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.ascii "                "
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "<4> DWORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.ascii "  Input Error"
	.db 0x0a
	.ascii "  Try Again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii " Input Size: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii " Mismatch Error"
	.db 0x0a
	.ascii " Try Again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii " Match Confirmed"
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii " Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii " 0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii " Hex Data:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii " ASCII Data:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii " Data Type:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii " BYTE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii " WORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii " DWORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii " <0> Exit"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "<0> Exit"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "[MOVE]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii " Source Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii " Destination:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii " Move Complete"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii "[EDIT]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.ascii " Edit Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.ascii " Location Contents:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.ascii " __"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.ascii " Enter New Value:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii " Choose Next Action:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.ascii "  <1> Next Address"
	.db 0x0a
	.ascii "  <2> New Address"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "  <0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.ascii " Enter New Value:"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii "<1> Next Address"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.db 0x0a
	.db 0x0a
	.ascii "               "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.db 0x0a
	.ascii " __"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.db 0x0a
	.ascii "  <1> Next Address"
	.db 0x0a
	.ascii "  <2> New Address"
	.db 0x0a
	.ascii "  <0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.ascii " Choose Next Action:"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii "<2> New Address"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.db 0x0a
	.ascii "               "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii " Edit Address"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.ascii "<0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_78:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii " Input Error "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_79:
	.ascii "[FIND]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_80:
	.ascii " Find Value:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_81:
	.ascii " Search Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_82:
	.ascii " Input Block Size:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_83:
	.ascii "  <01> BYTE"
	.db 0x0a
	.ascii "  <02> WORD"
	.db 0x0a
	.ascii "  <04> DWORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_84:
	.ascii "  <FF> (SCAN)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_85:
	.ascii "   __"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_86:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_87:
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_88:
	.db 0x0a
	.ascii " Try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_89:
	.ascii "<01> BYTE"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_90:
	.ascii "  <02> WORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_91:
	.ascii "  <04> DWORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_92:
	.db 0x0a
	.ascii " Search Size Limit:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_93:
	.db 0x0a
	.ascii " BYTE [8 bits]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_94:
	.ascii "  <01> BYTE"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_95:
	.ascii "<02> WORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_96:
	.db 0x0a
	.ascii " WORD [16 bits]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_97:
	.ascii "  <01> BYTE"
	.db 0x0a
	.ascii "  <02> WORD"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_98:
	.ascii "<04> DWORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_99:
	.db 0x0a
	.ascii " DWORD [32 bits]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_100:
	.ascii "<04> DWORD"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_101:
	.ascii "<FF> (SCAN)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_102:
	.db 0x0a
	.ascii " [256 Blocks]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_103:
	.ascii " [Non-Interactive]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_104:
	.ascii " Search Value:"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_105:
	.ascii " Found at Location:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_106:
	.db 0x0a
	.ascii " 0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_107:
	.ascii " [Interactive]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_108:
	.ascii " Found at Location "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_109:
	.ascii "Page: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_110:
	.ascii " <1> Next"
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii "              "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_111:
	.ascii "<1> Next"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_112:
	.ascii "          "
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii "              "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_113:
	.ascii "          "
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii " <2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_114:
	.db 0x0a
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_115:
	.ascii "<2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_116:
	.ascii " <1> Next"
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii " <2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_117:
	.ascii " <1> Next"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_118:
	.db 0x0a
	.ascii " <2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_119:
	.ascii " Value Not Found"
	.db 0x0a
	.ascii " Within Block"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_120:
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_121:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_122:
	.ascii "[COUNT]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_123:
	.ascii " Search Value:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_124:
	.ascii " Found in"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_125:
	.ascii " Bytes (Hex)"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_126:
	.ascii "Count: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_127:
	.ascii "[CHECK]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_128:
	.ascii " Enter Value:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_129:
	.db 0x0a
	.db 0x0a
	.ascii " Writing byte to"
	.db 0x0a
	.ascii " all memory"
	.db 0x0a
	.ascii " locations..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_130:
	.db 0x0a
	.ascii " Verifying write..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_131:
	.db 0x0a
	.ascii " Complete."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_132:
	.db 0x0a
	.db 0x0a
	.ascii " Toggling bits in"
	.db 0x0a
	.ascii " each nibble..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_133:
	.db 0x0a
	.ascii " Writing new byte..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_134:
	.db 0x0a
	.db 0x0a
	.ascii " Check Complete."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_135:
	.ascii "[UART]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_136:
	.ascii " <1> Data Rate Set"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_137:
	.ascii " <2> Number of Bits"
	.db 0x0a
	.ascii "    (8 or 9 bits)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_138:
	.ascii " <3> Parity"
	.db 0x0a
	.ascii "    (Even/Odd/None)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_139:
	.ascii " <4> Enable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_140:
	.ascii "  {"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_141:
	.ascii "<1> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_142:
	.ascii "Date Rate"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_143:
	.db 0x0a
	.db 0x0a
	.ascii " Incorrect input"
	.db 0x0a
	.ascii "  Try again."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_144:
	.ascii " ERROR: No Baud Set"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_145:
	.ascii " Please set a baud rate"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_146:
	.ascii " ERROR: Not Parity Set"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_147:
	.ascii " Please set parity"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_148:
	.ascii " Setttings Verified"
	.db 0x0a
	.ascii " Enabling UART..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_149:
	.ascii "<1>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_150:
	.ascii " Data Rate"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_151:
	.ascii "<2>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_152:
	.ascii " Number of Bits"
	.db 0x0a
	.ascii "    (8 or 9 bits)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_153:
	.ascii "<3>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_154:
	.ascii " Parity"
	.db 0x0a
	.ascii "    (Even/Odd/None)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_155:
	.ascii " <1> 1200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_156:
	.ascii " <2> 2400 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_157:
	.ascii " <3> 4800 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_158:
	.ascii " <4> 9600 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_159:
	.ascii " <5> 19200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_160:
	.ascii "<D>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_161:
	.ascii "          "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_162:
	.ascii "<B>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_163:
	.ascii "<E>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_164:
	.ascii "<F>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_165:
	.ascii "<C>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_166:
	.ascii "<A>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_167:
	.ascii " UART [Enabled]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_168:
	.ascii " UART [Disabled]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_169:
	.ascii "INVALID INPUT"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_170:
	.ascii "Try again."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_171:
	.ascii "               "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
