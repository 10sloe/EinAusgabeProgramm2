import java.util.*;

class Ausgabe
{
  private ArrayList<String> inhalt;
  
  Ausgabe()
  {
    inhalt = new ArrayList<String>();
  }
  
  
  void zeichnen()
  {
    zeichnen(350,80,200,200); 
  }
  
  void zeichnen(int x, int y, int breite, int hoehe)
  {
    fill(0);
    textSize(20);
    text("Ausgabe: " , x, y);
    fill(255);
    rect(x,y+ 20,breite,hoehe);
    fill(0);
    for (int i = 0; i < inhalt.size(); i++)
    {
      text(inhalt.get(i), x + 10, y + i*30 + 60);
    }
  }
  
  void schreibe(int zahl)
  {
    inhalt.add(zahl+"");
  }
  
  void schreibe(String text)
  {
    inhalt.add(text);
  }
  
  
  
  
  
}
