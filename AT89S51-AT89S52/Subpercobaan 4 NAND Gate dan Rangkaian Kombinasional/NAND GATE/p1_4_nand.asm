; modul LED ACTIVE LOW pada port 0
; modul push button ACTIVE LOW pada port 3
; seharusnya menggunakan toggle switch

ORG 0000h	; origin 00 (hexa). set mulai program di alamat memori 00 (hexa)

; Define Variabel
inputA equ p3.4	; input A
inputB equ p3.5	; input B
inputC equ p3.6	; input C
output equ p0.0	; output

; Define INPUT
SETB P3.4	; set bit p3.4 sbg input saklar (HIGH). Switch pull-up, idle=1, push=0
SETB P3.5	; set bit p3.5 sbg input saklar (HIGH). Switch pull-up, idle=1, push=0
SETB P3.6	; set bit p3.6 sbg input saklar (HIGH). Switch pull-up, idle=1, push=0

MOV output, 1
START:
	
	
END