Table table;
PFont f;



void setup() {

  size(600, 800);
  background(0);
  noStroke();
  f = createFont("Arial", 10);
  textFont(f);    


  table = loadTable("bio.csv", "header"); 
  
  

  /// on crée un tableau producteur pour y stocher les valeurs de la table 
  int[] producteurs = new int[table.getRowCount()];
  int i = 0;  
  
  for (TableRow row : table.rows()) {
    producteurs[i] = row.getInt("Producteurs");
    i++;
  }  
  
  /////////////////////////////////////////////////////////////////////////
  
  
  // on stocke la valeur min et max //////////////////////////////////////
  float minimum = min(producteurs);
  float maximum = max(producteurs);


  for (TableRow row : table.rows()) {

    int Annee = row.getInt("Annee");

    if (Annee == 2011) {
      String Id = row.getString("id_departement");
      int Prod = row.getInt("Producteurs");
      
      float X = random(width);
      float Y = random(height);
      
      ///// remise à l'echelle avec la fonction map
      float diametre = map(Prod, minimum, maximum, 5, 100);
      float alpha = map(Prod, minimum, maximum, 50, 255);
  
    
      fill(255,255,0, alpha);
      ellipse (X, Y, diametre, diametre);
      fill(0);
      text(Id, X-5, Y+5);
      
      
    }
  }
}

