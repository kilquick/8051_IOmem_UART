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
	.globl _parityBit
	.globl _paritySet
	.globl _bitMode
	.globl _bitSet
	.globl _baudRate
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
_rtcPrint_printval_65536_226:
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
_drawCircle_x0_65536_393:
	.ds 2
_drawCircle_f_65536_394:
	.ds 2
_drawCircle_ddF_x_65536_394:
	.ds 2
_drawCircle_x_65536_394:
	.ds 2
_testCircles_PARM_2:
	.ds 2
_testCircles_w_65536_398:
	.ds 2
_testCircles_h_65536_398:
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
_drawChar_x_65536_458:
	.ds 2
_drawChar_i_131072_461:
	.ds 1
_drawChar_line_196608_462:
	.ds 1
_drawChar_sloc0_1_0:
	.ds 2
_asciiToHex_store_65536_519:
	.ds 2
_dump_d_65536_553:
	.ds 2
_dump_sloc0_1_0:
	.ds 1
_move_d_65536_609:
	.ds 2
_move_i_131072_618:
	.ds 2
_edit_d_65536_628:
	.ds 2
_find_i_262144_665:
	.ds 2
_find_sloc0_1_0:
	.ds 1
_find_sloc1_1_0:
	.ds 2
_count_i_262144_721:
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
_baudRate::
	.ds 2
_bitSet::
	.ds 1
_bitMode::
	.ds 1
_paritySet::
	.ds 1
_parityBit::
	.ds 1
_dump_address_65536_553:
	.ds 2
_dump_exit_65536_553:
	.ds 1
_move_sourceAddress_65536_609:
	.ds 2
_move_invalidSize_65536_609:
	.ds 1
_edit_exit_65536_628:
	.ds 1
_edit_invalid_65536_628:
	.ds 1
_find_address_65536_652:
	.ds 2
_find_blockSize_65536_652:
	.ds 1
_find_value_65536_652:
	.ds 1
_find_scan_65536_652:
	.ds 1
_find_noneFound_65536_652:
	.ds 1
_find_exit_65536_652:
	.ds 1
_count_address_65536_708:
	.ds 2
_count_blockSize_65536_708:
	.ds 1
_count_value_65536_708:
	.ds 1
_count_scan_65536_708:
	.ds 1
_count_noneFound_65536_708:
	.ds 1
_count_exit_65536_708:
	.ds 1
_uart_baudType_65536_763:
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
;	.\ecen4350_lcd_v4.c:41: __xdata unsigned char *lcd_address = (unsigned char __xdata *)__LCD_ADDRESS__;			//LCD address pointer
	mov	_lcd_address,#0x00
	mov	(_lcd_address + 1),#0x40
;	.\ecen4350_lcd_v4.c:42: __xdata unsigned char *seg7_address = (unsigned char __xdata *)__SEG_7_ADDRESS__;		//7segment address poitner
	mov	_seg7_address,#0x00
	mov	(_seg7_address + 1),#0x80
;	.\ecen4350_lcd_v4.c:44: volatile unsigned char received_byte = 0;
	mov	_received_byte,#0x00
;	.\ecen4350_lcd_v4.c:45: volatile unsigned char received_flag = 0;
	mov	_received_flag,#0x00
