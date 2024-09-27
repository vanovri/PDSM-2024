;arithmatika biner : arithmatika.asm
;monitor di serial nilai A, B dan PSW
;PSW=(Carry Flag, Auxilary Carry, General Purpose, RS1, RS0, Overflow, -, Parity Even)
;cek Carry, Auxilary Carry dan Parity saja
;copy paste di serial dan analisalah hasilnya.
;====================================================

	n01	equ	71	;ubah2lah nilai dengan angka terakhir nim2 peserta
	n02	equ	76	;pada nilai nxx
	n03	equ	84
	n04	equ	86
	count1	equ	5
	
	
	org	0000h
	sjmp	start
	
	org	0030h
start:
	acall	initserial	;4800bps 8 bit 1 stop bit

	setb	c    
    	mov    	a,#n01
    	mov    	b,#n02
    	addc    a,b
    	nop	;soal 01 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik
	
	clr    	c
    	mov    	a,#0A1h
    	mov    	b,#0D2h
    	subb    a,b
    	nop	;soal 02 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik

    	mov    	a,#0FDh
    	mov    	b,#0EAh
    	mul     ab    
    	nop	;soal 03 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik

    	mov    	a,#0FDh
    	mov    	b,#01Dh
    	div      AB    
    	nop	;soal 04 ?? nilai a b c

    	mov    	a,#010h
    	mov    	b,#020h
    	div    	AB    
    	nop	;soal 05 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik


	clr	c
    	mov    	a,#01010101b
    	mov    	b,#10111001b
    	anl   	a,b    
    	nop	;soal 06 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik

    	mov    	a,#01010101b
    	mov    	b,#10111001b
    	orl   	a,b    
    	nop	;soal 07 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik

    	mov    	a,#01010101b
    	mov    	b,#10111001b
    	xrl   	a,b    
    	nop	;soal 08 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik

    	setb   	c
    	mov    	a,#01010101b
    	rlc    	a
    	nop	;soal 09 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik

    	setb   	c
    	mov    	a,#01010101b
    	rr    	a
    	nop	;soal 10 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik

    	mov    	a,#0FEh
    	swap    a
    	nop	;soal 11 ?? nilai a
    	acall	baca_abc
	acall	tunda1detik


	mov     a,#0AAh
	cpl     a
    	nop	;soal 12 ?? nilai a

	mov	a,#(n02+n03)
	inc	a
	inc	a
    	nop	;soal 13 ?? nilai a
    	acall	baca_abc
	acall	tunda1detik
    	
	mov	a,#(n03-n02)
	dec	a
	dec	a
    	nop	;soal 14 ?? nilai a
    	acall	baca_abc
	acall	tunda1detik
    	
	mov	a,#(n03 MOD n04)
	cpl	a
    	nop	;soal 15 ?? nilai a
    	acall	baca_abc
	acall	tunda1detik
    	
    	mov	a,#-n04
    	mov	b,#count1
 loop1:	inc	a
 	djnz	b,loop1
    	nop	;soal 16 ?? nilai a b c 	
    	acall	baca_abc
	acall	tunda1detik
    	
    	mov	a,#n04
    	mov	b,#n03
    	clr	c
    	subb	a,b
    	nop	;soal 18 ?? nilai a b c 
    	acall	baca_abc
	acall	tunda1detik
    	    	 	    	
    	mov	a,#n04
    	mov	b,#-n03
    	clr	c
    	subb	a,b
    	nop	;soal 19 ?? nilai a b c 
    	acall	baca_abc
	acall	tunda1detik
    	
	mov	a,#0FFh
 	anl     a,#(n02 AND 0AAh)    	
    	nop	;soal 20 ?? nilai a
    	acall	baca_abc
	acall	tunda1detik
    	
	mov	a,#'a'
 	inc	a
 	inc	a
    	nop	;soal 21 ?? nilai a
    	acall	baca_abc
	acall	tunda1detik
    	
	mov	a,#'3'
 	mov	b,#'2'
 	add	a,b
    	nop	;soal 22 ?? nilai a b c
    	acall	baca_abc
	acall	tunda1detik
    	
    	mov	a,#1 SHL 2
    	nop	;soal 23 ?? nilai a    	
    	acall	baca_abc
	acall	tunda1detik
    	
    	mov	a,#0Fh XOR 0AAh
    	nop	;soal 24 ?? nilai a    	
    	acall	baca_abc
	acall	tunda1detik
    	
   	mov	a,#NOT 0AAh
    	nop	;soal 25 ?? nilai a    	
    	acall	baca_abc
	acall	tunda1detik
    	
    	  	
    nop
    sjmp    $	;berhenti disini, mulai lagi tekan reset

$INCLUDE(routines.asm)
    End
