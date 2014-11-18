PFont f; // charger typo
String message; // concatenation des lignes chargées en mémoire

int x = 10; // x coordonnée en x du texte à afficher
int y = 30; // x coordonnée en y du texte à afficher

void setup() {

  size(600, 150); // taille de la fenetre
  String lines[] = loadStrings("http://www.perdu.com/"); // charger un fichier texte
  
  f = createFont("Arial", 20);// charger une typo 
  textFont(f);   // appliquer une typo
  
  
  // parcourrir le tableau lines (lines.length nous retourne la taille du tableau)
  for (int i = 0; i < lines.length ; i ++ ) {
    message = message + lines[i]; // on ajoute la ligne courante dans la variable message
  } 

 
  background(255);
  fill(0);


// parcourir le contenu texte de la variable message (message.length() nous renvoie le nombre de caractères 
// contenus dans la variable message)

  for (int i = 0; i < message.length(); i++) { 
    
    if ( x > 570) { y = y +30; x =10;} // on test la position du caratere courant, si on arrive à la bordure de la fenetre de rendu
                                       // on saute une ligne (y =y+30) et rejustifie le texte à gauche (x =10)
    
    textSize(random(8, 20)); // on applique une taille aléatoire au texte
    text(message.charAt(i), x, y); // aficher le caractere courant 
                                   // ---> la fonction charAt() nous renvoi le caractere courant de la variable message
    x += textWidth(message.charAt(i)); // textWidth() permet de calculer l'ecart entre les caratères
  }
  
  
}

