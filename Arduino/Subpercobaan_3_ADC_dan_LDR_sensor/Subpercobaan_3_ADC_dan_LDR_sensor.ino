#define buzzer 3
#define led 6
#define LDR A4
#define potensio A0
int HasilLDR;
int HasilPotensio;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(led, OUTPUT);
  pinMode(LDR, INPUT);
  pinMode(potensio, INPUT);
  pinMode(buzzer, OUTPUT);
  pinMode(led, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  HasilLDR = analogRead(LDR);
  HasilPotensio = analogRead(potensio);
  int aturLED = map(HasilPotensio, 0, 1023, 0, 255);
  Serial.print("Hasil Potensio = ");
  Serial.println(HasilPotensio);
  Serial.print("Hasil LDR = ");
  Serial.println(HasilLDR);
  if (HasilLDR < 100){
    analogWrite(led, aturLED);
    tone(buzzer, HasilPotensio);
  }
  
  else if (HasilLDR > 100){
    digitalWrite(led, LOW);
   noTone(buzzer);
  }
  delay(1000);
}

