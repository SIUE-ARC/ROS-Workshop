#include <Servo.h>

Servo s0;

void setup() 
{
    s0.attach(30);
    s0.write(90);
    Serial.begin(9600);
    while(!Serial);
    Serial.write("Ready!\n");
}

void loop() 
{
    char msg[16];
    int data;
    
    if(Serial.available() > 0)
    {
        Serial.readBytesUntil('\n', msg, 16);
        
        data = atoi(&msg[1]);
        
        switch(msg[0])
        {
            case 'a':
                Serial.write("Servo moved to angle of ");
                Serial.print(data);
                Serial.write('\n');
                s0.write(data);
                break;
            case 's':
                Serial.write("Servo sweeping from 0 to 180.");
                Serial.write('\n');
                sweep();
                break;
            case'o':
                Serial.write("Stopping PWMs");
                Serial.write('\n');
                s0.write(0);
                break;
            case 'p':
                Serial.write("Setting PWM pulse width to ");
                Serial.print(data);
                Serial.write('\n');
                s0.writeMicroseconds(data);
                break;
            default:
                Serial.write("Invalid command");
                Serial.write('\n');
                break;
        }
    }
    Serial.flush();
}

void sweep()
{
    int pos = 0;
    
    for (pos = 0; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
        // in steps of 1 degree
        s0.write(pos);              // tell servo to go to position in variable 'pos'
        delay(15);                       // waits 15ms for the servo to reach the position
      }
      for (pos = 180; pos >= 0; pos -= 1) { // goes from 180 degrees to 0 degrees
        s0.write(pos);              // tell servo to go to position in variable 'pos'
        delay(15);                       // waits 15ms for the servo to reach the position
      }
}
