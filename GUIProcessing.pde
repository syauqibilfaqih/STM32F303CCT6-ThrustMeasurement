import processing.serial.*;
String myString;
Serial myPort;  

PFont f;

void setup()
{
  size(800,800);
  background(color(255));
  f = createFont("LCD 5x7",72);
  //println(Serial.list());
  myPort = new Serial(this, Serial.list()[0], 9600);
}
void draw()
{
  textFont(f);
  fill(0);
  text("Data Thrust", 80, 200);
  delay(500);
  while (myPort.available() > 0) {
    myString=myPort.readStringUntil('\n');
    //println(inByte);
    if(myString==null){myString="0";}
    background(color(255));
    text("Data Thrust", 80, 200);
    text(myString,150,500);
    text("N", 500,500);
  }
}
