PImage imgshailen;
PImage imgheart; 
int value = 50; 



void setup()
{
 fullScreen(); 
 imgshailen=loadImage("Shailen.png");
 imgheart=loadImage("heart.png"); 
 }


void draw()
{
  fill(value); 
  smooth(); 
  noStroke(); 
  fill(255, 0, 0); 
  
  beginShape(); 
  vertex(50, 15); 
  bezierVertex(50, -5, 90, 5, 50, 40); 
  vertex(50, 15); 
  bezierVertex(50, -5, 10, 5, 50, 40); 
  endShape(); 
}

void keyPressed() // when key pressed, image of shailen rotates clockwise 
{ 
  if (value == 0) 
  { 
    value = 255; 
  } 
  else
  { 
    value = 0; 
  } 
  
  
 background(0);
 translate(width/2, height/2); 
 rotate(frameCount/360.0*TWO_PI); 
 translate(-imgshailen.width/2, -imgshailen.height/2);
 image(imgshailen, 256, 256); 
 

}