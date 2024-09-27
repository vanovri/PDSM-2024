# Mekanisme Percobaan 7 Mikrokontroler AT89S51/AT89S52
## Alat yang dibutuhkan
1. Modul Mikrokontroler AT89S51/AT89S52
2. Modul I/O _shield_
3. Modul _Push Button_
4. Modul LED dan 7 _Segment_
5. Modul Potensiometer
5. 4 buah Kabel konektor IDC ICSP 10 pin _female to female_
6. USBasp

## Software yang dibutuhkan
1. MIDE-51 Studio
2. ProgISP

## Langkah-langkah percobaan
1. Buka file ```p1_7_fix.asm``` di MIDE-51 Studio. Klik ```F9``` untuk _Build_.
2. Hubungkan alat menggunakan kabel header/konektor IDC ICSP 10 pin _female to female_ sesuai tabel berikut:

|Hardware|Port|
|---|---|
|Modul Potensiometer|Port A/0|
|Modul LED (_Active Low_)|Port B/1|
|Modul _Push Button_|Port D/3|

3. Buka ProgISP, pastikan _chip_ yang dipilih adalah AT89S51/AT89S52. Klik ```RD``` untuk memastikan AT89S51/AT89S52 sudah tersambung dengan ProgISP.
4. Jika tampil notifikasi ```Chip Signature doesn't match```, maka kemungkinan salah tipe _chip_. Ganti ke _chip_ yang sesuai.
5. Klik ```File>Load Flash```, cari folder ```AT89S51-AT89S52/Subpercobaan 7 Alarm Kebakaran``` dan pilih ```p1_7_fix.hex```
6. Klik ```Auto```, maka ProgISP akan melakukan upload kode ke AT89S51/AT89S52.
7. Putar potensiometer mentok ke kiri. LED akan berkedip. 
8. Putar potensiometer mentok ke kanan dan pencet tombol nomor 0.
