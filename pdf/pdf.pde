
import processing.pdf.*; // on importe la librairie pdf


void setup() {
size(620, 877);
 beginRecord(PDF, "export.pdf");  // on commence l'enregistrement du pdf
 background(0);

}


void draw() {
  fill(255);  
  ellipse( mouseX, mouseY, 50, 50);

}


// lorsque l'on appuie sur la touche q, on termine l'enregistrement 
// et on quitte l'application

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}
