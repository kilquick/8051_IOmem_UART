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
	.globl _UART_disable
	.globl _UART_init
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
	.globl _frame_NEP
	.globl _tempFrame
	.globl __8b
	.globl _pType
	.globl _baudType
	.globl _parityBit
	.globl _parityEven
	.globl _paritySet
	.globl _bitSet
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
_bitSet::
	.ds 1
_paritySet::
	.ds 1
_parityEven::
	.ds 1
_parityBit::
	.ds 1
_baudType::
	.ds 1
_pType::
	.ds 1
__8b::
	.ds 1
_tempFrame::
	.ds 2
_frame_NEP::
	.ds 2
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
;	.\ecen4350_lcd_v4.c:42: __xdata unsigned char *lcd_address = (unsigned char __xdata *)__LCD_ADDRESS__;			//LCD address pointer
	mov	_lcd_address,#0x00
	mov	(_lcd_address + 1),#0x40
;	.\ecen4350_lcd_v4.c:43: __xdata unsigned char *seg7_address = (unsigned char __xdata *)__SEG_7_ADDRESS__;		//7segment address poitner
	mov	_seg7_address,#0x00
	mov	(_seg7_address + 1),#0x80
;	.\ecen4350_lcd_v4.c:45: volatile unsigned char received_byte = 0;
	mov	_received_byte,#0x00
;	.\ecen4350_lcd_v4.c:46: volatile unsigned char received_flag = 0;
	mov	_received_flag,#0x00
