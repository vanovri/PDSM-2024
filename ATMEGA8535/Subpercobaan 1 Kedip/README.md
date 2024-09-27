# Subpercobaan 1 Kedip
# Mekanisme Praktikum Percobaan 1 Mikrokontroler AT89S51/AT89S52
## Alat yang dibutuhkan
1. Modul Mikrokontroler AT89S51/AT89S52
2. Modul I/O _shield_
3. Modul LED dan 7 _Segment_
4. Kabel konektor IDC ICSP 10 pin _female to female_
5. USBasp

## Software yang dibutuhkan
1. CodeVision AVR (CVAVR)
2. ProgISP

## Langkah-langkah
1. Pasang modul I/O _shield_ ke ATMEGA8535
2. Hubungkan kabel konektor IDC ICSP 10 pin _female to female_ dari PORT A, B, C, atau D (pilih salah satu) ke modul LED. Pilih antara modul LED _active high_ (warna hijau) atau LED _active low_ (warna merah).
3. Buka file ```kedip.prj``` di CV AVR. Ubah-ubah nilai di ```delay_ms``` sesuai keinginan. Klik ```Ctrl+F9``` untuk Build All.
4. Buka ProgISP, pastikan _chip_ yang dipilih adalah ATMega8535. Klik ```RD``` untuk memastikan ATMega8535 sudah tersambung dengan ProgISP.
5. Klik ```File>Load Flash```, cari folder ```Subpercobaan 1 Kedip\Debug\Exe``` dan pilih ```kedip.hex```
6. Klik ```Auto```, maka ProgISP akan melakukan upload kode ke ATMega8535.
