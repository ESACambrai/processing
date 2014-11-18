PFont f; 


void setup() {

  size(600, 800);
  background(0);
  fill(255);
  f = createFont("Arial", 20); 
  textFont(f);   



  XML rss = loadXML("http://www.lemonde.fr/rss/une.xml"); 
  XML[] titleXMLElements = rss.getChildren("channel/item/title");
  
  for (int i = 0; i < titleXMLElements.length; i++) {

    String title = titleXMLElements[i].getContent();  
    textSize(random(8, 20));  
    text(title, random(100), random(800));
    
  }
}

