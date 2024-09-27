# Subpercobaan 4 dan 5 ADC dan PWM
Langkah-langkah
1. Pasang modul I/O shield ke ATMEGA8535
2. Hubungkan kabel header/IDC ICSP 10 pin female to female dari PORT C ke modul LCD 16x2.
3. Hubungkan kabel header/IDC ICSP 10 pin female to female dari PORT A ke modul Potensiometer. 
4. Buka file ```adcpwm.prj``` di CV AVR dan baca line 188.
5. Pada line 188 terdapat kode ```value =read_adc(0);```. Ubah angkanya sesuai tabel berikut:

|Angka|Hardware|
|---|---|
|0|Potensiometer|
|1|Sensor LDR Gelap|
|2|Sensor LDR Terang|
|3|Sensor suhu LM35|

6. Klik ```Ctrl+F9``` untuk Build All.
7. Buka ProgISP, pastikan Chip yang dipilih adalah ATMega8535. Klik ```RD``` untuk memastikan ATMega8535 sudah tersambung dengan ProgISP.
8. Klik ```File>Load Flash```, cari folder ```Subpercobaan 4 dan 5 ADC dan PWM\Debug\Exe``` dan pilih ```adcpwm.hex```
9. Klik ```Auto```, maka ProgISP akan melakukan upload kode ke ATMega8535.
10. Putar putar potensiometer. Nyalakan senter dan dekatkan ke LDR terang/gelap. Nyalakan korek dan dekatkan ke LM35.
