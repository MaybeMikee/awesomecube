
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
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00022	A00038	:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:p var word
_a1              		EQU	RAM_START + 018h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00022	A0003A	:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:p var word
_a2              		EQU	RAM_START + 01Ah
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00022	A0003C	:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:p var word
_a3              		EQU	RAM_START + 01Ch
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00029	A0003E	forstart var word:forstop var word:c_crest var word:a_crest var word
_a_crest         		EQU	RAM_START + 01Eh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00026	A00040	a_fadein var word:a_fadeout var word
_a_fadein        		EQU	RAM_START + 020h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00026	A00042	a_fadein var word:a_fadeout var word
_a_fadeout       		EQU	RAM_START + 022h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00028	A00044	a_trough var word:c_trough var word
_a_trough        		EQU	RAM_START + 024h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00022	A00046	:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:p var word
_c1              		EQU	RAM_START + 026h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00022	A00048	:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:p var word
_c2              		EQU	RAM_START + 028h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00022	A0004A	:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:p var word
_c3              		EQU	RAM_START + 02Ah
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00029	A0004C	forstart var word:forstop var word:c_crest var word:a_crest var word
_c_crest         		EQU	RAM_START + 02Ch
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A0004E	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_c_fadein        		EQU	RAM_START + 02Eh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A00050	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_c_fadeout       		EQU	RAM_START + 030h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00028	A00052	a_trough var word:c_trough var word
_c_trough        		EQU	RAM_START + 032h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00027	A00054	x1fadestep var word:fadestep var word
_fadestep        		EQU	RAM_START + 034h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00029	A00056	forstart var word:forstop var word:c_crest var word:a_crest var word
_forstart        		EQU	RAM_START + 036h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00029	A00058	forstart var word:forstop var word:c_crest var word:a_crest var word
_forstop         		EQU	RAM_START + 038h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A0005A	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_i               		EQU	RAM_START + 03Ah
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00021	A0005C	m var word:m1 var word:m2 var word:m3 var word
_m               		EQU	RAM_START + 03Ch
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00021	A0005E	m var word:m1 var word:m2 var word:m3 var word
_m1              		EQU	RAM_START + 03Eh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00021	A00060	m var word:m1 var word:m2 var word:m3 var word
_m2              		EQU	RAM_START + 040h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00021	A00062	m var word:m1 var word:m2 var word:m3 var word
_m3              		EQU	RAM_START + 042h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A00064	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n1              		EQU	RAM_START + 044h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00023	A00066	s1 var word:n11 var word:x11 var word
_n11             		EQU	RAM_START + 046h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A00068	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n2              		EQU	RAM_START + 048h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A0006A	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n3              		EQU	RAM_START + 04Ah
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A0006C	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n4              		EQU	RAM_START + 04Ch
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A0006E	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n5              		EQU	RAM_START + 04Eh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A00070	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n6              		EQU	RAM_START + 050h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A00072	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n7              		EQU	RAM_START + 052h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A00074	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n8              		EQU	RAM_START + 054h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00019	A00076	n1 var word:n2 var word:n3 var word:n4 var word:n5 var word:n6 var word:n7 var word:n8 var word:n9 var word
_n9              		EQU	RAM_START + 056h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00022	A00078	:a1 var word:a2 var word:c1 var word:c2 var word:a3 var word:c3 var word:p var word
_p               		EQU	RAM_START + 058h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00023	A0007A	s1 var word:n11 var word:x11 var word
_s1              		EQU	RAM_START + 05Ah
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00024	A0007C	t_inc var word:t_dec var word:speed var word
_speed           		EQU	RAM_START + 05Ch
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00030	A0007E	startvalue var word:stopvalue var word
_startvalue      		EQU	RAM_START + 05Eh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00030	A000A0	startvalue var word:stopvalue var word
_stopvalue       		EQU	RAM_START + 080h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000A2	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t1              		EQU	RAM_START + 082h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00001	A000A4	'****************************************************************
T1              		EQU	RAM_START + 084h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000A6	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t10             		EQU	RAM_START + 086h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000A8	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t11             		EQU	RAM_START + 088h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000AA	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t12             		EQU	RAM_START + 08Ah
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000AC	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t13             		EQU	RAM_START + 08Ch
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000AE	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t2              		EQU	RAM_START + 08Eh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000B0	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t3              		EQU	RAM_START + 090h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000B2	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t4              		EQU	RAM_START + 092h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000B4	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t5              		EQU	RAM_START + 094h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000B6	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t6              		EQU	RAM_START + 096h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000B8	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t7              		EQU	RAM_START + 098h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000BA	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t8              		EQU	RAM_START + 09Ah
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00018	A000BC	t1 var word:t2 var word:t3 var word:t4 var word:t5 var word:t6 var word:t7 var word:t8 var word:t9 var word:t10 var word:t11 var word:t12 var word:t13 var word
_t9              		EQU	RAM_START + 09Ch
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00024	A000BE	t_inc var word:t_dec var word:speed var word
_t_dec           		EQU	RAM_START + 09Eh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00024	A000C0	t_inc var word:t_dec var word:speed var word
_t_inc           		EQU	RAM_START + 0A0h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A000C2	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_t_off           		EQU	RAM_START + 0A2h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A000C4	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_t_off1          		EQU	RAM_START + 0A4h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A000C6	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_t_on            		EQU	RAM_START + 0A6h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A000C8	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_t_on1           		EQU	RAM_START + 0A8h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00017	A000CA	w1 var word:w2 var word:w3 var word:w4 var word:w5 var word:w6 var word:w7 var word
_w1              		EQU	RAM_START + 0AAh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00017	A000CC	w1 var word:w2 var word:w3 var word:w4 var word:w5 var word:w6 var word:w7 var word
_w2              		EQU	RAM_START + 0ACh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00017	A000CE	w1 var word:w2 var word:w3 var word:w4 var word:w5 var word:w6 var word:w7 var word
_w3              		EQU	RAM_START + 0AEh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00017	A000D0	w1 var word:w2 var word:w3 var word:w4 var word:w5 var word:w6 var word:w7 var word
_w4              		EQU	RAM_START + 0B0h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00017	A000D2	w1 var word:w2 var word:w3 var word:w4 var word:w5 var word:w6 var word:w7 var word
_w5              		EQU	RAM_START + 0B2h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00017	A000D4	w1 var word:w2 var word:w3 var word:w4 var word:w5 var word:w6 var word:w7 var word
_w6              		EQU	RAM_START + 0B4h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00017	A000D6	w1 var word:w2 var word:w3 var word:w4 var word:w5 var word:w6 var word:w7 var word
_w7              		EQU	RAM_START + 0B6h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000D8	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x1              		EQU	RAM_START + 0B8h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000DA	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x10             		EQU	RAM_START + 0BAh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00023	A000DC	s1 var word:n11 var word:x11 var word
_x11             		EQU	RAM_START + 0BCh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00027	A000DE	x1fadestep var word:fadestep var word
_x1fadestep      		EQU	RAM_START + 0BEh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000E0	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x2              		EQU	RAM_START + 0C0h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000E2	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x3              		EQU	RAM_START + 0C2h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000E4	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x4              		EQU	RAM_START + 0C4h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000E6	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x5              		EQU	RAM_START + 0C6h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000E8	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x6              		EQU	RAM_START + 0C8h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000EA	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x7              		EQU	RAM_START + 0CAh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000EC	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x8              		EQU	RAM_START + 0CCh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00020	A000EE	x1 var word:x2 var word:x3 var word:x4 var word:x5 var word:x6 var word:x7 var word:x8 var word:x9 var word:x10 var word
_x9              		EQU	RAM_START + 0CEh
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A00120	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_xxx             		EQU	RAM_START + 00100h
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00025	A00122	t_on var word:t_off var word:t_on1 var word:t_off1 var word:i var word:zzz var word:xxx var word:c_fadein var word:c_fadeout var word
_zzz             		EQU	RAM_START + 00102h
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00145	PORTL   VAR     PORTA
_PORTL           		EQU	 PORTA
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00146	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00147	TRISL   VAR     TRISA
_TRISL           		EQU	 TRISA
; C:\PROGRAM FILES\PBP3\DEVICES\PIC16F688.PBPINC	00148	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00014	A VAR portA
_A               		EQU	 PORTA
; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00015	C var portC
_C               		EQU	 PORTC
	INCLUDE	"MIKE FINAL PROGRAM.MAC"
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

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00011	trisc = 0
	MOVE?CB	000h, TRISC

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00012	trisa = 0
	MOVE?CB	000h, TRISA

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00032	do
	LABEL?L	L00029	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00033	        random m
	RANDOM?W	_m

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00034	        m1=m//17
	MOD?WCW	_m, 011h, _m1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00035	        m2=m1+1
	ADD?WCW	_m1, 001h, _m2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00037	        select case m2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00039	                case 1
	CMPNE?WCL	_m2, 001h, L00033

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00040	                    x2=x2+1
	ADD?WCW	_x2, 001h, _x2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00041	                    if x2>5 then
	CMPLE?WCL	_x2, 005h, L00034

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00042	                        x2=0
	MOVE?CW	000h, _x2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00043	                    endif
	LABEL?L	L00034	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00045	                    lookup2 x2, [90,250,100,50,150], t1 
	LOOKUP2?WCLW	_x2, 005h, L00001, _t1
	LU2RET?C	05Ah
	LU2RET?C	0FAh
	LU2RET?C	064h
	LU2RET?C	032h
	LU2RET?C	096h

	LABEL?L	L00001	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00047	                    Random x3 
	RANDOM?W	_x3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00048	                    x4=x3//10
	MOD?WCW	_x3, 00Ah, _x4

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00049	                    x5=x4+1
	ADD?WCW	_x4, 001h, _x5

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00050	                    for n1=0 to x5
	MOVE?CW	000h, _n1
	LABEL?L	L00036	
	CMPGT?WWL	_n1, _x5, L00037

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00051	                        gosub left_to_right
	GOSUB?L	_left_to_right

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00052	                    next n1
	NEXT?WCL	_n1, 001h, L00036
	LABEL?L	L00037	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00053	                case 2
	GOTO?L	L00032
	LABEL?L	L00033	
	CMPNE?WCL	_m2, 002h, L00038

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00054	                    x1=x1+1
	ADD?WCW	_x1, 001h, _x1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00055	                    if x1>5 then 
	CMPLE?WCL	_x1, 005h, L00039

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00056	                        x1=0
	MOVE?CW	000h, _x1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00057	                    endif
	LABEL?L	L00039	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00059	                    lookup2 x1, [80,200,120,150,70,50], t2
	LOOKUP2?WCLW	_x1, 006h, L00002, _t2
	LU2RET?C	050h
	LU2RET?C	0C8h
	LU2RET?C	078h
	LU2RET?C	096h
	LU2RET?C	046h
	LU2RET?C	032h

	LABEL?L	L00002	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00061	                    for n5=1 to 5    
	MOVE?CW	001h, _n5
	LABEL?L	L00041	
	CMPGT?WCL	_n5, 005h, L00042

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00062	                        gosub rows
	GOSUB?L	_rows

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00063	                    next n5
	NEXT?WCL	_n5, 001h, L00041
	LABEL?L	L00042	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00064	                case 3
	GOTO?L	L00032
	LABEL?L	L00038	
	CMPNE?WCL	_m2, 003h, L00043

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00066	                x4=x4+1
	ADD?WCW	_x4, 001h, _x4

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00067	                    if x4>5 then
	CMPLE?WCL	_x4, 005h, L00044

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00068	                        x4=0
	MOVE?CW	000h, _x4

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00069	                    endif
	LABEL?L	L00044	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00071	                    lookup2 x4, [90,250,100,50,150], t3
	LOOKUP2?WCLW	_x4, 005h, L00003, _t3
	LU2RET?C	05Ah
	LU2RET?C	0FAh
	LU2RET?C	064h
	LU2RET?C	032h
	LU2RET?C	096h

	LABEL?L	L00003	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00073	                    Random x6 
	RANDOM?W	_x6

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00074	                    x7=x6//10
	MOD?WCW	_x6, 00Ah, _x7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00075	                    x8=x7+1
	ADD?WCW	_x7, 001h, _x8

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00076	                    for n6=1 to x8    
	MOVE?CW	001h, _n6
	LABEL?L	L00046	
	CMPGT?WWL	_n6, _x8, L00047

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00077	                        gosub on_off
	GOSUB?L	_on_off

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00078	                    next n6
	NEXT?WCL	_n6, 001h, L00046
	LABEL?L	L00047	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00079	                case 4
	GOTO?L	L00032
	LABEL?L	L00043	
	CMPNE?WCL	_m2, 004h, L00048

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00080	                    For t5 = 400 to 150 step -50
	MOVE?CW	00190h, _t5
	LABEL?L	L00049	
	CMPLT?WCL	_t5, 096h, L00050

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00081	                        gosub center_X_diamond
	GOSUB?L	_center_X_diamond

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00082	                    Next t5
	NEXTM?WCL	_t5, 032h, L00049
	LABEL?L	L00050	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00084	                    For t5 = 150 to 90 step -10
	MOVE?CW	096h, _t5
	LABEL?L	L00051	
	CMPLT?WCL	_t5, 05Ah, L00052

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00085	                        gosub center_X_diamond
	GOSUB?L	_center_X_diamond

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00086	                    Next t5
	NEXTM?WCL	_t5, 00Ah, L00051
	LABEL?L	L00052	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00088	                    For n3 = 1 to 7
	MOVE?CW	001h, _n3
	LABEL?L	L00053	
	CMPGT?WCL	_n3, 007h, L00054

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00089	                        gosub center_X_diamond
	GOSUB?L	_center_X_diamond

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00090	                    Next n3
	NEXT?WCL	_n3, 001h, L00053
	LABEL?L	L00054	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00092	                Case 5
	GOTO?L	L00032
	LABEL?L	L00048	
	CMPNE?WCL	_m2, 005h, L00055

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00093	                for n5=1 to 4
	MOVE?CW	001h, _n5
	LABEL?L	L00056	
	CMPGT?WCL	_n5, 004h, L00057

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00094	                    gosub random_number
	GOSUB?L	_random_number

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00095	                next n5
	NEXT?WCL	_n5, 001h, L00056
	LABEL?L	L00057	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00097	                case 6
	GOTO?L	L00032
	LABEL?L	L00055	
	CMPNE?WCL	_m2, 006h, L00058

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00098	                    x9=x9+1
	ADD?WCW	_x9, 001h, _x9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00099	                    if x9>5 then 
	CMPLE?WCL	_x9, 005h, L00059

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00100	                    x9=0
	MOVE?CW	000h, _x9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00101	                    endif
	LABEL?L	L00059	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00103	                    lookup2 x9, [80,120,100,60,70,65], t6
	LOOKUP2?WCLW	_x9, 006h, L00004, _t6
	LU2RET?C	050h
	LU2RET?C	078h
	LU2RET?C	064h
	LU2RET?C	03Ch
	LU2RET?C	046h
	LU2RET?C	041h

	LABEL?L	L00004	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00105	                    for n6=1 to 5    
	MOVE?CW	001h, _n6
	LABEL?L	L00061	
	CMPGT?WCL	_n6, 005h, L00062

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00106	                        gosub X
	GOSUB?L	_X

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00107	                    next n6
	NEXT?WCL	_n6, 001h, L00061
	LABEL?L	L00062	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00108	                case 7
	GOTO?L	L00032
	LABEL?L	L00058	
	CMPNE?WCL	_m2, 007h, L00063

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00109	                   for n7=1 to 4
	MOVE?CW	001h, _n7
	LABEL?L	L00064	
	CMPGT?WCL	_n7, 004h, L00065

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00110	                    gosub Around_the_Cube
	GOSUB?L	_Around_the_Cube

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00111	                   next n7
	NEXT?WCL	_n7, 001h, L00064
	LABEL?L	L00065	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00112	                case 8
	GOTO?L	L00032
	LABEL?L	L00063	
	CMPNE?WCL	_m2, 008h, L00066

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00113	                    for zzz = 0 to 9
	MOVE?CW	000h, _zzz
	LABEL?L	L00067	
	CMPGT?WCL	_zzz, 009h, L00068

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00114	                        lookup zzz, [63,63,63,63,63,63,63,63,63,63], c_crest 'these leds are half lit
	LOOKUP?WCLW	_zzz, 00Ah, L00005, _c_crest
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

	LABEL?L	L00005	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00115	                        lookup zzz, [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7], a_crest '
	LOOKUP?WCLW	_zzz, 00Ah, L00006, _a_crest
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

	LABEL?L	L00006	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00116	                        lookup zzz, [ 0, 4, 2, 1, 8,16,32, 0, 0, 0], c_trough' these leds are full lit
	LOOKUP?WCLW	_zzz, 00Ah, L00007, _c_trough
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

	LABEL?L	L00007	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00117	                        lookup zzz, [ 0, 0, 0, 0, 0, 0, 0, 4 , 2, 1], a_trough
	LOOKUP?WCLW	_zzz, 00Ah, L00008, _a_trough
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

	LABEL?L	L00008	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00118	                        gosub Halflit
	GOSUB?L	_Halflit

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00119	                    next zzz
	NEXT?WCL	_zzz, 001h, L00067
	LABEL?L	L00068	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00120	                case 9
	GOTO?L	L00032
	LABEL?L	L00066	
	CMPNE?WCL	_m2, 009h, L00069

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00121	                    for xxx = 0 to 9
	MOVE?CW	000h, _xxx
	LABEL?L	L00070	
	CMPGT?WCL	_xxx, 009h, L00071

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00122	                        x1fadestep=x1fadestep+1   
	ADD?WCW	_x1fadestep, 001h, _x1fadestep

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00123	                        if x1fadestep>5 then
	CMPLE?WCL	_x1fadestep, 005h, L00072

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00124	                            x1fadestep=0
	MOVE?CW	000h, _x1fadestep

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00125	                        endif
	LABEL?L	L00072	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00126	                        lookup2 x1fadestep, [100,150,200,300,200], fadestep   
	LOOKUP2?WCLW	_x1fadestep, 005h, L00009, _fadestep
	LU2RET?C	064h
	LU2RET?C	096h
	LU2RET?C	0C8h
	LU2RET?C	0012Ch
	LU2RET?C	0C8h

	LABEL?L	L00009	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00127	                        lookup xxx, [0,6,7,15,31,63,0,0,0,0], c_fadein
	LOOKUP?WCLW	_xxx, 00Ah, L00010, _c_fadein
	LURET?C	000h
	LURET?C	006h
	LURET?C	007h
	LURET?C	00Fh
	LURET?C	01Fh
	LURET?C	03Fh
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h

	LABEL?L	L00010	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00128	                        lookup xxx, [0,0,0,4,6,7,0,0,0,0], a_fadein
	LOOKUP?WCLW	_xxx, 00Ah, L00011, _a_fadein
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	004h
	LURET?C	006h
	LURET?C	007h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h

	LABEL?L	L00011	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00129	                        lookup xxx, [0,0,6,7,15,31,63,0,0,0], c_fadeout
	LOOKUP?WCLW	_xxx, 00Ah, L00012, _c_fadeout
	LURET?C	000h
	LURET?C	000h
	LURET?C	006h
	LURET?C	007h
	LURET?C	00Fh
	LURET?C	01Fh
	LURET?C	03Fh
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h

	LABEL?L	L00012	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00130	                        lookup xxx, [0,0,0,0,0,0,0,0,0,0], a_fadeout
	LOOKUP?WCLW	_xxx, 00Ah, L00013, _a_fadeout
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h
	LURET?C	000h

	LABEL?L	L00013	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00131	                        gosub fader
	GOSUB?L	_fader

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00132	                    next xxx
	NEXT?WCL	_xxx, 001h, L00070
	LABEL?L	L00071	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00133	                Case 10
	GOTO?L	L00032
	LABEL?L	L00069	
	CMPNE?WCL	_m2, 00Ah, L00074

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00134	                 for w3=200 TO 100 STEP -50
	MOVE?CW	0C8h, _w3
	LABEL?L	L00075	
	CMPLT?WCL	_w3, 064h, L00076

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00135	                    GOSUB CORNERSPIN2
	GOSUB?L	_CORNERSPIN2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00136	                 NEXT  w3
	NEXTM?WCL	_w3, 032h, L00075
	LABEL?L	L00076	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00137	                 FOR n8=1 TO 3
	MOVE?CW	001h, _n8
	LABEL?L	L00077	
	CMPGT?WCL	_n8, 003h, L00078

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00138	                    GOSUB CORNERSPIN2
	GOSUB?L	_CORNERSPIN2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00139	                 NEXT n8
	NEXT?WCL	_n8, 001h, L00077
	LABEL?L	L00078	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00140	                Case 11
	GOTO?L	L00032
	LABEL?L	L00074	
	CMPNE?WCL	_m2, 00Bh, L00079

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00141	                    for n9=1 to 2
	MOVE?CW	001h, _n9
	LABEL?L	L00080	
	CMPGT?WCL	_n9, 002h, L00081

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00142	                        gosub juggler
	GOSUB?L	_juggler

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00143	                    next n9
	NEXT?WCL	_n9, 001h, L00080
	LABEL?L	L00081	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00144	                case 12
	GOTO?L	L00032
	LABEL?L	L00079	
	CMPNE?WCL	_m2, 00Ch, L00082

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00145	                 gosub cornersin
	GOSUB?L	_cornersin

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00147	                case 13
	GOTO?L	L00032
	LABEL?L	L00082	
	CMPNE?WCL	_m2, 00Dh, L00083

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00148	                 gosub bounce
	GOSUB?L	_bounce

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00149	                 case 14
	GOTO?L	L00032
	LABEL?L	L00083	
	CMPNE?WCL	_m2, 00Eh, L00084

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00150	                 x11=x11+1
	ADD?WCW	_x11, 001h, _x11

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00151	                    if x11>3 then
	CMPLE?WCL	_x11, 003h, L00085

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00152	                        x11=0
	MOVE?CW	000h, _x11

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00153	                    endif
	LABEL?L	L00085	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00154	              lookup2 x11, [100,150,80], s1
	LOOKUP2?WCLW	_x11, 003h, L00014, _s1
	LU2RET?C	064h
	LU2RET?C	096h
	LU2RET?C	050h

	LABEL?L	L00014	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00155	                for n11 = 1 to 8
	MOVE?CW	001h, _n11
	LABEL?L	L00087	
	CMPGT?WCL	_n11, 008h, L00088

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00156	                    gosub FourCorners
	GOSUB?L	_FourCorners

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00157	                next n11
	NEXT?WCL	_n11, 001h, L00087
	LABEL?L	L00088	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00158	                  case 15
	GOTO?L	L00032
	LABEL?L	L00084	
	CMPNE?WCL	_m2, 00Fh, L00089

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00159	                  gosub relax
	GOSUB?L	_relax

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00160	                  case 16
	GOTO?L	L00032
	LABEL?L	L00089	
	CMPNE?WCL	_m2, 010h, L00090

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00161	                  gosub arroundmiddle
	GOSUB?L	_arroundmiddle

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00162	                  case 17
	GOTO?L	L00032
	LABEL?L	L00090	
	CMPNE?WCL	_m2, 011h, L00091

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00163	                  gosub waves
	GOSUB?L	_waves

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00165	                end select
	LABEL?L	L00091	
	LABEL?L	L00032	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00166	loop
	GOTO?L	L00029
	LABEL?L	L00030	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00170	    left_to_right:

	LABEL?L	_left_to_right	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00171	        A=0:C=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00171	        A=0:C=0
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00172	        C=%000100   'C1 on
	MOVE?CB	004h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00173	        Pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00174	        C=%000010    'C1 on
	MOVE?CB	002h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00175	        pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00176	        c=%000001      'C0 on
	MOVE?CB	001h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00177	        pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00178	        c=%100000     'C5 on
	MOVE?CB	020h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00179	        Pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00180	        c=%010000     'C4 on
	MOVE?CB	010h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00181	        pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00182	        c=%001000      'C3 on
	MOVE?CB	008h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00183	        pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00184	        A=4        '4 because of bianary numbering (A2 on)
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00185	        C=0
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00186	        pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00187	        A=2                  'A1 on
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00188	        pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00189	        A=1                 'A0 on
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00190	        pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00191	    Return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00193	        rows:     

	LABEL?L	_rows	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00194	            C=%000111:A=%000     'Top Row
	MOVE?CB	007h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00194	            C=%000111:A=%000     'Top Row
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00195	            pause t2
	PAUSE?W	_t2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00196	            a=%000:c=%111000     'Middle Row
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00196	            a=%000:c=%111000     'Middle Row
	MOVE?CB	038h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00197	            pause t2
	PAUSE?W	_t2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00198	            A=%111:C=%000000     'Bottom Row
	MOVE?CB	007h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00198	            A=%111:C=%000000     'Bottom Row
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00199	            pause t2
	PAUSE?W	_t2

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00200	        return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00202	            on_off:

	LABEL?L	_on_off	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00203	                A=%111:C=%111111  'LEDs ON
	MOVE?CB	007h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00203	                A=%111:C=%111111  'LEDs ON
	MOVE?CB	03Fh, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00204	                pause t3
	PAUSE?W	_t3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00205	                A=%000:c=%000000   'LEDs Off
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00205	                A=%000:c=%000000   'LEDs Off
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00206	                pause t3
	PAUSE?W	_t3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00207	            return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00209	                center_X_diamond:

	LABEL?L	_center_X_diamond	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00210	                    C=%010000:A=%000    'center lED 
	MOVE?CB	010h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00210	                    C=%010000:A=%000    'center lED 
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00211	                    pause t5
	PAUSE?W	_t5

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00212	                    A=%101:C=%010101  '"X shape
	MOVE?CB	005h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00212	                    A=%101:C=%010101  '"X shape
	MOVE?CB	015h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00213	                    pause t5
	PAUSE?W	_t5

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00214	                    A=%010:C=%101010   ' Diamond shape
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00214	                    A=%010:C=%101010   ' Diamond shape
	MOVE?CB	02Ah, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00215	                    pause t5
	PAUSE?W	_t5

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00216	                return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00218	                    random_number:

	LABEL?L	_random_number	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00219	                        Random w3
	RANDOM?W	_w3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00220	                        w4=w3/1040
	DIV?WCW	_w3, 00410h, _w4

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00221	                        w5=10*w4+20
	MUL?CWW	00Ah, _w4, T1
	ADD?WCW	T1, 014h, _w5

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00222	                        w6=w4/9
	DIV?WCW	_w4, 009h, _w6

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00223	                        w7=10*w4
	MUL?CWW	00Ah, _w4, _w7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00224	                        a=w6
	MOVE?WB	_w6, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00225	                        c=w4
	MOVE?WB	_w4, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00226	                        pause w5
	PAUSE?W	_w5

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00227	                        a=%111
	MOVE?CB	007h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00228	                        C=%111111
	MOVE?CB	03Fh, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00229	                        pause w7
	PAUSE?W	_w7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00230	                    return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00231	                            X:

	LABEL?L	_X	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00232	                             c=%000101:a=0
	MOVE?CB	005h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00232	                             c=%000101:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00233	                             pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00234	                             c=%010000:A=0
	MOVE?CB	010h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00234	                             c=%010000:A=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00235	                             pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00236	                             C=0:A=%101
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00236	                             C=0:A=%101
	MOVE?CB	005h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00237	                             pause t1
	PAUSE?W	_t1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00238	                            return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00239	                                Around_the_Cube:

	LABEL?L	_Around_the_Cube	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00240	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00241	                                 C=%000100:A=0
	MOVE?CB	004h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00241	                                 C=%000100:A=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00242	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00243	                                 C=%000010:a=0
	MOVE?CB	002h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00243	                                 C=%000010:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00244	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00245	                                 C=%000001:a=0
	MOVE?CB	001h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00245	                                 C=%000001:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00246	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00247	                                 C=%001000:a=0
	MOVE?CB	008h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00247	                                 C=%001000:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00248	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00249	                                 C=0:a=001
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00249	                                 C=0:a=001
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00250	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00251	                                 C=0:a=010
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00251	                                 C=0:a=010
	MOVE?CB	00Ah, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00252	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00253	                                 C=0:a=100
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00253	                                 C=0:a=100
	MOVE?CB	064h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00254	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00255	                                 C=%100000:a=0
	MOVE?CB	020h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00255	                                 C=%100000:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00256	                                 pause t7
	PAUSE?W	_t7

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00257	                                 return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00258	                                    Fader:

	LABEL?L	_fader	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00259	                                     for t_on1 = 0 to 8000 step fadestep
	MOVE?CW	000h, _t_on1
	LABEL?L	L00092	
	CMPGT?WCL	_t_on1, 01F40h, L00093

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00260	                                        t_off1 = 8000 - t_on1
	SUB?CWW	01F40h, _t_on1, _t_off1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00261	                                        c = c_fadein
	MOVE?WB	_c_fadein, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00262	                                        a = a_fadein
	MOVE?WB	_a_fadein, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00263	                                        pauseus t_on1
	PAUSEUS?W	_t_on1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00264	                                        c = c_fadeout
	MOVE?WB	_c_fadeout, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00265	                                        a = a_fadeout        
	MOVE?WB	_a_fadeout, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00266	                                        pauseus t_off1
	PAUSEUS?W	_t_off1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00267	                                     next t_on1
	NEXT?WWL	_t_on1, _fadestep, L00092
	LABEL?L	L00093	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00268	                                    return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00270	                                        Halflit:

	LABEL?L	_Halflit	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00271	                                         t_on=900
	MOVE?CW	00384h, _t_on

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00272	                                         for i = 0 to 250 step 20
	MOVE?CW	000h, _i
	LABEL?L	L00094	
	CMPGT?WCL	_i, 0FAh, L00095

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00273	                                            t_off = 8000 - t_on 
	SUB?CWW	01F40h, _t_on, _t_off

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00274	                                            c = c_crest
	MOVE?WB	_c_crest, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00275	                                            a = a_crest
	MOVE?WB	_a_crest, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00276	                                            pauseus t_on                     
	PAUSEUS?W	_t_on

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00277	                                            c = c_trough
	MOVE?WB	_c_trough, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00278	                                            a = a_trough
	MOVE?WB	_a_trough, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00279	                                            pauseus t_off
	PAUSEUS?W	_t_off

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00280	                                         next i
	NEXT?WCL	_i, 014h, L00094
	LABEL?L	L00095	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00281	                                        return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00282	                                                  CORNERSPIN2:

	LABEL?L	_CORNERSPIN2	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00283	                                                      t9=80
	MOVE?CW	050h, _t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00284	                                                      c= 1
	MOVE?CB	001h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00285	                                                      a= 0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00286	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00287	                                                      c= 10
	MOVE?CB	00Ah, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00288	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00289	                                                      c= 20
	MOVE?CB	014h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00290	                                                      a= 1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00291	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00292	                                                      c= 32
	MOVE?CB	020h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00293	                                                      a= 2
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00294	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00295	                                                      c= 0
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00296	                                                      a= 4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00297	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00298	                                                      c= 4
	MOVE?CB	004h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00299	                                                      a= 0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00300	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00301	                                                      c= 34
	MOVE?CB	022h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00302	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00303	                                                      c= 17
	MOVE?CB	011h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00304	                                                      a= 4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00305	                                                      PAUSE t9 
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00306	                                                      c= 8
	MOVE?CB	008h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00307	                                                      a= 2
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00308	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00309	                                                      c= 0 
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00310	                                                      a= 1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00311	                                                      PAUSE t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00312	                                                      c= 0
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00313	                                                      a= 4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00314	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00315	                                                      c= 32
	MOVE?CB	020h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00316	                                                      a= 2
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00317	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00318	                                                      c= 20
	MOVE?CB	014h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00319	                                                      a= 1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00320	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00321	                                                      c= 10
	MOVE?CB	00Ah, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00322	                                                      a= 0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00323	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00324	                                                      c= 1
	MOVE?CB	001h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00325	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00326	                                                      c= 0
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00327	                                                      a= 1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00328	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00329	                                                      c= 8
	MOVE?CB	008h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00330	                                                      a= 2
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00331	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00332	                                                      c= 17
	MOVE?CB	011h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00333	                                                      a= 4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00334	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00335	                                                      c= 34
	MOVE?CB	022h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00336	                                                      a= 0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00337	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00338	                                                      c= 4
	MOVE?CB	004h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00339	                                                      pause t9
	PAUSE?W	_t9

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00340	                                                      return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00341	                                                        Juggler:

	LABEL?L	_juggler	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00342	                                                           for t13 = 30 to 50 step 5
	MOVE?CW	01Eh, _t13
	LABEL?L	L00096	
	CMPGT?WCL	_t13, 032h, L00097

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00343	                                                            a=2: c=0
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00343	                                                            a=2: c=0
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00344	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00345	                                                            c=16: a=0
	MOVE?CB	010h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00345	                                                            c=16: a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00346	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00347	                                                            c=2
	MOVE?CB	002h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00348	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00349	                                                            c=5
	MOVE?CB	005h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00350	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00351	                                                            c=40
	MOVE?CB	028h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00352	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00353	                                                            c=0: a=5
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00353	                                                            c=0: a=5
	MOVE?CB	005h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00354	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00355	                                                           next t13
	NEXT?WCL	_t13, 005h, L00096
	LABEL?L	L00097	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00356	                                                           for t13= 50 to 100 step 10
	MOVE?CW	032h, _t13
	LABEL?L	L00098	
	CMPGT?WCL	_t13, 064h, L00099

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00357	                                                            a=2: c=0
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00357	                                                            a=2: c=0
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00358	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00359	                                                            c=16: a=0
	MOVE?CB	010h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00359	                                                            c=16: a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00360	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00361	                                                            c=2
	MOVE?CB	002h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00362	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00363	                                                            c=5
	MOVE?CB	005h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00364	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00365	                                                            c=40
	MOVE?CB	028h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00366	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00367	                                                            c=0: a=5
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00367	                                                            c=0: a=5
	MOVE?CB	005h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00368	                                                            pause t13
	PAUSE?W	_t13

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00369	                                                           next t13
	NEXT?WCL	_t13, 00Ah, L00098
	LABEL?L	L00099	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00370	                                                          return                                               
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00371	cornersin:

	LABEL?L	_cornersin	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00372	  for x4=110 to 10  step -10
	MOVE?CW	06Eh, _x4
	LABEL?L	L00100	
	CMPLT?WCL	_x4, 00Ah, L00101

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00373	    for x5=0 to 8
	MOVE?CW	000h, _x5
	LABEL?L	L00102	
	CMPGT?WCL	_x5, 008h, L00103

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00374	     gosub cornersinsub
	GOSUB?L	_cornersinsub

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00375	    next x5
	NEXT?WCL	_x5, 001h, L00102
	LABEL?L	L00103	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00376	   next x4
	NEXTM?WCL	_x4, 00Ah, L00100
	LABEL?L	L00101	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00377	  for x6= 1 to 25 step 1
	MOVE?CW	001h, _x6
	LABEL?L	L00104	
	CMPGT?WCL	_x6, 019h, L00105

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00378	    x4=10
	MOVE?CW	00Ah, _x4

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00379	   for x5=0 to 8
	MOVE?CW	000h, _x5
	LABEL?L	L00106	
	CMPGT?WCL	_x5, 008h, L00107

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00380	    gosub cornersinsub
	GOSUB?L	_cornersinsub

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00381	   next x5
	NEXT?WCL	_x5, 001h, L00106
	LABEL?L	L00107	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00382	  next x6
	NEXT?WCL	_x6, 001h, L00104
	LABEL?L	L00105	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00383	  for x4=10 to 110 step 10
	MOVE?CW	00Ah, _x4
	LABEL?L	L00108	
	CMPGT?WCL	_x4, 06Eh, L00109

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00384	    for x5=0 to 8
	MOVE?CW	000h, _x5
	LABEL?L	L00110	
	CMPGT?WCL	_x5, 008h, L00111

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00385	     gosub cornersinsub
	GOSUB?L	_cornersinsub

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00386	    next x5
	NEXT?WCL	_x5, 001h, L00110
	LABEL?L	L00111	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00387	  next  
	NEXT?WCL	_x4, 00Ah, L00108
	LABEL?L	L00109	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00388	return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00390	cornersinsub:

	LABEL?L	_cornersinsub	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00391	 for x7=1 to x4 step 1
	MOVE?CW	001h, _x7
	LABEL?L	L00112	
	CMPGT?WWL	_x7, _x4, L00113

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00392	    lookup x5,[1,1,5,7,7,6,6,2,0],a
	LOOKUP?WCLB	_x5, 009h, L00015, _A
	LURET?C	001h
	LURET?C	001h
	LURET?C	005h
	LURET?C	007h
	LURET?C	007h
	LURET?C	006h
	LURET?C	006h
	LURET?C	002h
	LURET?C	000h

	LABEL?L	L00015	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00393	    lookup x5,[4,44,45,47,63,59,19,18,16],c
	LOOKUP?WCLB	_x5, 009h, L00016, _C
	LURET?C	004h
	LURET?C	02Ch
	LURET?C	02Dh
	LURET?C	02Fh
	LURET?C	03Fh
	LURET?C	03Bh
	LURET?C	013h
	LURET?C	012h
	LURET?C	010h

	LABEL?L	L00016	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00394	    pauseus 1000
	PAUSEUS?C	003E8h

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00395	    a=7
	MOVE?CB	007h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00396	    c=63
	MOVE?CB	03Fh, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00397	 next x7
	NEXT?WCL	_x7, 001h, L00112
	LABEL?L	L00113	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00398	return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00400	bounce:

	LABEL?L	_bounce	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00401	t12= 100
	MOVE?CW	064h, _t12

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00402	c=%000011:a=%110
	MOVE?CB	003h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00402	c=%000011:a=%110
	MOVE?CB	006h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00403	pause t12
	PAUSE?W	_t12

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00404	c=%111000: a=0
	MOVE?CB	038h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00404	c=%111000: a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00405	pause t12
	PAUSE?W	_t12

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00406	c=%000110:a=3
	MOVE?CB	006h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00406	c=%000110:a=3
	MOVE?CB	003h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00407	pause t12
	PAUSE?W	_t12

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00408	c=%111000: a=0
	MOVE?CB	038h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00408	c=%111000: a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00409	pause t12
	PAUSE?W	_t12

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00410	return
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00412	FourCorners:

	LABEL?L	_FourCorners	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00413	c=%100100:a=4
	MOVE?CB	024h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00413	c=%100100:a=4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00414	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00415	c=%000010:a=4
	MOVE?CB	002h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00415	c=%000010:a=4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00416	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00417	c=%010001:a=4
	MOVE?CB	011h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00417	c=%010001:a=4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00418	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00419	c=%001000:a=4
	MOVE?CB	008h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00419	c=%001000:a=4
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00420	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00421	c=%000000:A=7
	MOVE?CB	000h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00421	c=%000000:A=7
	MOVE?CB	007h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00422	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00423	c=%100000:a=1
	MOVE?CB	020h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00423	c=%100000:a=1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00424	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00425	c=%010100:a=1
	MOVE?CB	014h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00425	c=%010100:a=1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00426	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00427	c=%000010:a=1
	MOVE?CB	002h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00427	c=%000010:a=1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00428	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00429	c=%001001:a=1
	MOVE?CB	009h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00429	c=%001001:a=1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00430	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00431	c=%000001:a=2
	MOVE?CB	001h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00431	c=%000001:a=2
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00432	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00433	c=%010001:a=4                                 
	MOVE?CB	011h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00433	c=%010001:a=4                                 
	MOVE?CB	004h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00434	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00435	c=%100001:a=0
	MOVE?CB	021h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00435	c=%100001:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00436	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00437	c=%000111:a=0
	MOVE?CB	007h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00437	c=%000111:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00438	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00439	c=%001100:a=0
	MOVE?CB	00Ch, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00439	c=%001100:a=0
	MOVE?CB	000h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00440	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00441	c=%010100:a=1
	MOVE?CB	014h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00441	c=%010100:a=1
	MOVE?CB	001h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00442	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00443	c=%000100:a=2
	MOVE?CB	004h, _C

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00443	c=%000100:a=2
	MOVE?CB	002h, _A

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00444	pause s1
	PAUSE?W	_s1

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00445	return   
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00447	relax:

	LABEL?L	_relax	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00449	a3=7:c3=63:p=100
	MOVE?CW	007h, _a3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00449	a3=7:c3=63:p=100
	MOVE?CW	03Fh, _c3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00449	a3=7:c3=63:p=100
	MOVE?CW	064h, _p

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00451	for t1= 1 to 2
	MOVE?CW	001h, _t1
	LABEL?L	L00114	
	CMPGT?WCL	_t1, 002h, L00115

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00453	 for i=0 to 5 step 1
	MOVE?CW	000h, _i
	LABEL?L	L00116	
	CMPGT?WCL	_i, 005h, L00117

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00455	  lookup i, [0,1,2,3,4,5],a1
	LOOKUP?WCLW	_i, 006h, L00017, _a1
	LURET?C	000h
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h

	LABEL?L	L00017	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00457	  lookup i, [1,2,3,4,5,6],a2
	LOOKUP?WCLW	_i, 006h, L00018, _a2
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h
	LURET?C	006h

	LABEL?L	L00018	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00459	  lookup i, [0,1,2,3,4,5],c1
	LOOKUP?WCLW	_i, 006h, L00019, _c1
	LURET?C	000h
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h

	LABEL?L	L00019	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00461	  lookup i, [1,2,3,4,5,6],c2
	LOOKUP?WCLW	_i, 006h, L00020, _c2
	LURET?C	001h
	LURET?C	002h
	LURET?C	003h
	LURET?C	004h
	LURET?C	005h
	LURET?C	006h

	LABEL?L	L00020	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00463	   gosub fader
	GOSUB?L	_fader

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00465	 next i
	NEXT?WCL	_i, 001h, L00116
	LABEL?L	L00117	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00467	next t1
	NEXT?WCL	_t1, 001h, L00114
	LABEL?L	L00115	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00469	return 
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00471	arroundmiddle:

	LABEL?L	_arroundmiddle	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00473	a3=7:c3=63:p=0
	MOVE?CW	007h, _a3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00473	a3=7:c3=63:p=0
	MOVE?CW	03Fh, _c3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00473	a3=7:c3=63:p=0
	MOVE?CW	000h, _p

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00475	for t1 = 1 to 5
	MOVE?CW	001h, _t1
	LABEL?L	L00118	
	CMPGT?WCL	_t1, 005h, L00119

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00477	 for i=0 to 3 step 1
	MOVE?CW	000h, _i
	LABEL?L	L00120	
	CMPGT?WCL	_i, 003h, L00121

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00479	  lookup i, [0,1,2,4],a1
	LOOKUP?WCLW	_i, 004h, L00021, _a1
	LURET?C	000h
	LURET?C	001h
	LURET?C	002h
	LURET?C	004h

	LABEL?L	L00021	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00481	  lookup i, [1,2,4,0],a2
	LOOKUP?WCLW	_i, 004h, L00022, _a2
	LURET?C	001h
	LURET?C	002h
	LURET?C	004h
	LURET?C	000h

	LABEL?L	L00022	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00483	  lookup i, [56,20,18,17],c1
	LOOKUP?WCLW	_i, 004h, L00023, _c1
	LURET?C	038h
	LURET?C	014h
	LURET?C	012h
	LURET?C	011h

	LABEL?L	L00023	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00485	  lookup i, [20,18,17,56],c2
	LOOKUP?WCLW	_i, 004h, L00024, _c2
	LURET?C	014h
	LURET?C	012h
	LURET?C	011h
	LURET?C	038h

	LABEL?L	L00024	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00487	   gosub fader
	GOSUB?L	_fader

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00489	 next i
	NEXT?WCL	_i, 001h, L00120
	LABEL?L	L00121	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00491	next t1
	NEXT?WCL	_t1, 001h, L00118
	LABEL?L	L00119	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00493	return  
	RETURN?	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00495	waves:

	LABEL?L	_waves	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00497	a3=7:c3=63:p=1
	MOVE?CW	007h, _a3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00497	a3=7:c3=63:p=1
	MOVE?CW	03Fh, _c3

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00497	a3=7:c3=63:p=1
	MOVE?CW	001h, _p

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00499	for i= 0 to 4 step 1
	MOVE?CW	000h, _i
	LABEL?L	L00122	
	CMPGT?WCL	_i, 004h, L00123

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00501	lookup i,[0,0,4,2,1],a1
	LOOKUP?WCLW	_i, 005h, L00025, _a1
	LURET?C	000h
	LURET?C	000h
	LURET?C	004h
	LURET?C	002h
	LURET?C	001h

	LABEL?L	L00025	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00503	lookup i,[4,34,17,8,0],c1
	LOOKUP?WCLW	_i, 005h, L00026, _c1
	LURET?C	004h
	LURET?C	022h
	LURET?C	011h
	LURET?C	008h
	LURET?C	000h

	LABEL?L	L00026	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00505	lookup i,[0,4,2,1,0],a2
	LOOKUP?WCLW	_i, 005h, L00027, _a2
	LURET?C	000h
	LURET?C	004h
	LURET?C	002h
	LURET?C	001h
	LURET?C	000h

	LABEL?L	L00027	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00507	lookup i,[34,17,8,0,4],c2
	LOOKUP?WCLW	_i, 005h, L00028, _c2
	LURET?C	022h
	LURET?C	011h
	LURET?C	008h
	LURET?C	000h
	LURET?C	004h

	LABEL?L	L00028	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00509	gosub fader
	GOSUB?L	_fader

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00511	next i
	NEXT?WCL	_i, 001h, L00122
	LABEL?L	L00123	

; U:\AWESOMECUBE-MASTER\FINAL PROGRAM\MIKE FINAL PROGRAM.PBP	00513	return
	RETURN?	

	END
