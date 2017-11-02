
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
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00024	A00038	forstart var word:forstop var word:c_crest var word:a_crest var word
_a_crest         		EQU	RAM_START + 018h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00023	A0003A	x1fadestep var word:fadestep var word:zzz var word:a_trough var word:c_trough var word
_a_trough        		EQU	RAM_START + 01Ah
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00024	A0003C	forstart var word:forstop var word:c_crest var word:a_crest var word
_c_crest         		EQU	RAM_START + 01Ch
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00023	A0003E	x1fadestep var word:fadestep var word:zzz var word:a_trough var word:c_trough var word
_c_trough        		EQU	RAM_START + 01Eh
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00023	A00040	x1fadestep var word:fadestep var word:zzz var word:a_trough var word:c_trough var word
_fadestep        		EQU	RAM_START + 020h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00024	A00042	forstart var word:forstop var word:c_crest var word:a_crest var word
_forstart        		EQU	RAM_START + 022h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00024	A00044	forstart var word:forstop var word:c_crest var word:a_crest var word
_forstop         		EQU	RAM_START + 024h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00017	A00046	i var word  
_i               		EQU	RAM_START + 026h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00019	A00048	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n8 var word
_n1              		EQU	RAM_START + 028h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00019	A0004A	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n8 var word
_n2              		EQU	RAM_START + 02Ah
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00019	A0004C	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n8 var word
_n3              		EQU	RAM_START + 02Ch
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00019	A0004E	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n8 var word
_n4              		EQU	RAM_START + 02Eh
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00019	A00050	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n8 var word
_n5              		EQU	RAM_START + 030h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00019	A00052	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n8 var word
_n8              		EQU	RAM_START + 032h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00025	A00054	startvalue var word:stopvalue var word
_startvalue      		EQU	RAM_START + 034h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00025	A00056	startvalue var word:stopvalue var word
_stopvalue       		EQU	RAM_START + 036h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00018	A00058	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word
_t1              		EQU	RAM_START + 038h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00018	A0005A	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word
_t2              		EQU	RAM_START + 03Ah
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00018	A0005C	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word
_t3              		EQU	RAM_START + 03Ch
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00018	A0005E	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word
_t4              		EQU	RAM_START + 03Eh
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00018	A00060	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word
_t5              		EQU	RAM_START + 040h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00021	A00062	x7 var word:x8 var word:t_on var word:t_off var word:t_on2 var word:t_on3 var word
_t_off           		EQU	RAM_START + 042h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00022	A00064	t_on1 var word:t_off1 var word:t_off2 var word:t_off3 var word:t_on4 var word:T_off4 var word
_t_off1          		EQU	RAM_START + 044h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00022	A00066	t_on1 var word:t_off1 var word:t_off2 var word:t_off3 var word:t_on4 var word:T_off4 var word
_t_off2          		EQU	RAM_START + 046h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00022	A00068	t_on1 var word:t_off1 var word:t_off2 var word:t_off3 var word:t_on4 var word:T_off4 var word
_t_off3          		EQU	RAM_START + 048h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00022	A0006A	t_on1 var word:t_off1 var word:t_off2 var word:t_off3 var word:t_on4 var word:T_off4 var word
_T_off4          		EQU	RAM_START + 04Ah
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00021	A0006C	x7 var word:x8 var word:t_on var word:t_off var word:t_on2 var word:t_on3 var word
_t_on            		EQU	RAM_START + 04Ch
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00022	A0006E	t_on1 var word:t_off1 var word:t_off2 var word:t_off3 var word:t_on4 var word:T_off4 var word
_t_on1           		EQU	RAM_START + 04Eh
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00021	A00070	x7 var word:x8 var word:t_on var word:t_off var word:t_on2 var word:t_on3 var word
_t_on2           		EQU	RAM_START + 050h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00021	A00072	x7 var word:x8 var word:t_on var word:t_off var word:t_on2 var word:t_on3 var word
_t_on3           		EQU	RAM_START + 052h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00022	A00074	t_on1 var word:t_off1 var word:t_off2 var word:t_off3 var word:t_on4 var word:T_off4 var word
_t_on4           		EQU	RAM_START + 054h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00020	A00076	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word
_x1              		EQU	RAM_START + 056h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00023	A00078	x1fadestep var word:fadestep var word:zzz var word:a_trough var word:c_trough var word
_x1fadestep      		EQU	RAM_START + 058h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00020	A0007A	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word
_x2              		EQU	RAM_START + 05Ah
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00020	A0007C	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word
_x3              		EQU	RAM_START + 05Ch
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00020	A0007E	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word
_x4              		EQU	RAM_START + 05Eh
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00020	A000A0	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word
_x5              		EQU	RAM_START + 080h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00020	A000A2	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word
_x6              		EQU	RAM_START + 082h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00021	A000A4	x7 var word:x8 var word:t_on var word:t_off var word:t_on2 var word:t_on3 var word
_x7              		EQU	RAM_START + 084h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00021	A000A6	x7 var word:x8 var word:t_on var word:t_off var word:t_on2 var word:t_on3 var word
_x8              		EQU	RAM_START + 086h
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00023	A000A8	x1fadestep var word:fadestep var word:zzz var word:a_trough var word:c_trough var word
_zzz             		EQU	RAM_START + 088h
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00145	PORTL   VAR     PORTA
_PORTL           		EQU	 PORTA
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00146	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00147	TRISL   VAR     TRISA
_TRISL           		EQU	 TRISA
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00148	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00015	a var porta               
_a               		EQU	 PORTA
; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00016	c var portC
_c               		EQU	 PORTC
	INCLUDE	"L'S MASTER HALF LIT.MAC"
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

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00011	trisc = 0
	MOVE?CB	000h, TRISC

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00012	trisa = 0
	MOVE?CB	000h, TRISA

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00026	start:

	LABEL?L	_start	

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00028	for zzz = 0 to 9
	MOVE?CW	000h, _zzz
	LABEL?L	L00005	
	CMPGT?WCL	_zzz, 009h, L00006

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00032	       lookup zzz, [63,63,63,63,63,63,63,63,63,63], c_crest 'these leds are half lit
	LOOKUP?WCLW	_zzz, 00Ah, L00001, _c_crest
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh
	LURET?C	03Fh

	LABEL?L	L00001	

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00033	       lookup zzz, [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7], a_crest '
	LOOKUP?WCLW	_zzz, 00Ah, L00002, _a_crest
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h
	LURET?C	007h

	LABEL?L	L00002	

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00034	       lookup zzz, [ 0, 4, 2, 1, 8,16,32, 0, 0, 0], c_trough' these leds are full lit
	LOOKUP?WCLW	_zzz, 00Ah, L00003, _c_trough
	LURET?C	000h
	LURET?C	004h
	LURET?C	002h
	LURET?C	001h
	LURET?C	008h
	LURET?C	010h
	LURET?C	020h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h

	LABEL?L	L00003	

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00035	       lookup zzz, [ 0, 0, 0, 0, 0, 0, 0, 4 , 2, 1], a_trough
	LOOKUP?WCLW	_zzz, 00Ah, L00004, _a_trough
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	004h
	LURET?C	002h
	LURET?C	001h

	LABEL?L	L00004	

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00037	  t_on=900
	MOVE?CW	00384h, _t_on

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00038	    for i = 0 to 250 step 20
	MOVE?CW	000h, _i
	LABEL?L	L00007	
	CMPGT?WCL	_i, 0FAh, L00008

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00039	        t_off = 8000 - t_on 
	SUB?CWW	01F40h, _t_on, _t_off

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00040	            c = c_crest
	MOVE?WB	_c_crest, _c

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00041	            a = a_crest
	MOVE?WB	_a_crest, _a

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00042	            pauseus t_on                     
	PAUSEUS?W	_t_on

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00043	            c = c_trough
	MOVE?WB	_c_trough, _c

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00044	            a = a_trough
	MOVE?WB	_a_trough, _a

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00045	            pauseus t_off
	PAUSEUS?W	_t_off

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00046	    next i
	NEXT?WCL	_i, 014h, L00007
	LABEL?L	L00008	

; U:\AWESOMECUBE-MASTER\HALFLIT\L'S MASTER HALF LIT.PBP	00047	next zzz
	NEXT?WCL	_zzz, 001h, L00005
	LABEL?L	L00006	

	END
