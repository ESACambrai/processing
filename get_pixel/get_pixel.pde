PImage orwell; // declaration de la variable image "orwell"

void setup() {

size(615, 385); // taille de la fenetre de rendu
background(0); // couleur du fond
noStroke(); // enlever les contours
orwell = loadImage("orwell.jpg"); // on charge l'image dans la variable orwell



// on parcourt l'image: tt les 10 pixels sur l'axe x et y
for (int x =0; x< width; x=x+10) {   
 for (int y =0; y< width; y=y+10) {  
  
   
   
   color c = orwell.get(x,y); // on récupère la couleur du pixel courant
   float contraste = brightness(c); // on récupère la valeur de la luminosité du pixel courant
   rectMode(CENTER); // on place le point d'ancrage du rectangle en son centre
   
   
   pushMatrix(); //   on crée une nouvelle matrice (calque)
   translate(x, y); // on déplace son origine en fonction des coordonnées x,y
   rotate(radians(contraste)); // on effectue une rotation en fonction de la luminosité 
   rect(0, 0, contraste/40,contraste/40); // on affiche le rectangle
   popMatrix(); // on ferme la matrice

 
   }  
  }
}
