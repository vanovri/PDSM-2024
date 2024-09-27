# Percobaan 2 ATMEGA8535
1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
2. _External interrupt_ berupa _keypad matrix_ 4x4 kemudian di-_output_-kan ke LCD 16x2
3. Lampu lalu lintas dengan LED RGB
4. ADC dan PWM
5. _External interrupt_ berupa sensor temperatur LM35 kemudian di-_output_-kan ke serial monitor

# Instalasi driver USBasp
Sumber: [Instructables - USBASP Installation in Windows 10](https://www.instructables.com/USBASP-Installation-in-Windows-10/)

Langkah-langkah
1. Download Zadig di link [berikut](https://github.com/pbatard/libwdi/releases/download/v1.5.0/zadig-2.8.exe).
2. Buka Zadig, klik ```Option``` dan centang ```List All your Devices```. Ini akan menunjukkan semua perangkat yang terhubung ke PC/Laptop Anda.
3. Hubungkan perangkat USBasp ke PC/Laptop Anda.
4. Klik dropdown box di tengah dan pilih ```USBasp```. Jangan pilih perangkat selain USBasp. Salah memilih perangkat dapat menyebabkan perangkat tersebut tidak bisa digunakan.
5. Ubah driver menjadi ```libusb-win32 (v1.2.7.3)```. Klik ```Reinstall Driver``` atau ```Replace Driver``` atau ```Upgrade Driver```.
