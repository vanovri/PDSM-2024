# Percobaan 3 Arduino UNO
1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
2. Aritmatika sederhana pada serial monitor
3. ADC dan sensor LDR
4. Sensor temperatur dan kelembaban DHT11 kemudian di-_output_-kan ke LCD 16x2
5. Kombinational _lock_ menggunakan _keypad matrix_ 4x4, _relay_, dan LED
6. _Input_ potensiometer untuk mengatur sudut motor servo kemudian di-_output_-kan ke LCD 16x2
7. Sensor jarak HC-04

# Masalah tidak bisa membuka Serial Port/Serial Monitor
Terdapat beberapa Arduino di Lab Elka yang tidak mendukung _driver_ CH340 terbaru. Ciri-cirinya tidak terlihat nama CH340 di chipnya dan ada yang sudah diberi Tipe-X di bawahnya.
Solusi:
1. _Downgrade driver_ CH340 ke versi lama dan block Windows Update khusus _driver_ CH340.

atau

2. Ganti _hardware_ Arduino UNO