;	.\ecen4350_lcd_v4.c:49: __idata unsigned char UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:50: __idata unsigned char baudSet = 0;
	mov	r0,#_baudSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:51: __idata unsigned char bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:52: __idata unsigned char paritySet = 0;
	mov	r0,#_paritySet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:53: __idata unsigned char parityEven = 'null';
	mov	r0,#_parityEven
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:54: __idata unsigned char parityBit = 'null';
	mov	r0,#_parityBit
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:55: __idata unsigned char baudType = 'null';
	mov	r0,#_baudType
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:56: __idata unsigned char pType = 'null';
	mov	r0,#_pType
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:57: __idata unsigned char _8b = 'null';
	mov	r0,#__8b
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:58: __idata unsigned int tempFrame = 'null';
	mov	r0,#_tempFrame
	mov	@r0,#0x6e
	inc	r0
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:59: __idata unsigned int frame_NEP = 'null';	//	bitMode | Even/odd | Set/not
	mov	r0,#_frame_NEP
	mov	@r0,#0x6e
	inc	r0
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
;	.\ecen4350_lcd_v4.c:104: inline void iowrite8(unsigned char __xdata *map_address, unsigned char d) {
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
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,_iowrite8_PARM_2
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:108: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ioread8'
;------------------------------------------------------------
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:110: inline unsigned char ioread8(unsigned char __xdata *map_address)
;	-----------------------------------------
;	 function ioread8
;	-----------------------------------------
_ioread8:
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:116: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramWrite8'
;------------------------------------------------------------
;d                         Allocated with name '_ramWrite8_PARM_2'
;map_address               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:119: inline void ramWrite8(unsigned char __xdata *map_address, unsigned char d)
;	-----------------------------------------
;	 function ramWrite8
;	-----------------------------------------
_ramWrite8:
;	.\ecen4350_lcd_v4.c:121: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:122: *map_address = d;
	mov	a,_ramWrite8_PARM_2
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:123: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramRead8'
;------------------------------------------------------------
;map_address               Allocated to registers 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:126: inline unsigned char ramRead8(unsigned char __xdata *map_address)
;	-----------------------------------------
;	 function ramRead8
;	-----------------------------------------
_ramRead8:
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:132: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeAllRAM'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;i                         Allocated to registers r3 r4 r5 r6 
;ram_address               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:135: void writeAllRAM(unsigned char d)
;	-----------------------------------------
;	 function writeAllRAM
;	-----------------------------------------
_writeAllRAM:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:140: for (i = (long) __START_RAM__; i <= (long) __END_RAM__; i++)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
00102$:
;	.\ecen4350_lcd_v4.c:142: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:143: ram_address = (unsigned char __xdata *)(i);
	mov	dpl,r3
	mov	dph,r4
;	.\ecen4350_lcd_v4.c:144: *ram_address = d;
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:145: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:140: for (i = (long) __START_RAM__; i <= (long) __END_RAM__; i++)
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
;	.\ecen4350_lcd_v4.c:147: }
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
;	.\ecen4350_lcd_v4.c:149: void checkAllRAM(unsigned char d)
;	-----------------------------------------
;	 function checkAllRAM
;	-----------------------------------------
_checkAllRAM:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:152: for (unsigned long i =(long) __START_RAM__; i<=(long)__END_RAM__; i++) {
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
;	.\ecen4350_lcd_v4.c:153: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:154: ram_address = (unsigned char __xdata *)(i);
	mov	dpl,r3
	mov	dph,r4
;	.\ecen4350_lcd_v4.c:156: if(d != *ram_address) {
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	cjne	a,ar2,00125$
	sjmp	00102$
00125$:
;	.\ecen4350_lcd_v4.c:157: iowrite8(seg7_address, SEG_F);	// Write F to 7-segment; RAM test fail
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:158: setCursor(0,0);
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
;	.\ecen4350_lcd_v4.c:159: LCD_string_write("ERROR FOUND At: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:160: print16Hex(i);
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:161: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:163: iowrite8(seg7_address, SEG_P);		// Write A to 7-segment
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x8c
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:164: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:152: for (unsigned long i =(long) __START_RAM__; i<=(long)__END_RAM__; i++) {
	inc	r3
	cjne	r3,#0x00,00126$
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
	cjne	r5,#0x00,00126$
	inc	r6
00126$:
;	.\ecen4350_lcd_v4.c:166: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:168: void delay(int d) /// x 1ms
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:171: for (i = 0; i < d; i++) /// this is For(); loop delay used to define delay value input Embedded C
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
;	.\ecen4350_lcd_v4.c:173: for (j = 0; j < 1000; j++);
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
;	.\ecen4350_lcd_v4.c:171: for (i = 0; i < d; i++) /// this is For(); loop delay used to define delay value input Embedded C
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	.\ecen4350_lcd_v4.c:175: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_init'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:178: void UART_init(){
;	-----------------------------------------
;	 function UART_init
;	-----------------------------------------
_UART_init:
;	.\ecen4350_lcd_v4.c:179: TR1 = 1;      	// Turn ON the timer for Baud rate generation
;	assignBit
	setb	_TR1
;	.\ecen4350_lcd_v4.c:180: ES  = 1;		// Enable serial interrupt
;	assignBit
	setb	_ES
;	.\ecen4350_lcd_v4.c:181: EA  = 1;		// Enable global interrupts
;	assignBit
	setb	_EA
;	.\ecen4350_lcd_v4.c:182: UART_en = 1;
	mov	r0,#_UART_en
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:183: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_disable'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:185: void UART_disable(){
;	-----------------------------------------
;	 function UART_disable
;	-----------------------------------------
_UART_disable:
;	.\ecen4350_lcd_v4.c:186: TR1 = 0;
;	assignBit
	clr	_TR1
;	.\ecen4350_lcd_v4.c:187: ES = 0;
;	assignBit
	clr	_ES
;	.\ecen4350_lcd_v4.c:188: EA = 0;
;	assignBit
	clr	_EA
;	.\ecen4350_lcd_v4.c:189: TH1 = 0;
	mov	_TH1,#0x00
;	.\ecen4350_lcd_v4.c:190: SCON = 0;
	mov	_SCON,#0x00
;	.\ecen4350_lcd_v4.c:191: PCON = 0;
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:192: UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:193: baudSet = 0;
	mov	r0,#_baudSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:194: bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:195: paritySet = 0;
	mov	r0,#_paritySet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:196: parityEven = 'null';
	mov	r0,#_parityEven
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:197: parityBit = 'null';
	mov	r0,#_parityBit
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:198: baudType = 'null';
	mov	r0,#_baudType
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:199: pType = 'null';
	mov	r0,#_pType
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:200: _8b = 'null';
	mov	r0,#__8b
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:201: tempFrame = 'null';
	mov	r0,#_tempFrame
	mov	@r0,#0x6e
	inc	r0
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:202: frame_NEP = 'null';
	mov	r0,#_frame_NEP
	mov	@r0,#0x6e
	inc	r0
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:203: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_transmit'
;------------------------------------------------------------
;byte                      Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:206: void UART_transmit(unsigned char byte){
;	-----------------------------------------
;	 function UART_transmit
;	-----------------------------------------
_UART_transmit:
	mov	_SBUF,dpl
;	.\ecen4350_lcd_v4.c:208: while(TI == 1);
00101$:
	jb	_TI,00101$
;	.\ecen4350_lcd_v4.c:209: TI = 0;
;	assignBit
	clr	_TI
;	.\ecen4350_lcd_v4.c:210: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_receive'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:212: void ISR_receive() __interrupt (4) {
;	-----------------------------------------
;	 function ISR_receive
;	-----------------------------------------
_ISR_receive:
;	.\ecen4350_lcd_v4.c:213: if (RI == 1){
	jnb	_RI,00103$
;	.\ecen4350_lcd_v4.c:214: received_byte = SBUF;
	mov	_received_byte,_SBUF
;	.\ecen4350_lcd_v4.c:215: RI = 0;
;	assignBit
	clr	_RI
;	.\ecen4350_lcd_v4.c:216: received_flag= 1;
	mov	_received_flag,#0x01
00103$:
;	.\ecen4350_lcd_v4.c:218: }
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
;	.\ecen4350_lcd_v4.c:220: void writeRegister8(u8 address, u8 d)
;	-----------------------------------------
;	 function writeRegister8
;	-----------------------------------------
_writeRegister8:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:223: CD = __CMD__;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:224: write8(address);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:225: CD = __DATA__;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:226: write8(d);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_writeRegister8_PARM_2
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:228: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegister16'
;------------------------------------------------------------
;d                         Allocated with name '_writeRegister16_PARM_2'
;address                   Allocated to registers r6 r7 
;hi                        Allocated to registers r6 r7 
;lo                        Allocated to registers r4 r5 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:230: void writeRegister16(u16 address, u16 d)
;	-----------------------------------------
;	 function writeRegister16
;	-----------------------------------------
_writeRegister16:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:233: hi = (address) >> 8;
	mov	ar4,r7
;	.\ecen4350_lcd_v4.c:234: lo = (address);
;	.\ecen4350_lcd_v4.c:237: write8Reg(hi);
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
;	.\ecen4350_lcd_v4.c:238: write8Reg(lo);
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
;	.\ecen4350_lcd_v4.c:239: hi = (d) >> 8;
	mov	r6,(_writeRegister16_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:240: lo = (d);
	mov	r4,_writeRegister16_PARM_2
;	.\ecen4350_lcd_v4.c:241: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:242: write8Data(hi);
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
;	.\ecen4350_lcd_v4.c:243: write8Data(lo);
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
;	.\ecen4350_lcd_v4.c:245: }
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
;	.\ecen4350_lcd_v4.c:247: void seg7Test(void)
;	-----------------------------------------
;	 function seg7Test
;	-----------------------------------------
_seg7Test:
;	.\ecen4350_lcd_v4.c:249: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:250: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:251: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:252: iowrite8(seg7_address, ZERO);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xc0
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:253: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:254: iowrite8(seg7_address, ONE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xf9
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:255: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:256: iowrite8(seg7_address, TWO);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xa4
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:257: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:258: iowrite8(seg7_address, THREE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xb0
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:259: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:260: iowrite8(seg7_address, FOUR);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x99
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:261: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:262: iowrite8(seg7_address, FIVE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x92
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:263: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:264: iowrite8(seg7_address, SIX);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x82
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:265: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:266: iowrite8(seg7_address, SEVEN);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xf8
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:267: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:268: iowrite8(seg7_address, EIGHT);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x80
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:269: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:270: iowrite8(seg7_address, NINE);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x98
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:271: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:272: iowrite8(seg7_address, SEG_A);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x88
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:273: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:274: iowrite8(seg7_address, SEG_B);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x83
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:275: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:276: iowrite8(seg7_address, SEG_C);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xc6
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:277: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:278: iowrite8(seg7_address, SEG_D);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xa1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:279: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:280: iowrite8(seg7_address, SEG_E);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x86
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:281: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:282: iowrite8(seg7_address, SEG_F);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:283: delay(4);
	mov	dptr,#0x0004
	lcall	_delay
;	.\ecen4350_lcd_v4.c:284: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:285: delay(4);
	mov	dptr,#0x0004
;	.\ecen4350_lcd_v4.c:286: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcInit'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:289: void rtcInit(void)
;	-----------------------------------------
;	 function rtcInit
;	-----------------------------------------
_rtcInit:
;	.\ecen4350_lcd_v4.c:293: rtcCmd(__REG_F__, __HR_24__ | __STOP__ | __RESET__); // stop and reset
	mov	_rtcCmd_PARM_2,#0x07
	mov	dptr,#0x000f
	lcall	_rtcCmd
;	.\ecen4350_lcd_v4.c:296: for (i = __S1_REG__; i < __REG_D__; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	.\ecen4350_lcd_v4.c:298: rtcWrite(i, 0x00);
	mov	_rtcWrite_PARM_2,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_rtcWrite
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:296: for (i = __S1_REG__; i < __REG_D__; i++)
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
;	.\ecen4350_lcd_v4.c:301: rtcCmd(__REG_F__, __HR_24__);
	mov	_rtcCmd_PARM_2,#0x04
	mov	dptr,#0x000f
;	.\ecen4350_lcd_v4.c:302: }
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
;	.\ecen4350_lcd_v4.c:304: void rtcBusy(void)
;	-----------------------------------------
;	 function rtcBusy
;	-----------------------------------------
_rtcBusy:
;	.\ecen4350_lcd_v4.c:307: while ((ioread8(map_address) & 0x02))		;
00101$:
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dptr,#0x000d
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:307: while ((ioread8(map_address) & 0x02))		;
	mov	a,r7
	jb	acc.1,00101$
;	.\ecen4350_lcd_v4.c:308: }
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
;	.\ecen4350_lcd_v4.c:310: inline void rtcCmd(unsigned int addr, unsigned char d)
;	-----------------------------------------
;	 function rtcCmd
;	-----------------------------------------
_rtcCmd:
;	.\ecen4350_lcd_v4.c:312: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:313: iowrite8(map_address, d);
	mov	r7,_rtcCmd_PARM_2
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:313: iowrite8(map_address, d);
;	.\ecen4350_lcd_v4.c:314: }
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
;	.\ecen4350_lcd_v4.c:316: inline void rtcWrite(unsigned int addr, unsigned char d)
;	-----------------------------------------
;	 function rtcWrite
;	-----------------------------------------
_rtcWrite:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:318: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:320: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:322: rtcCmd(__REG_D__, d);
	mov	r7,_rtcWrite_PARM_2
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:322: rtcCmd(__REG_D__, d);
;	.\ecen4350_lcd_v4.c:323: }
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
;	.\ecen4350_lcd_v4.c:325: inline unsigned char rtcRead(unsigned int addr)
;	-----------------------------------------
;	 function rtcRead
;	-----------------------------------------
_rtcRead:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:328: __xdata unsigned char *map_address = (unsigned char __xdata *)addr;
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:330: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:333: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r6
	orl	a,#0x30
	mov	r7,a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:335: return d;
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:336: }
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
;	.\ecen4350_lcd_v4.c:338: void rtcPrint(void)
;	-----------------------------------------
;	 function rtcPrint
;	-----------------------------------------
_rtcPrint:
;	.\ecen4350_lcd_v4.c:342: printval[8] = '\0'; // end with address null character for string
	mov	(_rtcPrint_printval_65536_226 + 0x0008),#0x00
;	.\ecen4350_lcd_v4.c:343: printval[2] = ':';
	mov	(_rtcPrint_printval_65536_226 + 0x0002),#0x3a
;	.\ecen4350_lcd_v4.c:344: printval[5] = ':';
	mov	(_rtcPrint_printval_65536_226 + 0x0005),#0x3a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:330: rtcBusy();
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dptr,#0x0002
	movx	a,@dptr
	mov	r7,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:333: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r7
	orl	a,#0x30
	mov	r7,a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:330: rtcBusy();
	push	ar7
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dptr,#0x0003
	movx	a,@dptr
	mov	r6,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:333: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r6
	orl	a,#0x30
	mov	r6,a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:330: rtcBusy();
	push	ar6
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dptr,#0x0004
	movx	a,@dptr
	mov	r5,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:333: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r5
	orl	a,#0x30
	mov	r5,a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:330: rtcBusy();
	push	ar5
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dptr,#0x0005
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:333: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r4
	orl	a,#0x30
	mov	r4,a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:330: rtcBusy();
	push	ar4
	lcall	_rtcBusy
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dptr,#0x0000
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:333: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r3
	orl	a,#0x30
	mov	r3,a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:330: rtcBusy();
	push	ar3
	lcall	_rtcBusy
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:113: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:114: d = *map_address;
	mov	dptr,#0x0001
	movx	a,@dptr
	mov	r2,a
;	.\ecen4350_lcd_v4.c:115: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:333: d = (d & 0x0f) | 0x30;	 // ascii the lower word
	mov	a,#0x0f
	anl	a,r2
	orl	a,#0x30
	mov	r2,a
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:358: printval[0] = h10;
	mov	_rtcPrint_printval_65536_226,r4
;	.\ecen4350_lcd_v4.c:359: printval[1] = h1;
	mov	(_rtcPrint_printval_65536_226 + 0x0001),r5
;	.\ecen4350_lcd_v4.c:360: printval[3] = mi10;
	mov	(_rtcPrint_printval_65536_226 + 0x0003),r6
;	.\ecen4350_lcd_v4.c:361: printval[4] = mi1;
	mov	(_rtcPrint_printval_65536_226 + 0x0004),r7
;	.\ecen4350_lcd_v4.c:362: printval[6] = s10;
	mov	(_rtcPrint_printval_65536_226 + 0x0006),r2
;	.\ecen4350_lcd_v4.c:363: printval[7] = s1;
	mov	(_rtcPrint_printval_65536_226 + 0x0007),r3
;	.\ecen4350_lcd_v4.c:364: LCD_string_write(printval);
	mov	dptr,#_rtcPrint_printval_65536_226
	mov	b,#0x40
;	.\ecen4350_lcd_v4.c:365: }
	ljmp	_LCD_string_write
;------------------------------------------------------------
;Allocation info for local variables in function 'setCursor'
;------------------------------------------------------------
;y                         Allocated with name '_setCursor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:367: void setCursor(u16 x, u16 y)
;	-----------------------------------------
;	 function setCursor
;	-----------------------------------------
_setCursor:
	mov	_cursor_x,dpl
	mov	(_cursor_x + 1),dph
;	.\ecen4350_lcd_v4.c:370: cursor_y = y;
	mov	_cursor_y,_setCursor_PARM_2
	mov	(_cursor_y + 1),(_setCursor_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:371: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextColor'
;------------------------------------------------------------
;y                         Allocated with name '_setTextColor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:373: void setTextColor(u16 x, u16 y)
;	-----------------------------------------
;	 function setTextColor
;	-----------------------------------------
_setTextColor:
	mov	_textcolor,dpl
	mov	(_textcolor + 1),dph
;	.\ecen4350_lcd_v4.c:376: textbgcolor = y;
	mov	_textbgcolor,_setTextColor_PARM_2
	mov	(_textbgcolor + 1),(_setTextColor_PARM_2 + 1)
;	.\ecen4350_lcd_v4.c:377: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextSize'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:380: void setTextSize(u8 s)
;	-----------------------------------------
;	 function setTextSize
;	-----------------------------------------
_setTextSize:
;	.\ecen4350_lcd_v4.c:382: if (s > 8)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x08
	jnc	00102$
;	.\ecen4350_lcd_v4.c:383: return;
	ret
00102$:
;	.\ecen4350_lcd_v4.c:384: textsize = (s > 0) ? s : 1;
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
;	.\ecen4350_lcd_v4.c:385: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setRotation'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:387: void setRotation(u8 flag)
;	-----------------------------------------
;	 function setRotation
;	-----------------------------------------
_setRotation:
;	.\ecen4350_lcd_v4.c:389: switch (flag)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	.\ecen4350_lcd_v4.c:391: case 0:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	.\ecen4350_lcd_v4.c:392: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	.\ecen4350_lcd_v4.c:393: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:394: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:395: break;
;	.\ecen4350_lcd_v4.c:396: case 1:
	sjmp	00106$
00102$:
;	.\ecen4350_lcd_v4.c:397: flag = (ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0x28
;	.\ecen4350_lcd_v4.c:398: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	.\ecen4350_lcd_v4.c:399: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	.\ecen4350_lcd_v4.c:400: break;
;	.\ecen4350_lcd_v4.c:401: case 2:
	sjmp	00106$
00103$:
;	.\ecen4350_lcd_v4.c:402: flag = (ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	r7,#0x88
;	.\ecen4350_lcd_v4.c:403: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:404: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:405: break;
;	.\ecen4350_lcd_v4.c:406: case 3:
	sjmp	00106$
00104$:
;	.\ecen4350_lcd_v4.c:407: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_MY | ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0xe8
;	.\ecen4350_lcd_v4.c:408: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	.\ecen4350_lcd_v4.c:409: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	.\ecen4350_lcd_v4.c:410: break;
;	.\ecen4350_lcd_v4.c:411: default:
	sjmp	00106$
00105$:
;	.\ecen4350_lcd_v4.c:412: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	.\ecen4350_lcd_v4.c:413: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:414: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:416: }
00106$:
;	.\ecen4350_lcd_v4.c:417: writeRegister8(ILI9341_MEMCONTROL, flag);
	mov	_writeRegister8_PARM_2,r7
	mov	dpl,#0x36
;	.\ecen4350_lcd_v4.c:418: }
	ljmp	_writeRegister8
;------------------------------------------------------------
;Allocation info for local variables in function 'setAddress'
;------------------------------------------------------------
;y1                        Allocated with name '_setAddress_PARM_2'
;x2                        Allocated with name '_setAddress_PARM_3'
;y2                        Allocated with name '_setAddress_PARM_4'
;x1                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:421: void setAddress(unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2)
;	-----------------------------------------
;	 function setAddress
;	-----------------------------------------
_setAddress:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:424: write8Reg(0x2A);
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
;	.\ecen4350_lcd_v4.c:425: write8Data(x1 >> 8);
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
;	.\ecen4350_lcd_v4.c:426: write8Data(x1);
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
;	.\ecen4350_lcd_v4.c:427: write8Data(x2 >> 8);
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
;	.\ecen4350_lcd_v4.c:428: write8Data(x2);
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
;	.\ecen4350_lcd_v4.c:430: write8Reg(0x2B);
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
;	.\ecen4350_lcd_v4.c:431: write8Data(y1 >> 8);
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
;	.\ecen4350_lcd_v4.c:432: write8Data(y1);
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
;	.\ecen4350_lcd_v4.c:433: write8Data(y2 >> 8);
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
;	.\ecen4350_lcd_v4.c:434: write8Data(y2);
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
;	.\ecen4350_lcd_v4.c:437: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TFT_LCD_INIT'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:439: void TFT_LCD_INIT(void)
;	-----------------------------------------
;	 function TFT_LCD_INIT
;	-----------------------------------------
_TFT_LCD_INIT:
;	.\ecen4350_lcd_v4.c:443: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	.\ecen4350_lcd_v4.c:444: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	.\ecen4350_lcd_v4.c:447: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:449: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:451: write8Reg(0x00);
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
;	.\ecen4350_lcd_v4.c:452: write8Data(0x00);
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
;	.\ecen4350_lcd_v4.c:453: write8Data(0x00);
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
;	.\ecen4350_lcd_v4.c:454: write8Data(0x00);
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
;	.\ecen4350_lcd_v4.c:456: delay(100);						// changed from 200 to 100
	mov	dptr,#0x0064
	lcall	_delay
;	.\ecen4350_lcd_v4.c:460: writeRegister8(ILI9341_SOFTRESET, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:461: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	.\ecen4350_lcd_v4.c:462: writeRegister8(ILI9341_DISPLAYOFF, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x28
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:463: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:465: writeRegister8(ILI9341_POWERCONTROL1, 0x23);
	mov	_writeRegister8_PARM_2,#0x23
	mov	dpl,#0xc0
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:466: writeRegister8(ILI9341_POWERCONTROL2, 0x11);
	mov	_writeRegister8_PARM_2,#0x11
	mov	dpl,#0xc1
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:467: write8Reg(ILI9341_VCOMCONTROL1);
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
;	.\ecen4350_lcd_v4.c:468: write8Data(0x3d);
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
;	.\ecen4350_lcd_v4.c:469: write8Data(0x30);
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
;	.\ecen4350_lcd_v4.c:470: writeRegister8(ILI9341_VCOMCONTROL2, 0xaa);
	mov	_writeRegister8_PARM_2,#0xaa
	mov	dpl,#0xc7
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:471: writeRegister8(ILI9341_MEMCONTROL, ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	_writeRegister8_PARM_2,#0x88
	mov	dpl,#0x36
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:472: write8Reg(ILI9341_PIXELFORMAT);
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
;	.\ecen4350_lcd_v4.c:473: write8Data(0x55);
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
;	.\ecen4350_lcd_v4.c:474: write8Data(0x00);
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
;	.\ecen4350_lcd_v4.c:475: writeRegister16(ILI9341_FRAMECONTROL, 0x001B);
	mov	_writeRegister16_PARM_2,#0x1b
	mov	(_writeRegister16_PARM_2 + 1),#0x00
	mov	dptr,#0x00b1
	lcall	_writeRegister16
;	.\ecen4350_lcd_v4.c:477: writeRegister8(ILI9341_ENTRYMODE, 0x07);
	mov	_writeRegister8_PARM_2,#0x07
	mov	dpl,#0xb7
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:480: writeRegister8(ILI9341_SLEEPOUT, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x11
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:481: delay(100);								// changed from 150 to 100
	mov	dptr,#0x0064
	lcall	_delay
;	.\ecen4350_lcd_v4.c:482: writeRegister8(ILI9341_DISPLAYON, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x29
	lcall	_writeRegister8
;	.\ecen4350_lcd_v4.c:483: delay(150);								// changed from 200 to 150
	mov	dptr,#0x0096
	lcall	_delay
;	.\ecen4350_lcd_v4.c:484: setAddress(0, 0, _width - 1, _height - 1);
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
;	.\ecen4350_lcd_v4.c:488: }
	ljmp	_setAddress
;------------------------------------------------------------
;Allocation info for local variables in function 'drawPixel'
;------------------------------------------------------------
;y3                        Allocated with name '_drawPixel_PARM_2'
;color1                    Allocated with name '_drawPixel_PARM_3'
;x3                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:489: void drawPixel(u16 x3, u16 y3, u16 color1)
;	-----------------------------------------
;	 function drawPixel
;	-----------------------------------------
_drawPixel:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:497: setAddress(x3, y3, x3 + 1, y3 + 1);
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
;	.\ecen4350_lcd_v4.c:501: CD = 0;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:502: write8(0x2C);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:504: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:505: write8(color1 >> 8);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_drawPixel_PARM_3 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:506: write8(color1);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_drawPixel_PARM_3
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:508: }
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
;	.\ecen4350_lcd_v4.c:512: void drawCircle(int x0, int y0, int r, u16 color)
;	-----------------------------------------
;	 function drawCircle
;	-----------------------------------------
_drawCircle:
	mov	_drawCircle_x0_65536_393,dpl
	mov	(_drawCircle_x0_65536_393 + 1),dph
;	.\ecen4350_lcd_v4.c:514: int f = 1 - r;
	mov	a,#0x01
	clr	c
	subb	a,_drawCircle_PARM_3
	mov	_drawCircle_f_65536_394,a
	clr	a
	subb	a,(_drawCircle_PARM_3 + 1)
	mov	(_drawCircle_f_65536_394 + 1),a
;	.\ecen4350_lcd_v4.c:516: int ddF_y = -2 * r;
	mov	__mulint_PARM_2,_drawCircle_PARM_3
	mov	(__mulint_PARM_2 + 1),(_drawCircle_PARM_3 + 1)
	mov	dptr,#0xfffe
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
;	.\ecen4350_lcd_v4.c:518: int y = r;
	mov	r0,_drawCircle_PARM_3
	mov	r1,(_drawCircle_PARM_3 + 1)
;	.\ecen4350_lcd_v4.c:520: drawPixel(x0, y0 + r, color);
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
;	.\ecen4350_lcd_v4.c:521: drawPixel(x0, y0 - r, color);
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
;	.\ecen4350_lcd_v4.c:522: drawPixel(x0 + r, y0, color);
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
;	.\ecen4350_lcd_v4.c:523: drawPixel(x0 - r, y0, color);
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
;	.\ecen4350_lcd_v4.c:525: while (x < y)
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
;	.\ecen4350_lcd_v4.c:527: if (f >= 0)
	mov	a,(_drawCircle_f_65536_394 + 1)
	jb	acc.7,00102$
;	.\ecen4350_lcd_v4.c:529: y--;
	dec	r0
	cjne	r0,#0xff,00123$
	dec	r1
00123$:
;	.\ecen4350_lcd_v4.c:530: ddF_y += 2;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
;	.\ecen4350_lcd_v4.c:531: f += ddF_y;
	mov	a,r2
	add	a,_drawCircle_f_65536_394
	mov	_drawCircle_f_65536_394,a
	mov	a,r3
	addc	a,(_drawCircle_f_65536_394 + 1)
	mov	(_drawCircle_f_65536_394 + 1),a
00102$:
;	.\ecen4350_lcd_v4.c:533: x++;
	push	ar2
	push	ar3
	inc	_drawCircle_x_65536_394
	clr	a
	cjne	a,_drawCircle_x_65536_394,00124$
	inc	(_drawCircle_x_65536_394 + 1)
00124$:
;	.\ecen4350_lcd_v4.c:534: ddF_x += 2;
	mov	a,#0x02
	add	a,_drawCircle_ddF_x_65536_394
	mov	_drawCircle_ddF_x_65536_394,a
	clr	a
	addc	a,(_drawCircle_ddF_x_65536_394 + 1)
	mov	(_drawCircle_ddF_x_65536_394 + 1),a
;	.\ecen4350_lcd_v4.c:535: f += ddF_x;
	mov	a,_drawCircle_ddF_x_65536_394
	add	a,_drawCircle_f_65536_394
	mov	_drawCircle_f_65536_394,a
	mov	a,(_drawCircle_ddF_x_65536_394 + 1)
	addc	a,(_drawCircle_f_65536_394 + 1)
	mov	(_drawCircle_f_65536_394 + 1),a
;	.\ecen4350_lcd_v4.c:537: drawPixel(x0 + x, y0 + y, color);
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
;	.\ecen4350_lcd_v4.c:538: drawPixel(x0 - x, y0 + y, color);
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
;	.\ecen4350_lcd_v4.c:539: drawPixel(x0 + x, y0 - y, color);
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
;	.\ecen4350_lcd_v4.c:540: drawPixel(x0 - x, y0 - y, color);
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
;	.\ecen4350_lcd_v4.c:541: drawPixel(x0 + y, y0 + x, color);
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
;	.\ecen4350_lcd_v4.c:542: drawPixel(x0 - y, y0 + x, color);
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
;	.\ecen4350_lcd_v4.c:543: drawPixel(x0 + y, y0 - x, color);
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
;	.\ecen4350_lcd_v4.c:544: drawPixel(x0 - y, y0 - x, color);
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
;	.\ecen4350_lcd_v4.c:546: }
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
;	.\ecen4350_lcd_v4.c:548: void testCircles(u8 radius, u16 color)
;	-----------------------------------------
;	 function testCircles
;	-----------------------------------------
_testCircles:
;	.\ecen4350_lcd_v4.c:551: int x, y, r2 = radius * 2, w = _width + radius, h = _height + radius;
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
;	.\ecen4350_lcd_v4.c:553: for (x = 0; x < w; x += r2)
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
;	.\ecen4350_lcd_v4.c:555: for (y = 0; y < h; y += r2)
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
;	.\ecen4350_lcd_v4.c:557: drawCircle(x, y, radius, color);
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
;	.\ecen4350_lcd_v4.c:555: for (y = 0; y < h; y += r2)
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	sjmp	00104$
00108$:
;	.\ecen4350_lcd_v4.c:553: for (x = 0; x < w; x += r2)
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	sjmp	00107$
00109$:
;	.\ecen4350_lcd_v4.c:560: }
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
;	.\ecen4350_lcd_v4.c:561: void fillRect(u16 x, u16 y, u16 w, u16 h, u16 color)
;	-----------------------------------------
;	 function fillRect
;	-----------------------------------------
_fillRect:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:563: if ((x >= TFTWIDTH) || (y >= TFTHEIGHT))
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
;	.\ecen4350_lcd_v4.c:565: return;
	ret
00102$:
;	.\ecen4350_lcd_v4.c:568: if ((x + w - 1) >= TFTWIDTH)
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
;	.\ecen4350_lcd_v4.c:570: w = TFTWIDTH - x;
	mov	a,#0xf0
	clr	c
	subb	a,r6
	mov	_fillRect_PARM_3,a
	clr	a
	subb	a,r7
	mov	(_fillRect_PARM_3 + 1),a
00105$:
;	.\ecen4350_lcd_v4.c:573: if ((y + h - 1) >= TFTHEIGHT)
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
;	.\ecen4350_lcd_v4.c:575: h = TFTHEIGHT - y;
	mov	a,#0x40
	clr	c
	subb	a,_fillRect_PARM_2
	mov	_fillRect_PARM_4,a
	mov	a,#0x01
	subb	a,(_fillRect_PARM_2 + 1)
	mov	(_fillRect_PARM_4 + 1),a
00107$:
;	.\ecen4350_lcd_v4.c:578: setAddress(x, y, x + w - 1, y + h - 1);
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
;	.\ecen4350_lcd_v4.c:581: write8Reg(0x2C);
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
;	.\ecen4350_lcd_v4.c:583: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:584: for (y = h; y > 0; y--)
	mov	r7,(_fillRect_PARM_5 + 1)
	mov	r5,_fillRect_PARM_4
	mov	r6,(_fillRect_PARM_4 + 1)
00114$:
	mov	a,r5
	orl	a,r6
	jz	00116$
;	.\ecen4350_lcd_v4.c:586: for (x = w; x > 0; x--)
	mov	r3,_fillRect_PARM_3
	mov	r4,(_fillRect_PARM_3 + 1)
00111$:
	mov	a,r3
	orl	a,r4
	jz	00115$
;	.\ecen4350_lcd_v4.c:589: write8(color >> 8);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:590: write8(color);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_fillRect_PARM_5
	mov	r2,a
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:586: for (x = w; x > 0; x--)
	dec	r3
	cjne	r3,#0xff,00167$
	dec	r4
00167$:
	sjmp	00111$
00115$:
;	.\ecen4350_lcd_v4.c:584: for (y = h; y > 0; y--)
	dec	r5
	cjne	r5,#0xff,00168$
	dec	r6
00168$:
	sjmp	00114$
00116$:
;	.\ecen4350_lcd_v4.c:594: }
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
;	.\ecen4350_lcd_v4.c:596: void fillTop(unsigned int Color) {
;	-----------------------------------------
;	 function fillTop
;	-----------------------------------------
_fillTop:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:600: unsigned char i, hi = Color >> 8, 
	mov	ar5,r7
;	.\ecen4350_lcd_v4.c:601: lo = Color;
;	.\ecen4350_lcd_v4.c:604: setAddress(0, 0, TFTWIDTH - 1, 39);
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
;	.\ecen4350_lcd_v4.c:606: write8Reg(0x2C);
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
;	.\ecen4350_lcd_v4.c:608: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:609: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:610: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:613: while (blocks--)
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
;	.\ecen4350_lcd_v4.c:616: do
	mov	r3,#0x10
00101$:
;	.\ecen4350_lcd_v4.c:619: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:620: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:621: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:622: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
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
;	.\ecen4350_lcd_v4.c:627: } while (--i);
	djnz	r3,00101$
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:629: for (i = (char)len & 63; i--;)
	mov	r7,#0x3f
00109$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00111$
;	.\ecen4350_lcd_v4.c:632: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:633: write8(lo);
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
;	.\ecen4350_lcd_v4.c:637: }
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
;	.\ecen4350_lcd_v4.c:639: void fillScreen(unsigned int Color)
;	-----------------------------------------
;	 function fillScreen
;	-----------------------------------------
_fillScreen:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:646: unsigned char i, hi = Color >> 8,
	mov	ar5,r7
;	.\ecen4350_lcd_v4.c:647: lo = Color;
;	.\ecen4350_lcd_v4.c:650: setAddress(0, 0, TFTWIDTH - 1, TFTHEIGHT - 1);
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
;	.\ecen4350_lcd_v4.c:654: write8Reg(0x2C);
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
;	.\ecen4350_lcd_v4.c:656: CD = 1;
;	assignBit
	setb	_P3_4
;	.\ecen4350_lcd_v4.c:657: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:658: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:661: while (blocks--)
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
;	.\ecen4350_lcd_v4.c:664: do
	mov	r3,#0x10
00101$:
;	.\ecen4350_lcd_v4.c:667: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:668: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:669: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:670: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:671: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:672: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:673: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:674: write8(lo);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:675: } while (--i);
	djnz	r3,00101$
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:677: for (i = (char)len & 63; i--;)
	mov	r7,#0x3f
00109$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00111$
;	.\ecen4350_lcd_v4.c:680: write8(hi);
;	assignBit
	setb	_P3_5
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:681: write8(lo);
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
;	.\ecen4350_lcd_v4.c:685: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearLCD'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:687: void clearLCD (void)
;	-----------------------------------------
;	 function clearLCD
;	-----------------------------------------
_clearLCD:
;	.\ecen4350_lcd_v4.c:689: fillScreen(colorBackground);
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:690: }
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
;	.\ecen4350_lcd_v4.c:691: void drawChar(int x, int y, unsigned char c, u16 color, u16 bg, u8 size)
;	-----------------------------------------
;	 function drawChar
;	-----------------------------------------
_drawChar:
	mov	_drawChar_x_65536_458,dpl
	mov	(_drawChar_x_65536_458 + 1),dph
;	.\ecen4350_lcd_v4.c:693: if ((x >= TFTWIDTH) ||			// Clip right
	clr	c
	mov	a,_drawChar_x_65536_458
	subb	a,#0xf0
	mov	a,(_drawChar_x_65536_458 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	.\ecen4350_lcd_v4.c:694: (y >= TFTHEIGHT) ||			// Clip bottom
	clr	c
	mov	a,_drawChar_PARM_2
	subb	a,#0x40
	mov	a,(_drawChar_PARM_2 + 1)
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00101$
;	.\ecen4350_lcd_v4.c:695: ((x + 6 * size - 1) < 0) || // Clip left
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
;	.\ecen4350_lcd_v4.c:696: ((y + 8 * size - 1) < 0))	// Clip top
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
;	.\ecen4350_lcd_v4.c:698: return;
	ret
;	.\ecen4350_lcd_v4.c:701: for (char i = 0; i < 6; i++)
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
;	.\ecen4350_lcd_v4.c:705: if (i == 5)
	mov	a,#0x05
	cjne	a,_drawChar_i_131072_461,00107$
;	.\ecen4350_lcd_v4.c:707: line = 0x0;
	mov	_drawChar_line_196608_462,#0x00
	sjmp	00140$
00107$:
;	.\ecen4350_lcd_v4.c:711: line = pgm_read_byte(font + (c * 5) + i);
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
;	.\ecen4350_lcd_v4.c:714: for (char j = 0; j < 8; j++)
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
;	.\ecen4350_lcd_v4.c:716: if (line & 0x1)
	mov	a,_drawChar_line_196608_462
	jb	acc.0,00195$
	ljmp	00118$
00195$:
;	.\ecen4350_lcd_v4.c:718: if (size == 1) // default size
	mov	a,r5
	jz	00110$
;	.\ecen4350_lcd_v4.c:720: drawPixel(x + i, y + j, color);
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
;	.\ecen4350_lcd_v4.c:724: fillRect(x + (i * size), y + (j * size), size, size, color);
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
;	.\ecen4350_lcd_v4.c:727: else if (bg != color)
	mov	a,r3
	jz	00197$
	ljmp	00119$
00197$:
;	.\ecen4350_lcd_v4.c:729: if (size == 1) // default size
	mov	a,r4
	jz	00113$
;	.\ecen4350_lcd_v4.c:731: drawPixel(x + i, y + j, bg);
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
;	.\ecen4350_lcd_v4.c:735: fillRect(x + i * size, y + j * size, size, size, bg);
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
;	.\ecen4350_lcd_v4.c:739: line >>= 1;
	mov	a,_drawChar_line_196608_462
	clr	c
	rrc	a
	mov	_drawChar_line_196608_462,a
;	.\ecen4350_lcd_v4.c:714: for (char j = 0; j < 8; j++)
	inc	r0
	ljmp	00123$
00127$:
;	.\ecen4350_lcd_v4.c:701: for (char i = 0; i < 6; i++)
	inc	_drawChar_i_131072_461
;	.\ecen4350_lcd_v4.c:742: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:744: void write(u8 c) //write address character at setted coordinates after setting location and colour
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:746: if (c == '\n')
	cjne	r7,#0x0a,00105$
;	.\ecen4350_lcd_v4.c:748: cursor_y += textsize * 8;
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
;	.\ecen4350_lcd_v4.c:749: cursor_x = 0;
	clr	a
	mov	_cursor_x,a
	mov	(_cursor_x + 1),a
	ret
00105$:
;	.\ecen4350_lcd_v4.c:751: else if (c == '\r')
	cjne	r7,#0x0d,00119$
	ret
00119$:
;	.\ecen4350_lcd_v4.c:757: drawChar(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize);
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
;	.\ecen4350_lcd_v4.c:758: cursor_x += textsize * 6;
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
;	.\ecen4350_lcd_v4.c:760: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_string_write'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:761: void LCD_string_write(char *str)
;	-----------------------------------------
;	 function LCD_string_write
;	-----------------------------------------
_LCD_string_write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	.\ecen4350_lcd_v4.c:764: for (i = 0; str[i] != 0; i++) /* Send each char of string till the NULL */
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
;	.\ecen4350_lcd_v4.c:766: write(str[i]); /* Call transmit data function */
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
;	.\ecen4350_lcd_v4.c:764: for (i = 0; str[i] != 0; i++) /* Send each char of string till the NULL */
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00105$:
;	.\ecen4350_lcd_v4.c:768: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeNewLine'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:770: void writeNewLine(void)
;	-----------------------------------------
;	 function writeNewLine
;	-----------------------------------------
_writeNewLine:
;	.\ecen4350_lcd_v4.c:772: write('\n');
	mov	dpl,#0x0a
;	.\ecen4350_lcd_v4.c:773: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'freeType'
;------------------------------------------------------------
;count                     Allocated to registers r7 
;d                         Allocated to registers 
;row                       Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:775: void freeType()
;	-----------------------------------------
;	 function freeType
;	-----------------------------------------
_freeType:
;	.\ecen4350_lcd_v4.c:777: unsigned char count = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:779: u8 row = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:781: clearLCD();
	push	ar7
	push	ar6
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:782: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:783: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:784: LCD_string_write("Free Type: \n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:785: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:786: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:787: while (1)
00108$:
;	.\ecen4350_lcd_v4.c:790: if (count == 8)
	cjne	r7,#0x08,00124$
	sjmp	00125$
00124$:
	ljmp	00105$
00125$:
;	.\ecen4350_lcd_v4.c:793: count = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:794: write(d);
	mov	dpl,#0x0a
	push	ar7
	push	ar6
	lcall	_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:795: if (row == 4)
	cjne	r6,#0x04,00102$
;	.\ecen4350_lcd_v4.c:797: delay(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay
;	.\ecen4350_lcd_v4.c:798: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:799: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:800: rtcPrint();
	lcall	_rtcPrint
;	.\ecen4350_lcd_v4.c:801: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:802: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:803: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:804: LCD_string_write("Free Type: \n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:805: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:806: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:808: row = 1;
	mov	r6,#0x01
	sjmp	00108$
00102$:
;	.\ecen4350_lcd_v4.c:811: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:812: row++;
	inc	r6
	ljmp	00108$
00105$:
;	.\ecen4350_lcd_v4.c:817: d = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:818: write(d);
	lcall	_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:819: count++;
	inc	r7
;	.\ecen4350_lcd_v4.c:824: }
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'keyDetect'
;------------------------------------------------------------
;portdata                  Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:827: unsigned char keyDetect()
;	-----------------------------------------
;	 function keyDetect
;	-----------------------------------------
_keyDetect:
;	.\ecen4350_lcd_v4.c:830: __KEYPAD_PORT__ = 0xF0; 										/* set port direction as input-output */
	mov	_P1,#0xf0
;	.\ecen4350_lcd_v4.c:831: do 
00101$:
;	.\ecen4350_lcd_v4.c:833: portdata = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	r7,a
;	.\ecen4350_lcd_v4.c:834: }	while (portdata != 0xF0);									/* wait until no buttons pressed to continue */
	cjne	r7,#0xf0,00101$
;	.\ecen4350_lcd_v4.c:838: do
00105$:
;	.\ecen4350_lcd_v4.c:841: colloc = __KEYPAD_PORT__;								/* read back columns -> the grounded rows will ground address column bit when button pressed */
	mov	_colloc,_P1
;	.\ecen4350_lcd_v4.c:842: colloc &= 0xF0;		  									/* mask port for column read only */
	anl	_colloc,#0xf0
;	.\ecen4350_lcd_v4.c:843: } while ((colloc == 0xF0) && (received_flag == 0)); 		/* read status of column repeatedly until key is pressed or serial interrupt received */
	mov	a,#0xf0
	cjne	a,_colloc,00107$
	mov	a,_received_flag
	jz	00105$
00107$:
;	.\ecen4350_lcd_v4.c:844: delay(10);													/* 15ms key debounce time */
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:845: portdata = (__KEYPAD_PORT__ & 0xF0);						/* resample port data after debounce */
	mov	a,_P1
	anl	a,#0xf0
;	.\ecen4350_lcd_v4.c:846: } while ((colloc != portdata) && (received_flag == 0));			/* repeat until input is clear to interpret */
	mov	r7,a
	cjne	a,_colloc,00214$
	sjmp	00123$
00214$:
	mov	a,_received_flag
	jz	00105$
;	.\ecen4350_lcd_v4.c:848: while (1)
00123$:
;	.\ecen4350_lcd_v4.c:850: if (received_flag == 1)											/* check for key input via serial interrupt */
	mov	a,#0x01
	cjne	a,_received_flag,00113$
;	.\ecen4350_lcd_v4.c:852: received_byte -= 0x40;										/* For some reason received_byte needs 0x40 subtracted */
	mov	a,_received_byte
	mov	r7,a
	add	a,#0xc0
	mov	_received_byte,a
;	.\ecen4350_lcd_v4.c:853: break;														/* break outside while() */
	sjmp	00124$
00113$:
;	.\ecen4350_lcd_v4.c:856: __KEYPAD_PORT__ = 0xFE; 										/* check for pressed key input 1st row -> (_KEYPAD_PORT_ == 0b11111110) */
	mov	_P1,#0xfe
;	.\ecen4350_lcd_v4.c:857: colloc = (__KEYPAD_PORT__ & 0xF0);								/* (1111 1110) & (1111  0000) == (1111 0000) if 1st row free */
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:858: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00218$
	sjmp	00115$
00218$:
;	.\ecen4350_lcd_v4.c:860: rowloc = 0;
	mov	_rowloc,#0x00
;	.\ecen4350_lcd_v4.c:861: break;
	sjmp	00124$
00115$:
;	.\ecen4350_lcd_v4.c:864: __KEYPAD_PORT__ = 0xFD; 										/* check for pressed key input 2nd row -> (_KEYPAD_PORT_ == 0b11111101) */
	mov	_P1,#0xfd
;	.\ecen4350_lcd_v4.c:865: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:866: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00219$
	sjmp	00117$
00219$:
;	.\ecen4350_lcd_v4.c:868: rowloc = 1;
	mov	_rowloc,#0x01
;	.\ecen4350_lcd_v4.c:869: break;
	sjmp	00124$
00117$:
;	.\ecen4350_lcd_v4.c:872: __KEYPAD_PORT__ = 0xFB; 										/* check for pressed key input 3rd row -> (_KEYPAD_PORT_ == 0b11111011) */
	mov	_P1,#0xfb
;	.\ecen4350_lcd_v4.c:873: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:874: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00220$
	sjmp	00119$
00220$:
;	.\ecen4350_lcd_v4.c:876: rowloc = 2;
	mov	_rowloc,#0x02
;	.\ecen4350_lcd_v4.c:877: break;
	sjmp	00124$
00119$:
;	.\ecen4350_lcd_v4.c:880: __KEYPAD_PORT__ = 0xF7; 										/* check for pressed key input 4th row -> (_KEYPAD_PORT_ == 0b11110111) */
	mov	_P1,#0xf7
;	.\ecen4350_lcd_v4.c:881: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	.\ecen4350_lcd_v4.c:882: if (colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00221$
	sjmp	00123$
00221$:
;	.\ecen4350_lcd_v4.c:884: rowloc = 3;
	mov	_rowloc,#0x03
;	.\ecen4350_lcd_v4.c:885: break;
00124$:
;	.\ecen4350_lcd_v4.c:889: if (received_flag == 1)
	mov	a,#0x01
	cjne	a,_received_flag,00135$
;	.\ecen4350_lcd_v4.c:891: received_flag = 0;
	mov	_received_flag,#0x00
;	.\ecen4350_lcd_v4.c:892: return received_byte;
	mov	dpl,_received_byte
	ret
00135$:
;	.\ecen4350_lcd_v4.c:894: else if (colloc == 0xE0)
	mov	a,#0xe0
	cjne	a,_colloc,00132$
;	.\ecen4350_lcd_v4.c:896: return (keypad[rowloc][0]);
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
;	.\ecen4350_lcd_v4.c:898: else if (colloc == 0xD0)
	mov	a,#0xd0
	cjne	a,_colloc,00129$
;	.\ecen4350_lcd_v4.c:900: return (keypad[rowloc][1]);
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
;	.\ecen4350_lcd_v4.c:902: else if (colloc == 0xB0)
	mov	a,#0xb0
	cjne	a,_colloc,00126$
;	.\ecen4350_lcd_v4.c:904: return (keypad[rowloc][2]);
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
;	.\ecen4350_lcd_v4.c:908: return (keypad[rowloc][3]);
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
;	.\ecen4350_lcd_v4.c:910: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;rev                       Allocated to registers r5 r6 
;val                       Allocated to registers r1 r2 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:912: unsigned int reverse(unsigned char d)
;	-----------------------------------------
;	 function reverse
;	-----------------------------------------
_reverse:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:914: unsigned int rev = 0;
	mov	r5,#0x00
	mov	r6,#0x00
;	.\ecen4350_lcd_v4.c:916: while (d >= 1)
00101$:
	cjne	r7,#0x01,00114$
00114$:
	jc	00103$
;	.\ecen4350_lcd_v4.c:919: val = d % 10;
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
;	.\ecen4350_lcd_v4.c:920: d = d / 10;
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
;	.\ecen4350_lcd_v4.c:921: rev = rev * 10 + val;
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
;	.\ecen4350_lcd_v4.c:923: return rev;
	mov	dpl,r5
	mov	dph,r6
;	.\ecen4350_lcd_v4.c:924: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse16'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;rev                       Allocated to registers r4 r5 
;val                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:926: unsigned int reverse16(unsigned int d)
;	-----------------------------------------
;	 function reverse16
;	-----------------------------------------
_reverse16:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:928: unsigned int rev = 0;
	mov	r4,#0x00
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:930: while (d >= 1)
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00103$
;	.\ecen4350_lcd_v4.c:933: val = d % 10;
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
;	.\ecen4350_lcd_v4.c:934: d = d / 10;
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
;	.\ecen4350_lcd_v4.c:935: rev = rev * 10 + val;
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
;	.\ecen4350_lcd_v4.c:937: return rev;
	mov	dpl,r4
	mov	dph,r5
;	.\ecen4350_lcd_v4.c:938: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hexToASCII'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:940: unsigned char hexToASCII(unsigned char key) {
;	-----------------------------------------
;	 function hexToASCII
;	-----------------------------------------
_hexToASCII:
;	.\ecen4350_lcd_v4.c:941: if(key == 0x0) return '0';
	mov	a,dpl
	mov	r7,a
	jnz	00102$
	mov	dpl,#0x30
	ret
00102$:
;	.\ecen4350_lcd_v4.c:942: if(key == 0x1) return '1';
	cjne	r7,#0x01,00104$
	mov	dpl,#0x31
	ret
00104$:
;	.\ecen4350_lcd_v4.c:943: if(key == 0x2) return '2';
	cjne	r7,#0x02,00106$
	mov	dpl,#0x32
	ret
00106$:
;	.\ecen4350_lcd_v4.c:944: if(key == 0x3) return '3';
	cjne	r7,#0x03,00108$
	mov	dpl,#0x33
	ret
00108$:
;	.\ecen4350_lcd_v4.c:945: if(key == 0x4) return '4';
	cjne	r7,#0x04,00110$
	mov	dpl,#0x34
	ret
00110$:
;	.\ecen4350_lcd_v4.c:946: if(key == 0x5) return '5';
	cjne	r7,#0x05,00112$
	mov	dpl,#0x35
	ret
00112$:
;	.\ecen4350_lcd_v4.c:947: if(key == 0x6) return '6';
	cjne	r7,#0x06,00114$
	mov	dpl,#0x36
	ret
00114$:
;	.\ecen4350_lcd_v4.c:948: if(key == 0x7) return '7';
	cjne	r7,#0x07,00116$
	mov	dpl,#0x37
	ret
00116$:
;	.\ecen4350_lcd_v4.c:949: if(key == 0x8) return '8';
	cjne	r7,#0x08,00118$
	mov	dpl,#0x38
	ret
00118$:
;	.\ecen4350_lcd_v4.c:950: if(key == 0x9) return '9';
	cjne	r7,#0x09,00120$
	mov	dpl,#0x39
	ret
00120$:
;	.\ecen4350_lcd_v4.c:951: if(key == 0xA) return 'A';
	cjne	r7,#0x0a,00122$
	mov	dpl,#0x41
	ret
00122$:
;	.\ecen4350_lcd_v4.c:952: if(key == 0xB) return 'B';
	cjne	r7,#0x0b,00124$
	mov	dpl,#0x42
	ret
00124$:
;	.\ecen4350_lcd_v4.c:953: if(key == 0xC) return 'C';
	cjne	r7,#0x0c,00126$
	mov	dpl,#0x43
	ret
00126$:
;	.\ecen4350_lcd_v4.c:954: if(key == 0xD) return 'D';
	cjne	r7,#0x0d,00128$
	mov	dpl,#0x44
	ret
00128$:
;	.\ecen4350_lcd_v4.c:955: if(key == 0xE) return 'E';
	cjne	r7,#0x0e,00130$
	mov	dpl,#0x45
	ret
00130$:
;	.\ecen4350_lcd_v4.c:956: if(key == 0xF) return 'F';
	cjne	r7,#0x0f,00132$
	mov	dpl,#0x46
	ret
00132$:
;	.\ecen4350_lcd_v4.c:958: return 0xff;
	mov	dpl,#0xff
;	.\ecen4350_lcd_v4.c:959: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ASCIItoHex'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:961: unsigned char ASCIItoHex(unsigned char key) {
;	-----------------------------------------
;	 function ASCIItoHex
;	-----------------------------------------
_ASCIItoHex:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:962: if(key == '0') return 0x0;
	cjne	r7,#0x30,00102$
	mov	dpl,#0x00
	ret
00102$:
;	.\ecen4350_lcd_v4.c:963: if(key == '1') return 0x1;
	cjne	r7,#0x31,00104$
	mov	dpl,#0x01
	ret
00104$:
;	.\ecen4350_lcd_v4.c:964: if(key == '2') return 0x2;
	cjne	r7,#0x32,00106$
	mov	dpl,#0x02
	ret
00106$:
;	.\ecen4350_lcd_v4.c:965: if(key == '3') return 0x3;
	cjne	r7,#0x33,00108$
	mov	dpl,#0x03
	ret
00108$:
;	.\ecen4350_lcd_v4.c:966: if(key == '4') return 0x4;
	cjne	r7,#0x34,00110$
	mov	dpl,#0x04
	ret
00110$:
;	.\ecen4350_lcd_v4.c:967: if(key == '5') return 0x5;
	cjne	r7,#0x35,00112$
	mov	dpl,#0x05
	ret
00112$:
;	.\ecen4350_lcd_v4.c:968: if(key == '6') return 0x6;
	cjne	r7,#0x36,00114$
	mov	dpl,#0x06
	ret
00114$:
;	.\ecen4350_lcd_v4.c:969: if(key == '7') return 0x7;
	cjne	r7,#0x37,00116$
	mov	dpl,#0x07
	ret
00116$:
;	.\ecen4350_lcd_v4.c:970: if(key == '8') return 0x8;
	cjne	r7,#0x38,00118$
	mov	dpl,#0x08
	ret
00118$:
;	.\ecen4350_lcd_v4.c:971: if(key == '9') return 0x9;
	cjne	r7,#0x39,00120$
	mov	dpl,#0x09
	ret
00120$:
;	.\ecen4350_lcd_v4.c:972: if(key == 'A') return 0xA;
	cjne	r7,#0x41,00122$
	mov	dpl,#0x0a
	ret
00122$:
;	.\ecen4350_lcd_v4.c:973: if(key == 'B') return 0xB;
	cjne	r7,#0x42,00124$
	mov	dpl,#0x0b
	ret
00124$:
;	.\ecen4350_lcd_v4.c:974: if(key == 'C') return 0xC;
	cjne	r7,#0x43,00126$
	mov	dpl,#0x0c
	ret
00126$:
;	.\ecen4350_lcd_v4.c:975: if(key == 'D') return 0xD;
	cjne	r7,#0x44,00128$
	mov	dpl,#0x0d
	ret
00128$:
;	.\ecen4350_lcd_v4.c:976: if(key == 'E') return 0xE;
	cjne	r7,#0x45,00130$
	mov	dpl,#0x0e
	ret
00130$:
;	.\ecen4350_lcd_v4.c:977: if(key == 'F') return 0xF;
	cjne	r7,#0x46,00132$
	mov	dpl,#0x0f
	ret
00132$:
;	.\ecen4350_lcd_v4.c:979: return 0xff;
	mov	dpl,#0xff
;	.\ecen4350_lcd_v4.c:980: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asciiToDec'
;------------------------------------------------------------
;d                         Allocated to registers 
;val                       Allocated to registers r4 
;id                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:982: void asciiToDec(unsigned char d)
;	-----------------------------------------
;	 function asciiToDec
;	-----------------------------------------
_asciiToDec:
;	.\ecen4350_lcd_v4.c:986: id = reverse(d);
	lcall	_reverse
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:987: while (id >= 1)
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00103$
;	.\ecen4350_lcd_v4.c:990: val = id % 10;
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
;	.\ecen4350_lcd_v4.c:991: id = id / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
;	.\ecen4350_lcd_v4.c:992: write(val + '0');
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
;	.\ecen4350_lcd_v4.c:994: write('\n');
	mov	dpl,#0x0a
;	.\ecen4350_lcd_v4.c:995: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'asciiToHex'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;val                       Allocated to registers r2 
;store                     Allocated with name '_asciiToHex_store_65536_519'
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:997: void asciiToHex(unsigned char d)
;	-----------------------------------------
;	 function asciiToHex
;	-----------------------------------------
_asciiToHex:
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:1002: store[0] = 0;
	mov	_asciiToHex_store_65536_519,#0x00
;	.\ecen4350_lcd_v4.c:1003: store[1] = 0;
	mov	(_asciiToHex_store_65536_519 + 0x0001),#0x00
;	.\ecen4350_lcd_v4.c:1004: while (d >= 1)
	mov	r6,#0x00
00104$:
	cjne	r7,#0x01,00122$
00122$:
	jc	00106$
;	.\ecen4350_lcd_v4.c:1007: val = d % 16;
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0f
	anl	a,r4
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1008: d = d / 16;
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
;	.\ecen4350_lcd_v4.c:1009: if (val <= 9)
	mov	a,r2
	add	a,#0xff - 0x09
	jc	00102$
;	.\ecen4350_lcd_v4.c:1012: store[i] = val + '0';
	mov	a,r6
	add	a,#_asciiToHex_store_65536_519
	mov	r1,a
	mov	ar5,r2
	mov	a,#0x30
	add	a,r5
	mov	@r1,a
	sjmp	00103$
00102$:
;	.\ecen4350_lcd_v4.c:1016: store[i] = (val % 10) + 'A';
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
;	.\ecen4350_lcd_v4.c:1018: i++;
	inc	r6
	sjmp	00104$
00106$:
;	.\ecen4350_lcd_v4.c:1020: write(store[1]);
	mov	dpl,(_asciiToHex_store_65536_519 + 0x0001)
	lcall	_write
;	.\ecen4350_lcd_v4.c:1021: write(store[0]);
	mov	dpl,_asciiToHex_store_65536_519
;	.\ecen4350_lcd_v4.c:1023: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print4Hex'
;------------------------------------------------------------
;num                       Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1026: void print4Hex(unsigned char num) {
;	-----------------------------------------
;	 function print4Hex
;	-----------------------------------------
_print4Hex:
;	.\ecen4350_lcd_v4.c:1027: write((u8) hexToASCII(num));
	lcall	_hexToASCII
;	.\ecen4350_lcd_v4.c:1028: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print8Hex'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1030: void print8Hex(unsigned char num) {
;	-----------------------------------------
;	 function print8Hex
;	-----------------------------------------
_print8Hex:
;	.\ecen4350_lcd_v4.c:1031: print4Hex(num >> 4);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_print4Hex
	pop	ar7
;	.\ecen4350_lcd_v4.c:1032: print4Hex(num & 0x0F);
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:1033: }
	ljmp	_print4Hex
;------------------------------------------------------------
;Allocation info for local variables in function 'print16Hex'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1035: void print16Hex(unsigned int num) {
;	-----------------------------------------
;	 function print16Hex
;	-----------------------------------------
_print16Hex:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1036: print8Hex((unsigned char)(num >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_print8Hex
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1037: print8Hex((unsigned char)num);
	mov	dpl,r6
;	.\ecen4350_lcd_v4.c:1038: }
	ljmp	_print8Hex
;------------------------------------------------------------
;Allocation info for local variables in function 'print16Dec'
;------------------------------------------------------------
;num                       Allocated to registers 
;val                       Allocated to registers r4 r5 
;id                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1040: void print16Dec(unsigned int num) {
;	-----------------------------------------
;	 function print16Dec
;	-----------------------------------------
_print16Dec:
;	.\ecen4350_lcd_v4.c:1043: id = reverse16(num);
	lcall	_reverse16
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1044: while (id >= 1) {
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00104$
;	.\ecen4350_lcd_v4.c:1045: val = id % 10;
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
;	.\ecen4350_lcd_v4.c:1046: id = id/10;
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
;	.\ecen4350_lcd_v4.c:1047: write(val + '0');
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
;	.\ecen4350_lcd_v4.c:1049: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print8ASCII'
;------------------------------------------------------------
;num                       Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1051: void print8ASCII(unsigned char num) {
;	-----------------------------------------
;	 function print8ASCII
;	-----------------------------------------
_print8ASCII:
;	.\ecen4350_lcd_v4.c:1052: write((u8)num);
;	.\ecen4350_lcd_v4.c:1053: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'print16ASCII'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1055: void print16ASCII(unsigned int num) {
;	-----------------------------------------
;	 function print16ASCII
;	-----------------------------------------
_print16ASCII:
	mov	r6,dpl
	mov	r7,dph
;	.\ecen4350_lcd_v4.c:1056: print8ASCII((unsigned char)(num >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_print8ASCII
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1057: print8ASCII((unsigned char)num);
	mov	dpl,r6
;	.\ecen4350_lcd_v4.c:1058: }
	ljmp	_print8ASCII
;------------------------------------------------------------
;Allocation info for local variables in function 'writeSomeLines'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1061: void writeSomeLines()
;	-----------------------------------------
;	 function writeSomeLines
;	-----------------------------------------
_writeSomeLines:
;	.\ecen4350_lcd_v4.c:1063: setRotation(0);		//rotation 0 is for flat/flush LCD
	mov	dpl,#0x00
	lcall	_setRotation
;	.\ecen4350_lcd_v4.c:1065: fillScreen(CYAN);
	mov	dptr,#0x07ff
	lcall	_fillScreen
;	.\ecen4350_lcd_v4.c:1066: fillTop(BLACK);
	mov	dptr,#0x0000
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1067: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1068: setTextColor(CYAN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:1069: setCursor(10,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000a
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1070: LCD_string_write("Welcome\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1071: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1072: setTextColor(BLACK, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0x0000
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:1073: LCD_string_write("\n Tyler Zoucha\n  ECEN-4350\n  Fall 2021");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1074: delay(40);
	mov	dptr,#0x0028
;	.\ecen4350_lcd_v4.c:1075: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorDefault'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1078: void setColorDefault() {
;	-----------------------------------------
;	 function setColorDefault
;	-----------------------------------------
_setColorDefault:
;	.\ecen4350_lcd_v4.c:1079: setTextColor(colorText, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07ff
;	.\ecen4350_lcd_v4.c:1080: } 
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorSelect'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1082: void setColorSelect() {
;	-----------------------------------------
;	 function setColorSelect
;	-----------------------------------------
_setColorSelect:
;	.\ecen4350_lcd_v4.c:1083: setTextColor(colorSelect, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf81f
;	.\ecen4350_lcd_v4.c:1084: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorHighlight1'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1086: void setColorHighlight1() {
;	-----------------------------------------
;	 function setColorHighlight1
;	-----------------------------------------
_setColorHighlight1:
;	.\ecen4350_lcd_v4.c:1087: setTextColor(colorSelect, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0xf81f
;	.\ecen4350_lcd_v4.c:1088: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorHighlight2'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1090: void setColorHighlight2() {
;	-----------------------------------------
;	 function setColorHighlight2
;	-----------------------------------------
_setColorHighlight2:
;	.\ecen4350_lcd_v4.c:1091: setTextColor(BLACK, CYAN);
	mov	_setTextColor_PARM_2,#0xff
	mov	(_setTextColor_PARM_2 + 1),#0x07
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:1092: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorGray'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1094: void setColorGray() {
;	-----------------------------------------
;	 function setColorGray
;	-----------------------------------------
_setColorGray:
;	.\ecen4350_lcd_v4.c:1095: setTextColor(GRAY, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xd6ba
;	.\ecen4350_lcd_v4.c:1096: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorMenu'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1098: void setColorMenu() {
;	-----------------------------------------
;	 function setColorMenu
;	-----------------------------------------
_setColorMenu:
;	.\ecen4350_lcd_v4.c:1099: setTextColor(BLACK, GRAY);
	mov	_setTextColor_PARM_2,#0xba
	mov	(_setTextColor_PARM_2 + 1),#0xd6
	mov	dptr,#0x0000
;	.\ecen4350_lcd_v4.c:1100: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorRed'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1102: void setColorRed() {
;	-----------------------------------------
;	 function setColorRed
;	-----------------------------------------
_setColorRed:
;	.\ecen4350_lcd_v4.c:1103: setTextColor(RED, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf800
;	.\ecen4350_lcd_v4.c:1104: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorWhite'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1106: void setColorWhite() {
;	-----------------------------------------
;	 function setColorWhite
;	-----------------------------------------
_setColorWhite:
;	.\ecen4350_lcd_v4.c:1107: setTextColor(WHITE, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
;	.\ecen4350_lcd_v4.c:1108: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorGreen'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1110: void setColorGreen() {
;	-----------------------------------------
;	 function setColorGreen
;	-----------------------------------------
_setColorGreen:
;	.\ecen4350_lcd_v4.c:1111: setTextColor(GREEN, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
;	.\ecen4350_lcd_v4.c:1112: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorYellow'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1114: void setColorYellow() {
;	-----------------------------------------
;	 function setColorYellow
;	-----------------------------------------
_setColorYellow:
;	.\ecen4350_lcd_v4.c:1115: setTextColor(YELLOW, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffe0
;	.\ecen4350_lcd_v4.c:1116: }
	ljmp	_setTextColor
;------------------------------------------------------------
;Allocation info for local variables in function 'inputAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 r6 
;input                     Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1118: unsigned int inputAddress()
;	-----------------------------------------
;	 function inputAddress
;	-----------------------------------------
_inputAddress:
;	.\ecen4350_lcd_v4.c:1123: input = keyDetect();					
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1126: write(input);									// Print to screen
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:1127: input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	mov	dpl,r7
	lcall	_ASCIItoHex
;	.\ecen4350_lcd_v4.c:1128: address |= (int) input * 16 * 16 * 16;			// highest order nibble = (input) * 0x1000
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1130: input = keyDetect();							// second highest address nibble
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1133: write(input);									// Print to screen
	mov  r5,dpl
	push	ar5
	lcall	_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:1134: input = ASCIItoHex(input);						// Manipulate data as hex instead of ASCII
	mov	dpl,r5
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1135: address |= (int) input * 16 * 16;				// store nibble; (input) * 0x0100
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r7
	orl	ar5,a
	mov	a,r6
	orl	ar4,a
;	.\ecen4350_lcd_v4.c:1137: input = keyDetect();
	push	ar5
	push	ar4
	lcall	_keyDetect
	mov	r7,dpl
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:1140: write(input);
	mov	dpl,r7
	push	ar7
	push	ar5
	push	ar4
	lcall	_write
	pop	ar4
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1141: input = ASCIItoHex(input);
	mov	dpl,r7
	push	ar5
	push	ar4
	lcall	_ASCIItoHex
	mov	r7,dpl
	pop	ar4
	pop	ar5
;	.\ecen4350_lcd_v4.c:1142: address |= (int) input * 16;					// *0x0010
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
;	.\ecen4350_lcd_v4.c:1144: input = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:1147: write(input);
	mov  r5,dpl
	push	ar5
	lcall	_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:1148: input = ASCIItoHex(input);
	mov	dpl,r5
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1149: address |= (int) input;							// *0x0001
	mov	r4,#0x00
	mov	a,r5
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	.\ecen4350_lcd_v4.c:1152: return address;									// yeet
;	.\ecen4350_lcd_v4.c:1153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inputBlockType'
;------------------------------------------------------------
;blockType                 Allocated to registers 
;invalidType               Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1155: unsigned char inputBlockType() {
;	-----------------------------------------
;	 function inputBlockType
;	-----------------------------------------
_inputBlockType:
;	.\ecen4350_lcd_v4.c:1161: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1162: blockType = ASCIItoHex(selection);
	mov	dpl,r7
;	.\ecen4350_lcd_v4.c:1177: return blockType;
;	.\ecen4350_lcd_v4.c:1178: }
	ljmp	_ASCIItoHex
;------------------------------------------------------------
;Allocation info for local variables in function 'inputBlockSize'
;------------------------------------------------------------
;blockSize                 Allocated to registers 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1180: unsigned char inputBlockSize() {
;	-----------------------------------------
;	 function inputBlockSize
;	-----------------------------------------
_inputBlockSize:
;	.\ecen4350_lcd_v4.c:1183: selection = keyDetect();
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1184: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1185: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1186: blockSize |= selection * 16;
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
;	.\ecen4350_lcd_v4.c:1187: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:1188: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:1189: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:1190: blockSize |= selection;
	mov	a,r6
	orl	a,r7
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:1191: return blockSize;
;	.\ecen4350_lcd_v4.c:1192: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printMenu'
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:1195: void printMenu() {
;	-----------------------------------------
;	 function printMenu
;	-----------------------------------------
_printMenu:
;	.\ecen4350_lcd_v4.c:1197: setCursor(0,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1198: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1201: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1202: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1203: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1204: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1205: LCD_string_write("<Menu>\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1207: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1209: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1210: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1211: LCD_string_write(" <D>");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1212: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1213: LCD_string_write(" DUMP\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1215: setCursor(120, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1216: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1217: LCD_string_write(" <B>");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1218: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1219: LCD_string_write(" MOVE\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1221: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1222: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1223: LCD_string_write(" <E>");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1224: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1225: LCD_string_write(" EDIT\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1227: setCursor(120, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0078
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1228: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1229: LCD_string_write(" <F>");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1230: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1231: LCD_string_write(" FIND\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1233: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1234: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1235: LCD_string_write(" <C>");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1236: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1237: LCD_string_write(" COUNT\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1239: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1240: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1241: LCD_string_write(" <A>");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1242: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1243: LCD_string_write(" MEM CHECK\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1245: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1246: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1247: LCD_string_write(" <1>");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1248: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1249: LCD_string_write(" UART");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1250: setTextSize(1);
	mov	dpl,#0x01
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1251: if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00102$
;	.\ecen4350_lcd_v4.c:1252: LCD_string_write(" [Disabled]\n");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_LCD_string_write
00102$:
;	.\ecen4350_lcd_v4.c:1253: } if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00104$
;	.\ecen4350_lcd_v4.c:1254: LCD_string_write(" [Enabled]\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_LCD_string_write
00104$:
;	.\ecen4350_lcd_v4.c:1256: setTextSize(2);
	mov	dpl,#0x02
;	.\ecen4350_lcd_v4.c:1257: return;
;	.\ecen4350_lcd_v4.c:1258: }
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
;	.\ecen4350_lcd_v4.c:1260: void dump()
;	-----------------------------------------
;	 function dump
;	-----------------------------------------
_dump:
;	.\ecen4350_lcd_v4.c:1265: __idata unsigned char blockType = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1266: __idata unsigned char exit = 1;
	mov	r0,#_dump_exit_65536_553
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1267: __idata unsigned char invalidType = 1;
	mov	r5,#0x01
;	.\ecen4350_lcd_v4.c:1268: __idata unsigned char invalidSize = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:1270: clearLCD();
	push	ar7
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1273: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1274: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1275: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1276: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1277: LCD_string_write("[DUMP]\n");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1278: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1279: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1280: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1281: LCD_string_write(" Address Location:\n");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1282: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1283: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1284: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1285: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1286: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1287: LCD_string_write(" Choose Block Type:\n");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1288: setCursor(0, 160); 
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1289: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1290: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1291: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1292: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1293: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1294: LCD_string_write(" _");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1301: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1302: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1303: LCD_string_write(" Address Location:");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1304: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1305: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1306: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1307: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1308: address = inputAddress();				// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r0,#_dump_address_65536_553
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:1309: d = (unsigned char __xdata *)(address);
	mov	r0,#_dump_address_65536_553
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
;	.\ecen4350_lcd_v4.c:1312: setColorDefault();
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1313: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1314: LCD_string_write(" Address Location:");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1315: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1316: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1317: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1318: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1319: print16Hex(address);					// print 16-bit address from stored memory
	mov	r0,#_dump_address_65536_553
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1322: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1323: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1324: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1325: setCursor(0, 160); 
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1326: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1327: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1330: while (invalidType) {
00109$:
	mov	a,r5
	jnz	00235$
	ljmp	00153$
00235$:
;	.\ecen4350_lcd_v4.c:1331: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1332: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1333: LCD_string_write("\n\n");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1335: blockType = inputBlockType();
	lcall	_inputBlockType
	mov	r7,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1337: if (blockType == 0x1) {
	cjne	r7,#0x01,00102$
;	.\ecen4350_lcd_v4.c:1338: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1340: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1341: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1342: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1343: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1344: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1345: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1346: LCD_string_write("<1> BYTE\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1347: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1348: LCD_string_write("\n\n                \n                ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	.\ecen4350_lcd_v4.c:1349: } if (blockType == 0x2) {
	cjne	r7,#0x02,00104$
;	.\ecen4350_lcd_v4.c:1350: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1352: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1353: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1354: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1355: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1356: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1357: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1358: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1359: LCD_string_write("<2> WORD\n");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1360: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1361: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:1362: } if (blockType == 0x4) {
	cjne	r7,#0x04,00106$
;	.\ecen4350_lcd_v4.c:1363: invalidType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1365: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1366: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1367: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1368: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1369: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1370: LCD_string_write("\n\n  ");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1371: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1372: LCD_string_write("<4> DWORD");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1373: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1374: LCD_string_write("\n                \n                ");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
;	.\ecen4350_lcd_v4.c:1376: if (invalidType) {
	mov	a,r5
	jnz	00242$
	ljmp	00109$
00242$:
;	.\ecen4350_lcd_v4.c:1377: setColorRed();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1378: LCD_string_write("\n  Input Error\n  Try Again");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:1384: while (invalidSize)
00153$:
00115$:
	mov	a,r3
	jnz	00243$
	ljmp	00117$
00243$:
;	.\ecen4350_lcd_v4.c:1387: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1388: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1389: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1390: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1391: selection = keyDetect();
	lcall	_keyDetect
	mov	r5,dpl
	mov	r0,#_selection
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:1392: write(selection);
	mov	dpl,r5
	lcall	_write
;	.\ecen4350_lcd_v4.c:1393: blockSize = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r5,dpl
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:1394: setColorDefault();
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1396: if (blockSize != blockType) {
	mov	a,r5
	cjne	a,ar7,00244$
	sjmp	00113$
00244$:
;	.\ecen4350_lcd_v4.c:1397: setColorSelect();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1398: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1399: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1400: LCD_string_write(" _");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1401: setCursor(0,260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1402: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1403: LCD_string_write(" Mismatch Error\n Try Again");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1404: setCursor(0, 240);
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
;	.\ecen4350_lcd_v4.c:1406: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1407: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1408: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1409: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1410: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1411: invalidSize = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:1412: setCursor(0,260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1413: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1414: LCD_string_write(" Match Confirmed\n                ");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	ljmp	00115$
00117$:
;	.\ecen4350_lcd_v4.c:1418: delay(40);
	mov	dptr,#0x0028
	push	ar7
	push	ar6
	push	ar4
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1419: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1420: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1427: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1428: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1429: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1430: LCD_string_write("[DUMP]\n");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1431: setColorDefault();
	lcall	_setColorDefault
	pop	ar4
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1433: while (exit) {
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
;	.\ecen4350_lcd_v4.c:1434: setTextSize(2);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1435: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1436: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1437: LCD_string_write(" Address:");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1438: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1439: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1440: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1441: print16Hex(address);
	mov	r0,#_dump_address_65536_553
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1442: if (blockType == 0x1)
	mov	a,r5
	jnz	00252$
	ljmp	00119$
00252$:
;	.\ecen4350_lcd_v4.c:1444: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1445: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1446: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1447: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1448: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1449: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1451: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1452: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1453: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1454: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1455: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1456: print8ASCII(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1458: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1459: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1460: LCD_string_write(" Data Type:");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1461: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1462: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1463: LCD_string_write(" BYTE");
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00119$:
;	.\ecen4350_lcd_v4.c:1465: if (blockType == 0x2)
	mov	a,_dump_sloc0_1_0
	jnz	00253$
	ljmp	00121$
00253$:
;	.\ecen4350_lcd_v4.c:1467: setCursor(0, 120);
	push	ar7
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1468: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1469: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1470: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1471: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1472: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1473: d++;
	mov	a,#0x01
	add	a,r4
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r7,a
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1474: print8Hex(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	lcall	_print8Hex
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1475: d--;
	dec	r3
	cjne	r3,#0xff,00254$
	dec	r7
00254$:
;	.\ecen4350_lcd_v4.c:1477: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar3
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
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1482: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	lcall	_print8ASCII
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1483: d++;
	mov	a,#0x01
	add	a,r3
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r6,a
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1484: print8ASCII(ramRead8(d));
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1486: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1487: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1488: LCD_string_write(" Data Type:");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1489: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1490: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1491: LCD_string_write(" WORD");
	mov	dptr,#___str_51
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1547: return;
	pop	ar7
;	.\ecen4350_lcd_v4.c:1491: LCD_string_write(" WORD");
00121$:
;	.\ecen4350_lcd_v4.c:1493: if (blockType == 0x4)
	mov	a,r7
	jnz	00255$
	ljmp	00123$
00255$:
;	.\ecen4350_lcd_v4.c:1495: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1496: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1497: LCD_string_write(" Hex Data:");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1498: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1499: setCursor(10, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1500: print8Hex(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8Hex
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1501: d++;
	mov	a,#0x01
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1502: print8Hex(ramRead8(d));
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8Hex
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1503: d++;
	inc	r2
	cjne	r2,#0x00,00256$
	inc	r3
00256$:
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1504: print8Hex(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8Hex
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:1505: d++;
	mov	a,#0x01
	add	a,r2
	mov	_dump_d_65536_553,a
	clr	a
	addc	a,r3
	mov	(_dump_d_65536_553 + 1),a
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,_dump_d_65536_553
	mov	dph,(_dump_d_65536_553 + 1)
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1506: print8Hex(ramRead8(d));
	mov	dpl,r3
	lcall	_print8Hex
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1507: d--;
	mov	a,_dump_d_65536_553
	add	a,#0xff
	mov	r2,a
	mov	a,(_dump_d_65536_553 + 1)
	addc	a,#0xff
	mov	r3,a
;	.\ecen4350_lcd_v4.c:1508: d--;
	dec	r2
	cjne	r2,#0xff,00257$
	dec	r3
00257$:
;	.\ecen4350_lcd_v4.c:1509: d--;
	dec	r2
	cjne	r2,#0xff,00258$
	dec	r3
00258$:
;	.\ecen4350_lcd_v4.c:1511: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1512: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1513: LCD_string_write(" ASCII Data:");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1514: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1515: setCursor(10, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	lcall	_setCursor
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1516: print8ASCII(ramRead8(d));
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1517: d++;
	inc	r2
	cjne	r2,#0x00,00259$
	inc	r3
00259$:
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1518: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar7
;	.\ecen4350_lcd_v4.c:1519: d++;
	inc	r2
	cjne	r2,#0x00,00260$
	inc	r3
00260$:
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1520: print8ASCII(ramRead8(d));
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	lcall	_print8ASCII
	pop	ar2
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:1521: d++;
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r6,a
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1522: print8ASCII(ramRead8(d));
	push	ar6
	push	ar5
	push	ar4
	lcall	_print8ASCII
;	.\ecen4350_lcd_v4.c:1524: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1525: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1526: LCD_string_write(" Data Type:");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1527: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1528: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1529: LCD_string_write(" DWORD");
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00123$:
;	.\ecen4350_lcd_v4.c:1531: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1532: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1533: LCD_string_write(" <0> Exit\n");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1535: selection = keyDetect();
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:1537: if (selection == '0' ) {
	cjne	r3,#0x30,00261$
	sjmp	00262$
00261$:
	ljmp	00126$
00262$:
;	.\ecen4350_lcd_v4.c:1538: exit = 0;
	mov	r0,#_dump_exit_65536_553
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1539: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1540: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1541: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1542: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1543: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1544: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00126$
;	.\ecen4350_lcd_v4.c:1547: return;
;	.\ecen4350_lcd_v4.c:1548: }
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
;	.\ecen4350_lcd_v4.c:1550: void move() {
;	-----------------------------------------
;	 function move
;	-----------------------------------------
_move:
;	.\ecen4350_lcd_v4.c:1554: __idata unsigned int blockSize = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1555: __idata unsigned char blockType = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:1556: __idata unsigned char invalidType = 1;
	mov	r4,#0x01
;	.\ecen4350_lcd_v4.c:1557: __idata unsigned char invalidSize = 1;
	mov	r0,#_move_invalidSize_65536_609
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1559: clearLCD();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1562: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1563: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1564: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1565: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1566: LCD_string_write("[MOVE]\n");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1567: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1568: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1569: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1570: LCD_string_write(" Source Address:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1571: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1572: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1573: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1574: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1575: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1576: LCD_string_write(" Destination:");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1577: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1578: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1579: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1580: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1581: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1582: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1583: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1584: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1585: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1586: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1587: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1588: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1589: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1590: LCD_string_write(" _");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1597: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1598: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1599: LCD_string_write(" Source Address:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1600: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1601: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1602: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1603: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1604: sourceAddress = inputAddress();
	lcall	_inputAddress
	mov	r0,#_move_sourceAddress_65536_609
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:1607: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1608: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1609: LCD_string_write(" Source Address:");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1610: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1611: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1612: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1613: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1614: print16Hex(sourceAddress);
	mov	r0,#_move_sourceAddress_65536_609
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1617: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1618: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1619: LCD_string_write(" Destination:");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1620: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1621: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1622: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1623: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1624: destAddress = inputAddress();
	lcall	_inputAddress
	mov	r2,dpl
	mov	r3,dph
;	.\ecen4350_lcd_v4.c:1627: setColorDefault();
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1628: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1629: LCD_string_write( " Destination:");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1630: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1631: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1632: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1633: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
;	.\ecen4350_lcd_v4.c:1634: print16Hex(destAddress);
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1637: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1638: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1639: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1640: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1641: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1642: LCD_string_write("  <1> BYTE\n  <2> WORD\n  <4> DWORD");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1644: while (invalidType) {
00109$:
	mov	a,r4
	jnz	00178$
	ljmp	00137$
00178$:
;	.\ecen4350_lcd_v4.c:1645: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1646: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1647: LCD_string_write("\n\n");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1649: blockType = inputBlockType();
	lcall	_inputBlockType
	mov	r5,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1651: if (blockType == 0x1) {
	cjne	r5,#0x01,00102$
;	.\ecen4350_lcd_v4.c:1652: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1654: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1655: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1656: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1657: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1658: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1659: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1660: LCD_string_write("<1> BYTE\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1661: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1662: LCD_string_write("\n\n                \n                ");
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
;	.\ecen4350_lcd_v4.c:1664: } if (blockType == 0x2) {
	cjne	r5,#0x02,00104$
;	.\ecen4350_lcd_v4.c:1665: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1667: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1668: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1669: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1670: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1671: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1672: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1673: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1674: LCD_string_write("<2> WORD\n");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1675: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1676: LCD_string_write("\n                \n                ");
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
;	.\ecen4350_lcd_v4.c:1677: } if (blockType == 0x4) {
	cjne	r5,#0x04,00106$
;	.\ecen4350_lcd_v4.c:1678: invalidType = 0;
	mov	r4,#0x00
;	.\ecen4350_lcd_v4.c:1680: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1681: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1682: LCD_string_write(" Choose Block Type:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1683: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1684: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1685: LCD_string_write("\n\n  ");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1686: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1687: LCD_string_write("<4> DWORD");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1688: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1689: LCD_string_write("\n                \n                ");
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
;	.\ecen4350_lcd_v4.c:1691: if (invalidType) {
	mov	a,r4
	jnz	00185$
	ljmp	00109$
00185$:
;	.\ecen4350_lcd_v4.c:1692: setColorRed();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1693: LCD_string_write("\n  Input Error\n  Try Again");
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
;	.\ecen4350_lcd_v4.c:1699: while (invalidSize)
00137$:
00115$:
	mov	r0,#_move_invalidSize_65536_609
	mov	a,@r0
	jnz	00186$
	ljmp	00140$
00186$:
;	.\ecen4350_lcd_v4.c:1702: setCursor(0, 260);
	push	ar2
	push	ar3
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1703: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1704: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1705: selection = keyDetect();
	lcall	_keyDetect
	mov	a,dpl
	mov	r0,#_selection
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:1706: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1707: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1708: blockSize = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	mov	ar6,r4
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:1709: setColorDefault();
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
;	.\ecen4350_lcd_v4.c:1711: if (blockSize != blockType) {
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
;	.\ecen4350_lcd_v4.c:1712: setCursor(0,280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1713: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:1714: LCD_string_write(" Mismatch Error\n Try Again");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1715: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1716: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1717: LCD_string_write(" Input Size:");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1718: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1719: LCD_string_write(" _");
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
;	.\ecen4350_lcd_v4.c:1721: setCursor(0, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1722: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1723: LCD_string_write(" Input Size: ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1724: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1725: write(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_write
;	.\ecen4350_lcd_v4.c:1726: invalidSize = 0;
	mov	r0,#_move_invalidSize_65536_609
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1727: setCursor(0,280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1728: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1729: LCD_string_write(" Match Confirmed\n                ");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00115$
;	.\ecen4350_lcd_v4.c:1735: for(unsigned int i = sourceAddress; i < (sourceAddress + blockSize); i++) {
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
;	.\ecen4350_lcd_v4.c:1736: d = (unsigned char __xdata*)(destAddress);
	mov	_move_d_65536_609,r2
	mov	(_move_d_65536_609 + 1),r3
;	.\ecen4350_lcd_v4.c:1737: ramWrite8(d,ramRead8((unsigned char __xdata*)i));
	mov	dpl,_move_i_131072_618
	mov	dph,(_move_i_131072_618 + 1)
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	movx	a,@dptr
	mov	r5,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:121: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:122: *map_address = d;
	mov	dpl,_move_d_65536_609
	mov	dph,(_move_d_65536_609 + 1)
	mov	a,r5
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:123: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1738: if (destAddress == 0xFFFF) {						// check end of RAM
	cjne	r2,#0xff,00119$
	cjne	r3,#0xff,00119$
;	.\ecen4350_lcd_v4.c:1739: destAddress = 0x0000;
	mov	r2,#0x00
	mov	r3,#0x00
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:1741: destAddress++;
	inc	r2
	cjne	r2,#0x00,00191$
	inc	r3
00191$:
00126$:
;	.\ecen4350_lcd_v4.c:1735: for(unsigned int i = sourceAddress; i < (sourceAddress + blockSize); i++) {
	inc	_move_i_131072_618
	clr	a
	cjne	a,_move_i_131072_618,00125$
	inc	(_move_i_131072_618 + 1)
	sjmp	00125$
00121$:
;	.\ecen4350_lcd_v4.c:1745: setCursor(0, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1746: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:1747: LCD_string_write(" Move Complete\n");
	mov	dptr,#___str_58
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1748: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1749: selection = 'null';
	mov	r0,#_selection
	mov	@r0,#0x6e
;	.\ecen4350_lcd_v4.c:1750: return;
;	.\ecen4350_lcd_v4.c:1751: }
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
;	.\ecen4350_lcd_v4.c:1753: void edit(){
;	-----------------------------------------
;	 function edit
;	-----------------------------------------
_edit:
;	.\ecen4350_lcd_v4.c:1757: __idata unsigned char exit = 1;
	mov	r0,#_edit_exit_65536_628
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1760: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:1763: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:1764: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1765: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:1766: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1767: LCD_string_write("[EDIT]\n");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1768: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:1769: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1770: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1771: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1772: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1773: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1774: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1775: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1776: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1777: LCD_string_write(" Location Contents:\n");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1778: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1779: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1780: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1781: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1782: LCD_string_write(" Enter New Value:\n");
	mov	dptr,#___str_63
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1783: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1784: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1785: setCursor(0,210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1786: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1787: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1788: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1789: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1790: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1797: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1798: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1799: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1800: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1801: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1802: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1803: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1804: address = inputAddress();		// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r5,dpl
	mov	r6,dph
;	.\ecen4350_lcd_v4.c:1805: d = (unsigned char __xdata*)address;
	mov	ar3,r5
	mov	ar4,r6
;	.\ecen4350_lcd_v4.c:1808: setColorDefault();
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1809: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1810: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1811: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1812: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1813: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1814: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1815: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1818: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1819: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1820: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1821: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1822: print8Hex(ramRead8(d));
	push	ar4
	push	ar3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1825: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1826: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1827: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1828: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1829: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1830: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1831: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1832: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1833: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1834: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1835: selection = ASCIItoHex(selection);
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
;	.\ecen4350_lcd_v4.c:1836: value |= selection;
	mov	a,r2
	orl	ar7,a
;	.\ecen4350_lcd_v4.c:1839: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1840: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1841: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1842: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1843: print8Hex(value);
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
;	.\ecen4350_lcd_v4.c:121: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:122: *map_address = d;
	mov	dpl,r3
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:123: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1848: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1849: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1850: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1851: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1852: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1853: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1859: while(exit){
00109$:
	mov	r0,#_edit_exit_65536_628
	mov	a,@r0
	jnz	00150$
	ret
00150$:
;	.\ecen4350_lcd_v4.c:1860: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r7,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1861: invalid = 1;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:1862: if (selection == '1') {		/* Highlight choice and gray out others */
	cjne	r7,#0x31,00151$
	sjmp	00152$
00151$:
	ljmp	00102$
00152$:
;	.\ecen4350_lcd_v4.c:1863: invalid = 0;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1865: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1866: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1867: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1868: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1869: LCD_string_write("<1> Next Address\n");
	mov	dptr,#___str_69
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1870: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1871: LCD_string_write("\n\n               ");
	mov	dptr,#___str_70
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1872: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1875: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1876: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1877: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1878: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1879: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1880: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1881: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1882: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1883: LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");
	mov	dptr,#___str_72
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1886: address++;
	inc	r5
	cjne	r5,#0x00,00153$
	inc	r6
00153$:
;	.\ecen4350_lcd_v4.c:1887: d = (unsigned char __xdata*)address;
	mov	_edit_d_65536_628,r5
	mov	(_edit_d_65536_628 + 1),r6
;	.\ecen4350_lcd_v4.c:1888: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1889: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1890: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1891: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1892: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1895: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1896: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1897: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1898: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,_edit_d_65536_628
	mov	dph,(_edit_d_65536_628 + 1)
	movx	a,@dptr
	mov	r2,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1899: print8Hex(ramRead8(d));
	mov	dpl,r2
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1902: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1903: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1904: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1905: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1906: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1907: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1908: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1909: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1910: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1911: write(selection);
	mov	dpl,r7
	lcall	_write
;	.\ecen4350_lcd_v4.c:1912: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r7,dpl
	pop	ar2
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:1913: value |= selection;
	mov	a,r2
	orl	ar7,a
;	.\ecen4350_lcd_v4.c:1916: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1917: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1918: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1919: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:1920: print8Hex(value);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_print8Hex
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:121: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:122: *map_address = d;
	mov	dpl,_edit_d_65536_628
	mov	dph,(_edit_d_65536_628 + 1)
	mov	a,r7
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:123: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1925: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1926: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1927: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1928: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:1929: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1930: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
00102$:
;	.\ecen4350_lcd_v4.c:1932: if (selection == '2') {			/* Highlight choice and gray out others*/
	mov	r0,#_selection
	cjne	@r0,#0x32,00154$
	sjmp	00155$
00154$:
	ljmp	00104$
00155$:
;	.\ecen4350_lcd_v4.c:1933: invalid = 0;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:1935: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1936: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1937: LCD_string_write(" Choose Next Action:\n  ");
	mov	dptr,#___str_73
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1938: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1939: LCD_string_write("\n  ");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1940: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1941: LCD_string_write("<2> New Address\n");
	mov	dptr,#___str_74
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1942: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1943: LCD_string_write("\n               ");
	mov	dptr,#___str_75
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1944: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	.\ecen4350_lcd_v4.c:1947: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1948: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:1949: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1950: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1951: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1952: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1953: LCD_string_write("\n __");
	mov	dptr,#___str_71
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1954: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1955: LCD_string_write("\n  <1> Next Address\n  <2> New Address\n  <0> Exit");
	mov	dptr,#___str_72
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1958: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1959: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1960: LCD_string_write(" Edit Address");
	mov	dptr,#___str_76
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1961: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1962: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1963: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1964: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1965: address = inputAddress();		// input 16-bit address and store in memory
	lcall	_inputAddress
	mov	r5,dpl
	mov	r6,dph
;	.\ecen4350_lcd_v4.c:1966: d = (unsigned char __xdata*)address;
	mov	ar3,r5
	mov	ar7,r6
;	.\ecen4350_lcd_v4.c:1969: setColorDefault();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1970: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1971: LCD_string_write(" Edit Address:");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1972: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1973: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1974: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:1975: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	pop	ar6
;	.\ecen4350_lcd_v4.c:1976: print16Hex(address);		// print 16-bit address from stored memory
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	push	ar3
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:1979: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1980: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:1981: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1982: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r3
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:1983: print8Hex(ramRead8(d));
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:1986: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:1987: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:1988: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:1989: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:1990: selection = keyDetect();
	lcall	_keyDetect
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1991: write(selection);
	mov	dpl,r2
	lcall	_write
;	.\ecen4350_lcd_v4.c:1992: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r2,dpl
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:1993: value |= selection * 16;
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
;	.\ecen4350_lcd_v4.c:1994: selection = keyDetect();
	push	ar2
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:1995: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:1996: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar2
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:1997: value |= selection;
	mov	a,r2
	orl	ar4,a
;	.\ecen4350_lcd_v4.c:2000: setColorDefault();
	push	ar4
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2001: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2002: LCD_string_write(" Enter New Value:\n ");
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2003: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar3
	pop	ar4
;	.\ecen4350_lcd_v4.c:2004: print8Hex(value);
	mov	dpl,r4
	push	ar4
	push	ar3
	lcall	_print8Hex
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:121: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:122: *map_address = d;
	mov	dpl,r3
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:123: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2009: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2010: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2011: LCD_string_write(" Choose Next Action:\n");
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2012: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2013: LCD_string_write("  <1> Next Address\n  <2> New Address\n");
	mov	dptr,#___str_65
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2014: LCD_string_write("  <0> Exit");
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
00104$:
;	.\ecen4350_lcd_v4.c:2016: if (selection == '0') {			/* Highlight choice and gray out others */
	mov	r0,#_selection
	cjne	@r0,#0x30,00106$
;	.\ecen4350_lcd_v4.c:2017: exit = 0;
	mov	r0,#_edit_exit_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2018: invalid = 0;
	mov	r0,#_edit_invalid_65536_628
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2019: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2020: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2021: LCD_string_write("\n");
	mov	dptr,#___str_77
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2022: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2023: LCD_string_write("\n\n  ");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2024: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2025: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2026: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2027: LCD_string_write("\n               ");
	mov	dptr,#___str_75
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2028: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
	pop	ar5
	pop	ar6
00106$:
;	.\ecen4350_lcd_v4.c:2030: if (invalid) {
	mov	r0,#_edit_invalid_65536_628
	mov	a,@r0
	jnz	00158$
	ljmp	00109$
00158$:
;	.\ecen4350_lcd_v4.c:2031: setCursor(0, 210);
	mov	_setCursor_PARM_2,#0xd2
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2032: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2033: LCD_string_write("\n\n\n\n Input Error ");
	mov	dptr,#___str_79
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	pop	ar6
	ljmp	00109$
;	.\ecen4350_lcd_v4.c:2036: return;
;	.\ecen4350_lcd_v4.c:2037: }
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
;	.\ecen4350_lcd_v4.c:2039: void find() {
;	-----------------------------------------
;	 function find
;	-----------------------------------------
_find:
;	.\ecen4350_lcd_v4.c:2043: __idata unsigned char blockSize = 0;
	mov	r0,#_find_blockSize_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2045: __idata unsigned char scan = 0;
	mov	r0,#_find_scan_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2046: __idata unsigned char page = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:2047: __idata unsigned char noneFound = 1;
	mov	r0,#_find_noneFound_65536_652
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2048: __idata unsigned char invalidInput = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:2049: __idata unsigned char exit = 1;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2051: clearLCD();
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2054: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2055: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2056: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2057: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2058: LCD_string_write("[FIND]\n");
	mov	dptr,#___str_80
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2059: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2060: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2061: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2062: LCD_string_write(" Find Value:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2063: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2064: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2065: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2066: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2067: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2068: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2069: setCursor(0, 130 );
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2070: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2071: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2072: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2073: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2074: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2075: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2076: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2077: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2079: (0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2080: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2081: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2088: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2089: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2090: LCD_string_write(" Find Value:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2091: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2092: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2093: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2094: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2095: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2096: selection = keyDetect();
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2097: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:2098: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2099: value |= selection * 16;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
;	.\ecen4350_lcd_v4.c:2100: selection = keyDetect();
	push	ar4
	push	ar3
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2101: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:2102: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar3
	pop	ar4
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2103: value |= selection;
	mov	r0,#_find_value_65536_652
	mov	a,r6
	orl	a,r4
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2106: setColorDefault();
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2107: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2108: LCD_string_write(" Find Value:");
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2109: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2110: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2111: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2112: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2113: print8Hex(value);
	mov	r0,#_find_value_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2116: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2117: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2118: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2119: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2120: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2121: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2122: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2123: address = inputAddress();
	lcall	_inputAddress
	mov	r0,#_find_address_65536_652
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:2126: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2127: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2128: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2129: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2130: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2131: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2132: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2133: print16Hex(address);
	mov	r0,#_find_address_65536_652
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2136: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2137: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2138: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2139: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2140: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2141: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2142: while (invalidInput) {
00113$:
	mov	a,r3
	jnz	00539$
	ljmp	00115$
00539$:
;	.\ecen4350_lcd_v4.c:2143: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2144: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2145: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2146: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2147: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2148: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2149: blockSize = inputBlockSize();
	lcall	_inputBlockSize
	mov	r0,#_find_blockSize_65536_652
	mov	@r0,dpl
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2150: if (blockSize == 0x01) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x01,00111$
;	.\ecen4350_lcd_v4.c:2151: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2152: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2153: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	sjmp	00113$
00111$:
;	.\ecen4350_lcd_v4.c:2154: } else if (blockSize == 0x02) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x02,00108$
;	.\ecen4350_lcd_v4.c:2155: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2156: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2157: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00108$:
;	.\ecen4350_lcd_v4.c:2158: } else if (blockSize == 0x04) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x04,00105$
;	.\ecen4350_lcd_v4.c:2159: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2160: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2161: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00105$:
;	.\ecen4350_lcd_v4.c:2162: } else if (blockSize == 0xFF) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0xff,00102$
;	.\ecen4350_lcd_v4.c:2163: invalidInput = 0;
	mov	r3,#0x00
	ljmp	00113$
00102$:
;	.\ecen4350_lcd_v4.c:2166: setColorRed();
	push	ar5
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2167: LCD_string_write("\n Try again");
	mov	dptr,#___str_89
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00115$:
;	.\ecen4350_lcd_v4.c:2172: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2173: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2174: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2175: if (blockSize == 0x01){
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x01,00125$
;	.\ecen4350_lcd_v4.c:2176: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	push	ar5
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2177: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2178: LCD_string_write("<01> BYTE\n");
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2179: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2180: LCD_string_write("  <02> WORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2181: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2182: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2183: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2184: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2185: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2186: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2187: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2188: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2189: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2190: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2191: LCD_string_write("\n BYTE [8 bits]");
	mov	dptr,#___str_94
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00125$:
;	.\ecen4350_lcd_v4.c:2192: } else if (blockSize == 0x02) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x02,00122$
;	.\ecen4350_lcd_v4.c:2193: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2194: LCD_string_write("  <01> BYTE\n  ");
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2195: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2196: LCD_string_write("<02> WORD\n");
	mov	dptr,#___str_96
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2197: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2198: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2199: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2200: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2201: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2202: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2203: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2204: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2205: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2206: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2207: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2208: LCD_string_write("\n WORD [16 bits]");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00122$:
;	.\ecen4350_lcd_v4.c:2209: } else if (blockSize == 0x04) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0x04,00119$
;	.\ecen4350_lcd_v4.c:2210: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2211: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2212: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2213: LCD_string_write("<04> DWORD\n");
	mov	dptr,#___str_99
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2214: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2215: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2216: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2217: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2218: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2219: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2220: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2221: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2222: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2223: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2224: LCD_string_write("\n DWORD [32 bits]");
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:2225: } else if (blockSize == 0xFF) {
	mov	r0,#_find_blockSize_65536_652
	cjne	@r0,#0xff,00126$
;	.\ecen4350_lcd_v4.c:2226: scan = 1;
	mov	r0,#_find_scan_65536_652
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2227: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2228: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2229: LCD_string_write("<04> DWORD\n  ");
	mov	dptr,#___str_101
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2230: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2231: LCD_string_write("<FF> (SCAN)");
	mov	dptr,#___str_102
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2232: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2233: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2234: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2235: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2236: print8Hex(blockSize);
	mov	r0,#_find_blockSize_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2237: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2238: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2239: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2240: LCD_string_write("\n [256 Blocks]");
	mov	dptr,#___str_103
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
00126$:
;	.\ecen4350_lcd_v4.c:2244: delay(40);
	mov	dptr,#0x0028
	push	ar5
	lcall	_delay
;	.\ecen4350_lcd_v4.c:2245: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2246: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2247: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2248: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2249: setCursor(30,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2250: LCD_string_write("[FIND]\n");
	mov	dptr,#___str_80
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2251: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2252: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
	pop	ar5
;	.\ecen4350_lcd_v4.c:2258: while (exit) {
00205$:
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jnz	00556$
	ljmp	00207$
00556$:
;	.\ecen4350_lcd_v4.c:2260: if (scan) {	
	mov	r0,#_find_scan_65536_652
	mov	a,@r0
	jnz	00557$
	ljmp	00196$
00557$:
;	.\ecen4350_lcd_v4.c:2261: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2262: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2263: LCD_string_write(" [Non-Interactive]\n");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2264: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2265: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2266: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2267: print8Hex(value);
	mov	r0,#_find_value_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2268: for(unsigned int i = 0; i < blockSize; i++) {
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
;	.\ecen4350_lcd_v4.c:2269: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_find_address_65536_652
	mov	a,@r0
	add	a,_find_i_262144_665
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,(_find_i_262144_665 + 1)
	mov	r6,a
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2270: if(value == ramRead8(d)){
	mov	r0,#_find_value_65536_652
	mov	a,@r0
	cjne	a,ar4,00212$
;	.\ecen4350_lcd_v4.c:2271: noneFound = 0;
	mov	r0,#_find_noneFound_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2273: if (page == 0) {		
	mov	a,r3
	jnz	00128$
;	.\ecen4350_lcd_v4.c:2274: setColorWhite();
	push	ar3
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2275: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2276: LCD_string_write(" Found at Location:\n");
	mov	dptr,#___str_106
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2277: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2278: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2279: print16Hex(i);
	mov	dpl,_find_i_262144_665
	mov	dph,(_find_i_262144_665 + 1)
	lcall	_print16Hex
	pop	ar3
;	.\ecen4350_lcd_v4.c:2280: page++;
	inc	r3
	sjmp	00212$
00128$:
;	.\ecen4350_lcd_v4.c:2282: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2283: LCD_string_write("\n 0x");
	mov	dptr,#___str_107
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2284: print16Hex(i);
	mov	dpl,_find_i_262144_665
	mov	dph,(_find_i_262144_665 + 1)
	lcall	_print16Hex
	pop	ar3
00212$:
;	.\ecen4350_lcd_v4.c:2268: for(unsigned int i = 0; i < blockSize; i++) {
	inc	_find_i_262144_665
	clr	a
	cjne	a,_find_i_262144_665,00562$
	inc	(_find_i_262144_665 + 1)
00562$:
	ljmp	00211$
00271$:
	mov	ar5,r3
;	.\ecen4350_lcd_v4.c:2288: exit = 0;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
	ljmp	00197$
00196$:
;	.\ecen4350_lcd_v4.c:2290: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2291: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2292: LCD_string_write(" [Interactive]\n");
	mov	dptr,#___str_108
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2293: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2294: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2295: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2296: print8Hex(value);
	mov	r0,#_find_value_65536_652
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2299: for (unsigned int i = 0; i < blockSize; i++) {
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
;	.\ecen4350_lcd_v4.c:2300: d = (unsigned char __xdata*)(i+address);
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
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2301: if(value == ramRead8(d)){
	mov	r0,#_find_value_65536_652
	mov	a,@r0
	cjne	a,ar3,00564$
	sjmp	00565$
00564$:
	ljmp	00215$
00565$:
;	.\ecen4350_lcd_v4.c:2302: noneFound = 0;		// toggle flag
	mov	r0,#_find_noneFound_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2303: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2304: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2305: LCD_string_write(" Found at Location \n");
	mov	dptr,#___str_109
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2306: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2307: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2308: print16Hex(page+address);
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
;	.\ecen4350_lcd_v4.c:2309: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2310: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2311: LCD_string_write("Page: ");
	mov	dptr,#___str_110
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2312: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
;	.\ecen4350_lcd_v4.c:2313: print8Hex(page+1);
	mov	ar3,r5
	mov	a,r3
	inc	a
	mov	dpl,a
	push	ar5
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2317: if (i == 0) {					// At beginning, page <0>
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jz	00566$
	ljmp	00190$
00566$:
;	.\ecen4350_lcd_v4.c:2318: if (i != blockSize - 1) {	// not at the end yet, no previous page
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
;	.\ecen4350_lcd_v4.c:2319: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2320: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2321: LCD_string_write(" <1> Next\n <0> Exit\n              ");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2322: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2323: while (invalidInput) {
	mov	_find_sloc0_1_0,r5
00137$:
	mov	a,r7
	jnz	00568$
	ljmp	00272$
00568$:
;	.\ecen4350_lcd_v4.c:2324: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:2325: if(selection == '1'){
	cjne	r7,#0x31,00569$
	sjmp	00570$
00569$:
	pop	ar7
	sjmp	00134$
00570$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2326: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2327: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2328: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2329: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2330: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2331: page++;
	inc	_find_sloc0_1_0
00134$:
;	.\ecen4350_lcd_v4.c:2332: } if(selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00137$
;	.\ecen4350_lcd_v4.c:2333: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2334: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2335: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2336: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2337: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2338: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2339: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00137$
00148$:
;	.\ecen4350_lcd_v4.c:2342: } else if (i == blockSize - 1) {	// starts at the end, no previous or next page
	dec	r2
	cjne	r2,#0xff,00573$
	dec	r3
00573$:
	mov	a,r2
	cjne	a,_find_sloc1_1_0,00149$
	mov	a,r3
	cjne	a,(_find_sloc1_1_0 + 1),00149$
;	.\ecen4350_lcd_v4.c:2343: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2344: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2345: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2346: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2347: while (invalidInput) {
00142$:
	mov	a,r7
	jz	00149$
;	.\ecen4350_lcd_v4.c:2348: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:2349: if(selection == '0') {
	cjne	r3,#0x30,00142$
;	.\ecen4350_lcd_v4.c:2350: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2351: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2352: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2353: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2354: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2355: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2356: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00142$
00272$:
	mov	r5,_find_sloc0_1_0
00149$:
;	.\ecen4350_lcd_v4.c:2360: if (exit == 0) {	// check exit flag
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jz	00579$
	ljmp	00215$
00579$:
;	.\ecen4350_lcd_v4.c:2361: break;			// break out of for loop iteration
	ljmp	00197$
00190$:
;	.\ecen4350_lcd_v4.c:2366: else if (i == blockSize - 1) {		// At Page End 
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
;	.\ecen4350_lcd_v4.c:2367: if (i != 0) {				// not at beginning, no next page
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jnz	00582$
	ljmp	00167$
00582$:
;	.\ecen4350_lcd_v4.c:2368: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2369: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2370: LCD_string_write("          \n <0> Exit\n <2> Previous");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2371: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2372: while (invalidInput) {
	mov	_find_sloc0_1_0,r5
00156$:
	mov	a,r7
	jnz	00583$
	ljmp	00273$
00583$:
;	.\ecen4350_lcd_v4.c:2373: selection = keyDetect();
	push	ar7
	push	ar7
	lcall	_keyDetect
	mov	r2,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2374: if(selection == '0'){
	cjne	r2,#0x30,00584$
	sjmp	00585$
00584$:
	pop	ar7
	sjmp	00153$
00585$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2375: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2376: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2377: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2378: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2379: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2380: exit = 0;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
00153$:
;	.\ecen4350_lcd_v4.c:2381: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00156$
;	.\ecen4350_lcd_v4.c:2382: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2383: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2384: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2385: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2386: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2387: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2388: i--;			// two decrements plus next loop increment is equal to one decrement
	mov	a,_find_sloc1_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_find_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2389: i--;
	mov	a,r2
	add	a,#0xff
	mov	_find_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_find_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2390: page--;			// decrement to previous page
	dec	_find_sloc0_1_0
	ljmp	00156$
00167$:
;	.\ecen4350_lcd_v4.c:2394: else if (i == 0){				// end at beginning, no next or previous
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
;	.\ecen4350_lcd_v4.c:2395: setCursor(0, 180);
	jnz	00168$
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2396: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2397: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2398: invalidInput = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:2399: while (invalidInput) {
00161$:
	mov	a,r6
	jz	00168$
;	.\ecen4350_lcd_v4.c:2400: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2401: if(selection == '0') {
	cjne	r4,#0x30,00161$
;	.\ecen4350_lcd_v4.c:2402: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2403: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2404: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2405: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2406: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2407: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2408: invalidInput = 0;
	mov	r6,#0x00
	sjmp	00161$
00273$:
	mov	r5,_find_sloc0_1_0
00168$:
;	.\ecen4350_lcd_v4.c:2412: if (exit == 0) {	// check exit flag
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jz	00592$
	ljmp	00215$
00592$:
;	.\ecen4350_lcd_v4.c:2413: break;			// break out of for loop iteration
	ljmp	00197$
00187$:
;	.\ecen4350_lcd_v4.c:2418: else if (i != blockSize - 1)  {	// in mid page, with previous and next options
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
;	.\ecen4350_lcd_v4.c:2419: if (i != 0) {
	mov	a,_find_sloc1_1_0
	orl	a,(_find_sloc1_1_0 + 1)
	jnz	00595$
	ljmp	00181$
00595$:
;	.\ecen4350_lcd_v4.c:2420: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2421: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2422: LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
	mov	dptr,#___str_117
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2423: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2424: while (invalidInput) {
00177$:
	mov	a,r7
	jnz	00596$
	ljmp	00181$
00596$:
;	.\ecen4350_lcd_v4.c:2425: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2426: if (selection == '1') {
	cjne	r6,#0x31,00172$
;	.\ecen4350_lcd_v4.c:2427: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2428: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2429: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2430: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2431: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2432: page++;
	inc	r5
00172$:
;	.\ecen4350_lcd_v4.c:2433: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00174$
;	.\ecen4350_lcd_v4.c:2434: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2435: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2436: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2437: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2438: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2439: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2440: i--;
	mov	a,_find_sloc1_1_0
	add	a,#0xff
	mov	r4,a
	mov	a,(_find_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2441: i--;		// two decrements plus next loop increment is equal to one decrement
	mov	a,r4
	add	a,#0xff
	mov	_find_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_find_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2442: page--;		// decrement to previous page
	dec	r5
00174$:
;	.\ecen4350_lcd_v4.c:2443: } if (selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00601$
	sjmp	00602$
00601$:
	ljmp	00177$
00602$:
;	.\ecen4350_lcd_v4.c:2444: setColorWhite();
	push	ar5
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2445: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2446: LCD_string_write(" <1> Next\n ");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2447: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2448: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2449: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2450: LCD_string_write("\n <2> Previous");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2451: exit = 0;		// set exit flag
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2452: invalidInput = 0;
	mov	r7,#0x00
	ljmp	00177$
00181$:
;	.\ecen4350_lcd_v4.c:2456: if (exit == 0) {		// check exit flag
	mov	r0,#_find_exit_65536_652
	mov	a,@r0
	jz	00197$
;	.\ecen4350_lcd_v4.c:2457: break;			// break out the loop
00215$:
;	.\ecen4350_lcd_v4.c:2299: for (unsigned int i = 0; i < blockSize; i++) {
	inc	_find_sloc1_1_0
	clr	a
	cjne	a,_find_sloc1_1_0,00604$
	inc	(_find_sloc1_1_0 + 1)
00604$:
	ljmp	00214$
00197$:
;	.\ecen4350_lcd_v4.c:2463: if(noneFound) {
	mov	r0,#_find_noneFound_65536_652
	mov	a,@r0
	jnz	00605$
	ljmp	00205$
00605$:
;	.\ecen4350_lcd_v4.c:2464: setColorRed();
	push	ar5
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2465: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2466: LCD_string_write(" Value Not Found\n Within Block\n ");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2467: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2468: LCD_string_write("\n <0> Exit");
	mov	dptr,#___str_121
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2469: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2471: while (invalidInput) {
00200$:
	mov	a,r7
	jnz	00606$
	ljmp	00205$
00606$:
;	.\ecen4350_lcd_v4.c:2472: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2473: if (selection == '0'){
	cjne	r6,#0x30,00200$
;	.\ecen4350_lcd_v4.c:2474: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2475: LCD_string_write("\n\n\n ");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2476: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2477: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2478: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2479: exit = 0;
	mov	r0,#_find_exit_65536_652
	mov	@r0,#0x00
	sjmp	00200$
00207$:
;	.\ecen4350_lcd_v4.c:2484: delay(80);
	mov	dptr,#0x0050
;	.\ecen4350_lcd_v4.c:2485: return;
;	.\ecen4350_lcd_v4.c:2486: }
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
;	.\ecen4350_lcd_v4.c:2488: void count() {
;	-----------------------------------------
;	 function count
;	-----------------------------------------
_count:
;	.\ecen4350_lcd_v4.c:2492: __idata unsigned char blockSize = 0;
	mov	r0,#_count_blockSize_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2494: __idata unsigned char scan = 0;
	mov	r0,#_count_scan_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2495: __idata unsigned char page = 0;
	mov	r5,#0x00
;	.\ecen4350_lcd_v4.c:2496: __idata unsigned char noneFound = 1;
	mov	r0,#_count_noneFound_65536_708
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2497: __idata unsigned char invalidInput = 1;
	mov	r3,#0x01
;	.\ecen4350_lcd_v4.c:2498: __idata unsigned char exit = 1;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2500: clearLCD();
	push	ar5
	push	ar3
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2503: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2504: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2505: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2506: setCursor(15, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2507: LCD_string_write("[COUNT]\n");
	mov	dptr,#___str_123
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2508: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2509: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2510: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2511: LCD_string_write(" Search Value:");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2512: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2513: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2514: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2515: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2516: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2517: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2518: setCursor(0, 130 );
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2519: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2520: LCD_string_write(" 0x____");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2521: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2522: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2523: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2524: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2525: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2526: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2527: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2528: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2529: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2536: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2537: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2538: LCD_string_write(" Search Value:");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2539: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2540: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2541: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2542: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2543: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2544: selection = keyDetect();
	lcall	_keyDetect
	mov	r4,dpl
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2545: write(selection);
	mov	dpl,r4
	lcall	_write
;	.\ecen4350_lcd_v4.c:2546: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r4,dpl
	pop	ar3
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2547: value |= selection * 16;
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
;	.\ecen4350_lcd_v4.c:2548: selection = keyDetect();
	push	ar4
	push	ar3
	lcall	_keyDetect
	mov	r6,dpl
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2549: write(selection);
	mov	dpl,r6
	lcall	_write
;	.\ecen4350_lcd_v4.c:2550: selection = ASCIItoHex(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_ASCIItoHex
	mov	r6,dpl
	pop	ar3
	pop	ar4
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2551: value |= selection;
	mov	r0,#_count_value_65536_708
	mov	a,r6
	orl	a,r4
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2554: setColorDefault();
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2555: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2556: LCD_string_write(" Search Value:");
	mov	dptr,#___str_124
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2557: setCursor(0, 80);
	mov	_setCursor_PARM_2,#0x50
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2558: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2559: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2560: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2561: print8Hex(value);
	mov	r0,#_count_value_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2564: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2565: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2566: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2567: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2568: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2569: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2570: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2571: address = inputAddress();
	lcall	_inputAddress
	mov	r0,#_count_address_65536_708
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	.\ecen4350_lcd_v4.c:2574: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2575: setCursor(0, 110);
	mov	_setCursor_PARM_2,#0x6e
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2576: LCD_string_write(" Search Address:");
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2577: setCursor(0, 130);
	mov	_setCursor_PARM_2,#0x82
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2578: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2579: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2580: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2581: print16Hex(address);
	mov	r0,#_count_address_65536_708
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16Hex
;	.\ecen4350_lcd_v4.c:2584: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2585: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2586: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2587: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2588: LCD_string_write("  <01> BYTE\n  <02> WORD\n  <04> DWORD\n");
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2589: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2590: while (invalidInput) {
00113$:
	mov	a,r3
	jnz	00530$
	ljmp	00115$
00530$:
;	.\ecen4350_lcd_v4.c:2591: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2592: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2593: LCD_string_write("   __");
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2594: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2595: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2596: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2597: blockSize = inputBlockSize();
	lcall	_inputBlockSize
	mov	r0,#_count_blockSize_65536_708
	mov	@r0,dpl
	pop	ar3
	pop	ar5
;	.\ecen4350_lcd_v4.c:2598: if (blockSize == 0x01) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x01,00111$
;	.\ecen4350_lcd_v4.c:2599: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2600: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2601: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	sjmp	00113$
00111$:
;	.\ecen4350_lcd_v4.c:2602: } else if (blockSize == 0x02) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x02,00108$
;	.\ecen4350_lcd_v4.c:2603: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2604: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2605: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00108$:
;	.\ecen4350_lcd_v4.c:2606: } else if (blockSize == 0x04) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x04,00105$
;	.\ecen4350_lcd_v4.c:2607: invalidInput = 0;
	mov	r3,#0x00
;	.\ecen4350_lcd_v4.c:2608: setColorDefault();
	push	ar5
	push	ar3
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2609: LCD_string_write("\n                ");
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00105$:
;	.\ecen4350_lcd_v4.c:2610: } else if (blockSize == 0xFF) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0xff,00102$
;	.\ecen4350_lcd_v4.c:2611: invalidInput = 0;
	mov	r3,#0x00
	ljmp	00113$
00102$:
;	.\ecen4350_lcd_v4.c:2614: setColorRed();
	push	ar5
	push	ar3
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2615: LCD_string_write("\n Try again");
	mov	dptr,#___str_89
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
	pop	ar5
	ljmp	00113$
00115$:
;	.\ecen4350_lcd_v4.c:2620: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2621: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2622: LCD_string_write(" Input Block Size:\n");
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2623: if (blockSize == 0x01){
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x01,00125$
;	.\ecen4350_lcd_v4.c:2624: LCD_string_write("  ");
	mov	dptr,#___str_33
	mov	b,#0x80
	push	ar5
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2625: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2626: LCD_string_write("<01> BYTE\n");
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2627: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2628: LCD_string_write("  <02> WORD\n");
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2629: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2630: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2631: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2632: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2633: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2634: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2635: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2636: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2637: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2638: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2639: LCD_string_write("\n BYTE [8 bits]");
	mov	dptr,#___str_94
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00125$:
;	.\ecen4350_lcd_v4.c:2640: } else if (blockSize == 0x02) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x02,00122$
;	.\ecen4350_lcd_v4.c:2641: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2642: LCD_string_write("  <01> BYTE\n  ");
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2643: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2644: LCD_string_write("<02> WORD\n");
	mov	dptr,#___str_96
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2645: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2646: LCD_string_write("  <04> DWORD\n");
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2647: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2648: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2649: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2650: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2651: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2652: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2653: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2654: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2655: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2656: LCD_string_write("\n WORD [16 bits]");
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	ljmp	00126$
00122$:
;	.\ecen4350_lcd_v4.c:2657: } else if (blockSize == 0x04) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0x04,00119$
;	.\ecen4350_lcd_v4.c:2658: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2659: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2660: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2661: LCD_string_write("<04> DWORD\n");
	mov	dptr,#___str_99
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2662: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2663: LCD_string_write("  <FF> (SCAN)");
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2664: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2665: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2666: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2667: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2668: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2669: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2670: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2671: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2672: LCD_string_write("\n DWORD [32 bits]");
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
	sjmp	00126$
00119$:
;	.\ecen4350_lcd_v4.c:2673: } else if (blockSize == 0xFF) {
	mov	r0,#_count_blockSize_65536_708
	cjne	@r0,#0xff,00126$
;	.\ecen4350_lcd_v4.c:2674: scan = 1;
	mov	r0,#_count_scan_65536_708
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:2675: setColorGray();
	push	ar5
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2676: LCD_string_write("  <01> BYTE\n  <02> WORD\n  ");
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2677: LCD_string_write("<04> DWORD\n  ");
	mov	dptr,#___str_101
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2678: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2679: LCD_string_write("<FF> (SCAN)");
	mov	dptr,#___str_102
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2680: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2681: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2682: LCD_string_write("   ");
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2683: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2684: print8Hex(blockSize);
	mov	r0,#_count_blockSize_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2685: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2686: LCD_string_write("\n Search Size Limit:");
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2687: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2688: LCD_string_write("\n [256 Blocks]");
	mov	dptr,#___str_103
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
00126$:
;	.\ecen4350_lcd_v4.c:2692: delay(40);
	mov	dptr,#0x0028
	push	ar5
	lcall	_delay
;	.\ecen4350_lcd_v4.c:2693: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2694: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2695: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2696: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2697: setCursor(15,0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2698: LCD_string_write("[COUNT]\n");
	mov	dptr,#___str_123
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2699: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2700: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
	pop	ar5
;	.\ecen4350_lcd_v4.c:2706: while (exit) {
00202$:
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jnz	00547$
	ljmp	00204$
00547$:
;	.\ecen4350_lcd_v4.c:2708: if (scan) {	
	mov	r0,#_count_scan_65536_708
	mov	a,@r0
	jnz	00548$
	ljmp	00193$
00548$:
;	.\ecen4350_lcd_v4.c:2709: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2710: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2711: LCD_string_write(" [Non-Interactive]\n");
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2712: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2713: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2714: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2715: print8Hex(value);
	mov	r0,#_count_value_65536_708
	mov	dpl,@r0
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2716: for(unsigned int i = 0; i < blockSize; i++) {
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
;	.\ecen4350_lcd_v4.c:2717: d = (unsigned char __xdata*)(i+address);
	mov	r0,#_count_address_65536_708
	mov	a,@r0
	add	a,_count_i_262144_721
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,(_count_i_262144_721 + 1)
	mov	r6,a
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	mov	dpl,r4
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2718: if(value == ramRead8(d)){
	mov	r0,#_count_value_65536_708
	mov	a,@r0
	cjne	a,ar4,00209$
;	.\ecen4350_lcd_v4.c:2719: noneFound = 0;
	mov	r0,#_count_noneFound_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2720: page++;
	inc	r3
00209$:
;	.\ecen4350_lcd_v4.c:2716: for(unsigned int i = 0; i < blockSize; i++) {
	inc	_count_i_262144_721
	clr	a
	cjne	a,_count_i_262144_721,00208$
	inc	(_count_i_262144_721 + 1)
	sjmp	00208$
00267$:
	mov	ar5,r3
;	.\ecen4350_lcd_v4.c:2723: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	push	ar3
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2724: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2725: LCD_string_write(" Found in\n ");
	mov	dptr,#___str_125
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2726: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2727: LCD_string_write("0x");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar3
;	.\ecen4350_lcd_v4.c:2728: print8Hex(page);
	mov	dpl,r3
	lcall	_print8Hex
;	.\ecen4350_lcd_v4.c:2729: LCD_string_write(" Bytes (Hex)\n ");
	mov	dptr,#___str_126
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2730: exit = 0;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
	ljmp	00194$
00193$:
;	.\ecen4350_lcd_v4.c:2732: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2733: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2734: LCD_string_write(" [Interactive]\n");
	mov	dptr,#___str_108
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2735: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2736: LCD_string_write(" Search Value:\n ");
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2737: setColorDefault();
	lcall	_setColorDefault
	pop	ar5
;	.\ecen4350_lcd_v4.c:2740: for (unsigned int i = 0; i < blockSize; i++) {
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
;	.\ecen4350_lcd_v4.c:2741: d = (unsigned char __xdata*)(i+address);
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
;	.\ecen4350_lcd_v4.c:129: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:130: d = *map_address;
	movx	a,@dptr
	mov	r3,a
;	.\ecen4350_lcd_v4.c:131: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:2742: if(value == ramRead8(d)){
	mov	r0,#_count_value_65536_708
	mov	a,@r0
	cjne	a,ar3,00554$
	sjmp	00555$
00554$:
	ljmp	00212$
00555$:
;	.\ecen4350_lcd_v4.c:2743: noneFound = 0;		// toggle flag
	mov	r0,#_count_noneFound_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2744: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2745: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2746: LCD_string_write(" Found at Location \n");
	mov	dptr,#___str_109
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2747: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2748: LCD_string_write(" 0x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2749: print16Hex(page+address);
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
;	.\ecen4350_lcd_v4.c:2750: setCursor(50, 300);
	mov	_setCursor_PARM_2,#0x2c
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0032
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2751: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2752: LCD_string_write("Count: ");
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2753: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar5
;	.\ecen4350_lcd_v4.c:2754: print8Hex(page+1);
	mov	ar3,r5
	mov	a,r3
	inc	a
	mov	dpl,a
	push	ar5
	lcall	_print8Hex
	pop	ar5
;	.\ecen4350_lcd_v4.c:2758: if (i == 0) {					// At beginning, page <0>
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jz	00556$
	ljmp	00187$
00556$:
;	.\ecen4350_lcd_v4.c:2759: if (i != blockSize - 1) {	// not at the end yet, no previous page
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
;	.\ecen4350_lcd_v4.c:2760: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2761: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2762: LCD_string_write(" <1> Next\n <0> Exit\n              ");
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2763: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2764: while (invalidInput) {
	mov	_count_sloc0_1_0,r5
00134$:
	mov	a,r7
	jnz	00558$
	ljmp	00268$
00558$:
;	.\ecen4350_lcd_v4.c:2765: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r7,dpl
	mov	r0,#_selection
	mov	@r0,ar7
;	.\ecen4350_lcd_v4.c:2766: if(selection == '1'){
	cjne	r7,#0x31,00559$
	sjmp	00560$
00559$:
	pop	ar7
	sjmp	00131$
00560$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2767: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2768: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2769: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2770: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2771: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2772: page++;
	inc	_count_sloc0_1_0
00131$:
;	.\ecen4350_lcd_v4.c:2773: } if(selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00134$
;	.\ecen4350_lcd_v4.c:2774: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2775: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2776: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2777: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2778: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2779: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2780: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00134$
00145$:
;	.\ecen4350_lcd_v4.c:2783: } else if (i == blockSize - 1) {	// starts at the end, no previous or next page
	dec	r2
	cjne	r2,#0xff,00563$
	dec	r3
00563$:
	mov	a,r2
	cjne	a,_count_sloc1_1_0,00146$
	mov	a,r3
	cjne	a,(_count_sloc1_1_0 + 1),00146$
;	.\ecen4350_lcd_v4.c:2784: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2785: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2786: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2787: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2788: while (invalidInput) {
00139$:
	mov	a,r7
	jz	00146$
;	.\ecen4350_lcd_v4.c:2789: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r3,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar3
;	.\ecen4350_lcd_v4.c:2790: if(selection == '0') {
	cjne	r3,#0x30,00139$
;	.\ecen4350_lcd_v4.c:2791: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2792: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2793: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2794: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2795: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2796: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2797: invalidInput = 0;
	mov	r7,#0x00
	sjmp	00139$
00268$:
	mov	r5,_count_sloc0_1_0
00146$:
;	.\ecen4350_lcd_v4.c:2801: if (exit == 0) {	// check exit flag
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jz	00569$
	ljmp	00212$
00569$:
;	.\ecen4350_lcd_v4.c:2802: break;			// break out of for loop iteration
	ljmp	00194$
00187$:
;	.\ecen4350_lcd_v4.c:2807: else if (i == blockSize - 1) {		// At Page End 
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
;	.\ecen4350_lcd_v4.c:2808: if (i != 0) {				// not at beginning, no next page
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jnz	00572$
	ljmp	00164$
00572$:
;	.\ecen4350_lcd_v4.c:2809: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2810: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2811: LCD_string_write("          \n <0> Exit\n <2> Previous");
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2812: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2813: while (invalidInput) {
	mov	_count_sloc0_1_0,r5
00153$:
	mov	a,r7
	jnz	00573$
	ljmp	00269$
00573$:
;	.\ecen4350_lcd_v4.c:2814: selection = keyDetect();
	push	ar7
	push	ar7
	lcall	_keyDetect
	mov	r2,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar2
;	.\ecen4350_lcd_v4.c:2815: if(selection == '0'){
	cjne	r2,#0x30,00574$
	sjmp	00575$
00574$:
	pop	ar7
	sjmp	00150$
00575$:
	pop	ar7
;	.\ecen4350_lcd_v4.c:2816: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2817: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2818: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2819: LCD_string_write("<0> Exit\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2820: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2821: exit = 0;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
00150$:
;	.\ecen4350_lcd_v4.c:2822: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00153$
;	.\ecen4350_lcd_v4.c:2823: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2824: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2825: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2826: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2827: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2828: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2829: i--;			// two decrements plus next loop increment is equal to one decrement
	mov	a,_count_sloc1_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_count_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2830: i--;
	mov	a,r2
	add	a,#0xff
	mov	_count_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_count_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2831: page--;			// decrement to previous page
	dec	_count_sloc0_1_0
	ljmp	00153$
00164$:
;	.\ecen4350_lcd_v4.c:2835: else if (i == 0){				// end at beginning, no next or previous
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
;	.\ecen4350_lcd_v4.c:2836: setCursor(0, 180);
	jnz	00165$
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2837: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2838: LCD_string_write("          \n <0> Exit\n              ");
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2839: invalidInput = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:2840: while (invalidInput) {
00158$:
	mov	a,r6
	jz	00165$
;	.\ecen4350_lcd_v4.c:2841: selection = keyDetect();
	push	ar6
	push	ar5
	lcall	_keyDetect
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_selection
	mov	@r0,ar4
;	.\ecen4350_lcd_v4.c:2842: if(selection == '0') {
	cjne	r4,#0x30,00158$
;	.\ecen4350_lcd_v4.c:2843: setColorDefault();
	push	ar5
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2844: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2845: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2846: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2847: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2848: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2849: invalidInput = 0;
	mov	r6,#0x00
	sjmp	00158$
00269$:
	mov	r5,_count_sloc0_1_0
00165$:
;	.\ecen4350_lcd_v4.c:2853: if (exit == 0) {	// check exit flag
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jz	00582$
	ljmp	00212$
00582$:
;	.\ecen4350_lcd_v4.c:2854: break;			// break out of for loop iteration
	ljmp	00194$
00184$:
;	.\ecen4350_lcd_v4.c:2859: else if (i != blockSize - 1)  {	// in mid page, with previous and next options
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
;	.\ecen4350_lcd_v4.c:2860: if (i != 0) {
	mov	a,_count_sloc1_1_0
	orl	a,(_count_sloc1_1_0 + 1)
	jnz	00585$
	ljmp	00178$
00585$:
;	.\ecen4350_lcd_v4.c:2861: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2862: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2863: LCD_string_write(" <1> Next\n <0> Exit\n <2> Previous");
	mov	dptr,#___str_117
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2864: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2865: while (invalidInput) {
00174$:
	mov	a,r7
	jnz	00586$
	ljmp	00178$
00586$:
;	.\ecen4350_lcd_v4.c:2866: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2867: if (selection == '1') {
	cjne	r6,#0x31,00169$
;	.\ecen4350_lcd_v4.c:2868: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2869: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2870: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2871: LCD_string_write("<1> Next");
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2872: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2873: page++;
	inc	r5
00169$:
;	.\ecen4350_lcd_v4.c:2874: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00171$
;	.\ecen4350_lcd_v4.c:2875: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2876: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2877: LCD_string_write("\n\n ");
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2878: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2879: LCD_string_write("<2> Previous");
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2880: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2881: i--;
	mov	a,_count_sloc1_1_0
	add	a,#0xff
	mov	r4,a
	mov	a,(_count_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
;	.\ecen4350_lcd_v4.c:2882: i--;		// two decrements plus next loop increment is equal to one decrement
	mov	a,r4
	add	a,#0xff
	mov	_count_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_count_sloc1_1_0 + 1),a
;	.\ecen4350_lcd_v4.c:2883: page--;		// decrement to previous page
	dec	r5
00171$:
;	.\ecen4350_lcd_v4.c:2884: } if (selection == '0') {
	mov	r0,#_selection
	cjne	@r0,#0x30,00591$
	sjmp	00592$
00591$:
	ljmp	00174$
00592$:
;	.\ecen4350_lcd_v4.c:2885: setColorWhite();
	push	ar5
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2886: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2887: LCD_string_write(" <1> Next\n ");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2888: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2889: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2890: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2891: LCD_string_write("\n <2> Previous");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2892: exit = 0;		// set exit flag
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2893: invalidInput = 0;
	mov	r7,#0x00
	ljmp	00174$
00178$:
;	.\ecen4350_lcd_v4.c:2897: if (exit == 0) {		// check exit flag
	mov	r0,#_count_exit_65536_708
	mov	a,@r0
	jz	00194$
;	.\ecen4350_lcd_v4.c:2898: break;			// break out the loop
00212$:
;	.\ecen4350_lcd_v4.c:2740: for (unsigned int i = 0; i < blockSize; i++) {
	inc	_count_sloc1_1_0
	clr	a
	cjne	a,_count_sloc1_1_0,00594$
	inc	(_count_sloc1_1_0 + 1)
00594$:
	ljmp	00211$
00194$:
;	.\ecen4350_lcd_v4.c:2904: if(noneFound) {
	mov	r0,#_count_noneFound_65536_708
	mov	a,@r0
	jnz	00595$
	ljmp	00202$
00595$:
;	.\ecen4350_lcd_v4.c:2905: setColorRed();
	push	ar5
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:2906: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2907: LCD_string_write(" Value Not Found\n Within Block\n ");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2908: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2909: LCD_string_write("\n <0> Exit");
	mov	dptr,#___str_121
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2910: invalidInput = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:2912: while (invalidInput) {
00197$:
	mov	a,r7
	jnz	00596$
	ljmp	00202$
00596$:
;	.\ecen4350_lcd_v4.c:2913: selection = keyDetect();
	push	ar7
	push	ar5
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:2914: if (selection == '0'){
	cjne	r6,#0x30,00197$
;	.\ecen4350_lcd_v4.c:2915: setCursor(0, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar5
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2916: LCD_string_write("\n\n\n ");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2917: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:2918: LCD_string_write("<0> Exit");
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar5
;	.\ecen4350_lcd_v4.c:2919: invalidInput = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2920: exit = 0;
	mov	r0,#_count_exit_65536_708
	mov	@r0,#0x00
	sjmp	00197$
00204$:
;	.\ecen4350_lcd_v4.c:2925: delay(80);
	mov	dptr,#0x0050
;	.\ecen4350_lcd_v4.c:2926: return;
;	.\ecen4350_lcd_v4.c:2927: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'check'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2929: void check() {
;	-----------------------------------------
;	 function check
;	-----------------------------------------
_check:
;	.\ecen4350_lcd_v4.c:2931: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2934: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2935: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2936: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2937: setCursor(15, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x000f
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2938: LCD_string_write("[CHECK]\n");
	mov	dptr,#___str_128
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2939: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2940: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2941: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2942: LCD_string_write(" Enter Value:\n");
	mov	dptr,#___str_129
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2943: setColorGray();
	lcall	_setColorGray
;	.\ecen4350_lcd_v4.c:2944: LCD_string_write(" __");
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2946: setCursor(0,60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2947: LCD_string_write("\n ");
	mov	dptr,#___str_67
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2948: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:2949: selection = 0;
	mov	r0,#_selection
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:2950: temp = keyDetect();
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:2951: write(temp);
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:2952: temp = ASCIItoHex(temp);
	mov	dpl,r7
	lcall	_ASCIItoHex
;	.\ecen4350_lcd_v4.c:2953: selection |= temp * 16;
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	r0,#_selection
	mov	a,@r0
	orl	a,r7
	mov	r0,#_selection
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2954: temp = keyDetect();
	lcall	_keyDetect
;	.\ecen4350_lcd_v4.c:2955: write(temp);
	mov  r7,dpl
	push	ar7
	lcall	_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:2956: temp = ASCIItoHex(temp);
	mov	dpl,r7
	lcall	_ASCIItoHex
	mov	r7,dpl
;	.\ecen4350_lcd_v4.c:2957: selection |= temp;
	mov	r0,#_selection
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2958: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:2959: LCD_string_write("\n\n Writing byte to\n all memory\n locations...");
	mov	dptr,#___str_130
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2960: writeAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_writeAllRAM
;	.\ecen4350_lcd_v4.c:2961: setColorWhite();
	lcall	_setColorWhite
;	.\ecen4350_lcd_v4.c:2962: LCD_string_write("\n Verifying write...");
	mov	dptr,#___str_131
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2963: checkAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_checkAllRAM
;	.\ecen4350_lcd_v4.c:2964: LCD_string_write("\n Complete.");
	mov	dptr,#___str_132
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2965: setTextColor(BLUE, colorBackground);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x001f
	lcall	_setTextColor
;	.\ecen4350_lcd_v4.c:2966: LCD_string_write("\n\n Toggling bits in\n each nibble...");
	mov	dptr,#___str_133
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2967: selection = ~selection;
	mov	r0,#_selection
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:2968: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:2969: LCD_string_write("\n Writing new byte...");
	mov	dptr,#___str_134
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2970: writeAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_writeAllRAM
;	.\ecen4350_lcd_v4.c:2971: setColorYellow();
	lcall	_setColorYellow
;	.\ecen4350_lcd_v4.c:2972: LCD_string_write("\n Verifying write...");
	mov	dptr,#___str_131
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2973: checkAllRAM(selection);
	mov	r0,#_selection
	mov	dpl,@r0
	lcall	_checkAllRAM
;	.\ecen4350_lcd_v4.c:2974: setColorGreen();
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:2975: LCD_string_write("\n\n Check Complete.");
	mov	dptr,#___str_135
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2976: delay(120);
	mov	dptr,#0x0078
;	.\ecen4350_lcd_v4.c:2977: return;
;	.\ecen4350_lcd_v4.c:2978: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'uart'
;------------------------------------------------------------
;initLock                  Allocated to registers r7 
;temp                      Allocated to registers r6 
;------------------------------------------------------------
;	.\ecen4350_lcd_v4.c:2980: void uart() {
;	-----------------------------------------
;	 function uart
;	-----------------------------------------
_uart:
;	.\ecen4350_lcd_v4.c:2981: __idata u8 initLock = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:2982: __idata u8 temp = 0;
	mov	r6,#0x00
;	.\ecen4350_lcd_v4.c:2985: uartMenu:
00101$:
;	.\ecen4350_lcd_v4.c:2986: clearLCD();
	push	ar7
	push	ar6
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:2987: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:2988: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2989: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:2990: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2991: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:2994: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:2995: setColorDefault();
	lcall	_setColorDefault
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:2996: if (baudSet == 1){
	mov	r0,#_baudSet
	cjne	@r0,#0x01,00629$
	sjmp	00630$
00629$:
	ljmp	00114$
00630$:
;	.\ecen4350_lcd_v4.c:2997: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:2998: LCD_string_write(" <1> ");
	mov	dptr,#___str_137
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:2999: if (baudType == 0x1) {
	mov	r0,#_baudType
	cjne	@r0,#0x01,00104$
;	.\ecen4350_lcd_v4.c:3000: LCD_string_write("1200");
	mov	dptr,#___str_138
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00104$:
;	.\ecen4350_lcd_v4.c:3002: if (baudType == 0x2) {
	mov	r0,#_baudType
	cjne	@r0,#0x02,00106$
;	.\ecen4350_lcd_v4.c:3003: LCD_string_write("2400");
	mov	dptr,#___str_139
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00106$:
;	.\ecen4350_lcd_v4.c:3004: } if (baudType == 0x3){
	mov	r0,#_baudType
	cjne	@r0,#0x03,00108$
;	.\ecen4350_lcd_v4.c:3005: LCD_string_write("4800");
	mov	dptr,#___str_140
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00108$:
;	.\ecen4350_lcd_v4.c:3006: } if (baudType == 0x4){
	mov	r0,#_baudType
	cjne	@r0,#0x04,00110$
;	.\ecen4350_lcd_v4.c:3007: LCD_string_write("9600");
	mov	dptr,#___str_141
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00110$:
;	.\ecen4350_lcd_v4.c:3008: } if (baudType == 0x5) {
	mov	r0,#_baudType
	cjne	@r0,#0x05,00112$
;	.\ecen4350_lcd_v4.c:3009: LCD_string_write("19200");
	mov	dptr,#___str_142
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00112$:
;	.\ecen4350_lcd_v4.c:3011: LCD_string_write(" baud\n");
	mov	dptr,#___str_143
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00114$:
;	.\ecen4350_lcd_v4.c:3012: } if (baudSet == 0) {
	mov	r0,#_baudSet
	mov	a,@r0
;	.\ecen4350_lcd_v4.c:3013: setCursor(0, 60);
	jnz	00116$
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3014: LCD_string_write(" <1> Set Data Rate\n");
	mov	dptr,#___str_144
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00116$:
;	.\ecen4350_lcd_v4.c:3016: if (bitSet == 1) {
	mov	r0,#_bitSet
	cjne	@r0,#0x01,00122$
;	.\ecen4350_lcd_v4.c:3017: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3018: LCD_string_write(" <2> ");
	mov	dptr,#___str_145
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3019: if (_8b == 1) {
	mov	r0,#__8b
	cjne	@r0,#0x01,00118$
;	.\ecen4350_lcd_v4.c:3020: LCD_string_write("8");
	mov	dptr,#___str_146
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00118$:
;	.\ecen4350_lcd_v4.c:3021: } if (_8b == 0) {
	mov	r0,#__8b
	mov	a,@r0
	jnz	00120$
;	.\ecen4350_lcd_v4.c:3022: LCD_string_write("9");
	mov	dptr,#___str_147
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00120$:
;	.\ecen4350_lcd_v4.c:3024: LCD_string_write("-bit Mode\n");
	mov	dptr,#___str_148
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00122$:
;	.\ecen4350_lcd_v4.c:3025: } if (bitSet == 0) {
	mov	r0,#_bitSet
	mov	a,@r0
;	.\ecen4350_lcd_v4.c:3026: setCursor(0, 100);
	jnz	00124$
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3027: LCD_string_write(" <2> Number of Bits\n     (8 or 9 bits)\n");
	mov	dptr,#___str_149
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00124$:
;	.\ecen4350_lcd_v4.c:3028: } if (paritySet == 1) {
	mov	r0,#_paritySet
	cjne	@r0,#0x01,00648$
	sjmp	00649$
00648$:
	ljmp	00140$
00649$:
;	.\ecen4350_lcd_v4.c:3029: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3030: LCD_string_write(" <3> ");
	mov	dptr,#___str_150
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3031: if (pType == 0x1) {
	mov	r0,#_pType
	cjne	@r0,#0x01,00126$
;	.\ecen4350_lcd_v4.c:3032: LCD_string_write("No ");
	mov	dptr,#___str_151
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00126$:
;	.\ecen4350_lcd_v4.c:3033: } if (pType == 0x2) {
	mov	r0,#_pType
	cjne	@r0,#0x02,00128$
;	.\ecen4350_lcd_v4.c:3034: LCD_string_write("Even ");
	mov	dptr,#___str_152
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00128$:
;	.\ecen4350_lcd_v4.c:3035: } if (pType == 0x3) {
	mov	r0,#_pType
	cjne	@r0,#0x03,00130$
;	.\ecen4350_lcd_v4.c:3036: LCD_string_write("Even ");
	mov	dptr,#___str_152
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00130$:
;	.\ecen4350_lcd_v4.c:3037: } if (pType == 0x4) {	
	mov	r0,#_pType
	cjne	@r0,#0x04,00132$
;	.\ecen4350_lcd_v4.c:3038: LCD_string_write("Odd ");
	mov	dptr,#___str_153
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00132$:
;	.\ecen4350_lcd_v4.c:3039: } if (pType == 0x5) {
	mov	r0,#_pType
	cjne	@r0,#0x05,00134$
;	.\ecen4350_lcd_v4.c:3040: LCD_string_write("Odd ");
	mov	dptr,#___str_153
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00134$:
;	.\ecen4350_lcd_v4.c:3042: if (pType == 0x7) {
	mov	r0,#_pType
	cjne	@r0,#0x07,00136$
;	.\ecen4350_lcd_v4.c:3043: LCD_string_write("No ");
	mov	dptr,#___str_151
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00136$:
;	.\ecen4350_lcd_v4.c:3044: } if (pType == 0x8) {
	mov	r0,#_pType
	cjne	@r0,#0x08,00138$
;	.\ecen4350_lcd_v4.c:3045: LCD_string_write("Even ");
	mov	dptr,#___str_152
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00138$:
;	.\ecen4350_lcd_v4.c:3047: LCD_string_write("Parity\n");
	mov	dptr,#___str_154
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00140$:
;	.\ecen4350_lcd_v4.c:3048: } if (paritySet == 0) {
	mov	r0,#_paritySet
	mov	a,@r0
;	.\ecen4350_lcd_v4.c:3049: setCursor(0, 140);
	jnz	00142$
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3050: LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
	mov	dptr,#___str_155
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00142$:
;	.\ecen4350_lcd_v4.c:3051: } if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00144$
;	.\ecen4350_lcd_v4.c:3052: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3053: LCD_string_write(" <4> Disable UART\n");
	mov	dptr,#___str_156
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3054: LCD_string_write("     [Enabled]\n");
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00144$:
;	.\ecen4350_lcd_v4.c:3055: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
;	.\ecen4350_lcd_v4.c:3056: setCursor(0, 180);
	jnz	00146$
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3057: LCD_string_write(" <4> Enable UART\n");
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3058: LCD_string_write("     (Disabled)\n");
	mov	dptr,#___str_159
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
00146$:
;	.\ecen4350_lcd_v4.c:3060: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3061: LCD_string_write(" <0> Exit \n");
	mov	dptr,#___str_160
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3063: mainInput:
00147$:
;	.\ecen4350_lcd_v4.c:3064: selection = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:3065: if (selection =='0') {
	cjne	r5,#0x30,00149$
;	.\ecen4350_lcd_v4.c:3066: setCursor (0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3067: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3068: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3069: LCD_string_write("<0> ");
	mov	dptr,#___str_161
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3070: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3071: LCD_string_write("Exit\n");
	mov	dptr,#___str_162
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3072: delay(20);
	mov	dptr,#0x0014
;	.\ecen4350_lcd_v4.c:3073: goto finish;
	ljmp	_delay
00149$:
;	.\ecen4350_lcd_v4.c:3075: if (selection == '4') {
	cjne	r5,#0x34,00670$
	sjmp	00671$
00670$:
	ljmp	00155$
00671$:
;	.\ecen4350_lcd_v4.c:3076: setCursor (0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3077: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3078: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3079: LCD_string_write("<4> ");
	mov	dptr,#___str_163
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3080: setColorHighlight2();
	lcall	_setColorHighlight2
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3081: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00151$
;	.\ecen4350_lcd_v4.c:3082: LCD_string_write("Disable UART\n");
	mov	dptr,#___str_164
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3083: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3084: LCD_string_write("     ");
	mov	dptr,#___str_165
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3085: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3086: LCD_string_write("[Enabled]");
	mov	dptr,#___str_166
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3087: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3088: initLock = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3089: temp = 0;
	mov	r6,#0x00
;	.\ecen4350_lcd_v4.c:3090: UART_disable();
	push	ar7
	push	ar6
	lcall	_UART_disable
;	.\ecen4350_lcd_v4.c:3091: clearLCD();
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3092: setCursor(30, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3093: LCD_string_write("UART Disabled.");
	mov	dptr,#___str_167
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3094: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3095: goto uartMenu;
	ljmp	00101$
00151$:
;	.\ecen4350_lcd_v4.c:3096: } if (UART_en == 0 ){
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00155$
;	.\ecen4350_lcd_v4.c:3097: LCD_string_write("Enable UART\n");
	mov	dptr,#___str_168
	mov	b,#0x80
	push	ar6
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3098: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3099: LCD_string_write("     ");
	mov	dptr,#___str_165
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3100: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3101: LCD_string_write("(Disabled)");
	mov	dptr,#___str_169
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3102: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3103: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3104: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar6
;	.\ecen4350_lcd_v4.c:3105: initLock = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:3106: goto verifyUART;
	ljmp	00175$
00155$:
;	.\ecen4350_lcd_v4.c:3108: } if (selection == '1') {
	mov	r0,#_selection
	cjne	@r0,#0x31,00675$
	sjmp	00676$
00675$:
	ljmp	00161$
00676$:
;	.\ecen4350_lcd_v4.c:3109: setCursor (0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3110: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3111: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3112: LCD_string_write("<1> ");
	mov	dptr,#___str_170
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3113: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3114: LCD_string_write("Set Data Rate\n");
	mov	dptr,#___str_171
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3115: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3116: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00157$
;	.\ecen4350_lcd_v4.c:3117: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3118: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3119: LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
	mov	dptr,#___str_172
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3120: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3121: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3122: LCD_string_write(" <1> Set Data Rate\n");
	mov	dptr,#___str_144
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3123: goto mainInput;
	ljmp	00147$
00157$:
;	.\ecen4350_lcd_v4.c:3124: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00679$
	ljmp	00194$
00679$:
;	.\ecen4350_lcd_v4.c:3125: goto setRate;
00161$:
;	.\ecen4350_lcd_v4.c:3128: if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00680$
	sjmp	00681$
00680$:
	ljmp	00167$
00681$:
;	.\ecen4350_lcd_v4.c:3129: setCursor (0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3130: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3131: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3132: LCD_string_write("<2> ");
	mov	dptr,#___str_173
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3133: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3134: LCD_string_write("Number of Bits\n");
	mov	dptr,#___str_174
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3135: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3136: LCD_string_write("     ");
	mov	dptr,#___str_165
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3137: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3138: LCD_string_write("(8 or 9 bits)\n");
	mov	dptr,#___str_175
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3139: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00163$
;	.\ecen4350_lcd_v4.c:3140: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3141: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3142: LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
	mov	dptr,#___str_172
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3143: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3144: setCursor(0, 100);		
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3145: LCD_string_write(" <2> Number of Bits\n     (8 or 9 bits)\n");
	mov	dptr,#___str_149
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3146: goto mainInput;
	ljmp	00147$
00163$:
;	.\ecen4350_lcd_v4.c:3147: } if (UART_en == 0) goto setBit;
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00684$
	ljmp	00221$
00684$:
00167$:
;	.\ecen4350_lcd_v4.c:3148: } if (selection == '3') {
	mov	r0,#_selection
	cjne	@r0,#0x33,00685$
	sjmp	00686$
00685$:
	ljmp	00173$
00686$:
;	.\ecen4350_lcd_v4.c:3149: setCursor (0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3150: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3151: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3152: LCD_string_write("<3> ");
	mov	dptr,#___str_176
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3153: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3154: LCD_string_write("Parity ");
	mov	dptr,#___str_177
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3155: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3156: LCD_string_write("(Even/\n");
	mov	dptr,#___str_178
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3157: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3158: LCD_string_write("     ");
	mov	dptr,#___str_165
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3159: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3160: LCD_string_write("(Odd/None)\n");
	mov	dptr,#___str_179
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3161: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00169$
;	.\ecen4350_lcd_v4.c:3162: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3163: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3164: LCD_string_write("\n\n\n\n Please disable\n UART first.\n");
	mov	dptr,#___str_172
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3165: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3166: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3167: LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
	mov	dptr,#___str_155
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3168: goto mainInput;
	ljmp	00147$
00169$:
;	.\ecen4350_lcd_v4.c:3169: } if (UART_en == 0) goto setParity;
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00175$
	ljmp	00228$
00173$:
;	.\ecen4350_lcd_v4.c:3171: setColorRed();
	push	ar7
	push	ar6
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3172: setCursor(0, 200);
	mov	_setCursor_PARM_2,#0xc8
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3173: LCD_string_write("\n\n\n\n Incorrect input\n  Try again.\n");
	mov	dptr,#___str_180
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3174: setColorDefault();
	lcall	_setColorDefault
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3175: goto mainInput;
	ljmp	00147$
;	.\ecen4350_lcd_v4.c:3178: verifyUART:
00175$:
;	.\ecen4350_lcd_v4.c:3179: clearLCD();
	push	ar7
	push	ar6
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3180: setCursor(0, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3181: if (initLock == 1) {
	cjne	r7,#0x01,00690$
	sjmp	00691$
00690$:
	ljmp	00194$
00691$:
;	.\ecen4350_lcd_v4.c:3182: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00177$
;	.\ecen4350_lcd_v4.c:3183: setColorGreen();
	push	ar7
	push	ar6
	lcall	_setColorGreen
;	.\ecen4350_lcd_v4.c:3184: LCD_string_write("\n Disabling UART...\n");
	mov	dptr,#___str_181
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3185: UART_disable();
	lcall	_UART_disable
;	.\ecen4350_lcd_v4.c:3186: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3187: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3188: setColorDefault();
	lcall	_setColorDefault
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3189: goto uartMenu;
	ljmp	00101$
00177$:
;	.\ecen4350_lcd_v4.c:3190: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jz	00694$
	ljmp	00101$
00694$:
;	.\ecen4350_lcd_v4.c:3191: if ((baudSet == 1) && (paritySet == 1) && (bitSet == 1)) {
	mov	r0,#_baudSet
	cjne	@r0,#0x01,00185$
	mov	r0,#_paritySet
	cjne	@r0,#0x01,00185$
	mov	r0,#_bitSet
	cjne	@r0,#0x01,00185$
;	.\ecen4350_lcd_v4.c:3192: setColorSelect();
	push	ar7
	push	ar6
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:3193: LCD_string_write("\n Settings Verified:\n");
	mov	dptr,#___str_182
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3194: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3195: LCD_string_write(" Enabling UART...");
	mov	dptr,#___str_183
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3196: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3197: goto setFrame; //init UARt with settings
	ljmp	00255$
00185$:
;	.\ecen4350_lcd_v4.c:3199: if (baudSet == 0) {
	mov	r0,#_baudSet
	mov	a,@r0
	jnz	00179$
;	.\ecen4350_lcd_v4.c:3200: setColorRed();
	push	ar7
	push	ar6
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3201: LCD_string_write(" BAUD ERROR\n");
	mov	dptr,#___str_184
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3202: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3203: LCD_string_write(" Entering Baud...\n");
	mov	dptr,#___str_185
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3204: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3205: goto setRate;
	sjmp	00194$
00179$:
;	.\ecen4350_lcd_v4.c:3206: } if (bitSet == 0) {
	mov	r0,#_bitSet
	mov	a,@r0
	jnz	00181$
;	.\ecen4350_lcd_v4.c:3207: setColorRed();
	push	ar7
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3208: LCD_string_write(" BIT ERROR\n");
	mov	dptr,#___str_186
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3209: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3210: LCD_string_write(" Entering Bits...\n");
	mov	dptr,#___str_187
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3211: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3212: goto setBit;
	ljmp	00221$
00181$:
;	.\ecen4350_lcd_v4.c:3213: } if (paritySet == 0) {
	mov	r0,#_paritySet
	mov	a,@r0
	jnz	00194$
;	.\ecen4350_lcd_v4.c:3214: setColorRed();
	push	ar7
	push	ar6
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3215: LCD_string_write(" PARITY ERROR\n");
	mov	dptr,#___str_188
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3216: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3217: LCD_string_write(" Entering Parity...\n");
	mov	dptr,#___str_189
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3218: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3219: goto setParity;
	ljmp	00228$
;	.\ecen4350_lcd_v4.c:3225: setRate: 
00194$:
;	.\ecen4350_lcd_v4.c:3226: clearLCD();
	push	ar7
	push	ar6
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3227: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3228: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3229: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3230: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3231: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3232: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3233: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3234: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3235: LCD_string_write(" <1> 1200 Baud\n");
	mov	dptr,#___str_190
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3236: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3237: LCD_string_write(" <2> 2400 Baud\n");
	mov	dptr,#___str_191
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3238: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3239: LCD_string_write(" <3> 4800 Baud\n");
	mov	dptr,#___str_192
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3240: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3241: LCD_string_write(" <4> 9600 Baud\n");
	mov	dptr,#___str_193
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3242: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3243: LCD_string_write(" <5> 19200 Baud\n");
	mov	dptr,#___str_194
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3244: baudInput:
00195$:
;	.\ecen4350_lcd_v4.c:3245: selection = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:3246: if (selection == '1' ) {
	cjne	r5,#0x31,00200$
;	.\ecen4350_lcd_v4.c:3247: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3248: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3249: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3250: LCD_string_write("<1> ");
	mov	dptr,#___str_170
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3251: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3252: LCD_string_write("1200 Baud\n");
	mov	dptr,#___str_195
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3253: TH1 = 0xE6;	// 1200 baud
	mov	_TH1,#0xe6
;	.\ecen4350_lcd_v4.c:3254: PCON = 0x00; //SMOD = 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3255: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3256: baudType = 0x1;
	mov	r0,#_baudType
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3257: if (initLock == 1) goto cont;
	cjne	r7,#0x01,00706$
	sjmp	00707$
00706$:
	ljmp	00101$
00707$:
	ljmp	00278$
;	.\ecen4350_lcd_v4.c:3258: else goto uartMenu;
00200$:
;	.\ecen4350_lcd_v4.c:3260: if (selection == '2' ) {
	cjne	r5,#0x32,00205$
;	.\ecen4350_lcd_v4.c:3261: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3262: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3263: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3264: LCD_string_write("<2> ");
	mov	dptr,#___str_173
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3265: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3266: LCD_string_write("2400 Baud\n");
	mov	dptr,#___str_196
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3267: TH1 = 0xF3; // 2400 baud
	mov	_TH1,#0xf3
;	.\ecen4350_lcd_v4.c:3268: PCON = 0x00; //SMOD = 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3269: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3270: baudType = 0x2;
	mov	r0,#_baudType
	mov	@r0,#0x02
;	.\ecen4350_lcd_v4.c:3271: if (initLock == 1) goto cont;
	cjne	r7,#0x01,00710$
	sjmp	00711$
00710$:
	ljmp	00101$
00711$:
	ljmp	00278$
;	.\ecen4350_lcd_v4.c:3272: else goto uartMenu;
00205$:
;	.\ecen4350_lcd_v4.c:3274: if (selection == '3' ) {
	cjne	r5,#0x33,00210$
;	.\ecen4350_lcd_v4.c:3275: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3276: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3277: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3278: LCD_string_write("<3> ");
	mov	dptr,#___str_176
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3279: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3280: LCD_string_write("4800 Baud\n");
	mov	dptr,#___str_197
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3281: TH1 = 0xF3; //4800 baud
	mov	_TH1,#0xf3
;	.\ecen4350_lcd_v4.c:3282: PCON = 0x80; //SMOD 1
	mov	_PCON,#0x80
;	.\ecen4350_lcd_v4.c:3283: baudSet = 1; 
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3284: baudType = 0x3;
	mov	r0,#_baudType
	mov	@r0,#0x03
;	.\ecen4350_lcd_v4.c:3285: if (initLock == 1) goto cont;
	cjne	r7,#0x01,00714$
	sjmp	00715$
00714$:
	ljmp	00101$
00715$:
	ljmp	00278$
;	.\ecen4350_lcd_v4.c:3286: else goto uartMenu;
00210$:
;	.\ecen4350_lcd_v4.c:3288: if (selection == '4' ) {
	cjne	r5,#0x34,00215$
;	.\ecen4350_lcd_v4.c:3289: setCursor(0, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3290: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3291: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3292: LCD_string_write("<4> ");
	mov	dptr,#___str_163
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3293: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3294: LCD_string_write("9600 Baud\n");
	mov	dptr,#___str_198
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3295: TH1 = 0xFD; //9600 baud
	mov	_TH1,#0xfd
;	.\ecen4350_lcd_v4.c:3296: PCON = 0x00; //SMOD 0
	mov	_PCON,#0x00
;	.\ecen4350_lcd_v4.c:3297: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3298: baudType = 0x4;
	mov	r0,#_baudType
	mov	@r0,#0x04
;	.\ecen4350_lcd_v4.c:3299: if (initLock == 1) goto cont;
	cjne	r7,#0x01,00718$
	sjmp	00719$
00718$:
	ljmp	00101$
00719$:
	ljmp	00278$
;	.\ecen4350_lcd_v4.c:3300: else goto uartMenu;
00215$:
;	.\ecen4350_lcd_v4.c:3302: if (selection == '5' ) {
	cjne	r5,#0x35,00219$
;	.\ecen4350_lcd_v4.c:3303: setCursor(0, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3304: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3305: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3306: LCD_string_write("<5> ");
	mov	dptr,#___str_199
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3307: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3308: LCD_string_write("19200 Baud\n");
	mov	dptr,#___str_200
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3309: TH1 = 0xFD;	//19200 baud
	mov	_TH1,#0xfd
;	.\ecen4350_lcd_v4.c:3310: PCON = 0x80; //SMOD 1
	mov	_PCON,#0x80
;	.\ecen4350_lcd_v4.c:3311: baudSet = 1;
	mov	r0,#_baudSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3312: baudType = 0x5;
	mov	r0,#_baudType
	mov	@r0,#0x05
;	.\ecen4350_lcd_v4.c:3313: if (initLock == 1) goto cont;
	cjne	r7,#0x01,00722$
	sjmp	00723$
00722$:
	ljmp	00101$
00723$:
	ljmp	00278$
;	.\ecen4350_lcd_v4.c:3314: goto uartMenu;
00219$:
;	.\ecen4350_lcd_v4.c:3316: setColorRed();
	push	ar7
	push	ar6
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3317: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3318: LCD_string_write(" INPUT ERROR");
	mov	dptr,#___str_201
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3319: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3320: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3321: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3322: LCD_string_write("            ");
	mov	dptr,#___str_202
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3323: goto baudInput;
	ljmp	00195$
;	.\ecen4350_lcd_v4.c:3326: setBit:
00221$:
;	.\ecen4350_lcd_v4.c:3327: clearLCD();
	push	ar7
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3328: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3329: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3330: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3331: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3332: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3333: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3334: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3335: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3336: LCD_string_write(" <1> 8-bit Mode\n");
	mov	dptr,#___str_203
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3337: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3338: LCD_string_write(" <2> 9-bit Mode\n");
	mov	dptr,#___str_204
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:3339: sel:
00222$:
;	.\ecen4350_lcd_v4.c:3340: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r5,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:3341: if (selection == '1') {
	cjne	r5,#0x31,00224$
;	.\ecen4350_lcd_v4.c:3342: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3343: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3344: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3345: LCD_string_write("<1> ");
	mov	dptr,#___str_170
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3346: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3347: LCD_string_write("8-bit Mode\n");
	mov	dptr,#___str_205
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:3348: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3349: _8b = 1;
	mov	r0,#__8b
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3350: temp = 1;
	mov	r6,#0x01
;	.\ecen4350_lcd_v4.c:3351: goto cont;
	ljmp	00278$
00224$:
;	.\ecen4350_lcd_v4.c:3352: } if (selection == '2') {
	cjne	r5,#0x32,00226$
;	.\ecen4350_lcd_v4.c:3353: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3354: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3355: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3356: LCD_string_write("<2> ");
	mov	dptr,#___str_173
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3357: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3358: LCD_string_write("9-bit Mode\n");
	mov	dptr,#___str_206
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:3359: bitSet = 1;
	mov	r0,#_bitSet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3360: _8b = 0;
	mov	r0,#__8b
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3361: temp = 2;
	mov	r6,#0x02
;	.\ecen4350_lcd_v4.c:3362: goto cont;
	ljmp	00278$
00226$:
;	.\ecen4350_lcd_v4.c:3364: bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3365: setColorRed();
	push	ar7
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3366: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3367: LCD_string_write(" INPUT ERROR");
	mov	dptr,#___str_201
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3368: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3369: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3370: setCursor(0, 240);
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3371: LCD_string_write("            ");
	mov	dptr,#___str_202
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:3372: goto sel;
	ljmp	00222$
;	.\ecen4350_lcd_v4.c:3375: setParity:
00228$:
;	.\ecen4350_lcd_v4.c:3376: if (temp == 0) {
	mov	a,r6
;	.\ecen4350_lcd_v4.c:3377: setCursor(0, 240);
	jnz	00230$
	mov	_setCursor_PARM_2,#0xf0
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3378: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3379: writeNewLine();
	lcall	_writeNewLine
;	.\ecen4350_lcd_v4.c:3380: LCD_string_write("\n Please set the\n  bit mode first.\n");
	mov	dptr,#___str_207
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3381: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3382: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3383: LCD_string_write(" <3> Parity (Even)\n     (Odd/None)\n");
	mov	dptr,#___str_155
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3384: goto mainInput;
	ljmp	00147$
00230$:
;	.\ecen4350_lcd_v4.c:3385: } if (temp == 1) {
	cjne	r6,#0x01,00232$
;	.\ecen4350_lcd_v4.c:3386: _8b = 1;
	mov	r0,#__8b
	mov	@r0,#0x01
00232$:
;	.\ecen4350_lcd_v4.c:3387: } if (temp == 2) {
	cjne	r6,#0x02,00234$
;	.\ecen4350_lcd_v4.c:3388: _8b = 0;
	mov	r0,#__8b
	mov	@r0,#0x00
00234$:
;	.\ecen4350_lcd_v4.c:3390: clearLCD();
	push	ar7
	push	ar6
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3391: fillTop(GRAY);
	mov	dptr,#0xd6ba
	lcall	_fillTop
;	.\ecen4350_lcd_v4.c:3392: setTextSize(5);
	mov	dpl,#0x05
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3393: setColorMenu();
	lcall	_setColorMenu
;	.\ecen4350_lcd_v4.c:3394: setCursor(30, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3395: LCD_string_write("[UART]\n");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3396: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3397: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3398: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3399: LCD_string_write(" <1> Even Parity\n");
	mov	dptr,#___str_208
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3400: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3401: LCD_string_write(" <2> Odd Parity\n");
	mov	dptr,#___str_209
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3402: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3403: LCD_string_write(" <3> No Parity");
	mov	dptr,#___str_210
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3405: boop: 
00235$:
;	.\ecen4350_lcd_v4.c:3406: selection = keyDetect();
	push	ar7
	push	ar6
	lcall	_keyDetect
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:3407: if (selection == '1') {
	cjne	r5,#0x31,00241$
;	.\ecen4350_lcd_v4.c:3408: setCursor(0, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3409: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3410: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3411: LCD_string_write("<1> ");
	mov	dptr,#___str_170
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3412: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3413: LCD_string_write("Even Parity\n");
	mov	dptr,#___str_211
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3415: if(_8b == 0) {
	mov	r0,#__8b
	mov	a,@r0
	jnz	00237$
;	.\ecen4350_lcd_v4.c:3416: frame_NEP = 0x111;	//9 bit, Even, Parity Set
	mov	r0,#_frame_NEP
	mov	@r0,#0x11
	inc	r0
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3417: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3418: pType = 0x2;
	mov	r0,#_pType
	mov	@r0,#0x02
;	.\ecen4350_lcd_v4.c:3419: goto cont;
	ljmp	00278$
00237$:
;	.\ecen4350_lcd_v4.c:3420: } if (_8b == 1){
	mov	r0,#__8b
	cjne	@r0,#0x01,00241$
;	.\ecen4350_lcd_v4.c:3421: frame_NEP = 0x011;	//8 bit, even, Parity Set
	mov	r0,#_frame_NEP
	mov	@r0,#0x11
	inc	r0
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3422: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3423: pType = 0x3;
	mov	r0,#_pType
	mov	@r0,#0x03
;	.\ecen4350_lcd_v4.c:3424: goto cont`;
	ljmp	00278$
00241$:
;	.\ecen4350_lcd_v4.c:3426: } if (selection == '2') {
	mov	r0,#_selection
	cjne	@r0,#0x32,00247$
;	.\ecen4350_lcd_v4.c:3427: setCursor(0, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3428: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3429: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3430: LCD_string_write("<2> ");
	mov	dptr,#___str_173
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3431: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3432: LCD_string_write("Odd Parity\n");
	mov	dptr,#___str_212
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3434: if (_8b == 0) {
	mov	r0,#__8b
	mov	a,@r0
	jnz	00243$
;	.\ecen4350_lcd_v4.c:3435: frame_NEP = 0x101;		//9 bit, odd, parity set
	mov	r0,#_frame_NEP
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3436: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3437: pType = 0x4;
	mov	r0,#_pType
	mov	@r0,#0x04
;	.\ecen4350_lcd_v4.c:3438: goto cont;
	ljmp	00278$
00243$:
;	.\ecen4350_lcd_v4.c:3439: } if (_8b == 1) {
	mov	r0,#__8b
	cjne	@r0,#0x01,00247$
;	.\ecen4350_lcd_v4.c:3440: frame_NEP = 0x001;		//8 bit, odd, parity set
	mov	r0,#_frame_NEP
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3441: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3442: pType = 0x5;
	mov	r0,#_pType
	mov	@r0,#0x05
;	.\ecen4350_lcd_v4.c:3443: goto cont;
	ljmp	00278$
00247$:
;	.\ecen4350_lcd_v4.c:3445: } if (selection == '3') {
	mov	r0,#_selection
	cjne	@r0,#0x33,00743$
	sjmp	00744$
00743$:
	ljmp	00235$
00744$:
;	.\ecen4350_lcd_v4.c:3446: setCursor(0, 140);
	mov	_setCursor_PARM_2,#0x8c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3447: LCD_string_write(" ");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3448: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3449: LCD_string_write("<3> ");
	mov	dptr,#___str_176
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3450: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3451: LCD_string_write("No Parity\n");
	mov	dptr,#___str_213
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3453: if (_8b == 0) {
	mov	r0,#__8b
	mov	a,@r0
;	.\ecen4350_lcd_v4.c:3454: frame_NEP = 0x100; 			//9 bit, odd, no parity
	jnz	00249$
	mov	r0,#_frame_NEP
	mov	@r0,a
	inc	r0
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3455: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3456: pType = 0x1;
	mov	r0,#_pType
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3457: goto cont;
	ljmp	00278$
00249$:
;	.\ecen4350_lcd_v4.c:3458: } if (_8b == 1) {
	mov	r0,#__8b
	cjne	@r0,#0x01,00255$
;	.\ecen4350_lcd_v4.c:3459: frame_NEP = 0x000;		 	//8 bit, odd, no parity
	mov	r0,#_frame_NEP
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	.\ecen4350_lcd_v4.c:3460: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3461: pType = 0x7;
	mov	r0,#_pType
	mov	@r0,#0x07
;	.\ecen4350_lcd_v4.c:3462: goto cont;
	ljmp	00278$
;	.\ecen4350_lcd_v4.c:3466: setFrame:
00255$:
;	.\ecen4350_lcd_v4.c:3467: paritySet = 0;
	mov	r0,#_paritySet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3468: if ((frame_NEP == 0x000) || 	//8 bit, odd, no parity 
	mov	r0,#_frame_NEP
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00268$
;	.\ecen4350_lcd_v4.c:3469: (frame_NEP == 0x001) ||		//8 bit, odd, parity set
	mov	r0,#_frame_NEP
	cjne	@r0,#0x01,00749$
	inc	r0
	cjne	@r0,#0x00,00749$
	sjmp	00268$
00749$:
;	.\ecen4350_lcd_v4.c:3470: (frame_NEP == 0x010) ||		//8 bit, even, no parity
	mov	r0,#_frame_NEP
	cjne	@r0,#0x10,00750$
	inc	r0
	cjne	@r0,#0x00,00750$
	sjmp	00268$
00750$:
;	.\ecen4350_lcd_v4.c:3471: (frame_NEP == 0x011) ||		//8 bit, even, parity set
	mov	r0,#_frame_NEP
	cjne	@r0,#0x11,00751$
	inc	r0
	cjne	@r0,#0x00,00751$
	sjmp	00268$
00751$:
;	.\ecen4350_lcd_v4.c:3472: (frame_NEP == 0x100) ||		//9 bit, odd, no parity
	mov	r0,#_frame_NEP
	cjne	@r0,#0x00,00752$
	inc	r0
	cjne	@r0,#0x01,00752$
	sjmp	00268$
00752$:
;	.\ecen4350_lcd_v4.c:3473: (frame_NEP == 0x101) ||		//9 bit, odd, parity set
	mov	r0,#_frame_NEP
	cjne	@r0,#0x01,00753$
	inc	r0
	cjne	@r0,#0x01,00753$
	sjmp	00268$
00753$:
;	.\ecen4350_lcd_v4.c:3474: (frame_NEP == 0x110) ||		//9 bit, even, no parity
	mov	r0,#_frame_NEP
	cjne	@r0,#0x10,00754$
	inc	r0
	cjne	@r0,#0x01,00754$
	sjmp	00268$
00754$:
;	.\ecen4350_lcd_v4.c:3475: (frame_NEP == 0x111)) {		//9 bit, even, parity set
	mov	r0,#_frame_NEP
	cjne	@r0,#0x11,00755$
	inc	r0
	cjne	@r0,#0x01,00755$
	sjmp	00756$
00755$:
	ljmp	00269$
00756$:
00268$:
;	.\ecen4350_lcd_v4.c:3477: paritySet = 1;
	mov	r0,#_paritySet
	mov	@r0,#0x01
;	.\ecen4350_lcd_v4.c:3478: tempFrame = frame_NEP;
	mov	r0,#_frame_NEP
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	r0,#_tempFrame
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	.\ecen4350_lcd_v4.c:3480: if ((tempFrame & 0x100) == 0x100){ //9-bit Mode
	mov	r4,#0x00
	anl	ar5,#0x01
	cjne	r4,#0x00,00257$
	cjne	r5,#0x01,00257$
;	.\ecen4350_lcd_v4.c:3481: initLock = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3482: SCON = 0xC0;  	// Asynchronous mode, 9-bit data and 1-stop (b9)
	mov	_SCON,#0xc0
;	.\ecen4350_lcd_v4.c:3483: TMOD = 0x20;  	// Timer1 input Mode2. input auto reload
	mov	_TMOD,#0x20
;	.\ecen4350_lcd_v4.c:3485: UART_init();  	// 9-bit, Serial Mode 3, variable baud
	push	ar7
	push	ar6
	lcall	_UART_init
	pop	ar6
	pop	ar7
00257$:
;	.\ecen4350_lcd_v4.c:3486: } if ((tempFrame & 0x100) == 0x000){
	mov	r0,#(_tempFrame + 1)
	mov	a,@r0
	jb	acc.0,00259$
;	.\ecen4350_lcd_v4.c:3487: initLock = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3488: SCON = 0x50;  	// Asynchronous mode, 8-bit data and 1-stop bit
	mov	_SCON,#0x50
;	.\ecen4350_lcd_v4.c:3489: TMOD = 0x20;  	// Timer1 input Mode2. input 8 bit auto reload
	mov	_TMOD,#0x20
;	.\ecen4350_lcd_v4.c:3490: UART_init();	//8-bit Mode, Serial Mode 1; variable baud
	push	ar7
	push	ar6
	lcall	_UART_init
	pop	ar6
	pop	ar7
00259$:
;	.\ecen4350_lcd_v4.c:3491: } if ((tempFrame & 0x010) == 0x010) {
	mov	r0,#_tempFrame
	mov	a,#0x10
	anl	a,@r0
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x10,00261$
	cjne	r5,#0x00,00261$
;	.\ecen4350_lcd_v4.c:3492: initLock = 0;	//even parity
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3493: parityEven = 1;
	mov	r0,#_parityEven
	mov	@r0,#0x01
00261$:
;	.\ecen4350_lcd_v4.c:3495: } if ((tempFrame & 0x010) == 0x000) {
	mov	r0,#_tempFrame
	mov	a,@r0
	jb	acc.4,00263$
;	.\ecen4350_lcd_v4.c:3496: initLock = 0;	//odd parity
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3497: parityEven = 0;
	mov	r0,#_parityEven
	mov	@r0,#0x00
00263$:
;	.\ecen4350_lcd_v4.c:3499: } if ((tempFrame & 0x001) == 0x001) {
	mov	r0,#_tempFrame
	mov	a,#0x01
	anl	a,@r0
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x01,00265$
	cjne	r5,#0x00,00265$
;	.\ecen4350_lcd_v4.c:3500: initLock = 0;	//set parity
	mov	r7,#0x00
00265$:
;	.\ecen4350_lcd_v4.c:3502: } if ((tempFrame & 0x001) == 0x000) {
	mov	r0,#_tempFrame
	mov	a,@r0
	jb	acc.0,00278$
;	.\ecen4350_lcd_v4.c:3503: initLock = 0;	//no parity
	mov	r7,#0x00
	sjmp	00278$
00269$:
;	.\ecen4350_lcd_v4.c:3507: writeNewLine();
	push	ar7
	push	ar6
	lcall	_writeNewLine
;	.\ecen4350_lcd_v4.c:3508: LCD_string_write(" Something is wrong.\n  UART failed to set.\n");
	mov	dptr,#___str_214
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3509: delay(80);
	mov	dptr,#0x0050
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\ecen4350_lcd_v4.c:3510: bitSet = 0;
	mov	r0,#_bitSet
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3511: goto uartMenu;
	ljmp	00101$
;	.\ecen4350_lcd_v4.c:3513: cont:
00278$:
;	.\ecen4350_lcd_v4.c:3514: if (initLock == 1) goto verifyUART;
	cjne	r7,#0x01,00766$
	sjmp	00767$
00766$:
	ljmp	00101$
00767$:
	ljmp	00175$
;	.\ecen4350_lcd_v4.c:3516: finish:
;	.\ecen4350_lcd_v4.c:3517: return;
;	.\ecen4350_lcd_v4.c:3518: }
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
;	.\ecen4350_lcd_v4.c:3521: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\ecen4350_lcd_v4.c:3525: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3526: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3527: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3528: CD = 0;
;	assignBit
	clr	_P3_4
;	.\ecen4350_lcd_v4.c:3529: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3530: rtcInit();							// RTC init
	lcall	_rtcInit
;	.\ecen4350_lcd_v4.c:3532: TFT_LCD_INIT();						// LCD init
	lcall	_TFT_LCD_INIT
;	.\ecen4350_lcd_v4.c:3533: iowrite8(seg7_address, SEG_H);		// [H]
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x89
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3534: delay(40);							
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3535: iowrite8(seg7_address, 0b01111011); // [i.]
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x7b
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3536: delay(40);
	mov	dptr,#0x0028
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3537: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3538: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3539: seg7Test();
	lcall	_seg7Test
;	.\ecen4350_lcd_v4.c:3541: writeSomeLines();					// LCD Power On Self-Test and Welcome message
	lcall	_writeSomeLines
;	.\ecen4350_lcd_v4.c:3543: clearLCD();							// set LCD background
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3544: setColorDefault();	// set text color
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3545: setCursor(30, 120);				
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3546: LCD_string_write("RAM POST\n");
	mov	dptr,#___str_215
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3547: writeAllRAM(0xAA);
	mov	dpl,#0xaa
	lcall	_writeAllRAM
;	.\ecen4350_lcd_v4.c:3548: setCursor(30, 150);
	mov	_setCursor_PARM_2,#0x96
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3549: LCD_string_write("...\n");
	mov	dptr,#___str_216
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3550: checkAllRAM(0xAA);
	mov	dpl,#0xaa
	lcall	_checkAllRAM
;	.\ecen4350_lcd_v4.c:3551: UART_en = 0;
	mov	r0,#_UART_en
	mov	@r0,#0x00
;	.\ecen4350_lcd_v4.c:3554: loop:
00101$:
;	.\ecen4350_lcd_v4.c:3555: validKey = 1;
	mov	r7,#0x01
;	.\ecen4350_lcd_v4.c:3556: iowrite8(seg7_address, OFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3557: clearLCD();
	push	ar7
	lcall	_clearLCD
;	.\ecen4350_lcd_v4.c:3558: setCursor(30, 120);
	mov	_setCursor_PARM_2,#0x78
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x001e
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3559: setTextSize(3);
	mov	dpl,#0x03
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3560: setColorSelect();
	lcall	_setColorSelect
;	.\ecen4350_lcd_v4.c:3561: rtcPrint();
	lcall	_rtcPrint
;	.\ecen4350_lcd_v4.c:3562: printMenu();
	lcall	_printMenu
	pop	ar7
;	.\ecen4350_lcd_v4.c:3563: inputKey:
00102$:
;	.\ecen4350_lcd_v4.c:3564: selection = keyDetect();
	push	ar7
	lcall	_keyDetect
	mov	r6,dpl
	pop	ar7
	mov	r0,#_selection
	mov	@r0,ar6
;	.\ecen4350_lcd_v4.c:3565: if (selection == 'D') {
	cjne	r6,#0x44,00106$
;	.\ecen4350_lcd_v4.c:3566: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3567: setCursor(10, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3568: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3569: LCD_string_write("<D>");
	mov	dptr,#___str_217
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3570: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3571: LCD_string_write(" DUMP\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3572: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3573: iowrite8(seg7_address, SEG_D);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xa1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3574: if (validKey == 0) {
	mov	a,r7
	jnz	00104$
;	.\ecen4350_lcd_v4.c:3575: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3576: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3577: LCD_string_write("          ");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
00104$:
;	.\ecen4350_lcd_v4.c:3579: dump();
	lcall	_dump
;	.\ecen4350_lcd_v4.c:3580: goto loop;
	ljmp	00101$
00106$:
;	.\ecen4350_lcd_v4.c:3581: } if(selection == 'B') {
	cjne	r6,#0x42,00110$
;	.\ecen4350_lcd_v4.c:3582: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3583: setCursor(130, 60);
	mov	_setCursor_PARM_2,#0x3c
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0082
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3584: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3585: LCD_string_write("<B>");
	mov	dptr,#___str_219
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3586: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3587: LCD_string_write(" MOVE\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3588: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3589: iowrite8(seg7_address, SEG_B);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x83
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3590: if (validKey == 0) {
	mov	a,r7
	jnz	00108$
;	.\ecen4350_lcd_v4.c:3591: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3592: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3593: LCD_string_write("          ");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
00108$:
;	.\ecen4350_lcd_v4.c:3595: move();
	lcall	_move
;	.\ecen4350_lcd_v4.c:3596: goto loop;
	ljmp	00101$
00110$:
;	.\ecen4350_lcd_v4.c:3597: } if(selection == 'E') {
	cjne	r6,#0x45,00114$
;	.\ecen4350_lcd_v4.c:3598: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3599: setCursor(10, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3600: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3601: LCD_string_write("<E>");
	mov	dptr,#___str_220
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3602: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3603: LCD_string_write(" EDIT\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3604: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3605: iowrite8(seg7_address, SEG_E);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x86
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3606: if (validKey == 0) {
	mov	a,r7
	jnz	00112$
;	.\ecen4350_lcd_v4.c:3607: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3608: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3609: LCD_string_write("          ");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
00112$:
;	.\ecen4350_lcd_v4.c:3611: edit();
	lcall	_edit
;	.\ecen4350_lcd_v4.c:3612: goto loop;
	ljmp	00101$
00114$:
;	.\ecen4350_lcd_v4.c:3613: } if(selection == 'F') {
	cjne	r6,#0x46,00118$
;	.\ecen4350_lcd_v4.c:3614: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3615: setCursor(130, 100);
	mov	_setCursor_PARM_2,#0x64
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0082
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3616: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3617: LCD_string_write("<F>");
	mov	dptr,#___str_221
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3618: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3619: LCD_string_write(" FIND\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3620: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3621: iowrite8(seg7_address, SEG_F);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3622: if (validKey == 0) {
	mov	a,r7
	jnz	00116$
;	.\ecen4350_lcd_v4.c:3623: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3624: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3625: LCD_string_write("          ");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
00116$:
;	.\ecen4350_lcd_v4.c:3627: find();
	lcall	_find
;	.\ecen4350_lcd_v4.c:3628: goto loop;
	ljmp	00101$
00118$:
;	.\ecen4350_lcd_v4.c:3629: } if(selection == 'C') {
	cjne	r6,#0x43,00122$
;	.\ecen4350_lcd_v4.c:3630: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3631: setCursor(10, 160);
	mov	_setCursor_PARM_2,#0xa0
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3632: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3633: LCD_string_write("<C>");
	mov	dptr,#___str_222
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3634: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3635: LCD_string_write(" COUNT\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3636: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3637: iowrite8(seg7_address, SEG_C);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xc6
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3638: if (validKey == 0) {
	mov	a,r7
	jnz	00120$
;	.\ecen4350_lcd_v4.c:3639: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3640: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3641: LCD_string_write("          ");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
00120$:
;	.\ecen4350_lcd_v4.c:3643: count();
	lcall	_count
;	.\ecen4350_lcd_v4.c:3644: goto loop;
	ljmp	00101$
00122$:
;	.\ecen4350_lcd_v4.c:3645: } if(selection == 'A') {
	cjne	r6,#0x41,00126$
;	.\ecen4350_lcd_v4.c:3646: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3647: setCursor(10, 180);
	mov	_setCursor_PARM_2,#0xb4
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3648: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3649: LCD_string_write("<A>");
	mov	dptr,#___str_223
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3650: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3651: LCD_string_write(" MEM CHECK\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3652: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3653: iowrite8(seg7_address, SEG_A);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0x88
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3654: if (validKey == 0) {
	mov	a,r7
	jnz	00124$
;	.\ecen4350_lcd_v4.c:3655: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3656: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3657: LCD_string_write("          ");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
00124$:
;	.\ecen4350_lcd_v4.c:3659: check();
	lcall	_check
;	.\ecen4350_lcd_v4.c:3660: goto loop;
	ljmp	00101$
00126$:
;	.\ecen4350_lcd_v4.c:3661: } if(selection == '1') {
	cjne	r6,#0x31,00250$
	sjmp	00251$
00250$:
	ljmp	00134$
00251$:
;	.\ecen4350_lcd_v4.c:3662: iowrite8(seg7_address, ON);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	clr	a
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3663: setCursor(10, 220);
	mov	_setCursor_PARM_2,#0xdc
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3664: setColorHighlight1();
	lcall	_setColorHighlight1
;	.\ecen4350_lcd_v4.c:3665: LCD_string_write("<1>");
	mov	dptr,#___str_224
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3666: setColorHighlight2();
	lcall	_setColorHighlight2
;	.\ecen4350_lcd_v4.c:3667: LCD_string_write(" UART");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3668: setTextSize(1);
	mov	dpl,#0x01
	lcall	_setTextSize
	pop	ar7
;	.\ecen4350_lcd_v4.c:3669: if (UART_en == 1) {
	mov	r0,#_UART_en
	cjne	@r0,#0x01,00128$
;	.\ecen4350_lcd_v4.c:3670: LCD_string_write(" [Enabled]\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	push	ar7
	lcall	_LCD_string_write
	pop	ar7
00128$:
;	.\ecen4350_lcd_v4.c:3671: } if (UART_en == 0) {
	mov	r0,#_UART_en
	mov	a,@r0
	jnz	00130$
;	.\ecen4350_lcd_v4.c:3672: LCD_string_write(" [Disabled]\n");
	mov	dptr,#___str_20
	mov	b,#0x80
	push	ar7
	lcall	_LCD_string_write
	pop	ar7
00130$:
;	.\ecen4350_lcd_v4.c:3674: setTextSize(2);
	mov	dpl,#0x02
	push	ar7
	lcall	_setTextSize
;	.\ecen4350_lcd_v4.c:3675: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar7
;	.\ecen4350_lcd_v4.c:3676: iowrite8(seg7_address, SEG_U);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	.\ecen4350_lcd_v4.c:105: IOM = 1;
;	assignBit
	setb	_P3_5
;	.\ecen4350_lcd_v4.c:106: *map_address = d;
	mov	a,#0xc1
	movx	@dptr,a
;	.\ecen4350_lcd_v4.c:107: IOM = 0;
;	assignBit
	clr	_P3_5
;	.\ecen4350_lcd_v4.c:3677: if (validKey == 0) {
	mov	a,r7
	jnz	00132$
;	.\ecen4350_lcd_v4.c:3678: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3679: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3680: LCD_string_write("          ");
	mov	dptr,#___str_218
	mov	b,#0x80
	lcall	_LCD_string_write
00132$:
;	.\ecen4350_lcd_v4.c:3683: uart();
	lcall	_uart
;	.\ecen4350_lcd_v4.c:3684: goto loop;
	ljmp	00101$
00134$:
;	.\ecen4350_lcd_v4.c:3686: setCursor(45, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x002d
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3687: setColorRed();
	lcall	_setColorRed
;	.\ecen4350_lcd_v4.c:3688: LCD_string_write("INVALID INPUT\n");
	mov	dptr,#___str_225
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3689: setCursor(60, 280);
	mov	_setCursor_PARM_2,#0x18
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x003c
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3690: LCD_string_write("Try again.");
	mov	dptr,#___str_226
	mov	b,#0x80
	lcall	_LCD_string_write
;	.\ecen4350_lcd_v4.c:3691: validKey = 0;
	mov	r7,#0x00
;	.\ecen4350_lcd_v4.c:3692: delay(20);
	mov	dptr,#0x0014
	push	ar7
	lcall	_delay
;	.\ecen4350_lcd_v4.c:3693: setColorDefault();
	lcall	_setColorDefault
;	.\ecen4350_lcd_v4.c:3694: setCursor(45, 260);
	mov	_setCursor_PARM_2,#0x04
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x002d
	lcall	_setCursor
;	.\ecen4350_lcd_v4.c:3695: LCD_string_write("               \n");
	mov	dptr,#___str_227
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar7
;	.\ecen4350_lcd_v4.c:3696: goto inputKey;
;	.\ecen4350_lcd_v4.c:3700: }
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
	.ascii " <1> Set Data Rate"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_145:
	.ascii " <2> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_146:
	.ascii "8"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_147:
	.ascii "9"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_148:
	.ascii "-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_149:
	.ascii " <2> Number of Bits"
	.db 0x0a
	.ascii "     (8 or 9 bits)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_150:
	.ascii " <3> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_151:
	.ascii "No "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_152:
	.ascii "Even "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_153:
	.ascii "Odd "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_154:
	.ascii "Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_155:
	.ascii " <3> Parity (Even)"
	.db 0x0a
	.ascii "     (Odd/None)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_156:
	.ascii " <4> Disable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_157:
	.ascii "     [Enabled]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_158:
	.ascii " <4> Enable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_159:
	.ascii "     (Disabled)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_160:
	.ascii " <0> Exit "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_161:
	.ascii "<0> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_162:
	.ascii "Exit"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_163:
	.ascii "<4> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_164:
	.ascii "Disable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_165:
	.ascii "     "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_166:
	.ascii "[Enabled]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_167:
	.ascii "UART Disabled."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_168:
	.ascii "Enable UART"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_169:
	.ascii "(Disabled)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_170:
	.ascii "<1> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_171:
	.ascii "Set Data Rate"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_172:
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
___str_173:
	.ascii "<2> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_174:
	.ascii "Number of Bits"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_175:
	.ascii "(8 or 9 bits)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_176:
	.ascii "<3> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_177:
	.ascii "Parity "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_178:
	.ascii "(Even/"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_179:
	.ascii "(Odd/None)"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_180:
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
___str_181:
	.db 0x0a
	.ascii " Disabling UART..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_182:
	.db 0x0a
	.ascii " Settings Verified:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_183:
	.ascii " Enabling UART..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_184:
	.ascii " BAUD ERROR"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_185:
	.ascii " Entering Baud..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_186:
	.ascii " BIT ERROR"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_187:
	.ascii " Entering Bits..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_188:
	.ascii " PARITY ERROR"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_189:
	.ascii " Entering Parity..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_190:
	.ascii " <1> 1200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_191:
	.ascii " <2> 2400 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_192:
	.ascii " <3> 4800 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_193:
	.ascii " <4> 9600 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_194:
	.ascii " <5> 19200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_195:
	.ascii "1200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_196:
	.ascii "2400 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_197:
	.ascii "4800 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_198:
	.ascii "9600 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_199:
	.ascii "<5> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_200:
	.ascii "19200 Baud"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_201:
	.ascii " INPUT ERROR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_202:
	.ascii "            "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_203:
	.ascii " <1> 8-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_204:
	.ascii " <2> 9-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_205:
	.ascii "8-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_206:
	.ascii "9-bit Mode"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_207:
	.db 0x0a
	.ascii " Please set the"
	.db 0x0a
	.ascii "  bit mode first."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_208:
	.ascii " <1> Even Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_209:
	.ascii " <2> Odd Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_210:
	.ascii " <3> No Parity"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_211:
	.ascii "Even Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_212:
	.ascii "Odd Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_213:
	.ascii "No Parity"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_214:
	.ascii " Something is wrong."
	.db 0x0a
	.ascii "  UART failed to set."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_215:
	.ascii "RAM POST"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_216:
	.ascii "..."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_217:
	.ascii "<D>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_218:
	.ascii "          "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_219:
	.ascii "<B>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_220:
	.ascii "<E>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_221:
	.ascii "<F>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_222:
	.ascii "<C>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_223:
	.ascii "<A>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_224:
	.ascii "<1>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_225:
	.ascii "INVALID INPUT"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_226:
	.ascii "Try again."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_227:
	.ascii "               "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
