
int a, b, c, d;

ArrayList<Figura> rectangulos;


void setup() {
  rectangulos = new ArrayList<Figura>();
  size(800, 600);
  a=0;
  b=0;
  c=0;
  d=0;
}


void draw() {
  background(0); //refrescar pantalla
  stroke(0); //color de borde
  strokeWeight(2); //ancho del borde
  fill(255);// color fondo
  
  for(Figura figura: rectangulos)
  {
      rect(figura.a, figura.b, figura.c, figura.d);
  }
  
  rect(a, b, c, d);
}


void mousePressed() {
  c=0;
  d=0;
  a=mouseX;
  b=mouseY;
}


void mouseDragged() {
  c=mouseX-a;
  d=mouseY-b;
}

void mouseReleased() {
 rectangulos.add(new Figura(a,b,c,d));
}


class Figura {
    int a,b,c,d;
    
    Figura(int a,int b,int c,int d)
    {
      this.a = a;
      this.b = b;
      this.c = c;
      this.d = d;
    }
}
