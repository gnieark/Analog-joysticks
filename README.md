# Arduino analog Joystick

Arduino's code is something like: 
```c
int joystickPin = A0; 
int getPushedButton(int joystickPin){
  int val=analogRead(joystickPin);
  if(val > 1000){
   return 0; 
  }else if (val > 650){
    return 4;
  }else if(val > 450){
   return 6; 
  }else if(val > 120){
    return 5;
  }else if(val > 45){
    return 3;
  }else if(val > 15){
   return 1; 
  }else{
   return 2; 
  }
}
```

Adapt limit values if you use differents resistors than mines.


