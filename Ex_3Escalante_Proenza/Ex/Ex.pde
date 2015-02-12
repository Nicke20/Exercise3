PImage field;
PImage football;
float x, y, rotation, counter;


void setup(){
  
  
  football= loadImage("football.png");
  football.resize(50, 50);
  
  // background
  field= loadImage("field.png");
  field.resize(600,400);
  size(600, 400);
  x= 0.0;
  y= 0.0;
  counter= 0.0;
  rotation= 0.0;
}


void draw(){
  image(field, 0, 0);
  pushMatrix();
  translate(35 + counter, 10);
   image(football, 275, 175);
   popMatrix();
   
   rotation+= 0.01;
   x+= 1.0;
   if(x> width){
     x=0;
   }
   
   counter++;
   
}

