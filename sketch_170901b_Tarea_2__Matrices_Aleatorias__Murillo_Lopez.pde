
//Matrices Aleatorias, TAREA 2

matriz Ces;
matriz Ces2;

void setup()
{
  size(450,400);
  Ces= new matriz (20,140,240,50,0,0);
  Ces2= new matriz(20,140,90,50,0,0);
}

void draw()
{
  background(#B680E3);
  Ces.zoom();
  Ces.display();
  Ces2.zoom();
  Ces2.display();
}

class matriz
{
  
  int t, u, x, y, m, j;
  
  matriz(int t_, int u_, int x_, int y_, int m_, int j_)
  {
    t=t_;
    u=u_;
    x=x_;
    y=y_;
    m= m_;
    j =j_;
  }
  
  void zoom()
  {
    
    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x))
    {
    t= 15;
    
    }
    else 
    {
  
    t= 5;
  
    }

    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x)) 
    {
      
    t= 20;
    
    }
    else 
    {
    t= 10;
   
    }
  }
  
  void display()
  {
    for (m = 0; m<u; m+=t)

    {
      for (j = 0; j<u; j+=t)
      
      {
        fill (random(482));
        ellipse (x+m,y+j,t,t);
      }
    } 
  }
}