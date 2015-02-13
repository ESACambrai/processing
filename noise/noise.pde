
// le noise est ce que on appelle du bruit perlin
// c'est une suite de valeurs aleatoires (comme pour la fonction random)
// sauf que chauque nouvelle valeur est proche de la valeur précédente


// valeurs de départ
float xtime = 0;
float ytime = 50;


void setup()  {   
  size(600,600);  

}   

void draw() {   
  // on calcul une nouvelle valeur aleatoire pour les coordonnées x et y
  float x = noise(xtime)*width;  
  float y = noise(ytime)*height;  
  
  // on incremente l'ecart du noise
  xtime = xtime + 0.01 ;
  ytime = ytime + 0.01 ;
  
  // on dessine l'ellipse 
  stroke(0);
  fill(175);  
  ellipse(x,y,16,16);  
}
