//arduino code

long timeToRun = 0;
int garbage = 0;

//setup function
void setup() {
  Serial.begin(9600);
  pinMode(A0, INPUT); //different pins
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
}

//main loop
void loop() {
  if (Serial.available() > 0) {  //if the serial is available then send the data 
    timeToRun = Serial.parseInt();
    garbage = Serial.parseInt();
    Serial.print(analogRead(A0));
    digitalWrite(10, HIGH);
    digitalWrite(9, HIGH);
    delayMicroseconds(timeToRun);
    digitalWrite(10, LOW);
    digitalWrite(9, LOW);
  }
}
