;modul LED ACTIVE LOW pada port 1
;modul push button ACTIVE LOW pada port 3

org 0000h ;origin 00 (hexa). set mulai program di alamat memori 00 (hexa)
; Define INPUT
	setb P3.0
	setb P3.1
	setb P3.2

start:; Main Function
	jnb P3.1,loop1	;(Jump near if not below). IF P3.1 ==0, maka lompat ke program/function loop1
	jnb P3.2,loop2	;(Jump near if not below). IF P3.2 ==0, maka lompat ke program/function loop2
	jnb P3.0,loop	;(Jump near if not below). IF P3.0 ==0, maka lompat ke program/function loop
	Mov p1,#11111111b
	sjmp start ; jika perintah (Mov p0,#11111111b) selesai, kembali ke program/function start (seperti while looping)
loop:
	mov P1,#11111110b;nyalakan port 1 dengan konfigurasi 1111 1110
	acall delay
	sjmp start; jika perintah (Acall delay) selesai, kembali ke program/function start (seperti while looping)
loop1:
	mov P1,#11111101b;nyalakan port 1 dengan konfigurasi 1111 1101
	acall delay
	sjmp start; jika perintah (Acall delay) selesai, kembali ke program/function start (seperti while looping)
loop2:
	mov P1,#11111011b;nyalakan port 1 dengan konfigurasi 1111 1011
	acall delay
	sjmp start; jika perintah (Acall delay) selesai, kembali ke program/function start (seperti while looping)
	
;
;-subrutin DELAY-----------------------------------------------------------
;
; subrutin ini hanya sekedar melakukan penundaan sesaat dengan cara
; mengulangi proses (pengurangan isi register) hingga dicapai suatu
; kondisi tertentu
;
;--------------------------------------------------------------------------
; berapa lama? sekitar 8 kali x 255 kali x 255 kali= 520.200 mikrosekon = 520,2 milisekon = 0,5202 sekon
delay:	mov R0,#08h; Isi Register R0 dengan 8 (8x ulang)
delay0:	mov R1,#0ffh; Isi Register R1 dengan 255 (255x ulang)
delay1: mov R2,#0FFh; Isi Register R2 dengan 255 (255x ulang)
delay2:	djnz R2,delay2; R2=R2-1, jika R2 belum 0 ulangi DELAY2
	djnz R1,delay1; R1=R1-1, jika R1 belum 0 ulangi DELAY1
	djnz R0,delay0; R0=R0-1, jika R0 belum 0 ulangi DELAY0
	ret; Kembali ke pemanggil subrutin DELAY
end