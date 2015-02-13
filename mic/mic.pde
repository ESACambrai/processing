import ddf.minim.*;
 
float x;
float y;
Minim minim;
AudioInput input;
 
void setup () {

  size (600, 600);
  smooth();
  stroke (255);
  

   
  minim = new Minim (this);
  input = minim.getLineIn (Minim.STEREO, 512);
 
}
 
void draw () {
 background (0);
  float dimension = input.mix.level () * width;
  ellipse (width/2,height/2, dimension, dimension);   
 
}
