# Prak. Desain Sistem Mikroprosesor (PTEL6301) 

Dosen pengampu : Ir. Sudjadi M.T. 

NIP : 195906191985111001 

Laboratorium Elektronika

Teknik Elektro Universitas Diponegoro 

Tahun Ajaran 2022/2023 (Agustus 2022-Desember 2022)
Tahun Ajaran 2023/2024 (Agustus 2023-Desember 2024)

## TODO
- [ ] Perbaiki kode praktikum agar sesuai petunjuk praktikum [unduh petunjuk praktikum di sini](https://github.com/FadhilPrawira/PDSM-2022-dan-2023/blob/main/assets/document/petunjuk%20praktikum%2020220915.docx)
- [ ] Perbaiki petunjuk praktikum agar mudah dipahami peserta. [Referensi](https://youtu.be/xAJcZeq-an0?si=gHEmx-m0uXeCGbuD)
- [ ] Buat format penilaian tiap praktikum
- [ ] Buat skema praktikum di Proteus
- [ ] Gunakan _software_ open source/gratis/tidak bajakan

## Tutorial instalasi software
Lihat [di sini](https://its.id/m/PDSM2023)

## Praktikum yang dijalankan
- AT89S51/AT89S52 (Assembly)
  1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
  2. _External interrupt_ berupa _push button_ kemudian di-_output_-kan ke LED, LED 7-Segment, dan serial monitor 
  3. Input, Debouncing Input, Output mode BIT
  4. Emulator rangkaian kombinational
  5. Aritmatika biner pada serial monitor
  6. Saklar Cepat Tepat
  7. Alarm Kebakaran
  
- ATMEGA8535 (C)
  1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
  2. _External interrupt_ berupa _keypad matrix_ 4x4 kemudian di-_output_-kan ke LCD 16x2
  3. Lampu lalu lintas dengan LED RGB
  4. ADC dan PWM
  5. _External interrupt_ berupa sensor temperatur LM35 kemudian di-_output_-kan ke serial monitor
  
- Arduino UNO/ATmega328P (C/Wiring)
  1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
  2. Aritmatika sederhana pada serial monitor
  3. ADC dan sensor LDR 
  4. Sensor temperatur dan kelembaban DHT11 kemudian di-_output_-kan ke LCD 16x2
  5. Kombinational _lock_ menggunakan _keypad matrix_ 4x4, _relay_, dan LED
  6. _Input_ potensiometer untuk mengatur sudut motor servo kemudian di-_output_-kan ke LCD 16x2
  7. Sensor jarak HC-04

## Perangkat lunak yang dibutuhkan
- CodeVision AVR [unduh versi bajakan 3.14 untuk Windows 7/8/8.1/10 arsitektur 32/64 bit di sini](https://getintopc.com/softwares/development/codevisionavr-advanced-free-download/)
- M-IDE Studio for MCS-51 [unduh versi 0.2.5.18 _packed file_ di sini](https://archive.org/download/midepack02518/midepack02518.exe)
- Arduino IDE [unduh versi 2.2.1 di sini untuk Windows 10 arsitektur 64 bit](https://downloads.arduino.cc/arduino-ide/arduino-ide_2.2.1_Windows_64bit.exe)
- Putty [unduh Putty versi 0.79 untuk Windows arsitektur 64 bit x86 di sini](https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.79-installer.msi) / SdjTerm [unduh SdjTerm di sini](https://github.com/FadhilPrawira/PDSM-2022-dan-2023/blob/main/assets/software/SdjTerm.zip) / RealTerm [unduh RealTerm di sini](https://sourceforge.net/projects/realterm/files/Realterm/)
- ProgISP [unduh versi 1.7.2 di sini](https://github.com/FadhilPrawira/PDSM-2022-dan-2023/blob/main/assets/software/Prog%20ISP%201.72.zip)
- Proteus [unduh versi bajakan 8.13 SP0 untuk Windows 7/8/8.1/10 arsitektur 32/64 bit di sini](https://getintopc.com/softwares/pcb-design/proteus-professional-2021-free-download-5219458/)

## Alat dan Bahan
1. Arduino UNO

|![Arduino UNO](/assets/images/arduino%20uno.png)|
|:--:|
|**Gambar 1. Arduino UNO**|

2. Modul I/O _shield_ dengan konektor IDC ICSP 10 pin

|![Modul I/O shield](/assets/images/m00%20io%20shield.jpg)|
|:--:|
|**Gambar 2. Modul I/O _shield_**|

|![Rangkaian modul I/O shield](/assets/images/m00%20rangkaian%20io%20shield.jpg)|
|:--:|
|**Gambar 3. Rangkaian modul I/O _shield_**|

3. Modul ATMEGA8535 (kiri) dan AT89S51/AT89S52 (kanan)

|![Modul ATMEGA8535 (kiri) dan AT89S51/AT89S52 (kanan)](/assets/images/m01%20foto%20modul%20mikrokontroler.jpg)|
|:--:|
|**Gambar 4. Modul ATMEGA8535 (kiri) dan AT89S51/AT89S52 (kanan)**|

|![Rangkaian modul ATMEGA8535](/assets/images/m01%20rangkaian%20at8535%20modul%20mikrokontroler.jpg)|
|:--:|
|**Gambar 5. Rangkaian modul ATMEGA8535**|

|![Rangkaian modul AT89S51](/assets/images/m01%20rangkaian%20at89s51%20modul%20mikrokontroler.jpg)|
|:--:|
|**Gambar 6. Rangkaian modul AT89S51**|

4. Modul _push button_

|![Modul push button](/assets/images/m02%20foto%20modul%20push%20button.jpg)|
|:--:|
|**Gambar 7. Modul _push button_**|

5. Modul LCD 16x2

|![Modul LCD 16x2](/assets/images/m03%20foto%20modul%20lcd.jpg)|
|:--:|
|**Gambar 8. Modul LCD 16x2**|

6. Modul PWM bohlam (kiri atas) dan LED RGB (kanan atas)

|![Modul PWM bohlam (kiri atas) dan LED RGB (kanan atas)](/assets/images/m04%20foto%20modul%20pwm.jpg)|
|:--:|
|**Gambar 9. Modul PWM bohlam (kiri atas) dan LED RGB (kanan atas)**|

7. Modul Potensiometer (kiri atas), LDR _dark_ (tengah atas), LDR _bright_ (kanan atas), dan sensor suhu LM35 (bawah)

|![Modul Potensiometer (kiri atas), LDR dark (tengah atas), LDR bright (kanan atas), dan sensor suhu LM35 (bawah)](/assets/images/m05%20foto%20modul%20input%20analog.jpg)|
|:--:|
|**Gambar 10. Modul Potensiometer (kiri atas), LDR _dark_ (tengah atas), LDR _bright_ (kanan atas), dan sensor suhu LM35 (bawah)**|

8. Modul LED _active low_ (kiri atas), LED 7 _segment active low_ (kanan atas), LED _active high_ (kiri bawah), dan LED 7 _segment active high_

|![Modul LED active low (kiri atas), LED 7 segment active low (kanan atas), LED active high (kiri bawah), dan LED 7 segment active high](/assets/images/m06%20modul%20led%20dan%207%20segment.jpg)|
|:--:|
|**Gambar 11. Modul LED _active low_ (kiri atas), LED 7 _segment active low_ (kanan atas), LED _active high_ (kiri bawah), dan LED 7 _segment active high_**|

9. USBasp AVR Programmer

|![USBasp AVR Programmer](/assets/images/usbasp.jpg)|
|:--:|
|**Gambar 12. USBasp AVR _Programmer_**|

10. Kabel DuPont _male to male_, _female to female_, dan _male to female_

|![Kabel DuPont male to male, female to female, dan male to female](/assets/images/kabel%20jumper.png)|
|:--:|
|**Gambar 13. Kabel DuPont _male to male_, _female to female_, dan _male to female_**|

11. Kabel konektor IDC ICSP 10 pin _female to female_

|![Kabel konektor IDC ICSP 10 pin female to female](/assets/images/kabel%20pita%2010%20plus%20female%20header.png)|
|:--:|
|**Gambar 14. Kabel konektor IDC ICSP 10 pin _female to female_**|

12. USB _to_ TTL

|![USB to TTL](/assets/images/usb%20to%20serial.png)|
|:--:|
|**Gambar 15. USB _to_ TTL**|

13. _Breadboard_

|![Breadboard](/assets/images/bread%20board.png)|
|:--:|
|**Gambar 16. _Breadboard_**|

14. Resistor berbagai ukuran
15. _Keypad matrix_ 4x4
16. Motor servo
17. LED warna merah, kuning, hijau
18. Transistor NPN 2N222
19. Power supply DC 12V

## Kode-kode ini disusun bersama oleh para asisten praktikum berikut
### Tahun 2022
1. Assiddiq Mukhlis Abdillah 21060119130058
2. Fadhil Prawira 21060120140057
3. Arya Bramaputra 21060120120033
4. Muhammad Adib Ubaidillah 21060120120023
5. Maulana Reyhan Savero 21060120120032
6. Laila Himatul Khaizah  210601201200026
7. Chandraning Dyah Hapsari 21060120140169
8. Shifa Auliya Oktifyanindar 21060120140099
9. Syahvan Alviansyah Diva Ritonga 21060120130130
10. Selvya Syalsabilla 21060120140187
11. Rizkar Al Akbar 21060120130125
12. Hafiz Alifian Aqsha 21060120130104

### Tahun 2023
1. Fadhil Prawira 21060120140057
2. Arya Bramaputra 21060120120033
3. Ratu Sondang Elishabet Sidauruk 21060120120036
4. Thoha Khoirul Arham 21060120130095
5. Karren Noorlita Emily 21060121140192
6. Devi Indah Retnani 21060121140123
7. Muhammad Raihan Arrafi 21060121120011
8. Iqbal Maulana Ramadhan 21060121120025
9. Kesya Mesya Arga Nauli Torromora Sitompul 21060121140127
