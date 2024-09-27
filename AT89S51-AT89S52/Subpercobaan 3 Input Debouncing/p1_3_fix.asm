;buzzer. Hubungkan Base transistor S9012 (PNP) dengan port 0.0
;modul LED ACTIVE LOW pada port 1
;modul push button ACTIVE LOW pada port 3

ORG 0000h ;origin 00 (hexa). set mulai program di alamat memori 00 (hexa)

; Define INPUT
SETB P3.2	;set bit p3.2 sbg input saklar (HIGH). Switch pull-up, idle=1, push=0


MOV p1,#11111111b 	;mematikan common anode led (1=off, 0=on)
MOV p0,#11111111b 	;mematikan buzzer

start:
	Jnb p3.2,loop  ;jump if not bit. Jika p3.2 bernilai 0, lompat ke loop. Switch pull-up, idle=1, push=0
	Mov p1,#11111111b  ;matikan LED ACTIVE LOW
	Mov p0,#11111111b  ;matiin buzzer PNP 
	Sjmp start ; jika perintah (Mov p0,#11111111b) selesai, kembali ke program/function start (seperti while looping)

loop:
;IF P3.2 dipencet, maka Buzzer nyala (dengan syarat transistor PNP)
	mov p1,#11111101b ;nyalakan port 1 dengan konfigurasi 1111 1101
	mov p0,#11111110b ;nyalakan port 0 dengan konfigurasi 1111 1110
	;Setb p1.1  ;nyalain led bit ke-x
	;Setb p0.0  ;nyalain buzzer di bit ke-x (Kemungkinan untuk transistor NPN)
	Acall delay	; lakukan penundaan sesaat...
	sjmp start ; jika perintah (Acall delay) selesai, kembali ke program/function start (seperti while looping)

;
;-subrutin DELAY-----------------------------------------------------------
;
; subrutin ini hanya sekedar melakukan penundaan sesaat dengan cara
; mengulangi proses (pengurangan isi register) hingga dicapai suatu
; kondisi tertentu
;
;--------------------------------------------------------------------------
; berapa lama? sekitar 1 kali x 255 kali x 255 kali= 65.025 mikrosekon = 65,025 milisekon = 0,065025 detik
delay:	mov R0,#01h	; Isi Register R0 dengan 1 (1x ulang)
delay0:	mov R1,#0ffh	; Isi Register R1 dengan 255 (255x ulang)
delay1: mov R2, #0ffh	; Isi Register R2 dengan 255 (255x ulang)
delay2: djnz R2, delay2	; R2=R2-1, jika R2 belum 0 ulangi DELAY2
	djnz R1, delay1	; R1=R1-1, jika R1 belum 0 ulangi DELAY1
	djnz R0, delay0	; R0=R0-1, jika R0 belum 0 ulangi DELAY0
	ret		; Kembali ke pemanggil subrutin DELAY
end