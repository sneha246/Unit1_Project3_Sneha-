PImage imgshailen;


void setup()
{
 fullScreen();
 imgshailen=loadImage("Shailen.png");

}

void draw()
{
 background(0);
 translate(width/2, height/2); 
 rotate(frameCount/360.0*TWO_PI); 
 translate(-imgshailen.width/2, -imgshailen.height/2);
 image(imgshailen, 256, 256); 
}


  