
; PICBASIC PRO(TM) Compiler 3.0.7.2, (c) 1998, 2013 microEngineering Labs, Inc. All Rights Reserved. 
MPASMWIN_USED			EQU	1

#define	PBP_PATH	C:\PROGRAM FILES\PBP3\




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


    ifdef PM_USED
        device  pic16F688, intrc_osc_noclkout, wdt_on, mclr_on, protect_off
    else
        __config _INTRC_OSC_NOCLKOUT & _WDT_ON & _MCLRE_ON & _CP_OFF
    endif



; Define statements.
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00144	DEFINE  CODE_SIZE 4
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

; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PROGRAM FILES\PBP3\PBPPIC14.RAM	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A00038	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_a1              		EQU	RAM_START + 018h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A0003A	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_a2              		EQU	RAM_START + 01Ah
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A0003C	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_a3              		EQU	RAM_START + 01Ch
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00019	A0003E	fadestep var word:c_fadein var word:a_fadein var word:c_fadeout var word:a_fadeout var word 
_a_fadein        		EQU	RAM_START + 01Eh
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00019	A00040	fadestep var word:c_fadein var word:a_fadein var word:c_fadeout var word:a_fadeout var word 
_a_fadeout       		EQU	RAM_START + 020h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A00042	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_c1              		EQU	RAM_START + 022h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A00044	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_c2              		EQU	RAM_START + 024h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A00046	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_c3              		EQU	RAM_START + 026h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00019	A00048	fadestep var word:c_fadein var word:a_fadein var word:c_fadeout var word:a_fadeout var word 
_c_fadein        		EQU	RAM_START + 028h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00019	A0004A	fadestep var word:c_fadein var word:a_fadein var word:c_fadeout var word:a_fadeout var word 
_c_fadeout       		EQU	RAM_START + 02Ah
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00019	A0004C	fadestep var word:c_fadein var word:a_fadein var word:c_fadeout var word:a_fadeout var word 
_fadestep        		EQU	RAM_START + 02Ch
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A0004E	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_i               		EQU	RAM_START + 02Eh
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A00050	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_p               		EQU	RAM_START + 030h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A00052	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_t_off1          		EQU	RAM_START + 032h
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00018	A00054	a3 var word:c3 var word:p var word:i var word:t_on1 var word:t_off1 var word:a1 var word:c1 var word:a2 var word:c2 var word
_t_on1           		EQU	RAM_START + 034h
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00145	PORTL   VAR     PORTA
_PORTL           		EQU	 PORTA
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00146	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00147	TRISL   VAR     TRISA
_TRISL           		EQU	 TRISA
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00148	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00015	a VAR portA
_a               		EQU	 PORTA
; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00017	c var portC
_c               		EQU	 PORTC
	INCLUDE	"CHASE.MAC"
	INCLUDE	"C:\PROGRAM FILES\PBP3\PBPPIC14.LIB"


; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00036	#HEADER
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00061	#CONFIG
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00135	BANK0   $0020, $007F
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00136	BANK1   $00A0, $00EF
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00137	BANK2   $0120, $016F
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00139	EEPROM  $2100, $21FF
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00141	    #ERROR "-n option (PBPL) is not supported for this device."
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00142	#ENDIF
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00143	LIBRARY "PBPPIC14"
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00144	DEFINE  CODE_SIZE 4

; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00149	include "PBPPIC14.RAM"
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00153	#HEADER

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00011	trisc = 0
	MOVE?CB	000h, TRISC

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00013	trisa = 0
	MOVE?CB	000h, TRISA

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00021	waves:

	LABEL?L	_waves	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00023	a3=7:c3=63:p=1
	MOVE?CW	007h, _a3

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00023	a3=7:c3=63:p=1
	MOVE?CW	03Fh, _c3

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00023	a3=7:c3=63:p=1
	MOVE?CW	001h, _p

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00025	for i= 0 to 4 step 1
	MOVE?CW	000h, _i
	LABEL?L	L00005	
	CMPGT?WCL	_i, 004h, L00006

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00027	lookup i,[0,0,4,2,1],a1
	LOOKUP?WCLW	_i, 005h, L00001, _a1
	LURET?C	000h
	LURET?C	000h
	LURET?C	004h
	LURET?C	002h
	LURET?C	001h

	LABEL?L	L00001	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00029	lookup i,[4,34,17,8,0],c1
	LOOKUP?WCLW	_i, 005h, L00002, _c1
	LURET?C	004h
	LURET?C	022h
	LURET?C	011h
	LURET?C	008h
	LURET?C	000h

	LABEL?L	L00002	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00031	lookup i,[0,4,2,1,0],a2
	LOOKUP?WCLW	_i, 005h, L00003, _a2
	LURET?C	000h
	LURET?C	004h
	LURET?C	002h
	LURET?C	001h
	LURET?C	000h

	LABEL?L	L00003	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00033	lookup i,[34,17,8,0,4],c2
	LOOKUP?WCLW	_i, 005h, L00004, _c2
	LURET?C	022h
	LURET?C	011h
	LURET?C	008h
	LURET?C	000h
	LURET?C	004h

	LABEL?L	L00004	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00035	gosub fader
	GOSUB?L	_fader

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00037	next i
	NEXT?WCL	_i, 001h, L00005
	LABEL?L	L00006	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00039	return
	RETURN?	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00041	Fader:

	LABEL?L	_fader	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00042	for t_on1 = 0 to 8000 step fadestep
	MOVE?CW	000h, _t_on1
	LABEL?L	L00007	
	CMPGT?WCL	_t_on1, 01F40h, L00008

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00043	                                        t_off1 = 8000 - t_on1
	SUB?CWW	01F40h, _t_on1, _t_off1

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00044	                                        c = c_fadein
	MOVE?WB	_c_fadein, _c

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00045	                                        a = a_fadein
	MOVE?WB	_a_fadein, _a

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00046	                                        pauseus t_on1
	PAUSEUS?W	_t_on1

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00047	                                        c = c_fadeout
	MOVE?WB	_c_fadeout, _c

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00048	                                        a = a_fadeout        
	MOVE?WB	_a_fadeout, _a

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00049	                                        pauseus t_off1
	PAUSEUS?W	_t_off1

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00050	                                     next t_on1
	NEXT?WWL	_t_on1, _fadestep, L00007
	LABEL?L	L00008	

; U:\AWESOMECUBE-MASTER\RANDOM\CHASE.PBP	00051	                                    return
	RETURN?	

	END
