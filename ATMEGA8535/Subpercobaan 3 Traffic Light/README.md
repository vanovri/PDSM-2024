# Subpercobaan 3 Traffic Light
Langkah-langkah
1. Hubungkan kabel DuPont male to female dari PORT A ke modul LED RGB seperti tabel berikut:

|Pin pada PORT A|Pin pada modul LED RGB|Warna pada modul LED RGB|
|---|---|---|
|5|OC0|Blue|
|6|OC1A|Green|
|7|OC1B|Red|

|Pin pada modul ATMega8535|Pin pada modul LED RGB|
|---|---|
|5V|VCC|
|GND|GND|

3. Buka file ```traffic light.prj``` di CV AVR. Klik ```Ctrl+F9``` untuk Build All.
4. Buka ProgISP, pastikan Chip yang dipilih adalah ATMega8535. Klik ```RD``` untuk memastikan ATMega8535 sudah tersambung dengan ProgISP.
5. Klik ```File>Load Flash```, cari folder ```Subpercobaan 3 Traffic Light\Debug\Exe``` dan pilih ```traffic light.hex```
6. Klik ```Auto```, maka ProgISP akan melakukan upload kode ke ATMega8535.
7. LED RGB akan mati, menyala merah, menyala kuning, menyala hijau dengan delay 100 ms.
