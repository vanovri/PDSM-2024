;modul push button ACTIVE LOW pada port 0
;modul LED ACTIVE LOW pada port 1

; Define Variabel
pbNol equ p0.0 ;button 0
pbSatu equ p0.1 ;button 1
pbDua equ p0.2 ;button 2
pbTiga equ p0.3 ;button 3
pbEmpat equ p0.4 ;button 4
pbLima equ p0.5 ;button 5
pbEnam equ p0.6 ;button 6
pbTujuh equ p0.7 ;button 7

org   0000h ;origin 00 (hexa). set mulai program di alamat memori 00 (hexa)
jmp   Start

Start:	; Main Function
      
      MOV p1, #11111111b ;nyalakan port 1 dengan konfigurasi 1111 1111 (pada LED Active Low semuanya mati)
      JNB pbNol,Nyala1 ;(Jump near if not below). IF pbNol/p0.0 ==0, maka lompat ke program/function Nyala1      
      SJMP Start ; jika perintah (pbNol,Nyala1) selesai, kembali ke program/function Start (seperti while looping)


Nyala1:
      MOV p1,#11111110b ;nyalakan port 1 dengan konfigurasi 1111 1110
      JNB pbSatu,Nyala2 ;(Jump near if not below). IF pbSatu/p0.1 ==0, maka lompat ke program/function Nyala2
      SJMP Nyala1 ; jika perintah (JNB pbSatu,Nyala2) selesai, kembali ke program/function Nyala1 (seperti while looping)
Nyala2:
      MOV p1,#11111101b ;nyalakan port 1 dengan konfigurasi 1111 1101
      JNB pbDua,Nyala3 ;(Jump near if not below). IF pbDua/p0.2 ==0, maka lompat ke program/function Nyala3
      SJMP Nyala2 ; jika perintah (JNB pbDua,Nyala3) selesai, kembali ke program/function Nyala2 (seperti while looping)
Nyala3:
      MOV p1,#11111011b ;nyalakan port 1 dengan konfigurasi 1111 1011
      JNB pbTiga,Nyala4 ;(Jump near if not below). IF pbTiga/p0.3 ==0, maka lompat ke program/function Nyala4
      SJMP Nyala3 ; jika perintah (JNB pbTiga,Nyala4) selesai, kembali ke program/function Nyala3 (seperti while looping)
Nyala4:
      MOV p1,#11110111b ;nyalakan port 1 dengan konfigurasi 1111 0111
      JNB pbEmpat,Nyala5 ;(Jump near if not below). IF pbEmpat/p0.4 ==0, maka lompat ke program/function Nyala5
      SJMP Nyala4 ; jika perintah (JNB pbEmpat,Nyala5) selesai, kembali ke program/function Nyala4 (seperti while looping)
Nyala5:
      MOV p1,#11101111b ;nyalakan port 1 dengan konfigurasi 1110 1111
      JNB pbLima,Nyala6;(Jump near if not below). IF pbLima/p0.5 ==0, maka lompat ke program/function Nyala6
      SJMP Nyala5 ; jika perintah (JNB pbLima,Nyala6) selesai, kembali ke program/function Nyala5 (seperti while looping)
Nyala6:
      MOV p1,#11011111b ;nyalakan port 1 dengan konfigurasi 1101 1111
      JNB pbEnam,Nyala7 ;(Jump near if not below). IF pbEnam/p0.6 ==0, maka lompat ke program/function Nyala7
      SJMP Nyala6 ; jika perintah (JNB pbEnam,Nyala7) selesai, kembali ke program/function Nyala6 (seperti while 
Nyala7:
      MOV p1,#10111111b ;nyalakan port 1 dengan konfigurasi 1011 1111
      JNB pbTujuh,Nyala8 ;(Jump near if not below). IF pbTujuh/p0.7 ==0, maka lompat ke program/function Nyala8
      SJMP Nyala7 ; jika perintah (JNB pbTujuh,Nyala8) selesai, kembali ke program/function Nyala7 (seperti while looping)
         
Nyala8:
      MOV p1,#00000000b ;nyalakan port 1 dengan konfigurasi 0000 0000
      JNB pbNol,Start ;(Jump near if not below). IF pbNol/p0.0 ==0, maka lompat ke program/function Start
      SJMP Nyala8 ; jika perintah (JNB pbNol,Start) selesai, kembali ke program/function Start (seperti while looping)
         
                                     
END
