;modul LDR pada port 0
;modul LED ACTIVE LOW pada port 1
;modul push button ACTIVE LOW pada port 3

org 0000h;origin 00 (hexa). set mulai program di alamat memori 00 (hexa)
	setb P0.0	;Set INPUT potensiometer
	setb p3.0	;Set INPUT push button
	MOV p1,#11111111b 	;mematikan common anode led (1=off, 0=on)

start:	jnb P0.0,loop 
	Mov p1,#11111111b  ;matikan LED ACTIVE LOW
	sjmp start; jika perintah (Mov p1,#11111111b) selesai, kembali ke program/function start (seperti while looping)
	
loop:	Mov p1,#11111111b
	acall delay; lakukan penundaan sesaat...
	Mov p1,#00000000b
	acall delay; lakukan penundaan sesaat...
	jnb p3.0,start
	sjmp loop
	
;
;-subrutin DELAY-----------------------------------------------------------
;
; subrutin ini hanya sekedar melakukan penundaan sesaat dengan cara
; mengulangi proses (pengurangan isi register) hingga dicapai suatu
; kondisi tertentu
;
;--------------------------------------------------------------------------
; berapa lama? sekitar 1 kali x 240 kali x 240 kali= 57.600 mikrosekon = 57,6 milisekon = 0.0576 detik	
delay:	mov R0,#01h; Isi Register R0 dengan 1 (1x ulang)
delay0:	mov R1,#0f0h; Isi Register R1 dengan 240 (240x ulang)
delay1: mov R2,#0F0h; Isi Register R2 dengan 240 (240x ulang)
delay2:	djnz R2,delay2; R2=R2-1, jika R2 belum 0 ulangi DELAY2
	djnz R1,delay1; R1=R1-1, jika R1 belum 0 ulangi DELAY1
	djnz R0,delay0; R0=R0-1, jika R0 belum 0 ulangi DELAY0
	ret; Kembali ke pemanggil subrutin DELAY
end
