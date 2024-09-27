# Mekanisme Percobaan 6 Mikrokontroler AT89S51/AT89S52
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

## Langkah - Langkah:
1. Jika modul I/O _shield_ terpasang di modul mikrokontroler, cabut.
2. Buka file `p1_6_fix.asm` di MIDE-51 Studio. Klik `F9` untuk _Build_.
3. Buka ProgISP, pilih _chip_ AT89S51/AT89S52. Klik `RD` untuk memastikan AT89S51/AT89S52 sudah tersambung dengan ProgISP.

|Masalah|Solusi|
|---|---|
|Tampil notifikasi `❌ Programmer can not be found.`|Hubungkan USBasp ke komputer dan mikrokontroler yang diinginkan.|
|Tampil notifikasi `❌ Chip Enable Program Error`|Tipe _chip_ tidak sesuai. Ubah ke tipe _chip_ yang sesuai. Contoh: Awalnya _chip_ yang dipilih ATmega8535, ubah ke AT89S51.|
|Tampil notifikasi `ℹ️ Chip Signature doesn't match`|Ubah tipe _chip_ ke varian lain yang masih satu famili. Contoh: Awalnya _chip_ yang dipilih AT89S51, ubah ke AT89S52.|

4. Klik `File>Load Flash`, cari folder `AT89S51-AT89S52/Subpercobaan 6 Saklar Cepat Tepat` dan pilih `p1_6_fix.hex`
5. Klik `Auto`, maka ProgISP akan melakukan upload kode ke AT89S51/AT89S52.

|Masalah|Solusi|
|---|---|
|Tampil notifikasi `❌ Flash Verify Error at: 0h`|Cabut terlebih dahulu modul I/O _shield_, kemudian klik `Auto` dan pasang kembali modul I/O _shield_.|

6. Hubungkan modul dengan modul I/O _shield_ menggunakan kabel header/konektor IDC ICSP 10 pin _female to female_ sesuai tabel berikut:

|Hardware|Port|
|---|---|
|Modul _Push Button_|Port D/3|
|Modul LED (_Active Low_)|Port B/1|

|![Percobaan 6 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P6.jpeg)|
|:--:|
|**Gambar 1. Percobaan 6 Mikrokontroler AT89S51/AT89S52**|


7. Tekan tombol nomor 0, 1, dan 2 secara bergantian. Cobalah untuk menekan tombol 0, 1, dan 2 secara bersamaan kemudian perhatikan LED mana yang lebih dulu menyala.
