;======================================================================
; subroutines initialising serial port 4800,8,1,N
; for 12 MHz crystal : TH1 reload value : F3 (error=0.16% pada 4800bps)
; for 11.059 MHz     : TH1 reload value : F4 (error=0 pada 4800bps)
;======================================================================
initserial:
	mov   pcon,#80h
	mov   tmod, #22h    ; set timer 1 for auto reload - mode 2
	mov   th1,#0f4h     ;see above to change crystal
	setb  tcon.6
	mov   scon,#052h
	ret
;================================================================
;mengirim a,b dan psw (c) ke serial dalam bentuk hexa
baca_abc:
acall	prthex
acall	pblank
mov	a, b
acall	prthex
acall	pblank
mov	a, psw
acall	prthex
acall	crlf
ret

;================================================================
; subroutine sndchr
; this routine takes the chr in the acc and sends it out the
; serial port.
;================================================================
sndchr:
   clr  scon.1            ; clear the tx  buffer full flag.
   mov  sbuf,a            ; put chr in sbuf
txloop:
   jnb  scon.1, txloop    ; wait till chr is sent
   ret
;===============================================================
; subroutine getchr
; this routine reads in a chr from the serial port and saves it
; in the accumulator.
;================================================================
getchr:
   jnb  ri, getchr        ; wait till character received
   mov  a,  sbuf          ; get character
   anl  a,  #7fh          ; mask off 8th bit
   clr  ri                ; clear serial status bit
   ;cpl	led
   ret
;===============================================================
; subroutine print
; kirim beberapa karakter se serial
;===============================================================
print:
   pop   dph              ; put return address in dptr
   pop   dpl
prtstr:
   clr  a                 ; set offset = 0
   movc a,  @a+dptr       ; get chr from code memory
   cjne a,  #0h, mchrok   ; if chr = ff then return
   sjmp prtdone
mchrok:
   acall sndchr           ; send character
   inc   dptr             ; point at next character
   sjmp  prtstr           ; loop till end of string
prtdone:
   mov   a,  #1h          ; point to instruction after string
   jmp   @a+dptr          ; return
;===============================================================
; subroutine crlf
; crlf sends a carriage return line feed out the serial port
;===============================================================
crlf:
   mov   a,  #0dh         ; print cr
   acall sndchr
   mov   a,  #0ah         ; print lf
   acall sndchr
   ret
;===============================================================
; subroutine prthex
; this routine takes the contents of the acc and prints it out
; as a 2 digit ascii hex number.
prthex:
   acall binasc           ; convert acc to ascii
   acall sndchr           ; print first ascii hex digit
   mov   a,  r2           ; get second ascii hex digit
   acall sndchr           ; print it
   ret
;===============================================================
;print blank/spasi
;===============================================================
pblank:
	mov	a,#' '
	acall	sndchr
	ret
;===============================================================
; subroutine binasc
; binasc takes the contents of the accumulator and converts it
; into two ascii hex numbers.  the result is returned in the
; accumulator and r2.
;===============================================================
binasc:
   mov   r2, a            ; save in r2
   anl   a,  #0fh         ; convert least sig digit.
   add   a,  #0f6h        ; adjust it
   jnc   noadj1           ; if a-f then readjust
   add   a,  #07h
noadj1:
   add   a,  #3ah         ; make ascii
   xch   a,  r2           ; put result in reg 2
   swap  a                ; convert most sig digit
   anl   a,  #0fh         ; look at least sig half of acc
   add   a,  #0f6h        ; adjust it
   jnc   noadj2           ; if a-f then re-adjust
   add   a,  #07h
noadj2:
   add   a,  #3ah         ; make ascii
   ret
;===============================================================
; subroutine ascbin
; this routine takes the ascii character passed to it in the
; acc and converts it to a 4 bit binary number which is returned
; in the acc.
;===============================================================
ascbin:
   ;mov	r7,a
   ;clr   errorf
   add   a,  #0d0h        ; if chr < 30 then error
   jnc   notnum
   clr   c                ; check if chr is 0-9
   add   a,  #0f6h        ; adjust it
   jc    hextry           ; jmp if chr not 0-9
   add   a,  #0ah         ; if it is then adjust it
   ret
hextry:
   clr   acc.5            ; convert to upper
   clr   c                ; check if chr is a-f
   add   a,  #0f9h        ; adjust it
   jnc   notnum           ; if not a-f then error
   clr   c                ; see if char is 46 or less.
   add   a,  #0fah        ; adjust acc
   jc    notnum           ; if carry then not hex
   anl   a,  #0fh         ; clear unused bits
   ret
notnum:
	;mov	a,r7
	;acall	prthex
   ;setb  errorf           ; if not a valid digit
   ret
   ;ajmp  endloop

;===============================================================
;mengubah biner ke pola 7 segment
;===============================================================
Binto7Segment:
	INC	A			;Melompati instruksi RET
	MOVC	A,@A+PC			;Ambil isi Array KombinasiRuas
	RET

;7SEG.10,16:a;10,15:b, 3,8:c; 2,6:d; 1,5:e; 12,18:f; 7,17:g; 
;dot D1:4, D2:9, 
;Catode/Anode D1:14; D2:13
;               xfbgcdae
;P1.            76543210   
	DB	10010000b	; 0
	DB	11010111b	; 1
	DB	11001000b 	; 2
	DB	11000001b	; 3
	DB	10000111b 	; 4
	DB	10100001b 	; 5
	DB	10100000b 	; 6
	DB	11010101b 	; 7
	DB	10000000b 	; 8
	DB	10000101b 	; 9
	DB  	11111111b	; 10 blank
	
;===============================================================
;penundaan 1/2 detik
tunda1detik:
delay1detik:
	mov	a,#1	;ubah untuk berapa detik dalam Acc
delay_a:
	mov	R0,#0f0h
dloop0:	
	mov	R1,#0ffh
dloop1:
	nop	;1uS
	nop
	nop
	nop
	nop
	nop
	nop	
	djnz	R1,dloop1
	djnz	R0,dloop0
	djnz	Acc,delay_a
	ret
