# Arduino analog Joystick

Arduino's code is something like: 
```c
int joystickPin = A0; 
int getPushedButton(int joystickPin){
    /*
    * retourne le numéro du boutton appuyé 
    * bouton    |    numéro |  mesure analogRead
    * aucun     |   0       | 1024
    * haut      |   1       | 19
    * bas       |   2       | 8
    * gauche:   |   3       | 54
    * droite:   |   4       | 705
    * bas2 :    |   5       | 511
    * haut2:    |   6       | 183 
    */
    int val=analogRead(joystickPin);

  if(val > 1000){
   return 0; 
  }else if (val > 650){
    return 4;
  }else if(val > 450){
   return 5; 
  }else if(val > 120){
    return 6;
  }else if(val > 45){
    return 3;
  }else if(val > 15){
   return 1; 
  }else{
   return 2; 
  }
}



void setup() {
  Serial.begin(9600);
}


void loop() {
    int button=getPushedButton(A0);
    Serial.println(button);
    delay(500);
}
```

Adapt limit values if you use differents resistors than mines.


