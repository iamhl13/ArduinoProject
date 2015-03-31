import processing.serial.*;
Serial myPort;
int resistorValue = 0;
int peakValue = 0;

void setup(){
  size(400,400);
  myPort = new Serial(this, "/dev/tty.usbmodemfd121", 9600);//port name
}

void draw(){
  background(255);
   fill(255);
  if(resistorValue > peakValue){
     peakValue = resistorValue;
     ellipse(resistorValue,height/2-10,20,20);
     ellipse(resistorValue,height/2-20,20,20);
     ellipse(resistorValue,height/2-30,20,20);
     ellipse(resistorValue,height/2-40,20,20);
   }  
   if (resistorValue < peakValue){
    peakValue = resistorValue;
    fill(255);
    ellipse(width/2 - 10,resistorValue,20,20);
    ellipse(width/2 - 20,resistorValue,20,20);
    ellipse(width/2 - 30,resistorValue,20,20);
    ellipse(width/2 - 40,resistorValue,20,20);
   }
}  

void serialEvent(Serial myPort){
  resistorValue = myPort.read();
}
// read data from Arduino
