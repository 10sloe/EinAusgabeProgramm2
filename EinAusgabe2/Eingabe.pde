import java.util.*;

class Eingabe
{
  private ArrayList<String> inhalt;
  
  Eingabe()
  {
    inhalt = new ArrayList<String>();
    inhalt.add("Hallo Juno!");
    inhalt.add("Treffen am Kino.");
    inhalt.add("Deine Juna!");
  }
  
  
  void zeichnen()
  {
    zeichnen(50,80,200,200);
  }
  
  void zeichnen(int x, int y, int breite, int hoehe)
  {
    fill(0);
    textSize(20);
    text("Eingabe: " , x, y);
    fill(255);
    rect(x,y+ 20,breite,hoehe);
    fill(0);
    for (int i = 0; i < inhalt.size(); i++)
    {
      text(inhalt.get(i), x + 10, y + i*30 + 60);
    }
  }
  
  String liesZeile()
  {
    String zeile = inhalt.get(0);
    inhalt.remove(0);
    return zeile;
  }
  
  boolean endeDerEingabe()
  {
    return inhalt.isEmpty();
  }
  
  
  
  
  
  
}
