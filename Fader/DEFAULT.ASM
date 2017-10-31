
; PICBASIC PRO(TM) Compiler 3.1.0.2, (c) 1997, 2017 ME Labs, Inc. All Rights Reserved. 
MPASMX_USED			EQU	1

#define	PBP_PATH	M:\PROGRAM FILES\PBP3_1\




        NOLIST
    ifdef PM_USED
        LIST
        include 'M16F688.INC'	; PM header
        XALL
        NOLIST
    else
        LIST
        LIST p = 16F688, r = dec, w = -302, c = 255
        INCLUDE "P16F688.INC"	; MPASM  Header
        NOLIST
    endif
        LIST


PBP_HARDWAREDEF  macro
  endm


    __config _INTRC_OSC_NOCLKOUT & _WDT_ON & _MCLRE_ON & _CP_OFF



; Define statements.
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00138	DEFINE  CODE_SIZE 4
#define		CODE_SIZE		 4

RAM_START       		EQU	00020h
RAM_END         		EQU	0016Fh
RAM_BANKS       		EQU	00003h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00120h
BANK2_END       		EQU	0016Fh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; M:\PROGRAM FILES\PBP3_1\PBPPIC14.RAM	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A00038	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_a1              		EQU	RAM_START + 018h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A0003A	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_a2              		EQU	RAM_START + 01Ah
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A0003C	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_a3              		EQU	RAM_START + 01Ch
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A0003E	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_c1              		EQU	RAM_START + 01Eh
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A00040	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_c2              		EQU	RAM_START + 020h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A00042	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_c3              		EQU	RAM_START + 022h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A00044	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_i               		EQU	RAM_START + 024h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00020	A00046	t2 var word:w1 var word:l var word:l1 var word:n0 var word:p var word
_l               		EQU	RAM_START + 026h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00020	A00048	t2 var word:w1 var word:l var word:l1 var word:n0 var word:p var word
_l1              		EQU	RAM_START + 028h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00022	A0004A	n11 var word:s1 var word:x11 var word: s5 var word:m3 var word
_m3              		EQU	RAM_START + 02Ah
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A0004C	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_n               		EQU	RAM_START + 02Ch
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00020	A0004E	t2 var word:w1 var word:l var word:l1 var word:n0 var word:p var word
_n0              		EQU	RAM_START + 02Eh
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00050	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_n1              		EQU	RAM_START + 030h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00021	A00052	 t10 var word:n10 var word
_n10             		EQU	RAM_START + 032h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00022	A00054	n11 var word:s1 var word:x11 var word: s5 var word:m3 var word
_n11             		EQU	RAM_START + 034h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00056	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_n2              		EQU	RAM_START + 036h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00020	A00058	t2 var word:w1 var word:l var word:l1 var word:n0 var word:p var word
_p               		EQU	RAM_START + 038h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00022	A0005A	n11 var word:s1 var word:x11 var word: s5 var word:m3 var word
_s1              		EQU	RAM_START + 03Ah
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00022	A0005C	n11 var word:s1 var word:x11 var word: s5 var word:m3 var word
_s5              		EQU	RAM_START + 03Ch
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A0005E	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_t               		EQU	RAM_START + 03Eh
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00060	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_t1              		EQU	RAM_START + 040h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00001	A00062	'****************************************************************
T1              		EQU	RAM_START + 042h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00021	A00064	 t10 var word:n10 var word
_t10             		EQU	RAM_START + 044h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00020	A00066	t2 var word:w1 var word:l var word:l1 var word:n0 var word:p var word
_t2              		EQU	RAM_START + 046h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00068	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_t3b             		EQU	RAM_START + 048h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A0006A	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_w               		EQU	RAM_START + 04Ah
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00020	A0006C	t2 var word:w1 var word:l var word:l1 var word:n0 var word:p var word
_w1              		EQU	RAM_START + 04Ch
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A0006E	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_w2              		EQU	RAM_START + 04Eh
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00070	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_w3              		EQU	RAM_START + 050h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00072	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_w4              		EQU	RAM_START + 052h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00074	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_w5              		EQU	RAM_START + 054h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A00076	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_x               		EQU	RAM_START + 056h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A00078	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_x1              		EQU	RAM_START + 058h
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00022	A0007A	n11 var word:s1 var word:x11 var word: s5 var word:m3 var word
_x11             		EQU	RAM_START + 05Ah
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00019	A0007C	t1 var word:x1 var word:x2 var word:t3b var word:w var word:n1 var word:w2 var word:w3 var word:w4 var word:w5 var word:n2 var word
_x2              		EQU	RAM_START + 05Ch
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00018	A0007E	n var word:x var word:t var word:y var word:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:i var word
_y               		EQU	RAM_START + 05Eh
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00139	PORTL   VAR     PORTA
_PORTL           		EQU	 PORTA
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00140	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00141	TRISL   VAR     TRISA
_TRISL           		EQU	 TRISA
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00142	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00014	a VAR portA
_a               		EQU	 PORTA
; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00015	c var portC
_c               		EQU	 PORTC
	INCLUDE	"DEFAULT.MAC"
	INCLUDE	"M:\PROGRAM FILES\PBP3_1\PBPPIC14.LIB"


; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00036	#HEADER
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00060	#CONFIG
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00129	BANK0   $0020, $007F
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00130	BANK1   $00A0, $00EF
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00131	BANK2   $0120, $016F
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00133	EEPROM  $2100, $21FF
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00135	    #ERROR "-n option (PBPL) is not supported for this device."
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00136	#ENDIF
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00137	LIBRARY "PBPPIC14"
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00138	DEFINE  CODE_SIZE 4

; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00143	include "PBPPIC14.RAM"
; M:\PROGRAM FILES\PBP3_1\DEVICES\PIC16F688.PBPINC	00147	#HEADER

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00011	trisc = 0
	MOVE?CB	000h, TRISC

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00012	trisa = 0
	MOVE?CB	000h, TRISA

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00026	do
	LABEL?L	L00005	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00027	    gosub relax
	GOSUB?L	_relax

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00028	loop
	GOTO?L	L00005
	LABEL?L	L00006	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00034	relax:

	LABEL?L	_relax	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00035	a3=7:c3=63:p=100
	MOVE?CW	007h, _a3

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00035	a3=7:c3=63:p=100
	MOVE?CW	03Fh, _c3

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00035	a3=7:c3=63:p=100
	MOVE?CW	064h, _p

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00036	for t1= 1 to 2
	MOVE?CW	001h, _t1
	LABEL?L	L00007	
	CMPGT?WCL	_t1, 002h, L00008

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00037	 for i=0 to 5 step 1
	MOVE?CW	000h, _i
	LABEL?L	L00009	
	CMPGT?WCL	_i, 005h, L00010

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00038	  lookup i, [0,1,2,3,4,5],a1 
	LOOKUP?WCLW	_i, 006h, L00001, _a1
	LURET?C	000h
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h

	LABEL?L	L00001	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00039	  lookup i, [1,2,3,4,5,6],a2
	LOOKUP?WCLW	_i, 006h, L00002, _a2
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h
	LURET?C	006h

	LABEL?L	L00002	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00040	  lookup i, [0,1,2,3,4,5],c1
	LOOKUP?WCLW	_i, 006h, L00003, _c1
	LURET?C	000h
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h

	LABEL?L	L00003	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00041	  lookup i, [1,2,3,4,5,6],c2
	LOOKUP?WCLW	_i, 006h, L00004, _c2
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h
	LURET?C	006h

	LABEL?L	L00004	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00042	   gosub fader
	GOSUB?L	_fader

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00043	 next i
	NEXT?WCL	_i, 001h, L00009
	LABEL?L	L00010	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00044	next t1
	NEXT?WCL	_t1, 001h, L00007
	LABEL?L	L00008	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00045	return
	RETURN?	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00048	fader:

	LABEL?L	_fader	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00049	for x= 0 to 1000 step 5
	MOVE?CW	000h, _x
	LABEL?L	L00011	
	CMPGT?WCL	_x, 003E8h, L00012

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00050	 a=a1:c=c1
	MOVE?WB	_a1, _a

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00050	 a=a1:c=c1
	MOVE?WB	_c1, _c

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00051	 pauseus 1000-x
	SUB?CWW	003E8h, _x, T1
	PAUSEUS?W	T1

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00052	 a=a2:c=c2
	MOVE?WB	_a2, _a

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00052	 a=a2:c=c2
	MOVE?WB	_c2, _c

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00053	 pauseus x
	PAUSEUS?W	_x

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00054	 a=a3:c=c3
	MOVE?WB	_a3, _a

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00054	 a=a3:c=c3
	MOVE?WB	_c3, _c

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00055	 pauseus p 
	PAUSEUS?W	_p

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00056	next x 
	NEXT?WCL	_x, 005h, L00011
	LABEL?L	L00012	

; M:\GITHUB\AWESOMECUBE\DEFAULT.PBP	00057	return
	RETURN?	

	END
