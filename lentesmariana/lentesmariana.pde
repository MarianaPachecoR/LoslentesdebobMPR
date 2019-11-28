import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

PImage lentes;
PImage lentes2;
PImage lentes3;
PImage lentes4;
PImage lentes5;

int estados=0;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();

  lentes = loadImage("lentes1.png");
  lentes2 = loadImage("Lentes2.png");
  lentes3 = loadImage("Lentes3.png");
  lentes4 = loadImage("Lentes4.png");
  lentes5 = loadImage("Lentes5.png");
}

void draw() {
  scale(2);

  opencv.loadImage(video);
  
  image(video, 0, 0 );
  
  display();
}

void captureEvent(Capture c) {
  c.read();
}
