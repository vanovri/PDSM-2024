unsigned char a = 52;
unsigned char b = 67;
int c = 63;
int d = 52;
float f = 67;
float e = 63;
unsigned char hasil_unsigned;
int hasil_int;
float hasil_float;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
hasil_unsigned = a/b;
hasil_int = c/d;
hasil_float = e/f;
Serial.print("Hasil Aritmatika Unisgned = ");
Serial.println(hasil_unsigned);
Serial.print("Hasil Aritmatika Int = ");
Serial.println(hasil_int);
Serial.print("Hasil Aritmatika Float = ");
Serial.println(hasil_float);
Serial.println("------------------------");
delay(1000);
}
