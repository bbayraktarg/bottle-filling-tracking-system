
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877A.INC"


; Define statements.
; C:\PBP\16F877A.BAS       	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00009	DEFINE  LCD_DREG    PORTB                       ; lcd data pinleri port tanýmlamasý
#define		LCD_DREG		    PORTB                       ; lcd data pinleri port tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00010	DEFINE  LCD_DBIT    4                           ; lcd data pinlerinin 4 tanesi kullanýlacak
#define		LCD_DBIT		    4                           ; lcd data pinlerinin 4 tanesi kullanýlacak
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00011	DEFINE  LCD_RSREG   PORTB                       ; lcd rs pini port tanýmlamasý
#define		LCD_RSREG		   PORTB                       ; lcd rs pini port tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00012	DEFINE  LCD_RSBIT   0                           ; lcd rs pini pin out tanýmlamasý
#define		LCD_RSBIT		   0                           ; lcd rs pini pin out tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00013	DEFINE  LCD_EREG    PORTB                       ; lcd e pini port tanýmlamasý
#define		LCD_EREG		    PORTB                       ; lcd e pini port tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00014	DEFINE  LCD_EBIT    1                           ; lcd e pini pin out tanýmlamasý
#define		LCD_EBIT		    1                           ; lcd e pini pin out tanýmlamasý

RAM_START       		EQU	00020h
RAM_END         		EQU	001EFh
RAM_BANKS       		EQU	00004h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00110h
BANK2_END       		EQU	0016Fh
BANK3_START     		EQU	00190h
BANK3_END       		EQU	001EFh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

; C:\PBP\PBPPIC14.RAM      	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PBP\PBPPIC14.RAM      	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PBP\PBPPIC14.RAM      	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PBP\PBPPIC14.RAM      	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PBP\PBPPIC14.RAM      	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PBP\PBPPIC14.RAM      	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PBP\PBPPIC14.RAM      	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PBP\PBPPIC14.RAM      	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PBP\PBPPIC14.RAM      	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PBP\PBPPIC14.RAM      	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PBP\PBPPIC14.RAM      	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PBP\PBPPIC14.RAM      	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PBP\PBPPIC14.RAM      	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PBP\PBPPIC14.RAM      	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PBP\PBPPIC14.RAM      	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00024	A00038	dolum var byte                                  ; dolum adýnda register tanýmlandý
_dolum           		EQU	RAM_START + 018h
; C:\PBP\16F877A.BAS       	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877A.BAS       	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877A.BAS       	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877A.BAS       	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _bant_motor      	_PORTD??7
#define _su_pompasi      	_PORTD??6
#define _adet_sayici     	_PORTD??4
#define _sise_sens       	_PORTC??2
#define _dolum_sens      	_PORTC??1
#define _depo_sens       	_PORTC??0
#define _PORTD??7        	 PORTD, 007h
#define _PORTD??6        	 PORTD, 006h
#define _PORTD??4        	 PORTD, 004h
#define _PORTC??2        	 PORTC, 002h
#define _PORTC??1        	 PORTC, 001h
#define _PORTC??0        	 PORTC, 000h
	INCLUDE	"SISETA~1.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"


; C:\PBP\16F877A.BAS       	00012	BANK0   $0020, $007F
; C:\PBP\16F877A.BAS       	00013	BANK1   $00A0, $00EF
; C:\PBP\16F877A.BAS       	00014	BANK2   $0110, $016F
; C:\PBP\16F877A.BAS       	00015	BANK3   $0190, $01EF
; C:\PBP\16F877A.BAS       	00016	EEPROM  $2100, $21FF
; C:\PBP\16F877A.BAS       	00017	LIBRARY "PBPPIC14"
; C:\PBP\16F877A.BAS       	00018	DEFINE  CODE_SIZE 8

; C:\PBP\16F877A.BAS       	00020	        include "PIC14EXT.BAS"

