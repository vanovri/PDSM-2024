# Mekanisme Percobaan 4 Mikrokontroler AT89S51/AT89S52
## Alat yang dibutuhkan
1. Modul Mikrokontroler AT89S51/AT89S52
2. Modul I/O _shield_
3. Modul _Push Button_
4. Modul LED dan 7 _Segment_
5. 3 buah Kabel konektor IDC ICSP 10 pin _female to female_
6. USBasp

## Software yang dibutuhkan
1. MIDE-51 Studio
2. ProgISP
3. Proteus versi 8.13

## Langkah - Langkah:
1. Jika modul I/O _shield_ terpasang di modul mikrokontroler, cabut.

|**A**|**B**|**C**|**_Output_**|
|---|---|---|---|
|0|0|0|TRUE|
|0|0|1|TRUE|
|0|1|0|TRUE|
|0|1|1|TRUE|
|1|0|0|TRUE|
|1|0|1|TRUE|
|1|1|0|TRUE|
|1|1|1|FALSE|