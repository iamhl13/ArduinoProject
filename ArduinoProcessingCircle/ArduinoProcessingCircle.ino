void setup() {
  Serial.begin(9600);// put your setup code here, to run once:

}

void loop() {
  int sensor = analogRead(A0);// put your main code here, to run repeatedly:
  Serial.write(sensor);
  delay(0);
}
