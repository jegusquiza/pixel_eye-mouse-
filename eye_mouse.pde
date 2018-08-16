import codeanticode.glgraphics.*;

int cellSize= 5;                  // the size of each element
PImage eye;

void setup(){
  size(750, 500,P3D);
  eye = loadImage("ojo.jpg");
}

void draw(){
  eye();
  
}

void eye(){
  eye.loadPixels();
background (0);

for (int x = 0; x < eye.width  ; x+=cellSize){
   for (int y = 0; y < eye.height ; y+=cellSize){
     int index = x + y * eye.width;
     color pix = eye.pixels[index];
 
     float r = red(pix );
     float g = green(pix); 
     float b = blue(pix) ;
   
     float distanceToMouse= dist(x + 10,y + 10,mouseX, mouseY);
   
     pushMatrix();                      // we want a fresh matrix for every item
     translate(0,0,distanceToMouse/1.0); // we are translating just on the Z axis
     //fill(distanceToMouse);            // give it some color and interactivilty
 
   
    line(x, y, x - random(-1, 0), y - random(-1,0));
    stroke(r ,g  ,b );
    strokeWeight(mouseX/10);
    //strokeWeight(30);
     popMatrix();                        
   }
  
}  
eye.updatePixels();
 
}


  
  



 