;	.\ecen4350_lcd_v4.c:48: __idata unsigned char UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:49: __idata unsigned char baudSet = 0;
	mov	r0,#_baudSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:51: __idata unsigned char bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:53: __idata unsigned char paritySet = 0;
	mov	r0,#_paritySet
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
;	.\ecen4350_lcd_v4.c:90: inline void iowrite8(unsigned char __xdata *map_address, unsigned char d) {
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
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,_iowrite8_PARM_2
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ioread8'
;------------------------------------------------------------
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:96: inline unsigned char ioread8(unsigned char __xdata *map_address)
;	-----------------------------------------
;	 function ioread8
;	-----------------------------------------
_ioread8:
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:102: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramWrite8'
;------------------------------------------------------------
;d                         Allocated with name '_ramWrite8_PARM_2'
;map_address               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:105: inline void ramWrite8(unsigned char __xdata *map_address, unsigned char d)
;	-----------------------------------------
;	 function ramWrite8
;	-----------------------------------------
_ramWrite8:
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:108: *map_address = d;
	mov	a,_ramWrite8_PARM_2
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:109: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramRead8'
;------------------------------------------------------------
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:112: inline unsigned char ramRead8(unsigned char __xdata *map_address)
;	-----------------------------------------
;	 function ramRead8
;	-----------------------------------------
_ramRead8:
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:118: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeAllRAM'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;i                         Allocated to registers r3 r4 r5 r6 
;ram_address               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:121: void writeAllRAM(unsigned char d)
;	-----------------------------------------
;	 function writeAllRAM
;	-----------------------------------------
_writeAllRAM:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:126: for (i = (long) __START_RAM__; i <= (long) __END_RAM__; i++)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
00102$:
;	.\ecen4350_lcd_v4.c:128: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:129: ram_address = (unsigned char __xdata *)(i);
	mov	dpl,r3
	mov	dph,r4
;	.\ecen4350_lcd_v4.c:130: *ram_address = d;
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:126: for (i = (long) __START_RAM__; i <= (long) __END_RAM__; i++)
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
;	.\ecen4350_lcd_v4.c:133: }
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
;	.\ecen4350_lcd_v4.c:135: void checkAllRAM(unsigned char d)
;	-----------------------------------------
;	 function checkAllRAM
;	-----------------------------------------
_checkAllRAM:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:138: for (unsigned long i =(long) __START_RAM__; i<=(long)__END_RAM__; i++) {
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
;	.\ecen4350_lcd_v4.c:139: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:140: ram_address = (unsigned char __xdata *)(i);
	mov	dpl,r3
	mov	dph,r4
;	.\ecen4350_lcd_v4.c:142: if(d != *ram_address) {
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	cjne	a,ar2,00125$
	sjmp	00102$
00125$:
;	.\ecen4350_lcd_v4.c:143: iowrite8(seg7_address, SEG_F);	// Write F to 7-segment; RAM test fail
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:144: setCursor(0,0);
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
;	.\ecen4350_lcd_v4.c:145: LCD_string_write("ERROR FOUND At: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:146: print16Hex(i);
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:147: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:149: iowrite8(seg7_address, SEG_P);		// Write A to 7-segment
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x8c
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:150: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:138: for (unsigned long i =(long) __START_RAM__; i<=(long)__END_RAM__; i++) {
	inc	r3
	cjne	r3,#0x00,00126$
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
	cjne	r5,#0x00,00126$
	inc	r6
00126$:
;	.\ecen4350_lcd_v4.c:152: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:154: void delay(int d) /// x 1ms
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:157: for (i = 0; i < d; i++) /// this is For(); loop delay used to define delay value input Embedded C
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
;	.\ecen4350_lcd_v4.c:159: for (j = 0; j < 1000; j++);
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
;	.\ecen4350_lcd_v4.c:157: for (i = 0; i < d; i++) /// this is For(); loop delay used to define delay value input Embedded C
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	.\ecen4350_lcd_v4.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:163: void UART_Init(){
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	.\ecen4350_lcd_v4.c:169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_transmit'
;------------------------------------------------------------
;byte                      Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:172: void UART_transmit(unsigned char byte){
;	-----------------------------------------
;	 function UART_transmit
;	-----------------------------------------
_UART_transmit:
	mov	_SBUF,dpl
;	.\ecen4350_lcd_v4.c:174: while(TI == 1);
00101$:
	jb	_TI,00101$
;	.\ecen4350_lcd_v4.c:175: TI = 0;
;	assignBit
	clr	_TI
;	.\ecen4350_lcd_v4.c:176: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_receive'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:178: void ISR_receive() __interrupt (4) {
;	-----------------------------------------
;	 function ISR_receive
;	-----------------------------------------
_ISR_receive:
;	.\ecen4350_lcd_v4.c:179: if (RI == 1){
	jnb	_RI,00103$
;	.\ecen4350_lcd_v4.c:180: received_byte = SBUF;
	mov	_received_byte,_SBUF
;	.\ecen4350_lcd_v4.c:181: RI = 0;
;	assignBit
	clr	_RI
;	.\ecen4350_lcd_v4.c:182: received_flag= 1;
	mov	_received_flag,#0x01
00103$:
;	.\ecen4350_lcd_v4.c:184: }
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
;	.\ecen4350_lcd_v4.c:186: void writeRegister8(u8 address, u8 d)
;	-----------------------------------------
;	 function writeRegister8
;	-----------------------------------------
_writeRegister8:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:189: CD = __CMD__;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:190: write8(address);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:191: CD = __DATA__;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:192: write8(d);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_writeRegister8_PARM_2
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:194: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegister16'
;------------------------------------------------------------
;d                         Allocated with name '_writeRegister16_PARM_2'
;address                   Allocated to registers r6 r7 
;hi                        Allocated to registers r6 r7 
;lo                        Allocated to registers r4 r5 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:196: void writeRegister16(u16 address, u16 d)
;	-----------------------------------------
;	 function writeRegister16
;	-----------------------------------------
_writeRegister16:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:199: hi = (address) >> 8;
	mov	ar4,r7
;	.\ecen4350_lcd_v4.c:200: lo = (address);
;	.\ecen4350_lcd_v4.c:203: write8Reg(hi);
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
;	.\ecen4350_lcd_v4.c:204: write8Reg(lo);
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
;	.\ecen4350_lcd_v4.c:205: hi = (d) >> 8;
	mov	r6,(_writeRegister16_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:206: lo = (d);
	mov	r4,_writeRegister16_PARM_2
;	.\ecen4350_lcd_v4.c:207: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:208: write8Data(hi);
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
;	.\ecen4350_lcd_v4.c:209: write8Data(lo);
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
;	.\ecen4350_lcd_v4.c:211: }
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
;	.\ecen4350_lcd_v4.c:213: void seg7Test(void)
;	-----------------------------------------
;	 function seg7Test
;	-----------------------------------------
_seg7Test:
;	.\ecen4350_lcd_v4.c:215: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:216: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:217: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:218: iowrite8(seg7_address, ZERO);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xc0
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:219: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:220: iowrite8(seg7_address, ONE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xf9
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:221: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:222: iowrite8(seg7_address, TWO);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xa4
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:223: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:224: iowrite8(seg7_address, THREE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xb0
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:225: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:226: iowrite8(seg7_address, FOUR);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x99
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:227: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:228: iowrite8(seg7_address, FIVE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x92
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:229: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:230: iowrite8(seg7_address, SIX);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x82
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:231: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:232: iowrite8(seg7_address, SEVEN);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xf8
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:233: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:234: iowrite8(seg7_address, EIGHT);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x80
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:235: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:236: iowrite8(seg7_address, NINE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x98
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:237: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:238: iowrite8(seg7_address, SEG_A);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x88
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:239: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:240: iowrite8(seg7_address, SEG_B);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x83
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:241: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:242: iowrite8(seg7_address, SEG_C);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xc6
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:243: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:244: iowrite8(seg7_address, SEG_D);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xa1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:245: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:246: iowrite8(seg7_address, SEG_E);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x86
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:247: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:248: iowrite8(seg7_address, SEG_F);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:249: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:250: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:251: delay(4);
	mov	dptr,#0x0004
;	.\ecen4350_lcd_v4.c:252: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcInit'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:255: void rtcInit(void)
;	-----------------------------------------
;	 function rtcInit
;	-----------------------------------------
_rtcInit:
;	.\ecen4350_lcd_v4.c:259: rtcCmd(__REG_F__, __HR_24__ | __STOP__ | __RESET__); // stop and reset
	mov	_rtcCmd_PARM_2,#0x07
	mov	dptr,#0x000f
	lcall	_rtcCmd
;	.\ecen4350_lcd_v4.c:262: for (i = __S1_REG__; i < __REG_D__; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	.\ecen4350_lcd_v4.c:264: rtcWrite(i, 0x00);
	mov	_rtcWrite_PARM_2,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_rtcWrite
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:262: for (i = __S1_REG__; i < __REG_D__; i++)
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
;	.\ecen4350_lcd_v4.c:267: rtcCmd(__REG_F__, __HR_24__);
	mov	_rtcCmd_PARM_2,#0x04
	mov	dptr,#0x000f
;	.\ecen4350_lcd_v4.c:268: }
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
;	.\ecen4350_lcd_v4.c:270: void rtcBusy(void)
;	-----------------------------------------
;	 function rtcBusy
;	-----------------------------------------
_rtcBusy:
;	.\ecen4350_lcd_v4.c:273: while ((ioread8(map_address) & 0x02))		;
00101$:
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dptr,#0x000d
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:273: while ((ioread8(map_address) & 0x02))		;
	mov	a,r7
	jb	acc.1,00101$
;	.\ecen4350_lcd_v4.c:274: }
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
;	.\ecen4350_lcd_v4.c:276: inline void rtcCmd(unsigned int addr, unsigned char d)
;	-----------------------------------------
;	 function rtcCmd
;	-----------------------------------------
_rtcCmd:
;	.\ecen4350_lcd_v4.c:278: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:279: iowrite8(map_address, d);
	mov	r7,_rtcCmd_PARM_2
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:279: iowrite8(map_address, d);
;	.\ecen4350_lcd_v4.c:280: }
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
;	.\ecen4350_lcd_v4.c:282: inline void rtcWrite(unsigned int addr, unsigned char d)
;	-----------------------------------------
;	 function rtcWrite
;	-----------------------------------------
_rtcWrite:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:284: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:286: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:288: rtcCmd(__REG_D__, d);
	mov	r7,_rtcWrite_PARM_2
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:288: rtcCmd(__REG_D__, d);
;	.\ecen4350_lcd_v4.c:289: }
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
;	.\ecen4350_lcd_v4.c:291: inline unsigned char rtcRead(unsigned int addr)
;	-----------------------------------------
;	 function rtcRead
;	-----------------------------------------
_rtcRead:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:294: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:296: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:299: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r6
	orl	a,#0x30
	mov	r7,a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:301: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:302: }
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
;printval                  Allocated with name '_rtcPrint_printval_65536_226'
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
;	.\ecen4350_lcd_v4.c:304: void rtcPrint(void)
;	-----------------------------------------
;	 function rtcPrint
;	-----------------------------------------
_rtcPrint:
;	.\ecen4350_lcd_v4.c:308: printval[8] = '\0'; // end with address null character for string
	mov	(_rtcPrint_printval_65536_226 + 0x0008),#0x00
;	.\ecen4350_lcd_v4.c:309: printval[2] = ':';
	mov	(_rtcPrint_printval_65536_226 + 0x0002),#0x3a
;	.\ecen4350_lcd_v4.c:310: printval[5] = ':';
	mov	(_rtcPrint_printval_65536_226 + 0x0005),#0x3a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:296: rtcBusy();
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dptr,#0x0002
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:299: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r7
	orl	a,#0x30
	mov	r7,a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:296: rtcBusy();
	push	ar7
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dptr,#0x0003
	movx	a,@dptr
	mov	r6,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:299: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r6
	orl	a,#0x30
	mov	r6,a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:296: rtcBusy();
	push	ar6
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dptr,#0x0004
	movx	a,@dptr
	mov	r5,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:299: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r5
	orl	a,#0x30
	mov	r5,a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:296: rtcBusy();
	push	ar5
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dptr,#0x0005
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:299: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r4
	orl	a,#0x30
	mov	r4,a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:296: rtcBusy();
	push	ar4
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dptr,#0x0000
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:299: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r3
	orl	a,#0x30
	mov	r3,a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:296: rtcBusy();
	push	ar3
	lcall	_rtcBusy
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:99: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:100: d = *map_address;
	mov	dptr,#0x0001
	movx	a,@dptr
	mov	r2,a
;	.\ecen4350_lcd_v4.c:101: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:299: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r2
	orl	a,#0x30
	mov	r2,a
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:324: printval[0] = h10;
	mov	_rtcPrint_printval_65536_226,r4
;	.\ecen4350_lcd_v4.c:325: printval[1] = h1;
	mov	(_rtcPrint_printval_65536_226 + 0x0001),r5
;	.\ecen4350_lcd_v4.c:326: printval[3] = mi10;
	mov	(_rtcPrint_printval_65536_226 + 0x0003),r6
;	.\ecen4350_lcd_v4.c:327: printval[4] = mi1;
	mov	(_rtcPrint_printval_65536_226 + 0x0004),r7
;	.\ecen4350_lcd_v4.c:328: printval[6] = s10;
	mov	(_rtcPrint_printval_65536_226 + 0x0006),r2
;	.\ecen4350_lcd_v4.c:329: printval[7] = s1;
	mov	(_rtcPrint_printval_65536_226 + 0x0007),r3
;	.\ecen4350_lcd_v4.c:330: LCD_string_write(printval);
	mov	dptr,#_rtcPrint_printval_65536_226
	mov	b,#0x40
;	.\ecen4350_lcd_v4.c:331: }
	ljmp	_LCD_string_write
;------------------------------------------------------------
;Allocation info for local variables in function 'setCursor'
;------------------------------------------------------------
;y                         Allocated with name '_setCursor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:333: void setCursor(u16 x, u16 y)
;	-----------------------------------------
;	 function setCursor
;	-----------------------------------------
_setCursor:
	mov	_cursor_x,dpl
	mov	(_cursor_x + 1),dph
;	.\ecen4350_lcd_v4.c:336: cursor_y = y;
	mov	_cursor_y,_setCursor_PARM_2
	mov	(_cursor_y + 1),(_setCursor_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:337: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextColor'
;------------------------------------------------------------
;y                         Allocated with name '_setTextColor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:339: void setTextColor(u16 x, u16 y)
;	-----------------------------------------
;	 function setTextColor
;	-----------------------------------------
_setTextColor:
	mov	_textcolor,dpl
	mov	(_textcolor + 1),dph
;	.\ecen4350_lcd_v4.c:342: textbgcolor = y;
	mov	_textbgcolor,_setTextColor_PARM_2
	mov	(_textbgcolor + 1),(_setTextColor_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:343: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextSize'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:346: void setTextSize(u8 s)
;	-----------------------------------------
;	 function setTextSize
;	-----------------------------------------
_setTextSize:
;	.\ecen4350_lcd_v4.c:348: if (s > 8)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x08
	jnc	00102$
;	.\ecen4350_lcd_v4.c:349: return;
	ret
00102$:
;	.\ecen4350_lcd_v4.c:350: textsize = (s > 0) ? s : 1;
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
;	.\ecen4350_lcd_v4.c:351: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setRotation'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:353: void setRotation(u8 flag)
;	-----------------------------------------
;	 function setRotation
;	-----------------------------------------
_setRotation:
;	.\ecen4350_lcd_v4.c:355: switch (flag)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	.\ecen4350_lcd_v4.c:357: case 0:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	.\ecen4350_lcd_v4.c:358: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	.\ecen4350_lcd_v4.c:359: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:360: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:361: break;
;	.\ecen4350_lcd_v4.c:362: case 1:
	sjmp	00106$
00102$:
;	.\ecen4350_lcd_v4.c:363: flag = (ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0x28
;	.\ecen4350_lcd_v4.c:364: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	.\ecen4350_lcd_v4.c:365: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	.\ecen4350_lcd_v4.c:366: break;
;	.\ecen4350_lcd_v4.c:367: case 2:
	sjmp	00106$
00103$:
;	.\ecen4350_lcd_v4.c:368: flag = (ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	r7,#0x88
;	.\ecen4350_lcd_v4.c:369: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:370: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:371: break;
;	.\ecen4350_lcd_v4.c:372: case 3:
	sjmp	00106$
00104$:
;	.\ecen4350_lcd_v4.c:373: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_MY | ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0xe8
;	.\ecen4350_lcd_v4.c:374: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	.\ecen4350_lcd_v4.c:375: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	.\ecen4350_lcd_v4.c:376: break;
;	.\ecen4350_lcd_v4.c:377: default:
	sjmp	00106$
00105$:
;	.\ecen4350_lcd_v4.c:378: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	.\ecen4350_lcd_v4.c:379: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:380: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:382: }
00106$:
;	.\ecen4350_lcd_v4.c:383: writeRegister8(ILI9341_MEMCONTROL, flag);
	mov	_writeRegister8_PARM_2,r7
	mov	dpl,#0x36
;	.\ecen4350_lcd_v4.c:384: }
	ljmp	_writeRegister8
;------------------------------------------------------------
;Allocation info for local variables in function 'setAddress'
;------------------------------------------------------------
;y1                        Allocated with name '_setAddress_PARM_2'
;x2                        Allocated with name '_setAddress_PARM_3'
;y2                        Allocated with name '_setAddress_PARM_4'
;x1                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:387: void setAddress(unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2)
;	-----------------------------------------
;	 function setAddress
;	-----------------------------------------
_setAddress:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:390: write8Reg(0x2A);
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
;	.\ecen4350_lcd_v4.c:391: write8Data(x1 >> 8);
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
;	.\ecen4350_lcd_v4.c:392: write8Data(x1);
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
;	.\ecen4350_lcd_v4.c:393: write8Data(x2 >> 8);
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
;	.\ecen4350_lcd_v4.c:394: write8Data(x2);
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
;	.\ecen4350_lcd_v4.c:396: write8Reg(0x2B);
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
;	.\ecen4350_lcd_v4.c:397: write8Data(y1 >> 8);
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
;	.\ecen4350_lcd_v4.c:398: write8Data(y1);
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
;	.\ecen4350_lcd_v4.c:399: write8Data(y2 >> 8);
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
;	.\ecen4350_lcd_v4.c:400: write8Data(y2);
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
;	.\ecen4350_lcd_v4.c:403: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TFT_LCD_INIT'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:405: void TFT_LCD_INIT(void)
;	-----------------------------------------
;	 function TFT_LCD_INIT
;	-----------------------------------------
_TFT_LCD_INIT:
;	.\ecen4350_lcd_v4.c:409: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:410: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:413: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:415: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:417: write8Reg(0x00);
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
;	.\ecen4350_lcd_v4.c:418: write8Data(0x00);
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
;	.\ecen4350_lcd_v4.c:419: write8Data(0x00);
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
;	.\ecen4350_lcd_v4.c:422: delay(100);						// changed from 200 to 100
	mov	dptr,#0x0064
	lcall	_delay
;	.\ecen4350_lcd_v4.c:426: writeRegister8(ILI9341_SOFTRESET, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:427: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	.\ecen4350_lcd_v4.c:428: writeRegister8(ILI9341_DISPLAYOFF, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x28
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:429: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:431: writeRegister8(ILI9341_POWERCONTROL1, 0x23);
	mov	_writeRegister8_PARM_2,#0x23
	mov	dpl,#0xc0
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:432: writeRegister8(ILI9341_POWERCONTROL2, 0x11);
	mov	_writeRegister8_PARM_2,#0x11
	mov	dpl,#0xc1
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:433: write8Reg(ILI9341_VCOMCONTROL1);
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
;	.\ecen4350_lcd_v4.c:434: write8Data(0x3d);
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
;	.\ecen4350_lcd_v4.c:435: write8Data(0x30);
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
;	.\ecen4350_lcd_v4.c:436: writeRegister8(ILI9341_VCOMCONTROL2, 0xaa);
	mov	_writeRegister8_PARM_2,#0xaa
	mov	dpl,#0xc7
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:437: writeRegister8(ILI9341_MEMCONTROL, ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	_writeRegister8_PARM_2,#0x88
	mov	dpl,#0x36
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:438: write8Reg(ILI9341_PIXELFORMAT);
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
;	.\ecen4350_lcd_v4.c:439: write8Data(0x55);
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
;	.\ecen4350_lcd_v4.c:440: write8Data(0x00);
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
;	.\ecen4350_lcd_v4.c:441: writeRegister16(ILI9341_FRAMECONTROL, 0x001B);
	mov	_writeRegister16_PARM_2,#0x1b
	mov	(_writeRegister16_PARM_2 + 1),#0x00
	mov	dptr,#0x00b1
	lcall	_writeRegister16
;	.\ecen4350_lcd_v4.c:443: writeRegister8(ILI9341_ENTRYMODE, 0x07);
	mov	_writeRegister8_PARM_2,#0x07
	mov	dpl,#0xb7
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:446: writeRegister8(ILI9341_SLEEPOUT, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x11
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:447: delay(100);								// changed from 150 to 100
	mov	dptr,#0x0064
	lcall	_delay
;	.\ecen4350_lcd_v4.c:448: writeRegister8(ILI9341_DISPLAYON, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x29
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:449: delay(150);								// changed from 200 to 150
	mov	dptr,#0x0096
	lcall	_delay
;	.\ecen4350_lcd_v4.c:450: setAddress(0, 0, _width - 1, _height - 1);
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
;	.\ecen4350_lcd_v4.c:454: }
	ljmp	_setAddress
;------------------------------------------------------------
;Allocation info for local variables in function 'drawPixel'
;------------------------------------------------------------
;y3                        Allocated with name '_drawPixel_PARM_2'
;color1                    Allocated with name '_drawPixel_PARM_3'
;x3                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:455: void drawPixel(u16 x3, u16 y3, u16 color1)
;	-----------------------------------------
;	 function drawPixel
;	-----------------------------------------
_drawPixel:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:463: setAddress(x3, y3, x3 + 1, y3 + 1);
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
;	.\ecen4350_lcd_v4.c:467: CD = 0;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:468: write8(0x2C);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:470: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:471: write8(color1 >> 8);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_drawPixel_PARM_3 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:472: write8(color1);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_drawPixel_PARM_3
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:474: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'drawCircle'
;------------------------------------------------------------
;y0                        Allocated with name '_drawCircle_PARM_2'
;r                         Allocated with name '_drawCircle_PARM_3'
;color                     Allocated with name '_drawCircle_PARM_4'
;x0                        Allocated with name '_drawCircle_x0_65536_393'
;f                         Allocated with name '_drawCircle_f_65536_394'
;ddF_x                     Allocated with name '_drawCircle_ddF_x_65536_394'
;ddF_y                     Allocated to registers r2 r3 
;x                         Allocated with name '_drawCircle_x_65536_394'
;y                         Allocated to registers r0 r1 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:478: void drawCircle(int x0, int y0, int r, u16 color)
;	-----------------------------------------
;	 function drawCircle
;	-----------------------------------------
_drawCircle:
	mov	_drawCircle_x0_65536_393,dpl
	mov	(_drawCircle_x0_65536_393 + 1),dph
;	.\ecen4350_lcd_v4.c:480: int f = 1 - r;
	mov	a,#0x01
	clr	c
	subb	a,_drawCircle_PARM_3
	mov	_drawCircle_f_65536_394,a
	clr	a
	subb	a,(_drawCircle_PARM_3 + 1)
	mov	(_drawCircle_f_65536_394 + 1),a
;	.\ecen4350_lcd_v4.c:482: int ddF_y = -2 * r;
	mov	__mulint_PARM_2,_drawCircle_PARM_3
	mov	(__mulint_PARM_2 + 1),(_drawCircle_PARM_3 + 1)
	mov	dptr,#0xfffe
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
;	.\ecen4350_lcd_v4.c:484: int y = r;
	mov	r0,_drawCircle_PARM_3
	mov	r1,(_drawCircle_PARM_3 + 1)
;	.\ecen4350_lcd_v4.c:486: drawPixel(x0, y0 + r, color);
	mov	a,r0
	add	a,_drawCircle_PARM_2
	mov	_drawPixel_PARM_2,a
	mov	a,r1
	addc	a,(_drawCircle_PARM_2 + 1)
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,_drawCircle_x0_65536_393
	mov	dph,(_drawCircle_x0_65536_393 + 1)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
;	.\ecen4350_lcd_v4.c:487: drawPixel(x0, y0 - r, color);
	mov	a,_drawCircle_PARM_2
	clr	c
	subb	a,r0
	mov	_drawPixel_PARM_2,a
	mov	a,(_drawCircle_PARM_2 + 1)
	subb	a,r1
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawCircle_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawCircle_PARM_4 + 1)
	mov	dpl,_drawCircle_x0_65536_393
	mov	dph,(_drawCircle_x0_65536_393 + 1)
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
;	.\ecen4350_lcd_v4.c:488: drawPixel(x0 + r, y0, color);
	mov	a,r0
	add	a,_drawCircle_x0_65536_393
	mov	dpl,a
	mov	a,r1
	addc	a,(_drawCircle_x0_65536_393 + 1)
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
;	.\ecen4350_lcd_v4.c:489: drawPixel(x0 - r, y0, color);
	mov	a,_drawCircle_x0_65536_393
	clr	c
	subb	a,r0
	mov	dpl,a
	mov	a,(_drawCircle_x0_65536_393 + 1)
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
;	.\ecen4350_lcd_v4.c:491: while (x < y)
	clr	a
	mov	_drawCircle_x_65536_394,a
	mov	(_drawCircle_x_65536_394 + 1),a
	mov	_drawCircle_ddF_x_65536_394,#0x01
;	1-genFromRTrack replaced	mov	(_drawCircle_ddF_x_65536_394 + 1),#0x00
	mov	(_drawCircle_ddF_x_65536_394 + 1),a
00103$:
	clr	c
	mov	a,_drawCircle_x_65536_394
	subb	a,r0
	mov	a,(_drawCircle_x_65536_394 + 1)
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ret
00121$:
;	.\ecen4350_lcd_v4.c:493: if (f >= 0)
	mov	a,(_drawCircle_f_65536_394 + 1)
	jb	acc.7,00102$
;	.\ecen4350_lcd_v4.c:495: y--;
	dec	r0
	cjne	r0,#0xff,00123$
	dec	r1
00123$:
;	.\ecen4350_lcd_v4.c:496: ddF_y += 2;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
;	.\ecen4350_lcd_v4.c:497: f += ddF_y;
	mov	a,r2
	add	a,_drawCircle_f_65536_394
	mov	_drawCircle_f_65536_394,a
	mov	a,r3
	addc	a,(_drawCircle_f_65536_394 + 1)
	mov	(_drawCircle_f_65536_394 + 1),a
00102$:
;	.\ecen4350_lcd_v4.c:499: x++;
	push	ar2
	push	ar3
	inc	_drawCircle_x_65536_394
	clr	a
	cjne	a,_drawCircle_x_65536_394,00124$
	inc	(_drawCircle_x_65536_394 + 1)
00124$:
;	.\ecen4350_lcd_v4.c:500: ddF_x += 2;
	mov	a,#0x02
	add	a,_drawCircle_ddF_x_65536_394
	mov	_drawCircle_ddF_x_65536_394,a
	clr	a
	addc	a,(_drawCircle_ddF_x_65536_394 + 1)
	mov	(_drawCircle_ddF_x_65536_394 + 1),a
;	.\ecen4350_lcd_v4.c:501: f += ddF_x;
	mov	a,_drawCircle_ddF_x_65536_394
	add	a,_drawCircle_f_65536_394
	mov	_drawCircle_f_65536_394,a
	mov	a,(_drawCircle_ddF_x_65536_394 + 1)
	addc	a,(_drawCircle_f_65536_394 + 1)
	mov	(_drawCircle_f_65536_394 + 1),a
;	.\ecen4350_lcd_v4.c:503: drawPixel(x0 + x, y0 + y, color);
	mov	a,_drawCircle_x_65536_394
	add	a,_drawCircle_x0_65536_393
	mov	r6,a
	mov	a,(_drawCircle_x_65536_394 + 1)
	addc	a,(_drawCircle_x0_65536_393 + 1)
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
;	.\ecen4350_lcd_v4.c:504: drawPixel(x0 - x, y0 + y, color);
	mov	a,_drawCircle_x0_65536_393
	clr	c
	subb	a,_drawCircle_x_65536_394
	mov	r2,a
	mov	a,(_drawCircle_x0_65536_393 + 1)
	subb	a,(_drawCircle_x_65536_394 + 1)
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
;	.\ecen4350_lcd_v4.c:505: drawPixel(x0 + x, y0 - y, color);
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
;	.\ecen4350_lcd_v4.c:506: drawPixel(x0 - x, y0 - y, color);
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
;	.\ecen4350_lcd_v4.c:507: drawPixel(x0 + y, y0 + x, color);
	mov	a,r0
	add	a,_drawCircle_x0_65536_393
	mov	r6,a
	mov	a,r1
	addc	a,(_drawCircle_x0_65536_393 + 1)
	mov	r7,a
	mov	a,_drawCircle_x_65536_394
	add	a,_drawCircle_PARM_2
	mov	r4,a
	mov	a,(_drawCircle_x_65536_394 + 1)
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
;	.\ecen4350_lcd_v4.c:508: drawPixel(x0 - y, y0 + x, color);
	mov	a,_drawCircle_x0_65536_393
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,(_drawCircle_x0_65536_393 + 1)
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
;	.\ecen4350_lcd_v4.c:509: drawPixel(x0 + y, y0 - x, color);
	mov	a,_drawCircle_PARM_2
	clr	c
	subb	a,_drawCircle_x_65536_394
	mov	r4,a
	mov	a,(_drawCircle_PARM_2 + 1)
	subb	a,(_drawCircle_x_65536_394 + 1)
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
;	.\ecen4350_lcd_v4.c:510: drawPixel(x0 - y, y0 - x, color);
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
;	.\ecen4350_lcd_v4.c:512: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'testCircles'
;------------------------------------------------------------
;color                     Allocated with name '_testCircles_PARM_2'
;radius                    Allocated to registers r7 
;x                         Allocated to registers r0 r1 
;y                         Allocated to registers r2 r3 
;r2                        Allocated to registers r4 r5 
;w                         Allocated with name '_testCircles_w_65536_398'
;h                         Allocated with name '_testCircles_h_65536_398'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:514: void testCircles(u8 radius, u16 color)
;	-----------------------------------------
;	 function testCircles
;	-----------------------------------------
_testCircles:
;	.\ecen4350_lcd_v4.c:517: int x, y, r2 = radius * 2, w = _width + radius, h = _height + radius;
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
	mov	_testCircles_w_65536_398,a
	mov	a,r3
	addc	a,(__width + 1)
	mov	(_testCircles_w_65536_398 + 1),a
	mov	a,r2
	add	a,__height
	mov	_testCircles_h_65536_398,a
	mov	a,r3
	addc	a,(__height + 1)
	mov	(_testCircles_h_65536_398 + 1),a
;	.\ecen4350_lcd_v4.c:519: for (x = 0; x < w; x += r2)
	mov	r0,#0x00
	mov	r1,#0x00
00107$:
	clr	c
	mov	a,r0
	subb	a,_testCircles_w_65536_398
	mov	a,r1
	xrl	a,#0x80
	mov	b,(_testCircles_w_65536_398 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	.\ecen4350_lcd_v4.c:521: for (y = 0; y < h; y += r2)
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,_testCircles_h_65536_398
	mov	a,r3
	xrl	a,#0x80
	mov	b,(_testCircles_h_65536_398 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	.\ecen4350_lcd_v4.c:523: drawCircle(x, y, radius, color);
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
;	.\ecen4350_lcd_v4.c:521: for (y = 0; y < h; y += r2)
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	sjmp	00104$
00108$:
;	.\ecen4350_lcd_v4.c:519: for (x = 0; x < w; x += r2)
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	sjmp	00107$
00109$:
;	.\ecen4350_lcd_v4.c:526: }
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
;	.\ecen4350_lcd_v4.c:527: void fillRect(u16 x, u16 y, u16 w, u16 h, u16 color)
;	-----------------------------------------
;	 function fillRect
;	-----------------------------------------
_fillRect:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:529: if ((x >= TFTWIDTH) || (y >= TFTHEIGHT))
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
;	.\ecen4350_lcd_v4.c:531: return;
	ret
00102$:
;	.\ecen4350_lcd_v4.c:534: if ((x + w - 1) >= TFTWIDTH)
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
;	.\ecen4350_lcd_v4.c:536: w = TFTWIDTH - x;
	mov	a,#0xf0
	clr	c
	subb	a,r6
	mov	_fillRect_PARM_3,a
	clr	a
	subb	a,r7
	mov	(_fillRect_PARM_3 + 1),a
00105$:
;	.\ecen4350_lcd_v4.c:539: if ((y + h - 1) >= TFTHEIGHT)
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
;	.\ecen4350_lcd_v4.c:541: h = TFTHEIGHT - y;
	mov	a,#0x40
	clr	c
	subb	a,_fillRect_PARM_2
	mov	_fillRect_PARM_4,a
	mov	a,#0x01
	subb	a,(_fillRect_PARM_2 + 1)
	mov	(_fillRect_PARM_4 + 1),a
00107$:
;	.\ecen4350_lcd_v4.c:544: setAddress(x, y, x + w - 1, y + h - 1);
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
;	.\ecen4350_lcd_v4.c:547: write8Reg(0x2C);
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
;	.\ecen4350_lcd_v4.c:549: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:550: for (y = h; y > 0; y--)
	mov	r7,(_fillRect_PARM_5 + 1)
	mov	r5,_fillRect_PARM_4
	mov	r6,(_fillRect_PARM_4 + 1)
00114$:
	mov	a,r5
	orl	a,r6
	jz	00116$
;	.\ecen4350_lcd_v4.c:552: for (x = w; x > 0; x--)
	mov	r3,_fillRect_PARM_3
	mov	r4,(_fillRect_PARM_3 + 1)
00111$:
	mov	a,r3
	orl	a,r4
	jz	00115$
;	.\ecen4350_lcd_v4.c:555: write8(color >> 8);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:556: write8(color);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_fillRect_PARM_5
	mov	r2,a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:552: for (x = w; x > 0; x--)
	dec	r3
	cjne	r3,#0xff,00167$
	dec	r4
00167$:
	sjmp	00111$
00115$:
;	.\ecen4350_lcd_v4.c:550: for (y = h; y > 0; y--)
	dec	r5
	cjne	r5,#0xff,00168$
	dec	r6
00168$:
	sjmp	00114$
00116$:
;	.\ecen4350_lcd_v4.c:560: }
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
;	.\ecen4350_lcd_v4.c:562: void fillTop(unsigned int Color) {
;	-----------------------------------------
;	 function fillTop
;	-----------------------------------------
_fillTop:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:566: unsigned char i, hi = Color >> 8, 
	mov	ar5,r7
;	.\ecen4350_lcd_v4.c:567: lo = Color;
;	.\ecen4350_lcd_v4.c:570: setAddress(0, 0, TFTWIDTH - 1, 39);
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
;	.\ecen4350_lcd_v4.c:572: write8Reg(0x2C);
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
;	.\ecen4350_lcd_v4.c:574: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:575: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:576: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:579: while (blocks--)
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
;	.\ecen4350_lcd_v4.c:582: do
	mov	r3,#0x10
00101$:
;	.\ecen4350_lcd_v4.c:585: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:586: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
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
;	.\ecen4350_lcd_v4.c:593: } while (--i);
	djnz	r3,00101$
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:595: for (i = (char)len & 63; i--;)
	mov	r7,#0x3f
00109$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00111$
;	.\ecen4350_lcd_v4.c:598: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:599: write8(lo);
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
;	.\ecen4350_lcd_v4.c:603: }
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
;	.\ecen4350_lcd_v4.c:605: void fillScreen(unsigned int Color)
;	-----------------------------------------
;	 function fillScreen
;	-----------------------------------------
_fillScreen:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:612: unsigned char i, hi = Color >> 8,
	mov	ar5,r7
;	.\ecen4350_lcd_v4.c:613: lo = Color;
;	.\ecen4350_lcd_v4.c:616: setAddress(0, 0, TFTWIDTH - 1, TFTHEIGHT - 1);
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
;	.\ecen4350_lcd_v4.c:620: write8Reg(0x2C);
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
;	.\ecen4350_lcd_v4.c:622: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:623: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:624: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:627: while (blocks--)
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
;	.\ecen4350_lcd_v4.c:630: do
	mov	r3,#0x10
00101$:
;	.\ecen4350_lcd_v4.c:633: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:634: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
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
;	.\ecen4350_lcd_v4.c:641: } while (--i);
	djnz	r3,00101$
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:643: for (i = (char)len & 63; i--;)
	mov	r7,#0x3f
00109$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00111$
;	.\ecen4350_lcd_v4.c:646: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:647: write8(lo);
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
;	.\ecen4350_lcd_v4.c:651: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearLCD'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:653: void clearLCD (void)
;	-----------------------------------------
;	 function clearLCD
;	-----------------------------------------
_clearLCD:
;	.\ecen4350_lcd_v4.c:655: fillScreen(colorBackground);
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:656: }
	ljmp	_fillScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'drawChar'
;------------------------------------------------------------
;y                         Allocated with name '_drawChar_PARM_2'
;c                         Allocated with name '_drawChar_PARM_3'
;color                     Allocated with name '_drawChar_PARM_4'
;bg                        Allocated with name '_drawChar_PARM_5'
;size                      Allocated with name '_drawChar_PARM_6'
;x                         Allocated with name '_drawChar_x_65536_458'
;i                         Allocated with name '_drawChar_i_131072_461'
;line                      Allocated with name '_drawChar_line_196608_462'
;j                         Allocated to registers r0 
;sloc0                     Allocated with name '_drawChar_sloc0_1_0'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:657: void drawChar(int x, int y, unsigned char c, u16 color, u16 bg, u8 size)
;	-----------------------------------------
;	 function drawChar
;	-----------------------------------------
_drawChar:
	mov	_drawChar_x_65536_458,dpl
	mov	(_drawChar_x_65536_458 + 1),dph
;	.\ecen4350_lcd_v4.c:659: if ((x >= TFTWIDTH) ||			// Clip right
	clr	c
	mov	a,_drawChar_x_65536_458
	subb	a,#0xf0
	mov	a,(_drawChar_x_65536_458 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	.\ecen4350_lcd_v4.c:660: (y >= TFTHEIGHT) ||			// Clip bottom
	clr	c
	mov	a,_drawChar_PARM_2
	subb	a,#0x40
	mov	a,(_drawChar_PARM_2 + 1)
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00101$
;	.\ecen4350_lcd_v4.c:661: ((x + 6 * size - 1) < 0) || // Clip left
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
	add	a,_drawChar_x_65536_458
	mov	r2,a
	mov	a,r3
	addc	a,(_drawChar_x_65536_458 + 1)
	mov	r3,a
	dec	r2
	cjne	r2,#0xff,00182$
	dec	r3
00182$:
	mov	a,r3
	jb	acc.7,00101$
;	.\ecen4350_lcd_v4.c:662: ((y + 8 * size - 1) < 0))	// Clip top
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
;	.\ecen4350_lcd_v4.c:664: return;
	ret
;	.\ecen4350_lcd_v4.c:667: for (char i = 0; i < 6; i++)
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
	mov	_drawChar_i_131072_461,#0x00
00126$:
	mov	a,#0x100 - 0x06
	add	a,_drawChar_i_131072_461
	jnc	00190$
	ret
00190$:
;	.\ecen4350_lcd_v4.c:671: if (i == 5)
	mov	a,#0x05
	cjne	a,_drawChar_i_131072_461,00107$
;	.\ecen4350_lcd_v4.c:673: line = 0x0;
	mov	_drawChar_line_196608_462,#0x00
	sjmp	00140$
00107$:
;	.\ecen4350_lcd_v4.c:677: line = pgm_read_byte(font + (c * 5) + i);
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
	mov	a,_drawChar_i_131072_461
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_drawChar_line_196608_462,a
;	.\ecen4350_lcd_v4.c:680: for (char j = 0; j < 8; j++)
00140$:
	mov	b,_drawChar_i_131072_461
	mov	a,_drawChar_PARM_6
	mul	ab
	add	a,_drawChar_x_65536_458
	mov	r6,a
	mov	a,(_drawChar_x_65536_458 + 1)
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
;	.\ecen4350_lcd_v4.c:682: if (line & 0x1)
	mov	a,_drawChar_line_196608_462
	jb	acc.0,00195$
	ljmp	00118$
00195$:
;	.\ecen4350_lcd_v4.c:684: if (size == 1) // default size
	mov	a,r5
	jz	00110$
;	.\ecen4350_lcd_v4.c:686: drawPixel(x + i, y + j, color);
	mov	r1,_drawChar_i_131072_461
	mov	r2,#0x00
	mov	a,r1
	add	a,_drawChar_x_65536_458
	mov	dpl,a
	mov	a,r2
	addc	a,(_drawChar_x_65536_458 + 1)
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
;	.\ecen4350_lcd_v4.c:690: fillRect(x + (i * size), y + (j * size), size, size, color);
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
;	.\ecen4350_lcd_v4.c:693: else if (bg != color)
	mov	a,r3
	jz	00197$
	ljmp	00119$
00197$:
;	.\ecen4350_lcd_v4.c:695: if (size == 1) // default size
	mov	a,r4
	jz	00113$
;	.\ecen4350_lcd_v4.c:697: drawPixel(x + i, y + j, bg);
	mov	r1,_drawChar_i_131072_461
	mov	r2,#0x00
	mov	a,r1
	add	a,_drawChar_x_65536_458
	mov	dpl,a
	mov	a,r2
	addc	a,(_drawChar_x_65536_458 + 1)
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
;	.\ecen4350_lcd_v4.c:701: fillRect(x + i * size, y + j * size, size, size, bg);
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
;	.\ecen4350_lcd_v4.c:705: line >>= 1;
	mov	a,_drawChar_line_196608_462
	clr	c
	rrc	a
	mov	_drawChar_line_196608_462,a
;	.\ecen4350_lcd_v4.c:680: for (char j = 0; j < 8; j++)
	inc	r0
	ljmp	00123$
00127$:
;	.\ecen4350_lcd_v4.c:667: for (char i = 0; i < 6; i++)
	inc	_drawChar_i_131072_461
;	.\ecen4350_lcd_v4.c:708: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:710: void write(u8 c) //write address character at setted coordinates after setting location and colour
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:712: if (c == '\n')
	cjne	r7,#0x0a,00105$
;	.\ecen4350_lcd_v4.c:714: cursor_y += textsize * 8;
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
;	.\ecen4350_lcd_v4.c:715: cursor_x = 0;
	clr	a
	mov	_cursor_x,a
	mov	(_cursor_x + 1),a
	ret
00105$:
;	.\ecen4350_lcd_v4.c:717: else if (c == '\r')
	cjne	r7,#0x0d,00119$
	ret
00119$:
;	.\ecen4350_lcd_v4.c:723: drawChar(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize);
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
;	.\ecen4350_lcd_v4.c:724: cursor_x += textsize * 6;
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
;	.\ecen4350_lcd_v4.c:726: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_string_write'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:727: void LCD_string_write(char *str)
;	-----------------------------------------
;	 function LCD_string_write
;	-----------------------------------------
_LCD_string_write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	.\ecen4350_lcd_v4.c:730: for (i = 0; str[i] != 0; i++) /* Send each char of string till the NULL */
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
;	.\ecen4350_lcd_v4.c:732: write(str[i]); /* Call transmit data function */
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
;	.\ecen4350_lcd_v4.c:730: for (i = 0; str[i] != 0; i++) /* Send each char of string till the NULL */
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00105$:
;	.\ecen4350_lcd_v4.c:734: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeNewLine'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:736: void writeNewLine(void)
;	-----------------------------------------
;	 function writeNewLine
;	-----------------------------------------
_writeNewLine:
;	.\ecen4350_lcd_v4.c:738: write('\n');
	mov	dpl,#0x0a
;	.\ecen4350_lcd_v4.c:739: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'freeType'
;------------------------------------------------------------
;count                     Allocated to registers r7 
;d                         Allocated to registers 
;row                       Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:741: void freeType()
;	-----------------------------------------
;	 function freeType
;	-----------------------------------------
_freeType:
;	.\ecen4350_lcd_v4.c:743: unsigned char count = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:745: u8 row = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:747: clearLCD();
	push	ar7
	push	ar6
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:748: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:749: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:750: LCD_string_write("Free Type: \n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:751: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:752: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:753: while (1)
00108$:
;	.\ecen4350_lcd_v4.c:756: if (count == 8)
	cjne	r7,#0x08,00124$
	sjmp	00125$
00124$:
	ljmp	00105$
00125$:
;	.\ecen4350_lcd_v4.c:759: count = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:760: write(d);
	mov	dpl,#0x0a
	push	ar7
	push	ar6
	lcall	_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:761: if (row == 4)
	cjne	r6,#0x04,00102$
;	.\ecen4350_lcd_v4.c:763: delay(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay
;	.\ecen4350_lcd_v4.c:764: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:765: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:766: rtcPrint();
	lcall	_rtcPrint
;	.\ecen4350_lcd_v4.c:767: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:768: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:769: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:770: LCD_string_write("Free Type: \n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:771: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:772: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:774: row = 1;
	mov	r6,#0x01
	sjmp	00108$
00102$:
;	.\ecen4350_lcd_v4.c:777: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:778: row++;
	inc	r6
	ljmp	00108$
00105$:
;	.\ecen4350_lcd_v4.c:783: d = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:784: write(d);
	lcall	_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:785: count++;
	inc	r7
;	.\ecen4350_lcd_v4.c:790: }
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'keyDetect'
;------------------------------------------------------------
;portdata                  Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:793: unsigned char keyDetect()
;	-----------------------------------------
;	 function keyDetect
;	-----------------------------------------
_keyDetect:
;	.\ecen4350_lcd_v4.c:796: __KEYPAD_PORT__ = 0xF0; 										/* set port direction as input-output */
	mov	_P1,#0xf0
;	.\ecen4350_lcd_v4.c:797: do 
00101$:
;	.\ecen4350_lcd_v4.c:799: portdata = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	r7,a
;	.\ecen4350_lcd_v4.c:800: }	while (portdata != 0xF0);									/* wait until no buttons pressed to continue */
	cjne	r7,#0xf0,00101$
;	.\ecen4350_lcd_v4.c:804: do
00105$:
;	.\ecen4350_lcd_v4.c:807: colloc = __KEYPAD_PORT__;								/* read back columns -> the grounded rows will ground address column bit when button pressed */
	mov	_colloc,_P1
;	.\ecen4350_lcd_v4.c:808: colloc &= 0xF0;		  									/* mask port for column read only */
	anl	_colloc,#0xf0
;	.\ecen4350_lcd_v4.c:809: } while ((colloc == 0xF0) && (received_flag == 0)); 		/* read status of column repeatedly until key is pressed or serial interrupt received */
	mov	a,#0xf0
	cjne	a,_colloc,00107$
	mov	a,_received_flag
	jz	00105$
00107$:
;	.\ecen4350_lcd_v4.c:810: delay(10);													/* 15ms key debounce time */
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:811: portdata = (__KEYPAD_PORT__ & 0xF0);						/* resample port data after debounce */
	mov	a,_P1
	anl	a,#0xf0
;	.\ecen4350_lcd_v4.c:812: } while ((colloc != portdata) && (received_flag == 0));			/* repeat until input is clear to interpret */
	mov	r7,a
	cjne	a,_colloc,00214$
	sjmp	00123$
00214$:
	mov	a,_received_flag
	jz	00105$
;	.\ecen4350_lcd_v4.c:814: while (1)
00123$:
;	.\ecen4350_lcd_v4.c:816: if (received_flag == 1)											/* check for key input via serial interrupt */
	mov	a,#0x01
	cjne	a,_received_flag,00113$
;	.\ecen4350_lcd_v4.c:818: received_byte -= 0x40;										/* For some reason received_byte needs 0x40 subtracted */
	mov	a,_received_byte
	mov	r7,a
	add	a,#0xc0
	mov	_received_byte,a
;	.\ecen4350_lcd_v4.c:819: break;														/* break outside while() */
	sjmp	00124$
00113$:
;	.\ecen4350_lcd_v4.c:822: __KEYPAD_PORT__ = 0xFE; 										/* check for pressed key input 1st row -> (_KEYPAD_PORT_ == 0b11111110) */
	mov	_P1,#0xfe
;	.\ecen4350_lcd_v4.c:823: colloc = (__KEYPAD_PORT__ & 0xF0);								/* (1111 1110) & (1111  0000) == (1111 0000) if 1st row free */
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:824: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00218$
	sjmp	00115$
00218$:
;	.\ecen4350_lcd_v4.c:826: rowloc = 0;
	mov	_rowloc,#0x00
;	.\ecen4350_lcd_v4.c:827: break;
	sjmp	00124$
00115$:
;	.\ecen4350_lcd_v4.c:830: __KEYPAD_PORT__ = 0xFD; 										/* check for pressed key input 2nd row -> (_KEYPAD_PORT_ == 0b11111101) */
	mov	_P1,#0xfd
;	.\ecen4350_lcd_v4.c:831: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:832: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00219$
	sjmp	00117$
00219$:
;	.\ecen4350_lcd_v4.c:834: rowloc = 1;
	mov	_rowloc,#0x01
;	.\ecen4350_lcd_v4.c:835: break;
	sjmp	00124$
00117$:
;	.\ecen4350_lcd_v4.c:838: __KEYPAD_PORT__ = 0xFB; 										/* check for pressed key input 3rd row -> (_KEYPAD_PORT_ == 0b11111011) */
	mov	_P1,#0xfb
;	.\ecen4350_lcd_v4.c:839: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:840: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00220$
	sjmp	00119$
00220$:
;	.\ecen4350_lcd_v4.c:842: rowloc = 2;
	mov	_rowloc,#0x02
;	.\ecen4350_lcd_v4.c:843: break;
	sjmp	00124$
00119$:
;	.\ecen4350_lcd_v4.c:846: __KEYPAD_PORT__ = 0xF7; 										/* check for pressed key input 4th row -> (_KEYPAD_PORT_ == 0b11110111) */
	mov	_P1,#0xf7
;	.\ecen4350_lcd_v4.c:847: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:848: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00221$
	sjmp	00123$
00221$:
;	.\ecen4350_lcd_v4.c:850: rowloc = 3;
	mov	_rowloc,#0x03
;	.\ecen4350_lcd_v4.c:851: break;
00124$:
;	.\ecen4350_lcd_v4.c:855: if (received_flag == 1)
	mov	a,#0x01
	cjne	a,_received_flag,00135$
;	.\ecen4350_lcd_v4.c:857: received_flag = 0;
	mov	_received_flag,#0x00
;	.\ecen4350_lcd_v4.c:858: return received_byte;
	mov	dpl,_received_byte
	ret
00135$:
;	.\ecen4350_lcd_v4.c:860: else if (colloc == 0xE0)
	mov	a,#0xe0
	cjne	a,_colloc,00132$
;	.\ecen4350_lcd_v4.c:862: return (keypad[rowloc][0]);
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
;	.\ecen4350_lcd_v4.c:864: else if (colloc == 0xD0)
	mov	a,#0xd0
	cjne	a,_colloc,00129$
;	.\ecen4350_lcd_v4.c:866: return (keypad[rowloc][1]);
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
;	.\ecen4350_lcd_v4.c:868: else if (colloc == 0xB0)
	mov	a,#0xb0
	cjne	a,_colloc,00126$
;	.\ecen4350_lcd_v4.c:870: return (keypad[rowloc][2]);
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
;	.\ecen4350_lcd_v4.c:874: return (keypad[rowloc][3]);
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
;	.\ecen4350_lcd_v4.c:876: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;rev                       Allocated to registers r5 r6 
;val                       Allocated to registers r1 r2 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:878: unsigned int reverse(unsigned char d)
;	-----------------------------------------
;	 function reverse
;	-----------------------------------------
_reverse:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:880: unsigned int rev = 0;
	mov	r5,#0x00
	mov	r6,#0x00
;	.\ecen4350_lcd_v4.c:882: while (d >= 1)
00101$:
	cjne	r7,#0x01,00114$
00114$:
	jc	00103$
;	.\ecen4350_lcd_v4.c:885: val = d % 10;
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
;	.\ecen4350_lcd_v4.c:886: d = d / 10;
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
;	.\ecen4350_lcd_v4.c:887: rev = rev * 10 + val;
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
;	.\ecen4350_lcd_v4.c:889: return rev;
	mov	dpl,r5
	mov	dph,r6
;	.\ecen4350_lcd_v4.c:890: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse16'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;rev                       Allocated to registers r4 r5 
;val                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:892: unsigned int reverse16(unsigned int d)
;	-----------------------------------------
;	 function reverse16
;	-----------------------------------------
_reverse16:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:894: unsigned int rev = 0;
	mov	r4,#0x00
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:896: while (d >= 1)
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00103$
;	.\ecen4350_lcd_v4.c:899: val = d % 10;
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
;	.\ecen4350_lcd_v4.c:900: d = d / 10;
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
;	.\ecen4350_lcd_v4.c:901: rev = rev * 10 + val;
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
;	.\ecen4350_lcd_v4.c:903: return rev;
	mov	dpl,r4
	mov	dph,r5
;	.\ecen4350_lcd_v4.c:904: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hexToASCII'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:906: unsigned char hexToASCII(unsigned char key) {
;	-----------------------------------------
;	 function hexToASCII
;	-----------------------------------------
_hexToASCII:
;	.\ecen4350_lcd_v4.c:907: if(key == 0x0) return '0';
	mov	a,dpl
	mov	r7,a
	jnz	00102$
	mov	dpl,#0x30
	ret
00102$:
;	.\ecen4350_lcd_v4.c:908: if(key == 0x1) return '1';
	cjne	r7,#0x01,00104$
	mov	dpl,#0x31
	ret
00104$:
;	.\ecen4350_lcd_v4.c:909: if(key == 0x2) return '2';
	cjne	r7,#0x02,00106$
	mov	dpl,#0x32
	ret
00106$:
;	.\ecen4350_lcd_v4.c:910: if(key == 0x3) return '3';
	cjne	r7,#0x03,00108$
	mov	dpl,#0x33
	ret
00108$:
;	.\ecen4350_lcd_v4.c:911: if(key == 0x4) return '4';
	cjne	r7,#0x04,00110$
	mov	dpl,#0x34
	ret
00110$:
;	.\ecen4350_lcd_v4.c:912: if(key == 0x5) return '5';
	cjne	r7,#0x05,00112$
	mov	dpl,#0x35
	ret
00112$:
;	.\ecen4350_lcd_v4.c:913: if(key == 0x6) return '6';
	cjne	r7,#0x06,00114$
	mov	dpl,#0x36
	ret
00114$:
;	.\ecen4350_lcd_v4.c:914: if(key == 0x7) return '7';
	cjne	r7,#0x07,00116$
	mov	dpl,#0x37
	ret
00116$:
;	.\ecen4350_lcd_v4.c:915: if(key == 0x8) return '8';
	cjne	r7,#0x08,00118$
	mov	dpl,#0x38
	ret
00118$:
;	.\ecen4350_lcd_v4.c:916: if(key == 0x9) return '9';
	cjne	r7,#0x09,00120$
	mov	dpl,#0x39
	ret
00120$:
;	.\ecen4350_lcd_v4.c:917: if(key == 0xA) return 'A';
	cjne	r7,#0x0a,00122$
	mov	dpl,#0x41
	ret
00122$:
;	.\ecen4350_lcd_v4.c:918: if(key == 0xB) return 'B';
	cjne	r7,#0x0b,00124$
	mov	dpl,#0x42
	ret
00124$:
;	.\ecen4350_lcd_v4.c:919: if(key == 0xC) return 'C';
	cjne	r7,#0x0c,00126$
	mov	dpl,#0x43
	ret
00126$:
;	.\ecen4350_lcd_v4.c:920: if(key == 0xD) return 'D';
	cjne	r7,#0x0d,00128$
	mov	dpl,#0x44
	ret
00128$:
;	.\ecen4350_lcd_v4.c:921: if(key == 0xE) return 'E';
	cjne	r7,#0x0e,00130$
	mov	dpl,#0x45
	ret
00130$:
;	.\ecen4350_lcd_v4.c:922: if(key == 0xF) return 'F';
	cjne	r7,#0x0f,00132$
	mov	dpl,#0x46
	ret
00132$:
;	.\ecen4350_lcd_v4.c:924: return 0xff;
	mov	dpl,#0xff
;	.\ecen4350_lcd_v4.c:925: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ASCIItoHex'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:927: unsigned char ASCIItoHex(unsigned char key) {
;	-----------------------------------------
;	 function ASCIItoHex
;	-----------------------------------------
_ASCIItoHex:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:928: if(key == '0') return 0x0;
	cjne	r7,#0x30,00102$
	mov	dpl,#0x00
	ret
00102$:
;	.\ecen4350_lcd_v4.c:929: if(key == '1') return 0x1;
	cjne	r7,#0x31,00104$
	mov	dpl,#0x01
	ret
00104$:
;	.\ecen4350_lcd_v4.c:930: if(key == '2') return 0x2;
	cjne	r7,#0x32,00106$
	mov	dpl,#0x02
	ret
00106$:
;	.\ecen4350_lcd_v4.c:931: if(key == '3') return 0x3;
	cjne	r7,#0x33,00108$
	mov	dpl,#0x03
	ret
00108$:
;	.\ecen4350_lcd_v4.c:932: if(key == '4') return 0x4;
	cjne	r7,#0x34,00110$
	mov	dpl,#0x04
	ret
00110$:
;	.\ecen4350_lcd_v4.c:933: if(key == '5') return 0x5;
	cjne	r7,#0x35,00112$
	mov	dpl,#0x05
	ret
00112$:
;	.\ecen4350_lcd_v4.c:934: if(key == '6') return 0x6;
	cjne	r7,#0x36,00114$
	mov	dpl,#0x06
	ret
00114$:
;	.\ecen4350_lcd_v4.c:935: if(key == '7') return 0x7;
	cjne	r7,#0x37,00116$
	mov	dpl,#0x07
	ret
00116$:
;	.\ecen4350_lcd_v4.c:936: if(key == '8') return 0x8;
	cjne	r7,#0x38,00118$
	mov	dpl,#0x08
	ret
00118$:
;	.\ecen4350_lcd_v4.c:937: if(key == '9') return 0x9;
	cjne	r7,#0x39,00120$
	mov	dpl,#0x09
	ret
00120$:
;	.\ecen4350_lcd_v4.c:938: if(key == 'A') return 0xA;
	cjne	r7,#0x41,00122$
	mov	dpl,#0x0a
	ret
00122$:
;	.\ecen4350_lcd_v4.c:939: if(key == 'B') return 0xB;
	cjne	r7,#0x42,00124$
	mov	dpl,#0x0b
	ret
00124$:
;	.\ecen4350_lcd_v4.c:940: if(key == 'C') return 0xC;
	cjne	r7,#0x43,00126$
	mov	dpl,#0x0c
	ret
00126$:
;	.\ecen4350_lcd_v4.c:941: if(key == 'D') return 0xD;
	cjne	r7,#0x44,00128$
	mov	dpl,#0x0d
	ret
00128$:
;	.\ecen4350_lcd_v4.c:942: if(key == 'E') return 0xE;
	cjne	r7,#0x45,00130$
	mov	dpl,#0x0e
	ret
00130$:
;	.\ecen4350_lcd_v4.c:943: if(key == 'F') return 0xF;
	cjne	r7,#0x46,00132$
	mov	dpl,#0x0f
	ret
00132$:
;	.\ecen4350_lcd_v4.c:945: return 0xff;
	mov	dpl,#0xff
;	.\ecen4350_lcd_v4.c:946: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asciiToDec'
;------------------------------------------------------------
;d                         Allocated to registers 
;val                       Allocated to registers r4 
;id                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:948: void asciiToDec(unsigned char d)
;	-----------------------------------------
;	 function asciiToDec
;	-----------------------------------------
_asciiToDec:
;	.\ecen4350_lcd_v4.c:952: id = reverse(d);
	lcall	_reverse
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:953: while (id >= 1)
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00103$
;	.\ecen4350_lcd_v4.c:956: val = id % 10;
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
;	.\ecen4350_lcd_v4.c:957: id = id / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
;	.\ecen4350_lcd_v4.c:958: write(val + '0');
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
;	.\ecen4350_lcd_v4.c:960: write('\n');
	mov	dpl,#0x0a
;	.\ecen4350_lcd_v4.c:961: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'asciiToHex'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;val                       Allocated to registers r2 
;store                     Allocated with name '_asciiToHex_store_65536_519'
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:963: void asciiToHex(unsigned char d)
;	-----------------------------------------
;	 function asciiToHex
;	-----------------------------------------
_asciiToHex:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:968: store[0] = 0;
	mov	_asciiToHex_store_65536_519,#0x00
;	.\ecen4350_lcd_v4.c:969: store[1] = 0;
	mov	(_asciiToHex_store_65536_519 + 0x0001),#0x00
;	.\ecen4350_lcd_v4.c:970: while (d >= 1)
	mov	r6,#0x00
00104$:
	cjne	r7,#0x01,00122$
00122$:
	jc	00106$
;	.\ecen4350_lcd_v4.c:973: val = d % 16;
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0f
	anl	a,r4
	mov	r2,a
;	.\ecen4350_lcd_v4.c:974: d = d / 16;
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
;	.\ecen4350_lcd_v4.c:975: if (val <= 9)
	mov	a,r2
	add	a,#0xff - 0x09
	jc	00102$
;	.\ecen4350_lcd_v4.c:978: store[i] = val + '0';
	mov	a,r6
	add	a,#_asciiToHex_store_65536_519
	mov	r1,a
	mov	ar5,r2
	mov	a,#0x30
	add	a,r5
	mov	@r1,a
	sjmp	00103$
00102$:
;	.\ecen4350_lcd_v4.c:982: store[i] = (val % 10) + 'A';
	mov	a,r6
	add	a,#_asciiToHex_store_65536_519
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
;	.\ecen4350_lcd_v4.c:984: i++;
	inc	r6
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:986: write(store[1]);
	mov	dpl,(_asciiToHex_store_65536_519 + 0x0001)
	lcall	_write
;	.\ecen4350_lcd_v4.c:987: write(store[0]);
	mov	dpl,_asciiToHex_store_65536_519
;	.\ecen4350_lcd_v4.c:989: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print4Hex'
;------------------------------------------------------------
;num                       Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:992: void print4Hex(unsigned char num) {
;	-----------------------------------------
;	 function print4Hex
;	-----------------------------------------
_print4Hex:
;	.\ecen4350_lcd_v4.c:993: write((u8) hexToASCII(num));
	lcall	_hexToASCII
;	.\ecen4350_lcd_v4.c:994: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print8Hex'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:996: void print8Hex(unsigned char num) {
;	-----------------------------------------
;	 function print8Hex
;	-----------------------------------------
_print8Hex:
;	.\ecen4350_lcd_v4.c:997: print4Hex(num >> 4);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_print4Hex
	pop	ar7
;	.\ecen4350_lcd_v4.c:998: print4Hex(num & 0x0F);
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:999: }
	ljmp	_print4Hex
;------------------------------------------------------------
;Allocation info for local variables in function 'print16Hex'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1001: void print16Hex(unsigned int num) {
;	-----------------------------------------
;	 function print16Hex
;	-----------------------------------------
_print16Hex:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1002: print8Hex((unsigned char)(num >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_print8Hex
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1003: print8Hex((unsigned char)num);
	mov	dpl,r6
;	.\ecen4350_lcd_v4.c:1004: }
	ljmp	_print8Hex
;------------------------------------------------------------
;Allocation info for local variables in function 'print16Dec'
;------------------------------------------------------------
;num                       Allocated to registers 
;val                       Allocated to registers r4 r5 
;id                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1006: void print16Dec(unsigned int num) {
;	-----------------------------------------
;	 function print16Dec
;	-----------------------------------------
_print16Dec:
;	.\ecen4350_lcd_v4.c:1009: id = reverse16(num);
	lcall	_reverse16
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1010: while (id >= 1) {
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00104$
;	.\ecen4350_lcd_v4.c:1011: val = id % 10;
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
;	.\ecen4350_lcd_v4.c:1012: id = id/10;
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
;	.\ecen4350_lcd_v4.c:1013: write(val + '0');
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
;	.\ecen4350_lcd_v4.c:1015: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print8ASCII'
;------------------------------------------------------------
;num                       Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1017: void print8ASCII(unsigned char num) {
;	-----------------------------------------
;	 function print8ASCII
;	-----------------------------------------
_print8ASCII:
;	.\ecen4350_lcd_v4.c:1018: write((u8)num);
;	.\ecen4350_lcd_v4.c:1019: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print16ASCII'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1021: void print16ASCII(unsigned int num) {
;	-----------------------------------------
;	 function print16ASCII
;	-----------------------------------------
_print16ASCII:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1022: print8ASCII((unsigned char)(num >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_print8ASCII
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1023: print8ASCII((unsigned char)num);
	mov	dpl,r6
;	.\ecen4350_lcd_v4.c:1024: }
	ljmp	_print8ASCII
;------------------------------------------------------------
;Allocation info for local variables in function 'writeSomeLines'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1027: void writeSomeLines()
;	-----------------------------------------
;	 function writeSomeLines
;	-----------------------------------------
_writeSomeLines:
;	.\ecen4350_lcd_v4.c:1029: setRotation(0);		//rotation 0 is for flat/flush LCD
	mov	dpl,#0x00
	lcall	_setRotation
;	.\ecen4350_lcd_v4.c:1031: fillScreen(CYAN);
	mov	dptr,#0x07ff
	lcall	_fillScreen
;	.\ecen4350_lcd_v4.c:1032: fillTop(BLACK);
	mov	dptr,#0x0000
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1033: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1034: setTextColor(CYAN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:1035: setCursor(10,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000a
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1036: LCD_string_write("Welcome\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1037: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1038: setTextColor(BLACK, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0x0000
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:1039: LCD_string_write("\n Tyler Zoucha\n  ECEN-4350\n  Fall 2021");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1040: delay(40);
	mov	dptr,#0x0028
;	.\ecen4350_lcd_v4.c:1041: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorDefault'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1044: void setColorDefault() {
;	-----------------------------------------
;	 function setColorDefault
;	-----------------------------------------
_setColorDefault:
;	.\ecen4350_lcd_v4.c:1045: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
;	.\ecen4350_lcd_v4.c:1046: } 
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorSelect'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1048: void setColorSelect() {
;	-----------------------------------------
;	 function setColorSelect
;	-----------------------------------------
_setColorSelect:
;	.\ecen4350_lcd_v4.c:1049: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
;	.\ecen4350_lcd_v4.c:1050: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorHighlight1'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1052: void setColorHighlight1() {
;	-----------------------------------------
;	 function setColorHighlight1
;	-----------------------------------------
_setColorHighlight1:
;	.\ecen4350_lcd_v4.c:1053: setTextColor(colorSelect, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0xf81f
;	.\ecen4350_lcd_v4.c:1054: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorHighlight2'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1056: void setColorHighlight2() {
;	-----------------------------------------
;	 function setColorHighlight2
;	-----------------------------------------
_setColorHighlight2:
;	.\ecen4350_lcd_v4.c:1057: setTextColor(BLACK, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:1058: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorGray'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1060: void setColorGray() {
;	-----------------------------------------
;	 function setColorGray
;	-----------------------------------------
_setColorGray:
;	.\ecen4350_lcd_v4.c:1061: setTextColor(GRAY, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xd6ba
;	.\ecen4350_lcd_v4.c:1062: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorMenu'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1064: void setColorMenu() {
;	-----------------------------------------
;	 function setColorMenu
;	-----------------------------------------
_setColorMenu:
;	.\ecen4350_lcd_v4.c:1065: setTextColor(BLACK, GRAY);
	mov	_setTextColor_PARM_2,#0xba
	mov	(_setTextColor_PARM_2 + 1),#0xd6
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:1066: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorRed'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1068: void setColorRed() {
;	-----------------------------------------
;	 function setColorRed
;	-----------------------------------------
_setColorRed:
;	.\ecen4350_lcd_v4.c:1069: setTextColor(RED, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf800
;	.\ecen4350_lcd_v4.c:1070: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorWhite'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1072: void setColorWhite() {
;	-----------------------------------------
;	 function setColorWhite
;	-----------------------------------------
_setColorWhite:
;	.\ecen4350_lcd_v4.c:1073: setTextColor(WHITE, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
;	.\ecen4350_lcd_v4.c:1074: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorGreen'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1076: void setColorGreen() {
;	-----------------------------------------
;	 function setColorGreen
;	-----------------------------------------
_setColorGreen:
;	.\ecen4350_lcd_v4.c:1077: setTextColor(GREEN, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
;	.\ecen4350_lcd_v4.c:1078: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorYellow'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1080: void setColorYellow() {
;	-----------------------------------------
;	 function setColorYellow
;	-----------------------------------------
_setColorYellow:
;	.\ecen4350_lcd_v4.c:1081: setTextColor(YELLOW, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffe0
;	.\ecen4350_lcd_v4.c:1082: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'inputAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 r6 
;input                     Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1084: unsigned int inputAddress()
;	-----------------------------------------
;	 function inputAddress
;	-----------------------------------------
_inputAddress:
;	.\ecen4350_lcd_v4.c:1089: input = keyDetect();					
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1092: write(input);									// Print to screen
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:1093: input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	mov	dpl,r7
	lcall	_ASCIItoHex
;	.\ecen4350_lcd_v4.c:1094: address |= (int) input * 16 * 16 * 16;			// highest order nibble = (input) * 0x1000
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1096: input = keyDetect();							// second highest address nibble
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1099: write(input);									// Print to screen
	mov  r5,dpl
	push	ar5
	lcall	_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:1100: input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	mov	dpl,r5
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1101: address |= (int) input * 16 * 16;				// store nibble; (input) * 0x0100
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r7
	orl	ar5,a
	mov	a,r6
	orl	ar4,a
;	.\ecen4350_lcd_v4.c:1103: input = keyDetect();
	push	ar5
	push	ar4
	lcall	_keyDetect
	mov	r7,dpl
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:1106: write(input);
	mov	dpl,r7
	push	ar7
	push	ar5
	push	ar4
	lcall	_write
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1107: input = ASCIItoHex(input);
	mov	dpl,r7
	push	ar5
	push	ar4
	lcall	_ASCIItoHex
	mov	r7,dpl
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:1108: address |= (int) input * 16;					// *0x0010
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
;	.\ecen4350_lcd_v4.c:1110: input = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1113: write(input);
	mov  r5,dpl
	push	ar5
	lcall	_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:1114: input = ASCIItoHex(input);
	mov	dpl,r5
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1115: address |= (int) input;							// *0x0001
	mov	r4,#0x00
	mov	a,r5
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	.\ecen4350_lcd_v4.c:1118: return address;									// yeet
;	.\ecen4350_lcd_v4.c:1119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inputBlockType'
;------------------------------------------------------------
;blockType                 Allocated to registers 
;invalidType               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1121: unsigned char inputBlockType() {
;	-----------------------------------------
;	 function inputBlockType
;	-----------------------------------------
_inputBlockType:
;	.\ecen4350_lcd_v4.c:1127: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1128: blockType = ASCIItoHex(selection);
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:1143: return blockType;
;	.\ecen4350_lcd_v4.c:1144: }
	ljmp	_ASCIItoHex
;------------------------------------------------------------
;Allocation info for local variables in function 'inputBlockSize'
;------------------------------------------------------------
;blockSize                 Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1146: unsigned char inputBlockSize() {
;	-----------------------------------------
;	 function inputBlockSize
;	-----------------------------------------
_inputBlockSize:
;	.\ecen4350_lcd_v4.c:1149: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1150: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1151: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1152: blockSize |= selection * 16;
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
;	.\ecen4350_lcd_v4.c:1153: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:1154: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:1155: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:1156: blockSize |= selection;
	mov	a,r6
	orl	a,r7
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:1157: return blockSize;
;	.\ecen4350_lcd_v4.c:1158: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printMenu'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1161: void printMenu() {
;	-----------------------------------------
;	 function printMenu
;	-----------------------------------------
_printMenu:
;	.\ecen4350_lcd_v4.c:1163: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1164: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1167: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1168: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1169: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1170: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1171: LCD_string_write("<Menu>\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1173: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1175: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1176: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1177: LCD_string_write(" <D>");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1178: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1179: LCD_string_write(" DUMP\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1181: setCursor(120, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1182: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1183: LCD_string_write(" <B>");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1184: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1185: LCD_string_write(" MOVE\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1187: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1188: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1189: LCD_string_write(" <E>");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1190: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1191: LCD_string_write(" EDIT\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1193: setCursor(120, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1194: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1195: LCD_string_write(" <F>");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1196: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1197: LCD_string_write(" FIND\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1199: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1200: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1201: LCD_string_write(" <C>");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1202: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1203: LCD_string_write(" COUNT\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1205: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1206: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1207: LCD_string_write(" <A>");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1208: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1209: LCD_string_write(" MEM CHECK\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1211: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1212: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1213: LCD_string_write(" <1>");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1214: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1215: LCD_string_write(" UART");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1216: setTextSize(1);
	mov	dpl,#0x01
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1217: if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00102$
;	.\ecen4350_lcd_v4.c:1218: LCD_string_write(" [Disabled]\n");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_LCD_string_write
00102$:
;	.\ecen4350_lcd_v4.c:1219: } if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00104$
;	.\ecen4350_lcd_v4.c:1220: LCD_string_write(" [Enabled]\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_LCD_string_write
00104$:
;	.\ecen4350_lcd_v4.c:1222: setTextSize(2);
	mov	dpl,#0x02
;	.\ecen4350_lcd_v4.c:1223: return;
;	.\ecen4350_lcd_v4.c:1224: }
	ljmp	_setTextSize
;------------------------------------------------------------
;Allocation info for local variables in function 'dump'
;------------------------------------------------------------
;d                         Allocated with name '_dump_d_65536_553'
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
;address                   Allocated with name '_dump_address_65536_553'
;blockSize                 Allocated to registers r5 
;blockType                 Allocated to registers r7 
;exit                      Allocated with name '_dump_exit_65536_553'
;invalidType               Allocated to registers r5 
;invalidSize               Allocated to registers r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1226: void dump()
;	-----------------------------------------
;	 function dump
;	-----------------------------------------
_dump:
;	.\ecen4350_lcd_v4.c:1231: __idata unsigned char blockType = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1232: __idata unsigned char exit = 1;
	mov	r0,#_dump_exit_65536_553
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1233: __idata unsigned char invalidType = 1;
	mov	r5,#0x01
;	.\ecen4350_lcd_v4.c:1234: __idata unsigned char invalidSize = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:1236: clearLCD();
	push	ar7
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1239: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1240: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1241: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1242: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1243: LCD_string_write("[DUMP]\n");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1244: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1245: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1246: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1247: LCD_string_write(" Address Location:\n");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1248: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1249: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1250: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1251: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1252: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1253: LCD_string_write(" Choose Block Type:\n");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1254: setCursor(0, 160); 
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1255: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1256: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1257: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1258: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1259: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1260: LCD_string_write(" _");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1267: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1268: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1269: LCD_string_write(" Address Location:");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1270: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1271: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1272: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1273: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1274: address = inputAddress();				// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r0,#_dump_address_65536_553
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:1275: d = (unsigned char __xdata *)(address);
	mov	r0,#_dump_address_65536_553
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
;	.\ecen4350_lcd_v4.c:1278: setColorDefault();
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1279: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1280: LCD_string_write(" Address Location:");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1281: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1282: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1283: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1284: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1285: print16Hex(address);					// print 16-bit address from stored memory
	mov	r0,#_dump_address_65536_553
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1288: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1289: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1290: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1291: setCursor(0, 160); 
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1292: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1293: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1296: while (invalidType) {
00109$:
	mov	a,r5
	jnz	00235$
	ljmp	00153$
00235$:
;	.\ecen4350_lcd_v4.c:1297: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1298: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1299: LCD_string_write("\n\n");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1301: blockType = inputBlockType();
	lcall	_inputBlockType
	mov	r7,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1303: if (blockType == 0x1) {
	cjne	r7,#0x01,00102$
;	.\ecen4350_lcd_v4.c:1304: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1306: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1307: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1308: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1309: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1310: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1311: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1312: LCD_string_write("<1> BYTE\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1313: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1314: LCD_string_write("\n\n                \n                ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:1315: } if (blockType == 0x2) {
	cjne	r7,#0x02,00104$
;	.\ecen4350_lcd_v4.c:1316: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1318: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1319: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1320: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1321: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1322: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1323: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1324: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1325: LCD_string_write("<2> WORD\n");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1326: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1327: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:1328: } if (blockType == 0x4) {
	cjne	r7,#0x04,00106$
;	.\ecen4350_lcd_v4.c:1329: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1331: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1332: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1333: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1334: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1335: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1336: LCD_string_write("\n\n  ");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1337: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1338: LCD_string_write("<4> DWORD");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1339: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1340: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
;	.\ecen4350_lcd_v4.c:1342: if (invalidType) {
	mov	a,r5
	jnz	00242$
	ljmp	00109$
00242$:
;	.\ecen4350_lcd_v4.c:1343: setColorRed();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1344: LCD_string_write("\n  Input Error\n  Try Again");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:1350: while (invalidSize)
00153$:
00115$:
	mov	a,r3
	jnz	00243$
	ljmp	00117$
00243$:
;	.\ecen4350_lcd_v4.c:1353: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1354: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1355: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1356: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1357: selection = keyDetect();
	lcall	_keyDetect
	mov	r5,dpl
	mov	r0,#_selection
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:1358: write(selection);
	mov	dpl,r5
	lcall	_write
;	.\ecen4350_lcd_v4.c:1359: blockSize = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:1360: setColorDefault();
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1362: if (blockSize != blockType) {
	mov	a,r5
	cjne	a,ar7,00244$
	sjmp	00113$
00244$:
;	.\ecen4350_lcd_v4.c:1363: setColorSelect();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1364: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1365: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1366: LCD_string_write(" _");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1367: setCursor(0,260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1368: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1369: LCD_string_write(" Mismatch Error\n Try Again");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1370: setCursor(0, 240);
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
;	.\ecen4350_lcd_v4.c:1372: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1373: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1374: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1375: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1376: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1377: invalidSize = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:1378: setCursor(0,260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1379: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1380: LCD_string_write(" Match Confirmed\n                ");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	ljmp	00115$
00117$:
;	.\ecen4350_lcd_v4.c:1384: delay(40);
	mov	dptr,#0x0028
	push	ar7
	push	ar6
	push	ar4
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1385: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1386: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1393: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1394: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1395: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1396: LCD_string_write("[DUMP]\n");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1397: setColorDefault();
	lcall	_setColorDefault
	pop	ar4
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1399: while (exit) {
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
	mov	r0,#_dump_exit_65536_553
	mov	a,@r0
	jnz	00251$
	ret
00251$:
;	.\ecen4350_lcd_v4.c:1400: setTextSize(2);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1401: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1402: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1403: LCD_string_write(" Address:");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1404: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1405: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1406: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1407: print16Hex(address);
	mov	r0,#_dump_address_65536_553
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1408: if (blockType == 0x1)
	mov	a,r5
	jnz	00252$
	ljmp	00119$
00252$:
;	.\ecen4350_lcd_v4.c:1410: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1411: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1412: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1413: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1414: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1415: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1417: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1418: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1419: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1420: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1421: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1422: print8ASCII(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1424: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1425: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1426: LCD_string_write(" Data Type:");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1427: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1428: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1429: LCD_string_write(" BYTE");
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00119$:
;	.\ecen4350_lcd_v4.c:1431: if (blockType == 0x2)
	mov	a,_dump_sloc0_1_0
	jnz	00253$
	ljmp	00121$
00253$:
;	.\ecen4350_lcd_v4.c:1433: setCursor(0, 120);
	push	ar7
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1434: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1435: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1436: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1437: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1438: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1439: d++;
	mov	a,#0x01
	add	a,r4
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r7,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1440: print8Hex(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	lcall	_print8Hex
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1441: d--;
	dec	r3
	cjne	r3,#0xff,00254$
	dec	r7
00254$:
;	.\ecen4350_lcd_v4.c:1443: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1444: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1445: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1446: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1447: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1448: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	lcall	_print8ASCII
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1449: d++;
	mov	a,#0x01
	add	a,r3
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r6,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1450: print8ASCII(ramRead8(d));
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1452: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1453: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1454: LCD_string_write(" Data Type:");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1455: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1456: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1457: LCD_string_write(" WORD");
	mov	dptr,#___str_51
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1513: return;
	pop	ar7
;	.\ecen4350_lcd_v4.c:1457: LCD_string_write(" WORD");
00121$:
;	.\ecen4350_lcd_v4.c:1459: if (blockType == 0x4)
	mov	a,r7
	jnz	00255$
	ljmp	00123$
00255$:
;	.\ecen4350_lcd_v4.c:1461: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1462: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1463: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1464: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1465: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1466: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1467: d++;
	mov	a,#0x01
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1468: print8Hex(ramRead8(d));
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8Hex
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1469: d++;
	inc	r2
	cjne	r2,#0x00,00256$
	inc	r3
00256$:
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1470: print8Hex(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8Hex
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:1471: d++;
	mov	a,#0x01
	add	a,r2
	mov	_dump_d_65536_553,a
	clr	a
	addc	a,r3
	mov	(_dump_d_65536_553 + 1),a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,_dump_d_65536_553
	mov	dph,(_dump_d_65536_553 + 1)
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1472: print8Hex(ramRead8(d));
	mov	dpl,r3
	lcall	_print8Hex
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1473: d--;
	mov	a,_dump_d_65536_553
	add	a,#0xff
	mov	r2,a
	mov	a,(_dump_d_65536_553 + 1)
	addc	a,#0xff
	mov	r3,a
;	.\ecen4350_lcd_v4.c:1474: d--;
	dec	r2
	cjne	r2,#0xff,00257$
	dec	r3
00257$:
;	.\ecen4350_lcd_v4.c:1475: d--;
	dec	r2
	cjne	r2,#0xff,00258$
	dec	r3
00258$:
;	.\ecen4350_lcd_v4.c:1477: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1478: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1479: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1480: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1481: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1482: print8ASCII(ramRead8(d));
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1483: d++;
	inc	r2
	cjne	r2,#0x00,00259$
	inc	r3
00259$:
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1484: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1485: d++;
	inc	r2
	cjne	r2,#0x00,00260$
	inc	r3
00260$:
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1486: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:1487: d++;
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r6,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1488: print8ASCII(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1490: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1491: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1492: LCD_string_write(" Data Type:");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1493: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1494: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1495: LCD_string_write(" DWORD");
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00123$:
;	.\ecen4350_lcd_v4.c:1497: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1498: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1499: LCD_string_write(" <0> Exit\n");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1501: selection = keyDetect();
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:1503: if (selection == '0' ) {
	cjne	r3,#0x30,00261$
	sjmp	00262$
00261$:
	ljmp	00126$
00262$:
;	.\ecen4350_lcd_v4.c:1504: exit = 0;
	mov	r0,#_dump_exit_65536_553
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1505: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1506: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1507: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1508: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1509: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1510: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00126$
;	.\ecen4350_lcd_v4.c:1513: return;
;	.\ecen4350_lcd_v4.c:1514: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move'
;------------------------------------------------------------
;d                         Allocated with name '_move_d_65536_609'
;i                         Allocated with name '_move_i_131072_618'
;__2621440148              Allocated to registers 
;__2621440145              Allocated to registers 
;__2621440146              Allocated to registers 
;__3276800149              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers r5 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;sourceAddress             Allocated with name '_move_sourceAddress_65536_609'
;destAddress               Allocated to registers r2 r3 
;blockSize                 Allocated to registers r6 r7 
;blockType                 Allocated to registers r5 
;invalidType               Allocated to registers r4 
;invalidSize               Allocated with name '_move_invalidSize_65536_609'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1516: void move() {
;	-----------------------------------------
;	 function move
;	-----------------------------------------
_move:
;	.\ecen4350_lcd_v4.c:1520: __idata unsigned int blockSize = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1521: __idata unsigned char blockType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1522: __idata unsigned char invalidType = 1;
	mov	r4,#0x01
;	.\ecen4350_lcd_v4.c:1523: __idata unsigned char invalidSize = 1;
	mov	r0,#_move_invalidSize_65536_609
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1525: clearLCD();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1528: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1529: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1530: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1531: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1532: LCD_string_write("[MOVE]\n");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1533: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1534: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1535: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1536: LCD_string_write(" Source Address:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1537: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1538: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1539: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1540: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1541: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1542: LCD_string_write(" Destination:");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1543: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1544: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1545: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1546: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1547: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1548: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1549: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1550: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1551: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1552: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1553: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1554: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1555: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1556: LCD_string_write(" _");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1563: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1564: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1565: LCD_string_write(" Source Address:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1566: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1567: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1568: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1569: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1570: sourceAddress = inputAddress();
	lcall	_inputAddress
	mov	r0,#_move_sourceAddress_65536_609
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:1573: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1574: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1575: LCD_string_write(" Source Address:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1576: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1577: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1578: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1579: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1580: print16Hex(sourceAddress);
	mov	r0,#_move_sourceAddress_65536_609
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1583: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1584: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1585: LCD_string_write(" Destination:");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1586: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1587: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1588: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1589: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1590: destAddress = inputAddress();
	lcall	_inputAddress
	mov	r2,dpl
	mov	r3,dph
;	.\ecen4350_lcd_v4.c:1593: setColorDefault();
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1594: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1595: LCD_string_write( " Destination:");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1596: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1597: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1598: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1599: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:1600: print16Hex(destAddress);
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1603: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1604: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1605: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1606: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1607: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1608: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1610: while (invalidType) {
00109$:
	mov	a,r4
	jnz	00178$
	ljmp	00137$
00178$:
;	.\ecen4350_lcd_v4.c:1611: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1612: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1613: LCD_string_write("\n\n");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1615: blockType = inputBlockType();
	lcall	_inputBlockType
	mov	r5,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1617: if (blockType == 0x1) {
	cjne	r5,#0x01,00102$
;	.\ecen4350_lcd_v4.c:1618: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1620: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1621: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1622: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1623: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1624: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1625: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1626: LCD_string_write("<1> BYTE\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1627: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1628: LCD_string_write("\n\n                \n                ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:1630: } if (blockType == 0x2) {
	cjne	r5,#0x02,00104$
;	.\ecen4350_lcd_v4.c:1631: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1633: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1634: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1635: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1636: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1637: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1638: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1639: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1640: LCD_string_write("<2> WORD\n");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1641: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1642: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:1643: } if (blockType == 0x4) {
	cjne	r5,#0x04,00106$
;	.\ecen4350_lcd_v4.c:1644: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1646: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1647: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1648: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1649: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1650: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1651: LCD_string_write("\n\n  ");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1652: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1653: LCD_string_write("<4> DWORD");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1654: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1655: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
;	.\ecen4350_lcd_v4.c:1657: if (invalidType) {
	mov	a,r4
	jnz	00185$
	ljmp	00109$
00185$:
;	.\ecen4350_lcd_v4.c:1658: setColorRed();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1659: LCD_string_write("\n  Input Error\n  Try Again");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:1665: while (invalidSize)
00137$:
00115$:
	mov	r0,#_move_invalidSize_65536_609
	mov	a,@r0
	jnz	00186$
	ljmp	00140$
00186$:
;	.\ecen4350_lcd_v4.c:1668: setCursor(0, 260);
	push	ar2
	push	ar3
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1669: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1670: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1671: selection = keyDetect();
	lcall	_keyDetect
	mov	a,dpl
	mov	r0,#_selection
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:1672: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1673: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1674: blockSize = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	mov	ar6,r4
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1675: setColorDefault();
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
;	.\ecen4350_lcd_v4.c:1677: if (blockSize != blockType) {
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
;	.\ecen4350_lcd_v4.c:1678: setCursor(0,280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1679: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1680: LCD_string_write(" Mismatch Error\n Try Again");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1681: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1682: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1683: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1684: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1685: LCD_string_write(" _");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00115$
00113$:
;	.\ecen4350_lcd_v4.c:1687: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1688: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1689: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1690: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1691: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1692: invalidSize = 0;
	mov	r0,#_move_invalidSize_65536_609
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1693: setCursor(0,280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1694: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1695: LCD_string_write(" Match Confirmed\n                ");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00115$
;	.\ecen4350_lcd_v4.c:1701: for(unsigned int i = sourceAddress; i < (sourceAddress + blockSize); i++) {
00140$:
	mov	r0,#_move_sourceAddress_65536_609
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r0,#_move_sourceAddress_65536_609
	mov	_move_i_131072_618,@r0
	inc	r0
	mov	(_move_i_131072_618 + 1),@r0
00125$:
	clr	c
	mov	a,_move_i_131072_618
	subb	a,r6
	mov	a,(_move_i_131072_618 + 1)
	subb	a,r7
	jnc	00121$
;	.\ecen4350_lcd_v4.c:1702: d = (unsigned char __xdata*)(destAddress);
	mov	_move_d_65536_609,r2
	mov	(_move_d_65536_609 + 1),r3
;	.\ecen4350_lcd_v4.c:1703: ramWrite8(d,ramRead8((unsigned char __xdata*)i));
	mov	dpl,_move_i_131072_618
	mov	dph,(_move_i_131072_618 + 1)
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	movx	a,@dptr
	mov	r5,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:108: *map_address = d;
	mov	dpl,_move_d_65536_609
	mov	dph,(_move_d_65536_609 + 1)
	mov	a,r5
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:109: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1704: if (destAddress == 0xFFFF) {						// check end of RAM
	cjne	r2,#0xff,00119$
	cjne	r3,#0xff,00119$
;	.\ecen4350_lcd_v4.c:1705: destAddress = 0x0000;
	mov	r2,#0x00
	mov	r3,#0x00
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:1707: destAddress++;
	inc	r2
	cjne	r2,#0x00,00191$
	inc	r3
00191$:
00126$:
;	.\ecen4350_lcd_v4.c:1701: for(unsigned int i = sourceAddress; i < (sourceAddress + blockSize); i++) {
	inc	_move_i_131072_618
	clr	a
	cjne	a,_move_i_131072_618,00125$
	inc	(_move_i_131072_618 + 1)
	sjmp	00125$
00121$:
;	.\ecen4350_lcd_v4.c:1711: setCursor(0, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1712: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1713: LCD_string_write(" Move Complete\n");
	mov	dptr,#___str_58
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1714: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1715: selection = 'null';
	mov	r0,#_selection
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:1716: return;
;	.\ecen4350_lcd_v4.c:1717: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'edit'
;------------------------------------------------------------
;__1310720151              Allocated to registers 
;d                         Allocated with name '_edit_d_65536_628'
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
;exit                      Allocated with name '_edit_exit_65536_628'
;invalid                   Allocated with name '_edit_invalid_65536_628'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1719: void edit(){
;	-----------------------------------------
;	 function edit
;	-----------------------------------------
_edit:
;	.\ecen4350_lcd_v4.c:1723: __idata unsigned char exit = 1;
	mov	r0,#_edit_exit_65536_628
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1726: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1729: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1730: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1731: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1732: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1733: LCD_string_write("[EDIT]\n");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1734: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1735: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1736: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1737: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1738: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1739: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1740: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1741: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1742: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1743: LCD_string_write(" Location Contents:\n");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1744: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1745: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1746: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1747: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1748: LCD_string_write(" Enter New Value:\n");
	mov	dptr,#___str_63
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1749: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1750: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1751: setCursor(0,210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1752: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1753: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1754: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1755: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1756: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1763: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1764: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1765: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1766: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1767: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1768: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1769: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1770: address = inputAddress();		// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r5,dpl
	mov	r6,dph
;	.\ecen4350_lcd_v4.c:1771: d = (unsigned char __xdata*)address;
	mov	ar3,r5
	mov	ar4,r6
;	.\ecen4350_lcd_v4.c:1774: setColorDefault();
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1775: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1776: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1777: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1778: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1779: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1780: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1781: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1784: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1785: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1786: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1787: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1788: print8Hex(ramRead8(d));
	push	ar4
	push	ar3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1791: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1792: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1793: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1794: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1795: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1796: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1797: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1798: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1799: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1800: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1801: selection = ASCIItoHex(selection);
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
;	.\ecen4350_lcd_v4.c:1802: value |= selection;
	mov	a,r2
	orl	ar7,a
;	.\ecen4350_lcd_v4.c:1805: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1806: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1807: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1808: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1809: print8Hex(value);
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
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:108: *map_address = d;
	mov	dpl,r3
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:109: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1814: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1815: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1816: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1817: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1818: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1819: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1825: while(exit){
00109$:
	mov	r0,#_edit_exit_65536_628
	mov	a,@r0
	jnz	00150$
	ret
00150$:
;	.\ecen4350_lcd_v4.c:1826: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r7,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1827: invalid = 1;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1828: if (selection == '1') {		/* Highlight choice and gray out others */
	cjne	r7,#0x31,00151$
	sjmp	00152$
00151$:
	ljmp	00102$
00152$:
;	.\ecen4350_lcd_v4.c:1829: invalid = 0;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1831: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1832: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1833: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1834: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1835: LCD_string_write("<1> Next Address\n");
	mov	dptr,#___str_69
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1836: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1837: LCD_string_write("\n\n               ");
	mov	dptr,#___str_70
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1838: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1841: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1842: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1843: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1844: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1845: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1846: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1847: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1848: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1849: LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");
	mov	dptr,#___str_72
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1852: address++;
	inc	r5
	cjne	r5,#0x00,00153$
	inc	r6
00153$:
;	.\ecen4350_lcd_v4.c:1853: d = (unsigned char __xdata*)address;
	mov	_edit_d_65536_628,r5
	mov	(_edit_d_65536_628 + 1),r6
;	.\ecen4350_lcd_v4.c:1854: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1855: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1856: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1857: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1858: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1861: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1862: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1863: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1864: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,_edit_d_65536_628
	mov	dph,(_edit_d_65536_628 + 1)
	movx	a,@dptr
	mov	r2,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1865: print8Hex(ramRead8(d));
	mov	dpl,r2
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1868: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1869: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1870: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1871: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1872: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1873: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1874: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1875: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1876: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1877: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1878: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r7,dpl
	pop	ar2
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1879: value |= selection;
	mov	a,r2
	orl	ar7,a
;	.\ecen4350_lcd_v4.c:1882: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1883: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1884: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1885: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1886: print8Hex(value);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_print8Hex
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:108: *map_address = d;
	mov	dpl,_edit_d_65536_628
	mov	dph,(_edit_d_65536_628 + 1)
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:109: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1891: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1892: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1893: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1894: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1895: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1896: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
00102$:
;	.\ecen4350_lcd_v4.c:1898: if (selection == '2') {			/* Highlight choice and gray out others*/
	mov	r0,#_selection
	cjne	@r0,#0x32,00154$
	sjmp	00155$
00154$:
	ljmp	00104$
00155$:
;	.\ecen4350_lcd_v4.c:1899: invalid = 0;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1901: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1902: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1903: LCD_string_write(" Choose Next Action:\n  ");
	mov	dptr,#___str_73
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1904: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1905: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1906: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1907: LCD_string_write("<2> New Address\n");
	mov	dptr,#___str_74
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1908: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1909: LCD_string_write("\n               ");
	mov	dptr,#___str_75
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1910: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1913: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1914: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1915: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1916: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1917: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1918: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1919: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1920: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1921: LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");
	mov	dptr,#___str_72
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1924: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1925: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1926: LCD_string_write(" Edit Address");
	mov	dptr,#___str_76
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1927: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1928: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1929: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1930: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1931: address = inputAddress();		// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r5,dpl
	mov	r6,dph
;	.\ecen4350_lcd_v4.c:1932: d = (unsigned char __xdata*)address;
	mov	ar3,r5
	mov	ar7,r6
;	.\ecen4350_lcd_v4.c:1935: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1936: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1937: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1938: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1939: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1940: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1941: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1942: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1945: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1946: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1947: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1948: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1949: print8Hex(ramRead8(d));
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1952: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1953: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1954: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1955: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1956: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1957: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1958: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1959: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1960: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:1961: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:1962: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar2
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:1963: value |= selection;
	mov	a,r2
	orl	ar4,a
;	.\ecen4350_lcd_v4.c:1966: setColorDefault();
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1967: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1968: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1969: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:1970: print8Hex(value);
	mov	dpl,r4
	push	ar4
	push	ar3
	lcall	_print8Hex
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:108: *map_address = d;
	mov	dpl,r3
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:109: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1975: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1976: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1977: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1978: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1979: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1980: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
00104$:
;	.\ecen4350_lcd_v4.c:1982: if (selection == '0') {			/* Highlight choice and gray out others */
	mov	r0,#_selection
	cjne	@r0,#0x30,00106$
;	.\ecen4350_lcd_v4.c:1983: exit = 0;
	mov	r0,#_edit_exit_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1984: invalid = 0;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1985: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1986: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1987: LCD_string_write("\n");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1988: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1989: LCD_string_write("\n\n  ");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1990: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1991: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1992: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1993: LCD_string_write("\n               ");
	mov	dptr,#___str_75
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1994: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
	pop	ar5
	pop	ar6
00106$:
;	.\ecen4350_lcd_v4.c:1996: if (invalid) {
	mov	r0,#_edit_invalid_65536_628
	mov	a,@r0
	jnz	00158$
	ljmp	00109$
00158$:
;	.\ecen4350_lcd_v4.c:1997: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1998: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1999: LCD_string_write("\n\n\n\n Input Error ");
	mov	dptr,#___str_79
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:2002: return;
;	.\ecen4350_lcd_v4.c:2003: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find'
;------------------------------------------------------------
;d                         Allocated to registers 
;i                         Allocated with name '_find_i_262144_665'
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
;address                   Allocated with name '_find_address_65536_652'
;destination               Allocated to registers 
;blockSize                 Allocated with name '_find_blockSize_65536_652'
;value                     Allocated with name '_find_value_65536_652'
;scan                      Allocated with name '_find_scan_65536_652'
;page                      Allocated to registers r5 
;noneFound                 Allocated with name '_find_noneFound_65536_652'
;invalidInput              Allocated to registers r7 
;exit                      Allocated with name '_find_exit_65536_652'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2005: void find() {
;	-----------------------------------------
;	 function find
;	-----------------------------------------
_find:
;	.\ecen4350_lcd_v4.c:2009: __idata unsigned char blockSize = 0;
	mov	r0,#_find_blockSize_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2011: __idata unsigned char scan = 0;
	mov	r0,#_find_scan_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2012: __idata unsigned char page = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:2013: __idata unsigned char noneFound = 1;
	mov	r0,#_find_noneFound_65536_652
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2014: __idata unsigned char invalidInput = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:2015: __idata unsigned char exit = 1;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2017: clearLCD();
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2020: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2021: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2022: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2023: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2024: LCD_string_write("[FIND]\n");
	mov	dptr,#___str_80
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2025: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2026: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2027: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2028: LCD_string_write(" Find Value:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2029: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2030: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2031: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2032: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2033: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2034: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2035: setCursor(0, 130 );
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2036: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2037: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2038: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2039: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2040: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2041: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2042: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2043: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2045: (0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2046: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2047: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2054: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2055: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2056: LCD_string_write(" Find Value:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2057: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2058: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2059: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2060: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2061: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2062: selection = keyDetect();
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2063: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:2064: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2065: value |= selection * 16;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
;	.\ecen4350_lcd_v4.c:2066: selection = keyDetect();
	push	ar4
	push	ar3
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2067: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:2068: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar3
	pop	ar4
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2069: value |= selection;
	mov	r0,#_find_value_65536_652
	mov	a,r6
	orl	a,r4
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2072: setColorDefault();
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2073: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2074: LCD_string_write(" Find Value:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2075: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2076: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2077: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2078: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2079: print8Hex(value);
	mov	r0,#_find_value_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2082: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2083: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2084: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2085: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2086: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2087: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2088: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2089: address = inputAddress();
	lcall	_inputAddress
	mov	r0,#_find_address_65536_652
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:2092: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2093: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2094: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2095: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2096: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2097: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2098: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2099: print16Hex(address);
	mov	r0,#_find_address_65536_652
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2102: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2103: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2104: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2105: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2106: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2107: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2108: while (invalidInput) {
00113$:
	mov	a,r3
	jnz	00539$
	ljmp	00115$
00539$:
;	.\ecen4350_lcd_v4.c:2109: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2110: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2111: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2112: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2113: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2114: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2115: blockSize = inputBlockSize();
	lcall	_inputBlockSize
	mov	r0,#_find_blockSize_65536_652
	mov	@r0,dpl
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2116: if (blockSize == 0x01) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x01,00111$
;	.\ecen4350_lcd_v4.c:2117: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2118: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2119: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	sjmp	00113$
00111$:
;	.\ecen4350_lcd_v4.c:2120: } else if (blockSize == 0x02) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x02,00108$
;	.\ecen4350_lcd_v4.c:2121: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2122: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2123: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00108$:
;	.\ecen4350_lcd_v4.c:2124: } else if (blockSize == 0x04) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x04,00105$
;	.\ecen4350_lcd_v4.c:2125: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2126: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2127: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00105$:
;	.\ecen4350_lcd_v4.c:2128: } else if (blockSize == 0xFF) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0xff,00102$
;	.\ecen4350_lcd_v4.c:2129: invalidInput = 0;
	mov	r3,#0x00
	ljmp	00113$
00102$:
;	.\ecen4350_lcd_v4.c:2132: setColorRed();
	push	ar5
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2133: LCD_string_write("\n Try again");
	mov	dptr,#___str_89
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00115$:
;	.\ecen4350_lcd_v4.c:2138: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2139: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2140: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2141: if (blockSize == 0x01){
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x01,00125$
;	.\ecen4350_lcd_v4.c:2142: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	push	ar5
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2143: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2144: LCD_string_write("<01> BYTE\n");
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2145: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2146: LCD_string_write("  <02> WORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2147: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2148: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2149: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2150: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2151: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2152: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2153: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2154: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2155: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2156: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2157: LCD_string_write("\n BYTE [8 bits]");
	mov	dptr,#___str_94
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00125$:
;	.\ecen4350_lcd_v4.c:2158: } else if (blockSize == 0x02) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x02,00122$
;	.\ecen4350_lcd_v4.c:2159: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2160: LCD_string_write("  <01> BYTE\n  ");
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2161: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2162: LCD_string_write("<02> WORD\n");
	mov	dptr,#___str_96
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2163: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2164: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2165: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2166: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2167: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2168: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2169: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2170: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2171: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2172: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2173: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2174: LCD_string_write("\n WORD [16 bits]");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00122$:
;	.\ecen4350_lcd_v4.c:2175: } else if (blockSize == 0x04) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x04,00119$
;	.\ecen4350_lcd_v4.c:2176: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2177: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2178: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2179: LCD_string_write("<04> DWORD\n");
	mov	dptr,#___str_99
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2180: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2181: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2182: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2183: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2184: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2185: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2186: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2187: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2188: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2189: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2190: LCD_string_write("\n DWORD [32 bits]");
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:2191: } else if (blockSize == 0xFF) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0xff,00126$
;	.\ecen4350_lcd_v4.c:2192: scan = 1;
	mov	r0,#_find_scan_65536_652
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2193: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2194: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2195: LCD_string_write("<04> DWORD\n  ");
	mov	dptr,#___str_101
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2196: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2197: LCD_string_write("<FF> (SCAN)");
	mov	dptr,#___str_102
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2198: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2199: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2200: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2201: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2202: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2203: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2204: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2205: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2206: LCD_string_write("\n [256 Blocks]");
	mov	dptr,#___str_103
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
00126$:
;	.\ecen4350_lcd_v4.c:2210: delay(40);
	mov	dptr,#0x0028
	push	ar5
	lcall	_delay
;	.\ecen4350_lcd_v4.c:2211: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2212: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2213: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2214: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2215: setCursor(30,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2216: LCD_string_write("[FIND]\n");
	mov	dptr,#___str_80
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2217: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2218: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
	pop	ar5
;	.\ecen4350_lcd_v4.c:2224: while (exit) {
00205$:
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jnz	00556$
	ljmp	00207$
00556$:
;	.\ecen4350_lcd_v4.c:2226: if (scan) {	
	mov	r0,#_find_scan_65536_652
	mov	a,@r0
	jnz	00557$
	ljmp	00196$
00557$:
;	.\ecen4350_lcd_v4.c:2227: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2228: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2229: LCD_string_write(" [Non-Interactive]\n");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2230: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2231: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2232: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2233: print8Hex(value);
	mov	r0,#_find_value_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2234: for(unsigned int i = 0; i < blockSize; i++) {
	mov	ar3,r5
	clr	a
	mov	_find_i_262144_665,a
	mov	(_find_i_262144_665 + 1),a
00211$:
	mov	r0,#_find_blockSize_65536_652
	mov	ar2,@r0
	mov	r6,#0x00
	clr	c
	mov	a,_find_i_262144_665
	subb	a,r2
	mov	a,(_find_i_262144_665 + 1)
	subb	a,r6
	jc	00558$
	ljmp	00271$
00558$:
;	.\ecen4350_lcd_v4.c:2235: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_find_address_65536_652
	mov	a,@r0
	add	a,_find_i_262144_665
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,(_find_i_262144_665 + 1)
	mov	r6,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2236: if(value == ramRead8(d)){
	mov	r0,#_find_value_65536_652
	mov	a,@r0
	cjne	a,ar4,00212$
;	.\ecen4350_lcd_v4.c:2237: noneFound = 0;
	mov	r0,#_find_noneFound_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2239: if (page == 0) {		
	mov	a,r3
	jnz	00128$
;	.\ecen4350_lcd_v4.c:2240: setColorWhite();
	push	ar3
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2241: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2242: LCD_string_write(" Found at Location:\n");
	mov	dptr,#___str_106
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2243: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2244: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2245: print16Hex(i);
	mov	dpl,_find_i_262144_665
	mov	dph,(_find_i_262144_665 + 1)
	lcall	_print16Hex
	pop	ar3
;	.\ecen4350_lcd_v4.c:2246: page++;
	inc	r3
	sjmp	00212$
00128$:
;	.\ecen4350_lcd_v4.c:2248: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2249: LCD_string_write("\n 0x");
	mov	dptr,#___str_107
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2250: print16Hex(i);
	mov	dpl,_find_i_262144_665
	mov	dph,(_find_i_262144_665 + 1)
	lcall	_print16Hex
	pop	ar3
00212$:
;	.\ecen4350_lcd_v4.c:2234: for(unsigned int i = 0; i < blockSize; i++) {
	inc	_find_i_262144_665
	clr	a
	cjne	a,_find_i_262144_665,00562$
	inc	(_find_i_262144_665 + 1)
00562$:
	ljmp	00211$
00271$:
	mov	ar5,r3
;	.\ecen4350_lcd_v4.c:2254: exit = 0;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
	ljmp	00197$
00196$:
;	.\ecen4350_lcd_v4.c:2256: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2257: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2258: LCD_string_write(" [Interactive]\n");
	mov	dptr,#___str_108
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2259: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2260: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2261: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2262: print8Hex(value);
	mov	r0,#_find_value_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2265: for (unsigned int i = 0; i < blockSize; i++) {
	clr	a
	mov	_find_sloc1_1_0,a
	mov	(_find_sloc1_1_0 + 1),a
00214$:
	mov	r0,#_find_blockSize_65536_652
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
;	.\ecen4350_lcd_v4.c:2266: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_find_address_65536_652
	mov	a,@r0
	add	a,_find_sloc1_1_0
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,(_find_sloc1_1_0 + 1)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2267: if(value == ramRead8(d)){
	mov	r0,#_find_value_65536_652
	mov	a,@r0
	cjne	a,ar3,00564$
	sjmp	00565$
00564$:
	ljmp	00215$
00565$:
;	.\ecen4350_lcd_v4.c:2268: noneFound = 0;		// toggle flag
	mov	r0,#_find_noneFound_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2269: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2270: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2271: LCD_string_write(" Found at Location \n");
	mov	dptr,#___str_109
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2272: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2273: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2274: print16Hex(page+address);
	mov	ar2,r5
	mov	r3,#0x00
	mov	r0,#_find_address_65536_652
	mov	a,@r0
	add	a,r2
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	dph,a
	push	ar5
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2275: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2276: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2277: LCD_string_write("Page: ");
	mov	dptr,#___str_110
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2278: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
;	.\ecen4350_lcd_v4.c:2279: print8Hex(page+1);
	mov	ar3,r5
	mov	a,r3
	inc	a
	mov	dpl,a
	push	ar5
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2283: if (i == 0) {					// At beginning, page <0>
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jz	00566$
	ljmp	00190$
00566$:
;	.\ecen4350_lcd_v4.c:2284: if (i != blockSize - 1) {	// not at the end yet, no previous page
	push	ar5
	mov	r0,#_find_blockSize_65536_652
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
;	.\ecen4350_lcd_v4.c:2285: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2286: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2287: LCD_string_write(" <1> Next\n <0> Exit\n              ");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2288: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2289: while (invalidInput) {
	mov	_find_sloc0_1_0,r5
00137$:
	mov	a,r7
	jnz	00568$
	ljmp	00272$
00568$:
;	.\ecen4350_lcd_v4.c:2290: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:2291: if(selection == '1'){
	cjne	r7,#0x31,00569$
	sjmp	00570$
00569$:
	pop	ar7
	sjmp	00134$
00570$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2292: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2293: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2294: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2295: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2296: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2297: page++;
	inc	_find_sloc0_1_0
00134$:
;	.\ecen4350_lcd_v4.c:2298: } if(selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00137$
;	.\ecen4350_lcd_v4.c:2299: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2300: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2301: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2302: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2303: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2304: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2305: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00137$
00148$:
;	.\ecen4350_lcd_v4.c:2308: } else if (i == blockSize - 1) {	// starts at the end, no previous or next page
	dec	r2
	cjne	r2,#0xff,00573$
	dec	r3
00573$:
	mov	a,r2
	cjne	a,_find_sloc1_1_0,00149$
	mov	a,r3
	cjne	a,(_find_sloc1_1_0 + 1),00149$
;	.\ecen4350_lcd_v4.c:2309: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2310: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2311: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2312: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2313: while (invalidInput) {
00142$:
	mov	a,r7
	jz	00149$
;	.\ecen4350_lcd_v4.c:2314: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:2315: if(selection == '0') {
	cjne	r3,#0x30,00142$
;	.\ecen4350_lcd_v4.c:2316: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2317: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2318: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2319: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2320: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2321: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2322: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00142$
00272$:
	mov	r5,_find_sloc0_1_0
00149$:
;	.\ecen4350_lcd_v4.c:2326: if (exit == 0) {	// check exit flag
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jz	00579$
	ljmp	00215$
00579$:
;	.\ecen4350_lcd_v4.c:2327: break;			// break out of for loop iteration
	ljmp	00197$
00190$:
;	.\ecen4350_lcd_v4.c:2332: else if (i == blockSize - 1) {		// At Page End 
	push	ar5
	mov	r0,#_find_blockSize_65536_652
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
;	.\ecen4350_lcd_v4.c:2333: if (i != 0) {				// not at beginning, no next page
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jnz	00582$
	ljmp	00167$
00582$:
;	.\ecen4350_lcd_v4.c:2334: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2335: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2336: LCD_string_write("          \n <0> Exit\n <2> Previous");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2337: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2338: while (invalidInput) {
	mov	_find_sloc0_1_0,r5
00156$:
	mov	a,r7
	jnz	00583$
	ljmp	00273$
00583$:
;	.\ecen4350_lcd_v4.c:2339: selection = keyDetect();
	push	ar7
	push	ar7
	lcall	_keyDetect
	mov	r2,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2340: if(selection == '0'){
	cjne	r2,#0x30,00584$
	sjmp	00585$
00584$:
	pop	ar7
	sjmp	00153$
00585$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2341: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2342: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2343: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2344: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2345: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2346: exit = 0;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
00153$:
;	.\ecen4350_lcd_v4.c:2347: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00156$
;	.\ecen4350_lcd_v4.c:2348: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2349: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2350: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2351: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2352: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2353: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2354: i--;			// two decrements plus next loop increment is equal to one decrement
	mov	a,_find_sloc1_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_find_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2355: i--;
	mov	a,r2
	add	a,#0xff
	mov	_find_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_find_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2356: page--;			// decrement to previous page
	dec	_find_sloc0_1_0
	ljmp	00156$
00167$:
;	.\ecen4350_lcd_v4.c:2360: else if (i == 0){				// end at beginning, no next or previous
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
;	.\ecen4350_lcd_v4.c:2361: setCursor(0, 180);
	jnz	00168$
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2362: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2363: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2364: invalidInput = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:2365: while (invalidInput) {
00161$:
	mov	a,r6
	jz	00168$
;	.\ecen4350_lcd_v4.c:2366: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2367: if(selection == '0') {
	cjne	r4,#0x30,00161$
;	.\ecen4350_lcd_v4.c:2368: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2369: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2370: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2371: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2372: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2373: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2374: invalidInput = 0;
	mov	r6,#0x00
	sjmp	00161$
00273$:
	mov	r5,_find_sloc0_1_0
00168$:
;	.\ecen4350_lcd_v4.c:2378: if (exit == 0) {	// check exit flag
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jz	00592$
	ljmp	00215$
00592$:
;	.\ecen4350_lcd_v4.c:2379: break;			// break out of for loop iteration
	ljmp	00197$
00187$:
;	.\ecen4350_lcd_v4.c:2384: else if (i != blockSize - 1)  {	// in mid page, with previous and next options
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
;	.\ecen4350_lcd_v4.c:2385: if (i != 0) {
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jnz	00595$
	ljmp	00181$
00595$:
;	.\ecen4350_lcd_v4.c:2386: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2387: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2388: LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
	mov	dptr,#___str_117
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2389: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2390: while (invalidInput) {
00177$:
	mov	a,r7
	jnz	00596$
	ljmp	00181$
00596$:
;	.\ecen4350_lcd_v4.c:2391: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2392: if (selection == '1') {
	cjne	r6,#0x31,00172$
;	.\ecen4350_lcd_v4.c:2393: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2394: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2395: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2396: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2397: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2398: page++;
	inc	r5
00172$:
;	.\ecen4350_lcd_v4.c:2399: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00174$
;	.\ecen4350_lcd_v4.c:2400: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2401: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2402: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2403: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2404: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2405: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2406: i--;
	mov	a,_find_sloc1_1_0
	add	a,#0xff
	mov	r4,a
	mov	a,(_find_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2407: i--;		// two decrements plus next loop increment is equal to one decrement
	mov	a,r4
	add	a,#0xff
	mov	_find_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_find_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2408: page--;		// decrement to previous page
	dec	r5
00174$:
;	.\ecen4350_lcd_v4.c:2409: } if (selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00601$
	sjmp	00602$
00601$:
	ljmp	00177$
00602$:
;	.\ecen4350_lcd_v4.c:2410: setColorWhite();
	push	ar5
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2411: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2412: LCD_string_write(" <1> Next\n ");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2413: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2414: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2415: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2416: LCD_string_write("\n <2> Previous");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2417: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2418: invalidInput = 0;
	mov	r7,#0x00
	ljmp	00177$
00181$:
;	.\ecen4350_lcd_v4.c:2422: if (exit == 0) {		// check exit flag
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jz	00197$
;	.\ecen4350_lcd_v4.c:2423: break;			// break out the loop
00215$:
;	.\ecen4350_lcd_v4.c:2265: for (unsigned int i = 0; i < blockSize; i++) {
	inc	_find_sloc1_1_0
	clr	a
	cjne	a,_find_sloc1_1_0,00604$
	inc	(_find_sloc1_1_0 + 1)
00604$:
	ljmp	00214$
00197$:
;	.\ecen4350_lcd_v4.c:2429: if(noneFound) {
	mov	r0,#_find_noneFound_65536_652
	mov	a,@r0
	jnz	00605$
	ljmp	00205$
00605$:
;	.\ecen4350_lcd_v4.c:2430: setColorRed();
	push	ar5
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2431: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2432: LCD_string_write(" Value Not Found\n Within Block\n ");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2433: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2434: LCD_string_write("\n <0> Exit");
	mov	dptr,#___str_121
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2435: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2437: while (invalidInput) {
00200$:
	mov	a,r7
	jnz	00606$
	ljmp	00205$
00606$:
;	.\ecen4350_lcd_v4.c:2438: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2439: if (selection == '0'){
	cjne	r6,#0x30,00200$
;	.\ecen4350_lcd_v4.c:2440: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2441: LCD_string_write("\n\n\n ");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2442: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2443: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2444: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2445: exit = 0;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
	sjmp	00200$
00207$:
;	.\ecen4350_lcd_v4.c:2450: delay(80);
	mov	dptr,#0x0050
;	.\ecen4350_lcd_v4.c:2451: return;
;	.\ecen4350_lcd_v4.c:2452: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'count'
;------------------------------------------------------------
;d                         Allocated to registers 
;i                         Allocated with name '_count_i_262144_721'
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
;address                   Allocated with name '_count_address_65536_708'
;destination               Allocated to registers 
;blockSize                 Allocated with name '_count_blockSize_65536_708'
;value                     Allocated with name '_count_value_65536_708'
;scan                      Allocated with name '_count_scan_65536_708'
;page                      Allocated to registers r5 
;noneFound                 Allocated with name '_count_noneFound_65536_708'
;invalidInput              Allocated to registers r7 
;exit                      Allocated with name '_count_exit_65536_708'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2454: void count() {
;	-----------------------------------------
;	 function count
;	-----------------------------------------
_count:
;	.\ecen4350_lcd_v4.c:2458: __idata unsigned char blockSize = 0;
	mov	r0,#_count_blockSize_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2460: __idata unsigned char scan = 0;
	mov	r0,#_count_scan_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2461: __idata unsigned char page = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:2462: __idata unsigned char noneFound = 1;
	mov	r0,#_count_noneFound_65536_708
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2463: __idata unsigned char invalidInput = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:2464: __idata unsigned char exit = 1;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2466: clearLCD();
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2469: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2470: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2471: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2472: setCursor(15, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2473: LCD_string_write("[COUNT]\n");
	mov	dptr,#___str_123
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2474: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2475: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2476: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2477: LCD_string_write(" Search Value:");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2478: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2479: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2480: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2481: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2482: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2483: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2484: setCursor(0, 130 );
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2485: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2486: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2487: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2488: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2489: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2490: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2491: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2492: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2493: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2494: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2495: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2502: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2503: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2504: LCD_string_write(" Search Value:");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2505: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2506: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2507: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2508: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2509: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2510: selection = keyDetect();
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2511: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:2512: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2513: value |= selection * 16;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
;	.\ecen4350_lcd_v4.c:2514: selection = keyDetect();
	push	ar4
	push	ar3
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2515: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:2516: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar3
	pop	ar4
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2517: value |= selection;
	mov	r0,#_count_value_65536_708
	mov	a,r6
	orl	a,r4
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2520: setColorDefault();
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2521: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2522: LCD_string_write(" Search Value:");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2523: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2524: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2525: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2526: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2527: print8Hex(value);
	mov	r0,#_count_value_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2530: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2531: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2532: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2533: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2534: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2535: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2536: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2537: address = inputAddress();
	lcall	_inputAddress
	mov	r0,#_count_address_65536_708
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:2540: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2541: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2542: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2543: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2544: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2545: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2546: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2547: print16Hex(address);
	mov	r0,#_count_address_65536_708
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2550: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2551: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2552: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2553: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2554: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2555: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2556: while (invalidInput) {
00113$:
	mov	a,r3
	jnz	00530$
	ljmp	00115$
00530$:
;	.\ecen4350_lcd_v4.c:2557: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2558: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2559: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2560: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2561: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2562: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2563: blockSize = inputBlockSize();
	lcall	_inputBlockSize
	mov	r0,#_count_blockSize_65536_708
	mov	@r0,dpl
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2564: if (blockSize == 0x01) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x01,00111$
;	.\ecen4350_lcd_v4.c:2565: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2566: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2567: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	sjmp	00113$
00111$:
;	.\ecen4350_lcd_v4.c:2568: } else if (blockSize == 0x02) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x02,00108$
;	.\ecen4350_lcd_v4.c:2569: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2570: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2571: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00108$:
;	.\ecen4350_lcd_v4.c:2572: } else if (blockSize == 0x04) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x04,00105$
;	.\ecen4350_lcd_v4.c:2573: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2574: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2575: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00105$:
;	.\ecen4350_lcd_v4.c:2576: } else if (blockSize == 0xFF) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0xff,00102$
;	.\ecen4350_lcd_v4.c:2577: invalidInput = 0;
	mov	r3,#0x00
	ljmp	00113$
00102$:
;	.\ecen4350_lcd_v4.c:2580: setColorRed();
	push	ar5
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2581: LCD_string_write("\n Try again");
	mov	dptr,#___str_89
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00115$:
;	.\ecen4350_lcd_v4.c:2586: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2587: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2588: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2589: if (blockSize == 0x01){
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x01,00125$
;	.\ecen4350_lcd_v4.c:2590: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	push	ar5
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2591: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2592: LCD_string_write("<01> BYTE\n");
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2593: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2594: LCD_string_write("  <02> WORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2595: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2596: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2597: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2598: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2599: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2600: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2601: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2602: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2603: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2604: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2605: LCD_string_write("\n BYTE [8 bits]");
	mov	dptr,#___str_94
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00125$:
;	.\ecen4350_lcd_v4.c:2606: } else if (blockSize == 0x02) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x02,00122$
;	.\ecen4350_lcd_v4.c:2607: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2608: LCD_string_write("  <01> BYTE\n  ");
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2609: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2610: LCD_string_write("<02> WORD\n");
	mov	dptr,#___str_96
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2611: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2612: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2613: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2614: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2615: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2616: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2617: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2618: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2619: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2620: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2621: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2622: LCD_string_write("\n WORD [16 bits]");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00122$:
;	.\ecen4350_lcd_v4.c:2623: } else if (blockSize == 0x04) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x04,00119$
;	.\ecen4350_lcd_v4.c:2624: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2625: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2626: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2627: LCD_string_write("<04> DWORD\n");
	mov	dptr,#___str_99
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2628: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2629: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2630: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2631: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2632: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2633: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2634: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2635: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2636: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2637: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2638: LCD_string_write("\n DWORD [32 bits]");
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:2639: } else if (blockSize == 0xFF) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0xff,00126$
;	.\ecen4350_lcd_v4.c:2640: scan = 1;
	mov	r0,#_count_scan_65536_708
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2641: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2642: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2643: LCD_string_write("<04> DWORD\n  ");
	mov	dptr,#___str_101
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2644: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2645: LCD_string_write("<FF> (SCAN)");
	mov	dptr,#___str_102
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2646: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2647: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2648: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2649: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2650: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2651: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2652: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2653: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2654: LCD_string_write("\n [256 Blocks]");
	mov	dptr,#___str_103
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
00126$:
;	.\ecen4350_lcd_v4.c:2658: delay(40);
	mov	dptr,#0x0028
	push	ar5
	lcall	_delay
;	.\ecen4350_lcd_v4.c:2659: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2660: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2661: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2662: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2663: setCursor(15,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2664: LCD_string_write("[COUNT]\n");
	mov	dptr,#___str_123
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2665: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2666: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
	pop	ar5
;	.\ecen4350_lcd_v4.c:2672: while (exit) {
00202$:
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jnz	00547$
	ljmp	00204$
00547$:
;	.\ecen4350_lcd_v4.c:2674: if (scan) {	
	mov	r0,#_count_scan_65536_708
	mov	a,@r0
	jnz	00548$
	ljmp	00193$
00548$:
;	.\ecen4350_lcd_v4.c:2675: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2676: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2677: LCD_string_write(" [Non-Interactive]\n");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2678: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2679: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2680: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2681: print8Hex(value);
	mov	r0,#_count_value_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2682: for(unsigned int i = 0; i < blockSize; i++) {
	mov	ar3,r5
	clr	a
	mov	_count_i_262144_721,a
	mov	(_count_i_262144_721 + 1),a
00208$:
	mov	r0,#_count_blockSize_65536_708
	mov	ar2,@r0
	mov	r6,#0x00
	clr	c
	mov	a,_count_i_262144_721
	subb	a,r2
	mov	a,(_count_i_262144_721 + 1)
	subb	a,r6
	jnc	00267$
;	.\ecen4350_lcd_v4.c:2683: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_count_address_65536_708
	mov	a,@r0
	add	a,_count_i_262144_721
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,(_count_i_262144_721 + 1)
	mov	r6,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2684: if(value == ramRead8(d)){
	mov	r0,#_count_value_65536_708
	mov	a,@r0
	cjne	a,ar4,00209$
;	.\ecen4350_lcd_v4.c:2685: noneFound = 0;
	mov	r0,#_count_noneFound_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2686: page++;
	inc	r3
00209$:
;	.\ecen4350_lcd_v4.c:2682: for(unsigned int i = 0; i < blockSize; i++) {
	inc	_count_i_262144_721
	clr	a
	cjne	a,_count_i_262144_721,00208$
	inc	(_count_i_262144_721 + 1)
	sjmp	00208$
00267$:
	mov	ar5,r3
;	.\ecen4350_lcd_v4.c:2689: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2690: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2691: LCD_string_write(" Found in\n ");
	mov	dptr,#___str_125
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2692: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2693: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
;	.\ecen4350_lcd_v4.c:2694: print8Hex(page);
	mov	dpl,r3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2695: LCD_string_write(" Bytes (Hex)\n ");
	mov	dptr,#___str_126
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2696: exit = 0;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
	ljmp	00194$
00193$:
;	.\ecen4350_lcd_v4.c:2698: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2699: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2700: LCD_string_write(" [Interactive]\n");
	mov	dptr,#___str_108
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2701: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2702: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2703: setColorDefault();
	lcall	_setColorDefault
	pop	ar5
;	.\ecen4350_lcd_v4.c:2706: for (unsigned int i = 0; i < blockSize; i++) {
	clr	a
	mov	_count_sloc1_1_0,a
	mov	(_count_sloc1_1_0 + 1),a
00211$:
	mov	r0,#_count_blockSize_65536_708
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
;	.\ecen4350_lcd_v4.c:2707: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_count_address_65536_708
	mov	a,@r0
	add	a,_count_sloc1_1_0
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,(_count_sloc1_1_0 + 1)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: d = *map_address;
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:117: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2708: if(value == ramRead8(d)){
	mov	r0,#_count_value_65536_708
	mov	a,@r0
	cjne	a,ar3,00554$
	sjmp	00555$
00554$:
	ljmp	00212$
00555$:
;	.\ecen4350_lcd_v4.c:2709: noneFound = 0;		// toggle flag
	mov	r0,#_count_noneFound_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2710: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2711: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2712: LCD_string_write(" Found at Location \n");
	mov	dptr,#___str_109
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2713: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2714: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2715: print16Hex(page+address);
	mov	ar2,r5
	mov	r3,#0x00
	mov	r0,#_count_address_65536_708
	mov	a,@r0
	add	a,r2
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	dph,a
	push	ar5
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2716: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2717: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2718: LCD_string_write("Count: ");
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2719: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
;	.\ecen4350_lcd_v4.c:2720: print8Hex(page+1);
	mov	ar3,r5
	mov	a,r3
	inc	a
	mov	dpl,a
	push	ar5
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2724: if (i == 0) {					// At beginning, page <0>
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jz	00556$
	ljmp	00187$
00556$:
;	.\ecen4350_lcd_v4.c:2725: if (i != blockSize - 1) {	// not at the end yet, no previous page
	push	ar5
	mov	r0,#_count_blockSize_65536_708
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
;	.\ecen4350_lcd_v4.c:2726: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2727: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2728: LCD_string_write(" <1> Next\n <0> Exit\n              ");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2729: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2730: while (invalidInput) {
	mov	_count_sloc0_1_0,r5
00134$:
	mov	a,r7
	jnz	00558$
	ljmp	00268$
00558$:
;	.\ecen4350_lcd_v4.c:2731: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:2732: if(selection == '1'){
	cjne	r7,#0x31,00559$
	sjmp	00560$
00559$:
	pop	ar7
	sjmp	00131$
00560$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2733: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2734: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2735: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2736: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2737: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2738: page++;
	inc	_count_sloc0_1_0
00131$:
;	.\ecen4350_lcd_v4.c:2739: } if(selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00134$
;	.\ecen4350_lcd_v4.c:2740: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2741: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2742: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2743: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2744: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2745: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2746: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00134$
00145$:
;	.\ecen4350_lcd_v4.c:2749: } else if (i == blockSize - 1) {	// starts at the end, no previous or next page
	dec	r2
	cjne	r2,#0xff,00563$
	dec	r3
00563$:
	mov	a,r2
	cjne	a,_count_sloc1_1_0,00146$
	mov	a,r3
	cjne	a,(_count_sloc1_1_0 + 1),00146$
;	.\ecen4350_lcd_v4.c:2750: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2751: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2752: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2753: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2754: while (invalidInput) {
00139$:
	mov	a,r7
	jz	00146$
;	.\ecen4350_lcd_v4.c:2755: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:2756: if(selection == '0') {
	cjne	r3,#0x30,00139$
;	.\ecen4350_lcd_v4.c:2757: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2758: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2759: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2760: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2761: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2762: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2763: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00139$
00268$:
	mov	r5,_count_sloc0_1_0
00146$:
;	.\ecen4350_lcd_v4.c:2767: if (exit == 0) {	// check exit flag
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jz	00569$
	ljmp	00212$
00569$:
;	.\ecen4350_lcd_v4.c:2768: break;			// break out of for loop iteration
	ljmp	00194$
00187$:
;	.\ecen4350_lcd_v4.c:2773: else if (i == blockSize - 1) {		// At Page End 
	push	ar5
	mov	r0,#_count_blockSize_65536_708
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
;	.\ecen4350_lcd_v4.c:2774: if (i != 0) {				// not at beginning, no next page
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jnz	00572$
	ljmp	00164$
00572$:
;	.\ecen4350_lcd_v4.c:2775: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2776: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2777: LCD_string_write("          \n <0> Exit\n <2> Previous");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2778: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2779: while (invalidInput) {
	mov	_count_sloc0_1_0,r5
00153$:
	mov	a,r7
	jnz	00573$
	ljmp	00269$
00573$:
;	.\ecen4350_lcd_v4.c:2780: selection = keyDetect();
	push	ar7
	push	ar7
	lcall	_keyDetect
	mov	r2,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2781: if(selection == '0'){
	cjne	r2,#0x30,00574$
	sjmp	00575$
00574$:
	pop	ar7
	sjmp	00150$
00575$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2782: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2783: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2784: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2785: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2786: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2787: exit = 0;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
00150$:
;	.\ecen4350_lcd_v4.c:2788: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00153$
;	.\ecen4350_lcd_v4.c:2789: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2790: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2791: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2792: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2793: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2794: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2795: i--;			// two decrements plus next loop increment is equal to one decrement
	mov	a,_count_sloc1_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_count_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2796: i--;
	mov	a,r2
	add	a,#0xff
	mov	_count_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_count_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2797: page--;			// decrement to previous page
	dec	_count_sloc0_1_0
	ljmp	00153$
00164$:
;	.\ecen4350_lcd_v4.c:2801: else if (i == 0){				// end at beginning, no next or previous
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
;	.\ecen4350_lcd_v4.c:2802: setCursor(0, 180);
	jnz	00165$
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2803: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2804: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2805: invalidInput = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:2806: while (invalidInput) {
00158$:
	mov	a,r6
	jz	00165$
;	.\ecen4350_lcd_v4.c:2807: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2808: if(selection == '0') {
	cjne	r4,#0x30,00158$
;	.\ecen4350_lcd_v4.c:2809: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2810: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2811: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2812: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2813: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2814: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2815: invalidInput = 0;
	mov	r6,#0x00
	sjmp	00158$
00269$:
	mov	r5,_count_sloc0_1_0
00165$:
;	.\ecen4350_lcd_v4.c:2819: if (exit == 0) {	// check exit flag
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jz	00582$
	ljmp	00212$
00582$:
;	.\ecen4350_lcd_v4.c:2820: break;			// break out of for loop iteration
	ljmp	00194$
00184$:
;	.\ecen4350_lcd_v4.c:2825: else if (i != blockSize - 1)  {	// in mid page, with previous and next options
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
;	.\ecen4350_lcd_v4.c:2826: if (i != 0) {
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jnz	00585$
	ljmp	00178$
00585$:
;	.\ecen4350_lcd_v4.c:2827: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2828: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2829: LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
	mov	dptr,#___str_117
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2830: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2831: while (invalidInput) {
00174$:
	mov	a,r7
	jnz	00586$
	ljmp	00178$
00586$:
;	.\ecen4350_lcd_v4.c:2832: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2833: if (selection == '1') {
	cjne	r6,#0x31,00169$
;	.\ecen4350_lcd_v4.c:2834: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2835: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2836: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2837: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2838: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2839: page++;
	inc	r5
00169$:
;	.\ecen4350_lcd_v4.c:2840: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00171$
;	.\ecen4350_lcd_v4.c:2841: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2842: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2843: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2844: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2845: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2846: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2847: i--;
	mov	a,_count_sloc1_1_0
	add	a,#0xff
	mov	r4,a
	mov	a,(_count_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2848: i--;		// two decrements plus next loop increment is equal to one decrement
	mov	a,r4
	add	a,#0xff
	mov	_count_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_count_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2849: page--;		// decrement to previous page
	dec	r5
00171$:
;	.\ecen4350_lcd_v4.c:2850: } if (selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00591$
	sjmp	00592$
00591$:
	ljmp	00174$
00592$:
;	.\ecen4350_lcd_v4.c:2851: setColorWhite();
	push	ar5
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2852: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2853: LCD_string_write(" <1> Next\n ");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2854: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2855: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2856: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2857: LCD_string_write("\n <2> Previous");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2858: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2859: invalidInput = 0;
	mov	r7,#0x00
	ljmp	00174$
00178$:
;	.\ecen4350_lcd_v4.c:2863: if (exit == 0) {		// check exit flag
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jz	00194$
;	.\ecen4350_lcd_v4.c:2864: break;			// break out the loop
00212$:
;	.\ecen4350_lcd_v4.c:2706: for (unsigned int i = 0; i < blockSize; i++) {
	inc	_count_sloc1_1_0
	clr	a
	cjne	a,_count_sloc1_1_0,00594$
	inc	(_count_sloc1_1_0 + 1)
00594$:
	ljmp	00211$
00194$:
;	.\ecen4350_lcd_v4.c:2870: if(noneFound) {
	mov	r0,#_count_noneFound_65536_708
	mov	a,@r0
	jnz	00595$
	ljmp	00202$
00595$:
;	.\ecen4350_lcd_v4.c:2871: setColorRed();
	push	ar5
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2872: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2873: LCD_string_write(" Value Not Found\n Within Block\n ");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2874: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2875: LCD_string_write("\n <0> Exit");
	mov	dptr,#___str_121
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2876: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2878: while (invalidInput) {
00197$:
	mov	a,r7
	jnz	00596$
	ljmp	00202$
00596$:
;	.\ecen4350_lcd_v4.c:2879: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2880: if (selection == '0'){
	cjne	r6,#0x30,00197$
;	.\ecen4350_lcd_v4.c:2881: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2882: LCD_string_write("\n\n\n ");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2883: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2884: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2885: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2886: exit = 0;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
	sjmp	00197$
00204$:
;	.\ecen4350_lcd_v4.c:2891: delay(80);
	mov	dptr,#0x0050
;	.\ecen4350_lcd_v4.c:2892: return;
;	.\ecen4350_lcd_v4.c:2893: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'check'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2895: void check() {
;	-----------------------------------------
;	 function check
;	-----------------------------------------
_check:
;	.\ecen4350_lcd_v4.c:2897: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2900: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2901: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2902: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2903: setCursor(15, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2904: LCD_string_write("[CHECK]\n");
	mov	dptr,#___str_128
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2905: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2906: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2907: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2908: LCD_string_write(" Enter Value:\n");
	mov	dptr,#___str_129
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2909: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2910: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2912: setCursor(0,60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2913: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2914: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2915: selection = 0;
	mov	r0,#_selection
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2916: temp = keyDetect();
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:2917: write(temp);
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:2918: temp = ASCIItoHex(temp);
	mov	dpl,r7
	lcall	_ASCIItoHex
;	.\ecen4350_lcd_v4.c:2919: selection |= temp * 16;
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	r0,#_selection
	mov	a,@r0
	orl	a,r7
	mov	r0,#_selection
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2920: temp = keyDetect();
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:2921: write(temp);
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:2922: temp = ASCIItoHex(temp);
	mov	dpl,r7
	lcall	_ASCIItoHex
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:2923: selection |= temp;
	mov	r0,#_selection
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2924: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2925: LCD_string_write("\n\n Writing byte to\n all memory\n locations...");
	mov	dptr,#___str_130
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2926: writeAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_writeAllRAM
;	.\ecen4350_lcd_v4.c:2927: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2928: LCD_string_write("\n Verifying write...");
	mov	dptr,#___str_131
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2929: checkAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_checkAllRAM
;	.\ecen4350_lcd_v4.c:2930: LCD_string_write("\n Complete.");
	mov	dptr,#___str_132
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2931: setTextColor(BLUE, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x001f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:2932: LCD_string_write("\n\n Toggling bits in\n each nibble...");
	mov	dptr,#___str_133
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2933: selection = ~selection;
	mov	r0,#_selection
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2934: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2935: LCD_string_write("\n Writing new byte...");
	mov	dptr,#___str_134
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2936: writeAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_writeAllRAM
;	.\ecen4350_lcd_v4.c:2937: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2938: LCD_string_write("\n Verifying write...");
	mov	dptr,#___str_131
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2939: checkAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_checkAllRAM
;	.\ecen4350_lcd_v4.c:2940: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:2941: LCD_string_write("\n\n Check Complete.");
	mov	dptr,#___str_135
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2942: delay(120);
	mov	dptr,#0x0078
;	.\ecen4350_lcd_v4.c:2943: return;
;	.\ecen4350_lcd_v4.c:2944: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'uart'
;------------------------------------------------------------
;initLock                  Allocated to registers r2 
;temp                      Allocated to registers r7 
;baudType                  Allocated with name '_uart_baudType_65536_763'
;_8b                       Allocated to registers r5 
;frame_NES                 Allocated to registers r3 r4 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2946: void uart() {
;	-----------------------------------------
;	 function uart
;	-----------------------------------------
_uart:
;	.\ecen4350_lcd_v4.c:2948: __idata u8 temp = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2949: __idata u8 baudType = 0;
	mov	r0,#_uart_baudType_65536_763
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2950: __idata u8 _8b = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:2951: __idata u16 frame_NES = 0;		//	bitMode | Even/odd | Set/not
	mov	r3,#0x00
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:2962: uartMenu:
00101$:
;	.\ecen4350_lcd_v4.c:2963: clearLCD();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2964: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2965: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2966: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2967: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2968: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:2971: initLock = 0;
	mov	r2,#0x00
;	.\ecen4350_lcd_v4.c:2972: if (UART_en == 1){
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00513$
	sjmp	00514$
00513$:
	ljmp	00118$
00514$:
;	.\ecen4350_lcd_v4.c:2973: setTextSize(2);
	mov	dpl,#0x02
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2974: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2975: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2976: LCD_string_write(" <1> ");
	mov	dptr,#___str_137
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:2977: if (baudType == 0x1) {
	mov	r0,#_uart_baudType_65536_763
	cjne	@r0,#0x01,00104$
;	.\ecen4350_lcd_v4.c:2978: LCD_string_write("1200");
	mov	dptr,#___str_138
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:2980: if (baudType == 0x2) {
	mov	r0,#_uart_baudType_65536_763
	cjne	@r0,#0x02,00106$
;	.\ecen4350_lcd_v4.c:2981: LCD_string_write("2400");
	mov	dptr,#___str_139
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00106$:
;	.\ecen4350_lcd_v4.c:2982: } if (baudType == 0x3){
	mov	r0,#_uart_baudType_65536_763
	cjne	@r0,#0x03,00108$
;	.\ecen4350_lcd_v4.c:2983: LCD_string_write("4800");
	mov	dptr,#___str_140
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00108$:
;	.\ecen4350_lcd_v4.c:2984: } if (baudType == 0x4){
	mov	r0,#_uart_baudType_65536_763
	cjne	@r0,#0x04,00110$
;	.\ecen4350_lcd_v4.c:2985: LCD_string_write("9600");
	mov	dptr,#___str_141
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00110$:
;	.\ecen4350_lcd_v4.c:2986: } if (baudType == 0x5) {
	mov	r0,#_uart_baudType_65536_763
	cjne	@r0,#0x05,00112$
;	.\ecen4350_lcd_v4.c:2987: LCD_string_write("19200");
	mov	dptr,#___str_142
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00112$:
;	.\ecen4350_lcd_v4.c:2989: LCD_string_write(" baud\n");
	mov	dptr,#___str_143
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2990: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2991: LCD_string_write(" <2> ");
	mov	dptr,#___str_144
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:2992: if (_8b == 1) {
	cjne	r5,#0x01,00114$
;	.\ecen4350_lcd_v4.c:2993: LCD_string_write("8");
	mov	dptr,#___str_145
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00114$:
;	.\ecen4350_lcd_v4.c:2994: } if (_8b == 0) {
	mov	a,r5
	jnz	00116$
;	.\ecen4350_lcd_v4.c:2995: LCD_string_write("9");
	mov	dptr,#___str_146
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00116$:
;	.\ecen4350_lcd_v4.c:2997: LCD_string_write("-bit Mode\n");
	mov	dptr,#___str_147
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2998: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2999: LCD_string_write(" <3> ");
	mov	dptr,#___str_148
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3000: LCD_string_write(" Parity");
	mov	dptr,#___str_149
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3001: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3002: LCD_string_write(" <4> Disable UART\n");
	mov	dptr,#___str_150
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3003: LCD_string_write("     (Enabled)\n");
	mov	dptr,#___str_151
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00118$:
;	.\ecen4350_lcd_v4.c:3004: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00120$
;	.\ecen4350_lcd_v4.c:3005: setTextSize(2);
	mov	dpl,#0x02
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3006: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3007: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3008: LCD_string_write(" <1> Set Data Rate\n");
	mov	dptr,#___str_152
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3009: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3010: LCD_string_write(" <2> Number of Bits\n     (8 or 9 bits)\n");
	mov	dptr,#___str_153
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3011: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3012: LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
	mov	dptr,#___str_154
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3013: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3014: LCD_string_write(" <4> Enable UART\n");
	mov	dptr,#___str_155
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3015: LCD_string_write("     (Disabled)\n");
	mov	dptr,#___str_156
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00120$:
;	.\ecen4350_lcd_v4.c:3017: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3018: LCD_string_write(" <0> Exit \n");
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3020: mainInput:
00121$:
;	.\ecen4350_lcd_v4.c:3021: selection = keyDetect();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:3022: if (selection =='0') {
	cjne	r6,#0x30,00123$
;	.\ecen4350_lcd_v4.c:3023: setCursor (0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3024: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3025: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3026: LCD_string_write("<0> ");
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3027: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3028: LCD_string_write("Exit\n");
	mov	dptr,#___str_159
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3029: delay(20);
	mov	dptr,#0x0014
;	.\ecen4350_lcd_v4.c:3030: goto finish;
	ljmp	_delay
00123$:
;	.\ecen4350_lcd_v4.c:3032: if (selection == '4') {
	cjne	r6,#0x34,00531$
	sjmp	00532$
00531$:
	ljmp	00129$
00532$:
;	.\ecen4350_lcd_v4.c:3033: setCursor (0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3034: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3035: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3036: LCD_string_write("<4> ");
	mov	dptr,#___str_160
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3037: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3038: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00125$
;	.\ecen4350_lcd_v4.c:3039: LCD_string_write("Disable UART\n");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3040: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3041: LCD_string_write("     ");
	mov	dptr,#___str_162
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3042: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3043: LCD_string_write("(Enabled)");
	mov	dptr,#___str_163
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3044: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3045: initLock = 0;
	mov	r2,#0x00
;	.\ecen4350_lcd_v4.c:3047: _8b = 'null';
	mov	r5,#0x6e
;	.\ecen4350_lcd_v4.c:3048: frame_NES = 0;
	mov	r3,#0x00
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:3049: temp = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3050: UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3051: baudSet = 0;
	mov	r0,#_baudSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3052: bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3053: paritySet = 0;
	mov	r0,#_paritySet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3054: goto mainInput;
	ljmp	00121$
00125$:
;	.\ecen4350_lcd_v4.c:3055: } if (UART_en == 0 ){
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00127$
;	.\ecen4350_lcd_v4.c:3056: LCD_string_write("Enable UART\n");
	mov	dptr,#___str_164
	mov	b,#0x80
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3057: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3058: LCD_string_write("     ");
	mov	dptr,#___str_162
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3059: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3060: LCD_string_write("(Disabled)");
	mov	dptr,#___str_165
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3061: setColorDefault();
	lcall	_setColorDefault
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00127$:
;	.\ecen4350_lcd_v4.c:3063: delay(40);
	mov	dptr,#0x0028
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3064: initLock = 1;
	mov	r2,#0x01
;	.\ecen4350_lcd_v4.c:3065: goto verifyUART;
	ljmp	00149$
00129$:
;	.\ecen4350_lcd_v4.c:3066: } if (selection == '1') {
	cjne	r6,#0x31,00536$
	sjmp	00537$
00536$:
	ljmp	00135$
00537$:
;	.\ecen4350_lcd_v4.c:3067: setCursor (0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3068: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3069: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3070: LCD_string_write("<1> ");
	mov	dptr,#___str_166
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3071: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3072: LCD_string_write("Set Data Rate\n");
	mov	dptr,#___str_167
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3073: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3074: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00131$
;	.\ecen4350_lcd_v4.c:3075: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3076: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3077: LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
	mov	dptr,#___str_168
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3078: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3079: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3080: LCD_string_write(" <1> Set Data Rate\n");
	mov	dptr,#___str_152
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3081: goto mainInput;
	ljmp	00121$
00131$:
;	.\ecen4350_lcd_v4.c:3082: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00540$
	ljmp	00168$
00540$:
;	.\ecen4350_lcd_v4.c:3083: goto setRate;
00135$:
;	.\ecen4350_lcd_v4.c:3086: if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00541$
	sjmp	00542$
00541$:
	ljmp	00141$
00542$:
;	.\ecen4350_lcd_v4.c:3087: setCursor (0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3088: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3089: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3090: LCD_string_write("<2> ");
	mov	dptr,#___str_169
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3091: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3092: LCD_string_write("Number of Bits\n");
	mov	dptr,#___str_170
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3093: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3094: LCD_string_write("     ");
	mov	dptr,#___str_162
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3095: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3096: LCD_string_write("(8 or 9 bits)\n");
	mov	dptr,#___str_171
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3097: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00137$
;	.\ecen4350_lcd_v4.c:3098: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3099: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3100: LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
	mov	dptr,#___str_168
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3101: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3102: setCursor(0, 100);		
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3103: LCD_string_write(" <2> Number of Bits\n     (8 or 9 bits)\n");
	mov	dptr,#___str_153
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3104: goto mainInput;
	ljmp	00121$
00137$:
;	.\ecen4350_lcd_v4.c:3105: } if (UART_en == 0) goto setBit;
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00545$
	ljmp	00195$
00545$:
00141$:
;	.\ecen4350_lcd_v4.c:3106: } if (selection == '3') {
	mov	r0,#_selection
	cjne	@r0,#0x33,00546$
	sjmp	00547$
00546$:
	ljmp	00147$
00547$:
;	.\ecen4350_lcd_v4.c:3107: setCursor (0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3108: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3109: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3110: LCD_string_write("<3> ");
	mov	dptr,#___str_172
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3111: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3112: LCD_string_write("Parity ");
	mov	dptr,#___str_173
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3113: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3114: LCD_string_write("(Even/\n");
	mov	dptr,#___str_174
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3115: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3116: LCD_string_write("     ");
	mov	dptr,#___str_162
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3117: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3118: LCD_string_write("(Odd/None)\n");
	mov	dptr,#___str_175
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3119: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00143$
;	.\ecen4350_lcd_v4.c:3120: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3121: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3122: LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
	mov	dptr,#___str_168
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3123: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3124: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3125: LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
	mov	dptr,#___str_154
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3126: goto mainInput;
	ljmp	00121$
00143$:
;	.\ecen4350_lcd_v4.c:3127: } if (UART_en == 0) goto setParity;
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00149$
	ljmp	00202$
00147$:
;	.\ecen4350_lcd_v4.c:3129: setColorRed();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3130: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3131: LCD_string_write("\n\n\n\n Incorrect input\n  Try again.\n");
	mov	dptr,#___str_176
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3132: setColorDefault();
	lcall	_setColorDefault
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3133: goto mainInput;
	ljmp	00121$
;	.\ecen4350_lcd_v4.c:3136: verifyUART:
00149$:
;	.\ecen4350_lcd_v4.c:3137: clearLCD();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3138: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3139: if (initLock == 1) {
	cjne	r2,#0x01,00551$
	sjmp	00552$
00551$:
	ljmp	00101$
00552$:
;	.\ecen4350_lcd_v4.c:3140: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00151$
;	.\ecen4350_lcd_v4.c:3141: setColorGreen();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:3142: LCD_string_write("\n Disabling UART...\n");
	mov	dptr,#___str_177
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3143: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3144: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3145: UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3146: bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3147: paritySet = 0;
	mov	r0,#_paritySet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3148: baudSet = 0;
	mov	r0,#_baudSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3149: setColorDefault();
	lcall	_setColorDefault
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3150: goto uartMenu;
	ljmp	00101$
00151$:
;	.\ecen4350_lcd_v4.c:3151: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jz	00555$
	ljmp	00168$
00555$:
;	.\ecen4350_lcd_v4.c:3152: if ((baudSet == 1) && (paritySet == 1) && (bitSet == 1)) {
	mov	r0,#_baudSet
	cjne	@r0,#0x01,00159$
	mov	r0,#_paritySet
	cjne	@r0,#0x01,00159$
	mov	r0,#_bitSet
	cjne	@r0,#0x01,00159$
;	.\ecen4350_lcd_v4.c:3153: setColorSelect();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:3154: LCD_string_write("\n Settings Verified:\n");
	mov	dptr,#___str_178
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3155: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3156: LCD_string_write(" Enabling UART...");
	mov	dptr,#___str_179
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3158: UART_en = 1;
	mov	r0,#_UART_en
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3160: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3161: goto uartMenu;
	ljmp	00101$
00159$:
;	.\ecen4350_lcd_v4.c:3163: if (baudSet == 0) {
	mov	r0,#_baudSet
	mov	a,@r0
	jnz	00153$
;	.\ecen4350_lcd_v4.c:3164: setColorRed();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3165: LCD_string_write(" BAUD ERROR\n");
	mov	dptr,#___str_180
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3166: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3167: LCD_string_write(" Entering Baud...\n");
	mov	dptr,#___str_181
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3168: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3169: goto setRate;
	sjmp	00168$
00153$:
;	.\ecen4350_lcd_v4.c:3170: } if (bitSet == 0) {
	mov	r0,#_bitSet
	mov	a,@r0
	jnz	00155$
;	.\ecen4350_lcd_v4.c:3171: setColorRed();
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3172: LCD_string_write(" BIT ERROR\n");
	mov	dptr,#___str_182
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3173: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3174: LCD_string_write(" Entering Bits...\n");
	mov	dptr,#___str_183
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3175: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:3176: goto setBit;
	ljmp	00195$
00155$:
;	.\ecen4350_lcd_v4.c:3177: } if (paritySet == 0) {
	mov	r0,#_paritySet
	mov	a,@r0
	jnz	00168$
;	.\ecen4350_lcd_v4.c:3178: setColorRed();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3179: LCD_string_write(" PARITY ERROR\n");
	mov	dptr,#___str_184
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3180: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3181: LCD_string_write(" Entering Parity...\n");
	mov	dptr,#___str_185
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3182: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3183: goto setParity;
	ljmp	00202$
;	.\ecen4350_lcd_v4.c:3189: setRate: 
00168$:
;	.\ecen4350_lcd_v4.c:3190: clearLCD();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3191: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3192: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3193: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3194: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3195: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3196: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3197: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3198: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3199: LCD_string_write(" <1> 1200 Baud\n");
	mov	dptr,#___str_186
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3200: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3201: LCD_string_write(" <2> 2400 Baud\n");
	mov	dptr,#___str_187
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3202: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3203: LCD_string_write(" <3> 4800 Baud\n");
	mov	dptr,#___str_188
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3204: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3205: LCD_string_write(" <4> 9600 Baud\n");
	mov	dptr,#___str_189
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3206: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3207: LCD_string_write(" <5> 19200 Baud\n");
	mov	dptr,#___str_190
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3209: selection = keyDetect();
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:3210: if (selection == '1' ) {
	cjne	r6,#0x31,00174$
;	.\ecen4350_lcd_v4.c:3211: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3212: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3213: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3214: LCD_string_write("<1> ");
	mov	dptr,#___str_166
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3215: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3216: LCD_string_write("1200 Baud\n");
	mov	dptr,#___str_191
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3217: TH1 = 0xE6;	// 1200 baud
	mov	_TH1,#0xe6
;	.\ecen4350_lcd_v4.c:3218: PCON = 0x00; //SMOD = 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3219: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3220: baudType = 0x1;
	mov	r0,#_uart_baudType_65536_763
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3221: if (initLock == 1) goto verifyUART;
	cjne	r2,#0x01,00567$
	sjmp	00568$
00567$:
	ljmp	00101$
00568$:
	ljmp	00149$
;	.\ecen4350_lcd_v4.c:3222: else goto uartMenu;
00174$:
;	.\ecen4350_lcd_v4.c:3224: if (selection == '2' ) {
	cjne	r6,#0x32,00179$
;	.\ecen4350_lcd_v4.c:3225: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3226: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3227: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3228: LCD_string_write("<2> ");
	mov	dptr,#___str_169
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3229: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3230: LCD_string_write("2400 Baud\n");
	mov	dptr,#___str_192
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3231: TH1 = 0xF3; // 2400 baud
	mov	_TH1,#0xf3
;	.\ecen4350_lcd_v4.c:3232: PCON = 0x00; //SMOD = 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3233: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3234: baudType = 0x2;
	mov	r0,#_uart_baudType_65536_763
	mov	@r0,#0x02
;	.\ecen4350_lcd_v4.c:3235: if (initLock == 1) goto verifyUART;
	cjne	r2,#0x01,00571$
	sjmp	00572$
00571$:
	ljmp	00101$
00572$:
	ljmp	00149$
;	.\ecen4350_lcd_v4.c:3236: else goto uartMenu;
00179$:
;	.\ecen4350_lcd_v4.c:3238: if (selection == '3' ) {
	cjne	r6,#0x33,00184$
;	.\ecen4350_lcd_v4.c:3239: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3240: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3241: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3242: LCD_string_write("<3> ");
	mov	dptr,#___str_172
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3243: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3244: LCD_string_write("4800 Baud\n");
	mov	dptr,#___str_193
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3245: TH1 = 0xF3; //4800 baud
	mov	_TH1,#0xf3
;	.\ecen4350_lcd_v4.c:3246: PCON = 0x80; //SMOD 1
	mov	_PCON,#0x80
;	.\ecen4350_lcd_v4.c:3247: baudSet = 1; 
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3248: baudType = 0x3;
	mov	r0,#_uart_baudType_65536_763
	mov	@r0,#0x03
;	.\ecen4350_lcd_v4.c:3249: if (initLock == 1) goto verifyUART;
	cjne	r2,#0x01,00575$
	sjmp	00576$
00575$:
	ljmp	00101$
00576$:
	ljmp	00149$
;	.\ecen4350_lcd_v4.c:3250: else goto uartMenu;
00184$:
;	.\ecen4350_lcd_v4.c:3252: if (selection == '4' ) {
	cjne	r6,#0x34,00189$
;	.\ecen4350_lcd_v4.c:3253: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3254: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3255: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3256: LCD_string_write("<4> ");
	mov	dptr,#___str_160
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3257: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3258: LCD_string_write("9600 Baud\n");
	mov	dptr,#___str_194
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3259: TH1 = 0xFD; //9600 baud
	mov	_TH1,#0xfd
;	.\ecen4350_lcd_v4.c:3260: PCON = 0x00; //SMOD 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3261: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3262: baudType = 0x4;
	mov	r0,#_uart_baudType_65536_763
	mov	@r0,#0x04
;	.\ecen4350_lcd_v4.c:3263: if (initLock == 1) goto verifyUART;
	cjne	r2,#0x01,00579$
	sjmp	00580$
00579$:
	ljmp	00101$
00580$:
	ljmp	00149$
;	.\ecen4350_lcd_v4.c:3264: else goto uartMenu;
00189$:
;	.\ecen4350_lcd_v4.c:3266: if (selection == '5' ) {
	cjne	r6,#0x35,00193$
;	.\ecen4350_lcd_v4.c:3267: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3268: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3269: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3270: LCD_string_write("<5> ");
	mov	dptr,#___str_195
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3271: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3272: LCD_string_write("19200 Baud\n");
	mov	dptr,#___str_196
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3273: TH1 = 0xFD;	//19200 baud
	mov	_TH1,#0xfd
;	.\ecen4350_lcd_v4.c:3274: PCON = 0x80; //SMOD 1
	mov	_PCON,#0x80
;	.\ecen4350_lcd_v4.c:3275: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3276: baudType = 0x5;
	mov	r0,#_uart_baudType_65536_763
	mov	@r0,#0x05
;	.\ecen4350_lcd_v4.c:3277: if (initLock == 1) goto verifyUART;
	cjne	r2,#0x01,00195$
	ljmp	00149$
00193$:
;	.\ecen4350_lcd_v4.c:3279: setColorRed();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3280: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3281: LCD_string_write(" INPUT ERROR");
	mov	dptr,#___str_197
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3282: setColorDefault();
	lcall	_setColorDefault
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3283: goto mainInput;
	ljmp	00121$
;	.\ecen4350_lcd_v4.c:3286: setBit:
00195$:
;	.\ecen4350_lcd_v4.c:3287: clearLCD();
	push	ar4
	push	ar3
	push	ar2
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3288: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3289: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3290: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3291: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3292: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3293: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3294: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3295: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3296: LCD_string_write(" <1> 8-bit Mode\n");
	mov	dptr,#___str_198
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3297: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3298: LCD_string_write(" <2> 9-bit Mode\n");
	mov	dptr,#___str_199
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:3299: sel:
00196$:
;	.\ecen4350_lcd_v4.c:3300: selection = keyDetect();
	push	ar4
	push	ar3
	push	ar2
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:3301: if (selection == '1') {
	cjne	r6,#0x31,00198$
;	.\ecen4350_lcd_v4.c:3302: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3303: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3304: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3305: LCD_string_write("<1> ");
	mov	dptr,#___str_166
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3306: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3307: LCD_string_write("8-bit Mode\n");
	mov	dptr,#___str_200
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:3308: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3309: _8b = 1;
	mov	r5,#0x01
;	.\ecen4350_lcd_v4.c:3310: temp = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:3311: goto cont;
	ljmp	00242$
00198$:
;	.\ecen4350_lcd_v4.c:3312: } if (selection == '2') {
	cjne	r6,#0x32,00200$
;	.\ecen4350_lcd_v4.c:3313: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3314: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3315: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3316: LCD_string_write("<2> ");
	mov	dptr,#___str_169
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3317: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3318: LCD_string_write("9-bit Mode\n");
	mov	dptr,#___str_201
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:3319: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3320: _8b = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:3321: temp = 2;
	mov	r7,#0x02
;	.\ecen4350_lcd_v4.c:3322: goto cont;
	ljmp	00242$
00200$:
;	.\ecen4350_lcd_v4.c:3324: bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3325: goto sel;
	ljmp	00196$
;	.\ecen4350_lcd_v4.c:3328: setParity:
00202$:
;	.\ecen4350_lcd_v4.c:3329: if (temp == 0) {
	mov	a,r7
;	.\ecen4350_lcd_v4.c:3330: setCursor(0, 240);
	jnz	00204$
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3331: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3332: writeNewLine();
	lcall	_writeNewLine
;	.\ecen4350_lcd_v4.c:3333: LCD_string_write("\n Please set the\n  bit mode first.\n");
	mov	dptr,#___str_202
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3334: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3335: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3336: LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
	mov	dptr,#___str_154
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3337: goto mainInput;
	ljmp	00121$
00204$:
;	.\ecen4350_lcd_v4.c:3338: } if (temp == 1) {
	cjne	r7,#0x01,00206$
;	.\ecen4350_lcd_v4.c:3339: _8b = 1;
	mov	r5,#0x01
00206$:
;	.\ecen4350_lcd_v4.c:3340: } if (temp == 2) {
	cjne	r7,#0x02,00208$
;	.\ecen4350_lcd_v4.c:3341: _8b = 0;
	mov	r5,#0x00
00208$:
;	.\ecen4350_lcd_v4.c:3343: clearLCD();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3344: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3345: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3346: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3347: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3348: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3349: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3350: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3351: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3352: LCD_string_write(" <1> Even Parity\n");
	mov	dptr,#___str_203
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3353: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3354: LCD_string_write(" <2> Odd Parity\n");
	mov	dptr,#___str_204
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3355: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3356: LCD_string_write(" <3> No Parity");
	mov	dptr,#___str_205
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3358: boop: 
00209$:
;	.\ecen4350_lcd_v4.c:3359: selection = keyDetect();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:3360: if (selection == '1') {
	cjne	r6,#0x31,00216$
;	.\ecen4350_lcd_v4.c:3361: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3362: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3363: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3364: LCD_string_write("<1> ");
	mov	dptr,#___str_166
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3365: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3366: LCD_string_write("Even Parity\n");
	mov	dptr,#___str_206
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3367: if(_8b == 0) {
	mov	a,r5
	jnz	00211$
;	.\ecen4350_lcd_v4.c:3368: frame_NES = 0x111;	//9 bit, Even, Parity Set
	mov	r3,#0x11
	mov	r4,#0x01
;	.\ecen4350_lcd_v4.c:3369: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3370: goto setFrame;
	ljmp	00231$
00211$:
;	.\ecen4350_lcd_v4.c:3371: } if (_8b == 1){
	cjne	r5,#0x01,00597$
	sjmp	00598$
00597$:
	ret
00598$:
;	.\ecen4350_lcd_v4.c:3372: frame_NES = 0x011;	//8 bit, even, Parity Set
	mov	r3,#0x11
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:3373: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3374: goto setFrame;
	ljmp	00231$
;	.\ecen4350_lcd_v4.c:3377: goto finish;
00216$:
;	.\ecen4350_lcd_v4.c:3379: } if (selection == '2') {
	cjne	r6,#0x32,00223$
;	.\ecen4350_lcd_v4.c:3380: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3381: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3382: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3383: LCD_string_write("<2> ");
	mov	dptr,#___str_169
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3384: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3385: LCD_string_write("Odd Parity\n");
	mov	dptr,#___str_207
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3387: if (_8b == 0) {
	mov	a,r5
	jnz	00218$
;	.\ecen4350_lcd_v4.c:3388: frame_NES = 0x101;		//9 bit, odd, parity set
	mov	r3,#0x01
	mov	r4,#0x01
;	.\ecen4350_lcd_v4.c:3389: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3390: goto setFrame;
	sjmp	00231$
00218$:
;	.\ecen4350_lcd_v4.c:3391: } if (_8b == 1) {
	cjne	r5,#0x01,00602$
	sjmp	00603$
00602$:
	ret
00603$:
;	.\ecen4350_lcd_v4.c:3392: frame_NES = 0x001;		//8 bit, odd, parity set
	mov	r3,#0x01
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:3393: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3394: goto setFrame;
;	.\ecen4350_lcd_v4.c:3397: goto finish;
	sjmp	00231$
00223$:
;	.\ecen4350_lcd_v4.c:3399: } if (selection == '3') {
	cjne	r6,#0x33,00604$
	sjmp	00605$
00604$:
	ljmp	00209$
00605$:
;	.\ecen4350_lcd_v4.c:3400: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3401: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3402: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3403: LCD_string_write("<3> ");
	mov	dptr,#___str_172
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3404: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3405: LCD_string_write("No Parity\n");
	mov	dptr,#___str_208
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3407: if (_8b == 0) {
	mov	a,r5
;	.\ecen4350_lcd_v4.c:3408: frame_NES = 0x100; 			//9 bit, odd, no parity
	jnz	00225$
	mov	r3,a
	mov	r4,#0x01
;	.\ecen4350_lcd_v4.c:3409: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3410: goto setFrame;
	sjmp	00231$
00225$:
;	.\ecen4350_lcd_v4.c:3411: } if (_8b == 1) {
	cjne	r5,#0x01,00231$
;	.\ecen4350_lcd_v4.c:3412: frame_NES = 0x000;		 	//8 bit, odd, no parity
	mov	r3,#0x00
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:3413: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3418: setFrame:	
00231$:
;	.\ecen4350_lcd_v4.c:3419: if ((frame_NES == 0x000) || 	//8 bit, odd, no parity
	mov	a,r3
	orl	a,r4
	jz	00232$
;	.\ecen4350_lcd_v4.c:3420: (frame_NES == 0x001) ||		//8 bit, odd, parity set
	cjne	r3,#0x01,00610$
	cjne	r4,#0x00,00610$
	sjmp	00232$
00610$:
;	.\ecen4350_lcd_v4.c:3421: (frame_NES == 0x010) ||
	cjne	r3,#0x10,00611$
	cjne	r4,#0x00,00611$
	sjmp	00232$
00611$:
;	.\ecen4350_lcd_v4.c:3422: (frame_NES == 0x011) ||
	cjne	r3,#0x11,00612$
	cjne	r4,#0x00,00612$
	sjmp	00232$
00612$:
;	.\ecen4350_lcd_v4.c:3423: (frame_NES == 0x100) ||
	cjne	r3,#0x00,00613$
	cjne	r4,#0x01,00613$
	sjmp	00232$
00613$:
;	.\ecen4350_lcd_v4.c:3424: (frame_NES == 0x101) ||
	cjne	r3,#0x01,00614$
	cjne	r4,#0x01,00614$
	sjmp	00232$
00614$:
;	.\ecen4350_lcd_v4.c:3425: (frame_NES == 0x110) ||
	cjne	r3,#0x10,00615$
	cjne	r4,#0x01,00615$
	sjmp	00232$
00615$:
;	.\ecen4350_lcd_v4.c:3426: (frame_NES == 0x111)) {
	cjne	r3,#0x11,00233$
	cjne	r4,#0x01,00233$
00232$:
;	.\ecen4350_lcd_v4.c:3427: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3428: goto cont;
	sjmp	00242$
00233$:
;	.\ecen4350_lcd_v4.c:3431: writeNewLine();
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_writeNewLine
;	.\ecen4350_lcd_v4.c:3432: LCD_string_write(" Something is wrong.");
	mov	dptr,#___str_209
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3433: delay(80);
	mov	dptr,#0x0050
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:3434: bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3435: goto uartMenu;
	ljmp	00101$
;	.\ecen4350_lcd_v4.c:3437: cont:
00242$:
;	.\ecen4350_lcd_v4.c:3438: if (initLock == 1) goto verifyUART;
	cjne	r2,#0x01,00618$
	sjmp	00619$
00618$:
	ljmp	00101$
00619$:
	ljmp	00149$
;	.\ecen4350_lcd_v4.c:3440: finish:
;	.\ecen4350_lcd_v4.c:3441: return;
;	.\ecen4350_lcd_v4.c:3443: }
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
;__2621440232              Allocated to registers 
;__2621440233              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__2621440235              Allocated to registers 
;__2621440236              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;validKey                  Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:3446: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\ecen4350_lcd_v4.c:3450: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3451: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3452: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3453: CD = 0;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:3454: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3455: rtcInit();							// RTC init
	lcall	_rtcInit
;	.\ecen4350_lcd_v4.c:3457: TFT_LCD_INIT();						// LCD init
	lcall	_TFT_LCD_INIT
;	.\ecen4350_lcd_v4.c:3458: iowrite8(seg7_address, SEG_H);		// [H]
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x89
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3459: delay(40);							
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3460: iowrite8(seg7_address, 0b01111011); // [i.]
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x7b
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3461: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3462: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3463: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3466: writeSomeLines();					// LCD Power On Self-Test and Welcome message
	lcall	_writeSomeLines
;	.\ecen4350_lcd_v4.c:3468: clearLCD();							// set LCD background
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3469: setColorDefault();	// set text color
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3479: loop:
00101$:
;	.\ecen4350_lcd_v4.c:3480: validKey = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:3481: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3482: clearLCD();
	push	ar7
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3483: setCursor(30, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3484: setTextSize(3);
	mov	dpl,#0x03
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3485: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:3486: rtcPrint();
	lcall	_rtcPrint
;	.\ecen4350_lcd_v4.c:3487: printMenu();
	lcall	_printMenu
	pop	ar7
;	.\ecen4350_lcd_v4.c:3488: inputKey:
00102$:
;	.\ecen4350_lcd_v4.c:3489: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:3490: if (selection == 'D') {
	cjne	r6,#0x44,00106$
;	.\ecen4350_lcd_v4.c:3491: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3492: setCursor(10, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3493: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3494: LCD_string_write("<D>");
	mov	dptr,#___str_210
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3495: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3496: LCD_string_write(" DUMP\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3497: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3498: iowrite8(seg7_address, SEG_D);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xa1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3499: if (validKey == 0) {
	mov	a,r7
	jnz	00104$
;	.\ecen4350_lcd_v4.c:3500: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3501: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3502: LCD_string_write("          ");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
00104$:
;	.\ecen4350_lcd_v4.c:3504: dump();
	lcall	_dump
;	.\ecen4350_lcd_v4.c:3505: goto loop;
	ljmp	00101$
00106$:
;	.\ecen4350_lcd_v4.c:3506: } if(selection == 'B') {
	cjne	r6,#0x42,00110$
;	.\ecen4350_lcd_v4.c:3507: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3508: setCursor(130, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0082
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3509: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3510: LCD_string_write("<B>");
	mov	dptr,#___str_212
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3511: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3512: LCD_string_write(" MOVE\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3513: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3514: iowrite8(seg7_address, SEG_B);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x83
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3515: if (validKey == 0) {
	mov	a,r7
	jnz	00108$
;	.\ecen4350_lcd_v4.c:3516: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3517: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3518: LCD_string_write("          ");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
00108$:
;	.\ecen4350_lcd_v4.c:3520: move();
	lcall	_move
;	.\ecen4350_lcd_v4.c:3521: goto loop;
	ljmp	00101$
00110$:
;	.\ecen4350_lcd_v4.c:3522: } if(selection == 'E') {
	cjne	r6,#0x45,00114$
;	.\ecen4350_lcd_v4.c:3523: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3524: setCursor(10, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3525: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3526: LCD_string_write("<E>");
	mov	dptr,#___str_213
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3527: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3528: LCD_string_write(" EDIT\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3529: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3530: iowrite8(seg7_address, SEG_E);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x86
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3531: if (validKey == 0) {
	mov	a,r7
	jnz	00112$
;	.\ecen4350_lcd_v4.c:3532: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3533: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3534: LCD_string_write("          ");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
00112$:
;	.\ecen4350_lcd_v4.c:3536: edit();
	lcall	_edit
;	.\ecen4350_lcd_v4.c:3537: goto loop;
	ljmp	00101$
00114$:
;	.\ecen4350_lcd_v4.c:3538: } if(selection == 'F') {
	cjne	r6,#0x46,00118$
;	.\ecen4350_lcd_v4.c:3539: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3540: setCursor(130, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0082
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3541: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3542: LCD_string_write("<F>");
	mov	dptr,#___str_214
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3543: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3544: LCD_string_write(" FIND\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3545: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3546: iowrite8(seg7_address, SEG_F);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3547: if (validKey == 0) {
	mov	a,r7
	jnz	00116$
;	.\ecen4350_lcd_v4.c:3548: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3549: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3550: LCD_string_write("          ");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
00116$:
;	.\ecen4350_lcd_v4.c:3552: find();
	lcall	_find
;	.\ecen4350_lcd_v4.c:3553: goto loop;
	ljmp	00101$
00118$:
;	.\ecen4350_lcd_v4.c:3554: } if(selection == 'C') {
	cjne	r6,#0x43,00122$
;	.\ecen4350_lcd_v4.c:3555: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3556: setCursor(10, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3557: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3558: LCD_string_write("<C>");
	mov	dptr,#___str_215
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3559: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3560: LCD_string_write(" COUNT\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3561: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3562: iowrite8(seg7_address, SEG_C);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xc6
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3563: if (validKey == 0) {
	mov	a,r7
	jnz	00120$
;	.\ecen4350_lcd_v4.c:3564: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3565: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3566: LCD_string_write("          ");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
00120$:
;	.\ecen4350_lcd_v4.c:3568: count();
	lcall	_count
;	.\ecen4350_lcd_v4.c:3569: goto loop;
	ljmp	00101$
00122$:
;	.\ecen4350_lcd_v4.c:3570: } if(selection == 'A') {
	cjne	r6,#0x41,00126$
;	.\ecen4350_lcd_v4.c:3571: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3572: setCursor(10, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3573: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3574: LCD_string_write("<A>");
	mov	dptr,#___str_216
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3575: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3576: LCD_string_write(" MEM CHECK\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3577: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3578: iowrite8(seg7_address, SEG_A);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0x88
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3579: if (validKey == 0) {
	mov	a,r7
	jnz	00124$
;	.\ecen4350_lcd_v4.c:3580: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3581: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3582: LCD_string_write("          ");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
00124$:
;	.\ecen4350_lcd_v4.c:3584: check();
	lcall	_check
;	.\ecen4350_lcd_v4.c:3585: goto loop;
	ljmp	00101$
00126$:
;	.\ecen4350_lcd_v4.c:3586: } if(selection == '1') {
	cjne	r6,#0x31,00250$
	sjmp	00251$
00250$:
	ljmp	00134$
00251$:
;	.\ecen4350_lcd_v4.c:3587: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3588: setCursor(10, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3589: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3590: LCD_string_write("<1>");
	mov	dptr,#___str_217
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3591: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3592: LCD_string_write(" UART");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3593: setTextSize(1);
	mov	dpl,#0x01
	lcall	_setTextSize
	pop	ar7
;	.\ecen4350_lcd_v4.c:3594: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00128$
;	.\ecen4350_lcd_v4.c:3595: LCD_string_write(" [Enabled]\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	push	ar7
	lcall	_LCD_string_write
	pop	ar7
00128$:
;	.\ecen4350_lcd_v4.c:3596: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00130$
;	.\ecen4350_lcd_v4.c:3597: LCD_string_write(" [Disabled]\n");
	mov	dptr,#___str_20
	mov	b,#0x80
	push	ar7
	lcall	_LCD_string_write
	pop	ar7
00130$:
;	.\ecen4350_lcd_v4.c:3599: setTextSize(2);
	mov	dpl,#0x02
	push	ar7
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3600: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3601: iowrite8(seg7_address, SEG_U);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:91: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:92: *map_address = d;
	mov	a,#0xc1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:93: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3602: if (validKey == 0) {
	mov	a,r7
	jnz	00132$
;	.\ecen4350_lcd_v4.c:3603: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3604: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3605: LCD_string_write("          ");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
00132$:
;	.\ecen4350_lcd_v4.c:3608: uart();
	lcall	_uart
;	.\ecen4350_lcd_v4.c:3609: goto loop;
	ljmp	00101$
00134$:
;	.\ecen4350_lcd_v4.c:3611: setCursor(45, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x002d
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3612: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3613: LCD_string_write("INVALID INPUT\n");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3614: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3615: LCD_string_write("Try again.");
	mov	dptr,#___str_219
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3616: validKey = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3617: delay(20);
	mov	dptr,#0x0014
	push	ar7
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3618: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3619: setCursor(45, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x002d
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3620: LCD_string_write("               \n");
	mov	dptr,#___str_220
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:3621: goto inputKey;
;	.\ecen4350_lcd_v4.c:3625: }
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
	.ascii " UART"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii " [Disabled]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii " [Enabled]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "[DUMP]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii " Address Location:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii " 0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii " Choose Block Type:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "  <1> BYTE"
	.db 0x0a
	.ascii "  <2> WORD"
	.db 0x0a
	.ascii "  <4> DWORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii " Input Size:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii " _"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii " Address Location:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii " Choose Block Type:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "<1> BYTE"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0a
	.ascii "                "
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "<2> WORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.ascii "                "
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0a
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "<4> DWORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0a
	.ascii "  Input Error"
	.db 0x0a
	.ascii "  Try Again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii " Input Size: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii " Mismatch Error"
	.db 0x0a
	.ascii " Try Again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii " Match Confirmed"
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii " Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii " 0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii " Hex Data:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii " ASCII Data:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii " Data Type:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii " BYTE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii " WORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii " DWORD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii " <0> Exit"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "<0> Exit"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii "[MOVE]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii " Source Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii " Destination:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii " Move Complete"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.ascii "[EDIT]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.ascii " Edit Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.ascii " Location Contents:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.ascii " __"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii " Enter New Value:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.ascii " Choose Next Action:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "  <1> Next Address"
	.db 0x0a
	.ascii "  <2> New Address"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.ascii "  <0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii " Enter New Value:"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.ascii "<1> Next Address"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.db 0x0a
	.db 0x0a
	.ascii "               "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.db 0x0a
	.ascii " __"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.db 0x0a
	.ascii "  <1> Next Address"
	.db 0x0a
	.ascii "  <2> New Address"
	.db 0x0a
	.ascii "  <0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii " Choose Next Action:"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii "<2> New Address"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.db 0x0a
	.ascii "               "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.ascii " Edit Address"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_78:
	.ascii "<0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_79:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii " Input Error "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_80:
	.ascii "[FIND]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_81:
	.ascii " Find Value:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_82:
	.ascii " Search Address:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_83:
	.ascii " Input Block Size:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_84:
	.ascii "  <01> BYTE"
	.db 0x0a
	.ascii "  <02> WORD"
	.db 0x0a
	.ascii "  <04> DWORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_85:
	.ascii "  <FF> (SCAN)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_86:
	.ascii "   __"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_87:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_88:
	.db 0x0a
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_89:
	.db 0x0a
	.ascii " Try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_90:
	.ascii "<01> BYTE"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_91:
	.ascii "  <02> WORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_92:
	.ascii "  <04> DWORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_93:
	.db 0x0a
	.ascii " Search Size Limit:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_94:
	.db 0x0a
	.ascii " BYTE [8 bits]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_95:
	.ascii "  <01> BYTE"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_96:
	.ascii "<02> WORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_97:
	.db 0x0a
	.ascii " WORD [16 bits]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_98:
	.ascii "  <01> BYTE"
	.db 0x0a
	.ascii "  <02> WORD"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_99:
	.ascii "<04> DWORD"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_100:
	.db 0x0a
	.ascii " DWORD [32 bits]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_101:
	.ascii "<04> DWORD"
	.db 0x0a
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_102:
	.ascii "<FF> (SCAN)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_103:
	.db 0x0a
	.ascii " [256 Blocks]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_104:
	.ascii " [Non-Interactive]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_105:
	.ascii " Search Value:"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_106:
	.ascii " Found at Location:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_107:
	.db 0x0a
	.ascii " 0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_108:
	.ascii " [Interactive]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_109:
	.ascii " Found at Location "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_110:
	.ascii "Page: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_111:
	.ascii " <1> Next"
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii "              "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_112:
	.ascii "<1> Next"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_113:
	.ascii "          "
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii "              "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_114:
	.ascii "          "
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii " <2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_115:
	.db 0x0a
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_116:
	.ascii "<2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_117:
	.ascii " <1> Next"
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x0a
	.ascii " <2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_118:
	.ascii " <1> Next"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_119:
	.db 0x0a
	.ascii " <2> Previous"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_120:
	.ascii " Value Not Found"
	.db 0x0a
	.ascii " Within Block"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_121:
	.db 0x0a
	.ascii " <0> Exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_122:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_123:
	.ascii "[COUNT]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_124:
	.ascii " Search Value:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_125:
	.ascii " Found in"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_126:
	.ascii " Bytes (Hex)"
	.db 0x0a
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_127:
	.ascii "Count: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_128:
	.ascii "[CHECK]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_129:
	.ascii " Enter Value:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_130:
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
___str_131:
	.db 0x0a
	.ascii " Verifying write..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_132:
	.db 0x0a
	.ascii " Complete."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_133:
	.db 0x0a
	.db 0x0a
	.ascii " Toggling bits in"
	.db 0x0a
	.ascii " each nibble..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_134:
	.db 0x0a
	.ascii " Writing new byte..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_135:
	.db 0x0a
	.db 0x0a
	.ascii " Check Complete."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_136:
	.ascii "[UART]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_137:
	.ascii " <1> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_138:
	.ascii "1200"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_139:
	.ascii "2400"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_140:
	.ascii "4800"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_141:
	.ascii "9600"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_142:
	.ascii "19200"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_143:
	.ascii " baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_144:
	.ascii " <2> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_145:
	.ascii "8"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_146:
	.ascii "9"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_147:
	.ascii "-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_148:
	.ascii " <3> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_149:
	.ascii " Parity"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_150:
	.ascii " <4> Disable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_151:
	.ascii "     (Enabled)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_152:
	.ascii " <1> Set Data Rate"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_153:
	.ascii " <2> Number of Bits"
	.db 0x0a
	.ascii "     (8 or 9 bits)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_154:
	.ascii " <3> Parity (Even)"
	.db 0x0a
	.ascii "     (Odd/None)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_155:
	.ascii " <4> Enable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_156:
	.ascii "     (Disabled)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_157:
	.ascii " <0> Exit "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_158:
	.ascii "<0> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_159:
	.ascii "Exit"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_160:
	.ascii "<4> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_161:
	.ascii "Disable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_162:
	.ascii "     "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_163:
	.ascii "(Enabled)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_164:
	.ascii "Enable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_165:
	.ascii "(Disabled)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_166:
	.ascii "<1> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_167:
	.ascii "Set Data Rate"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_168:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii " Please disable"
	.db 0x0a
	.ascii " UART first."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_169:
	.ascii "<2> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_170:
	.ascii "Number of Bits"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_171:
	.ascii "(8 or 9 bits)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_172:
	.ascii "<3> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_173:
	.ascii "Parity "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_174:
	.ascii "(Even/"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_175:
	.ascii "(Odd/None)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_176:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii " Incorrect input"
	.db 0x0a
	.ascii "  Try again."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_177:
	.db 0x0a
	.ascii " Disabling UART..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_178:
	.db 0x0a
	.ascii " Settings Verified:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_179:
	.ascii " Enabling UART..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_180:
	.ascii " BAUD ERROR"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_181:
	.ascii " Entering Baud..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_182:
	.ascii " BIT ERROR"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_183:
	.ascii " Entering Bits..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_184:
	.ascii " PARITY ERROR"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_185:
	.ascii " Entering Parity..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_186:
	.ascii " <1> 1200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_187:
	.ascii " <2> 2400 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_188:
	.ascii " <3> 4800 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_189:
	.ascii " <4> 9600 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_190:
	.ascii " <5> 19200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_191:
	.ascii "1200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_192:
	.ascii "2400 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_193:
	.ascii "4800 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_194:
	.ascii "9600 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_195:
	.ascii "<5> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_196:
	.ascii "19200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_197:
	.ascii " INPUT ERROR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_198:
	.ascii " <1> 8-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_199:
	.ascii " <2> 9-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_200:
	.ascii "8-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_201:
	.ascii "9-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_202:
	.db 0x0a
	.ascii " Please set the"
	.db 0x0a
	.ascii "  bit mode first."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_203:
	.ascii " <1> Even Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_204:
	.ascii " <2> Odd Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_205:
	.ascii " <3> No Parity"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_206:
	.ascii "Even Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_207:
	.ascii "Odd Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_208:
	.ascii "No Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_209:
	.ascii " Something is wrong."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_210:
	.ascii "<D>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_211:
	.ascii "          "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_212:
	.ascii "<B>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_213:
	.ascii "<E>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_214:
	.ascii "<F>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_215:
	.ascii "<C>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_216:
	.ascii "<A>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_217:
	.ascii "<1>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_218:
	.ascii "INVALID INPUT"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_219:
	.ascii "Try again."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_220:
	.ascii "               "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