; C:\PBP\16F877A.BAS       	00027	        include "PBPPIC14.RAM"
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00009	DEFINE  LCD_DREG    PORTB                       ; lcd data pinleri port tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00010	DEFINE  LCD_DBIT    4                           ; lcd data pinlerinin 4 tanesi kullanýlacak
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00011	DEFINE  LCD_RSREG   PORTB                       ; lcd rs pini port tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00012	DEFINE  LCD_RSBIT   0                           ; lcd rs pini pin out tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00013	DEFINE  LCD_EREG    PORTB                       ; lcd e pini port tanýmlamasý
; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00014	DEFINE  LCD_EBIT    1                           ; lcd e pini pin out tanýmlamasý

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00016	ADCON1=7                                        ; analaog pinler devre dýþý býrakýldý
	MOVE?CB	007h, ADCON1

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00018	TRISA=0                                         ; porta çýkýþ olarak ayarlandý
	MOVE?CB	000h, TRISA

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00019	TRISB=0                                         ; portb çýkýþ olarak ayarlandý
	MOVE?CB	000h, TRISB

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00020	TRISC=1                                         ; portc giriþ olarak ayarlandý
	MOVE?CB	001h, TRISC

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00021	TRISD=0                                         ; portd çýkýþ olarak ayarlandý
	MOVE?CB	000h, TRISD

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00022	TRISE=0                                         ; porte çýkýþ olarak ayarlandý
	MOVE?CB	000h, TRISE

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00034	low bant_motor                                  ; bant motoru sýfýra çekildi (kapatýldý)
	LOW?T	_bant_motor

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00035	low su_pompasi                                  ; su pompasý sýfýra çekildi (kapatýldý)
	LOW?T	_su_pompasi

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00036	low adet_sayici                                 ; adet sayýcý sýfýra çekildi (kapatýldý)
	LOW?T	_adet_sayici

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00038	dolum = 0                                       ; dolum registerine 0 yazýldý
	MOVE?CB	000h, _dolum

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00040	PAUSE 500                                       ; lcdnin açýlmasý için 500ms bekleme
	PAUSE?C	001F4h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00042	ana_dongu:                                      ; program ana döngü etiketi

	LABEL?L	_ana_dongu	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00044	    if depo_sens = 0 then                       ; depo seviye sensörü 0 sa ( su deposu doluysa)
	CMPNE?TCL	_depo_sens, 000h, L00001

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00045	        LCDOUT $FE,1," YENi SiSE ALINIYOR "     ; lcdnin 1. satýrýna "yeni þiþe alýnýyor" yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	059h
	LCDOUT?C	045h
	LCDOUT?C	04Eh
	LCDOUT?C	069h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	069h
	LCDOUT?C	053h
	LCDOUT?C	045h
	LCDOUT?C	020h
	LCDOUT?C	041h
	LCDOUT?C	04Ch
	LCDOUT?C	049h
	LCDOUT?C	04Eh
	LCDOUT?C	049h
	LCDOUT?C	059h
	LCDOUT?C	04Fh
	LCDOUT?C	052h
	LCDOUT?C	020h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00046	        LCDOUT $FE,$C0,1," DOLUM = ",dec dolum  ; lcdnin 2. satýrýna "dolum" ve dolum registerindeki deðer yazýldý 
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	04Dh
	LCDOUT?C	020h
	LCDOUT?C	03Dh
	LCDOUT?C	020h
	LCDOUTCOUNT?C	000h
	LCDOUTNUM?B	_dolum
	LCDOUTDEC?	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00047	        high bant_motor                         ; bant motoru çalýþtýrýldý
	HIGH?T	_bant_motor

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00048	        gosub doluma_hazirlaniyor               ; program dolum_hazirlaniyor etiketine dallandýrýldý
	GOSUB?L	_doluma_hazirlaniyor

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00049	        gosub sise_doluyor                      ; program sise_doluyor etiketine dallandýrýldý
	GOSUB?L	_sise_doluyor

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00050	        pause 2000                              ; 2000 ms hiçbir iþlem yapmadan bekle
	PAUSE?C	007D0h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00051	    else                                        ; depo seviye sensörü 1 se ( su deposu boþsa)
	GOTO?L	L00002
	LABEL?L	L00001	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00052	        low bant_motor                          ; bant motoru durduruldu
	LOW?T	_bant_motor

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00053	        low su_pompasi                          ; su pompasý motoru durduruldu
	LOW?T	_su_pompasi

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00054	        low adet_sayici                         ; adet sayýcý çýkýþý durduruldu
	LOW?T	_adet_sayici

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00055	        LCDOUT $FE,1,"   SU DEPOSU BOS    "     ; lcdnin 1. satýrýna "su deposu boþ " yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	055h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	045h
	LCDOUT?C	050h
	LCDOUT?C	04Fh
	LCDOUT?C	053h
	LCDOUT?C	055h
	LCDOUT?C	020h
	LCDOUT?C	042h
	LCDOUT?C	04Fh
	LCDOUT?C	053h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00056	        LCDOUT $FE,$C0,1," DOLUM = ",dec dolum  ; lcdnin 2. satýrýna "dolum" ve dolum registerindeki deðer yazýldý 
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	04Dh
	LCDOUT?C	020h
	LCDOUT?C	03Dh
	LCDOUT?C	020h
	LCDOUTCOUNT?C	000h
	LCDOUTNUM?B	_dolum
	LCDOUTDEC?	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00057	   endif                                        
	LABEL?L	L00002	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00059	   pause 100                                    ; 100ms bekleme
	PAUSE?C	064h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00061	goto ana_dongu                                  ; programý ana_gongu etiketine gönderdi
	GOTO?L	_ana_dongu

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00063	doluma_hazirlaniyor:                            ; doluma_hazirlaniyor etiketi

	LABEL?L	_doluma_hazirlaniyor	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00065	    if sise_sens = 1 then                       ;sise sens inputu 1 olduysa( sensör yeni þiþeyi gördüyse )
	CMPNE?TCL	_sise_sens, 001h, L00003

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00066	        low bant_motor                          ; bant motoru durduruldu
	LOW?T	_bant_motor

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00067	        LCDOUT $FE,1,"DOLUMA HAZIRLANIYOR "     ; lcdnin 1. satýrýna "doluma hazýrlanýyor" yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	04Dh
	LCDOUT?C	041h
	LCDOUT?C	020h
	LCDOUT?C	048h
	LCDOUT?C	041h
	LCDOUT?C	05Ah
	LCDOUT?C	049h
	LCDOUT?C	052h
	LCDOUT?C	04Ch
	LCDOUT?C	041h
	LCDOUT?C	04Eh
	LCDOUT?C	049h
	LCDOUT?C	059h
	LCDOUT?C	04Fh
	LCDOUT?C	052h
	LCDOUT?C	020h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00068	        LCDOUT $FE,$C0,1," DOLUM = ",dec dolum  ; lcdnin 2. satýrýna "dolum" ve dolum registerindeki deðer yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	04Dh
	LCDOUT?C	020h
	LCDOUT?C	03Dh
	LCDOUT?C	020h
	LCDOUTCOUNT?C	000h
	LCDOUTNUM?B	_dolum
	LCDOUTDEC?	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00069	        pause 500                               ; 500ms bekleme
	PAUSE?C	001F4h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00070	        return                                  ; program dallandýrýldýðý adrese geri gönderildi
	RETURN?	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00071	    endif                                      
	LABEL?L	L00003	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00072	    PAUSE 100                                   ; 100ms bekleme
	PAUSE?C	064h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00074	goto doluma_hazirlaniyor                        ; programý doluma_hazirlaniyor etiketine gönderdi
	GOTO?L	_doluma_hazirlaniyor

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00076	sise_doluyor:                                   ; sise_doluyor etiketi

	LABEL?L	_sise_doluyor	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00078	    high su_pompasi                             ; su pompasý motoru çalýþtýrýldý
	HIGH?T	_su_pompasi

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00079	    LCDOUT $FE,1,"    SiSE DOLUYOR    "         ; lcdnin 1. satýrýna "þiþe doluyor" yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	069h
	LCDOUT?C	053h
	LCDOUT?C	045h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	059h
	LCDOUT?C	04Fh
	LCDOUT?C	052h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00080	    LCDOUT $FE,$C0,1," DOLUM = ",dec dolum      ; lcdnin 2. satýrýna "dolum" ve dolum registerindeki deðer yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	04Dh
	LCDOUT?C	020h
	LCDOUT?C	03Dh
	LCDOUT?C	020h
	LCDOUTCOUNT?C	000h
	LCDOUTNUM?B	_dolum
	LCDOUTDEC?	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00082	    if dolum_sens = 1 then                      ; dolum sens 1 olduysa ( þiþe dolduysa)
	CMPNE?TCL	_dolum_sens, 001h, L00005

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00083	        low su_pompasi                          ; su pompasý durduruldu
	LOW?T	_su_pompasi

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00084	        dolum = dolum + 1                       ; dolum registeri 1 arttýrýldý ( dolum sayýcýsý 1 arttý)
	ADD?BCB	_dolum, 001h, _dolum

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00085	        LCDOUT $FE,1,"   DOLUM BASARILI   "     ; lcdnin 1. satýrýna "dolum baþarýlý" yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	04Dh
	LCDOUT?C	020h
	LCDOUT?C	042h
	LCDOUT?C	041h
	LCDOUT?C	053h
	LCDOUT?C	041h
	LCDOUT?C	052h
	LCDOUT?C	049h
	LCDOUT?C	04Ch
	LCDOUT?C	049h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00086	        LCDOUT $FE,$C0,1," DOLUM = ",dec dolum  ; lcdnin 2. satýrýna "dolum" ve dolum registerindeki deðer yazýldý
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	055h
	LCDOUT?C	04Dh
	LCDOUT?C	020h
	LCDOUT?C	03Dh
	LCDOUT?C	020h
	LCDOUTCOUNT?C	000h
	LCDOUTNUM?B	_dolum
	LCDOUTDEC?	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00087	        high adet_sayici                        ; adet sayýcý çýkýþi 1  yapýldý ( harici sayýcý baðlanýlmak isterse )
	HIGH?T	_adet_sayici

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00088	        pause 1000                              ; 1000ms bekle
	PAUSE?C	003E8h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00089	        low adet_sayici                         ; adet sayýcý çýkýþý 0 yapýldý
	LOW?T	_adet_sayici

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00090	        return                                  ; program dallandýrýldýðý adrese geri gönderildi
	RETURN?	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00091	    endif  
	LABEL?L	L00005	

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00092	    pause 100                                   ; 100ms bekleme                        
	PAUSE?C	064h

; C:\USERS\ASUS\DESKTOP\FINALPROJE\PICBASIC\SISETA~1.PBP	00094	goto sise_doluyor                               ; programý sise_doluyor etiketine gönderdi 
	GOTO?L	_sise_doluyor

	END
