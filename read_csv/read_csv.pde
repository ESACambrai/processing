Table table;
PFont f;

int X = 30;
int Y = 30;

void setup() {
  
   size(600, 800);
   background(0);
   noStroke();
  f = createFont("Arial", 15);
  textFont(f);    

  
  table = loadTable("bio.csv", "header");

//  println(table.getRowCount() + " total rows in table"); 

  for (TableRow row : table.rows()) {
    
    int Annee = row.getInt("Annee");
    String Dpt = row.getString("Departement");
    int Prod = row.getInt("Producteurs");
    
 //   println(Annee + " " + Dpt + "  " + Prod);
    
    text(Annee + "  " + Dpt , X, Y );
    fill(255, 255, 255, Prod);
    ellipse (X+300, Y-10, Prod/10, Prod/10);
    
    Y= Y + 30;
    
    
  }
  
}
