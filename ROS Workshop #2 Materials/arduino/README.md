This driver was written with the Arduino Mega in mind. If you are not using a
mega please change the pin that the servo is attached to.

ie.

void setup()

{
  s0.attach(<pin number>);
}

where <pin number> is the pin you are using.

Also make sure the signal pin is the one going to the arduno and use the other
two pins for power and GND.
