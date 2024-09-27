# Mekanisme Percobaan 5 Mikrokontroler AT89S51/AT89S52
## Alat yang dibutuhkan
1. Modul Mikrokontroler AT89S51/AT89S52
2. USB to TTL

## Software yang dibutuhkan
1. MIDE-51 Studio
2. ProgISP
3. Putty/SdjTerm

## Langkah - Langkah:
1. Jika modul I/O _shield_ terpasang di modul mikrokontroler, cabut.
2. Buka file `arithmatika.asm` di MIDE-51 Studio. Klik `F9` untuk _Build_.
3. Buka ProgISP, pilih _chip_ AT89S51/AT89S52. Klik `RD` untuk memastikan AT89S51/AT89S52 sudah tersambung dengan ProgISP.

|Masalah|Solusi|
|---|---|
|Tampil notifikasi `❌ Programmer can not be found.`|Hubungkan USBasp ke komputer dan mikrokontroler yang diinginkan.|
|Tampil notifikasi `❌ Chip Enable Program Error`|Tipe _chip_ tidak sesuai. Ubah ke tipe _chip_ yang sesuai. Contoh: Awalnya _chip_ yang dipilih ATmega8535, ubah ke AT89S51.|
|Tampil notifikasi `ℹ️ Chip Signature doesn't match`|Ubah tipe _chip_ ke varian lain yang masih satu famili. Contoh: Awalnya _chip_ yang dipilih AT89S51, ubah ke AT89S52.|

4. Klik `File>Load Flash`, cari folder `AT89S51-AT89S52/Subpercobaan 5 Aritmatika biner pada serial monitor` dan pilih `arithmatika.hex`
5. Klik `Auto`, maka ProgISP akan melakukan upload kode ke AT89S51/AT89S52.

|Masalah|Solusi|
|---|---|
|Tampil notifikasi `❌ Flash Verify Error at: 0h`|Cabut terlebih dahulu modul I/O _shield_, kemudian klik `Auto` dan pasang kembali modul I/O _shield_.|

6. Hubungkan modul mikrokontroler AT89S51/AT89S52 dengan USB to TTL seperti tabel dan gambar berikut:

|**Modul Mikrokontroler AT89S51/AT89S52**|**USB to TTL**|
|---|---|
|RX|TXD|
|TX|RXD|
|GND|GND|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5.jpeg)
|:--:|
|**Gambar 1. Percobaan 5 Mikrokontroler AT89S51/AT89S52**|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-UART-1.jpeg)
|:--:|
|**Gambar 2. Kabel UART pada sisi mikrokontroler**|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-UART-2.jpeg)
|:--:|
|**Gambar 3. Kabel UART pada sisi USB to TTL**|

7. Buka Device Manager. Lihat Ports (COM & LPT)

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-devmgmt-search-1.png)
|:--:|
|**Gambar 4. Mencari `Device Manager` pada Windows**|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-devmgmt-search-2.png)
|:--:|
|**Gambar 5. Mencari `devmgmt.msc` pada Windows**|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-devmgmt-search-3.png)
|:--:|
|**Gambar 6. Mencari `devmgmt.msc` pada Run(Win+R)**|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-devmgmt-com.png)
|:--:|
|**Gambar 7. Mencari COM USB to TTL**|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-putty-1.png)
|:--:|
|**Gambar 8. Koneksi ke USB to TTL menggunakan Putty**|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-putty-2.png)
|:--:|
|**Gambar 9. Hasil koneksi Putty**|

8. Buka Putty, atur _connection type_ ke _Serial_. Atur _Serial line_ ke COM yang telah dilihat di Device manager. Atur _Speed_/_BaudRate_ ke 4800. Klik _Open_.
9. Jika tampilan masih kosong, klik tombol RESET pada mikrokontroler. _Output_ yang pertama muncul adalah **94 4C C1** dan yang terakhir muncul adalah **55 32 C1**.
