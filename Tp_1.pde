int marcaTiempo;
int estado;
//IGNACIO RODRIGO LOPEZ 
// COMISION 5

int x,y;
int m,n;

int p;

//boton inicio

int a;
int b;
int c;
int d;
boolean botonFinal = false;
int pantalla = 0;


float posX;


// otro texto


PImage mesa;
PImage serrucho;
 PImage serruchooo;
 PImage cajita;
 PImage fondo;

PFont font;


void setup(){
size( 640,480 );
x=200;
y=height/2;
a=600;
b=height/2;
p=0;


mesa = loadImage ("mesa.jpg");
serrucho = loadImage ("serrucho.jpg");
serruchooo = loadImage ("serruchooo.jpg");
cajita = loadImage ("cajita.jpg");
 fondo=loadImage ("fondo.jpg");
  
  font = loadFont ("AgencyFB-Reg-25.vlw");
  
  
a = 580;
 b = 420;
 c = 50;
 d = 50;
 

 posX = 0;
 

  y= 12;
}



void draw(){
  int diferencia = millis() - marcaTiempo;
if ( estado == 0 ){
  background ( 41,150,170 );
   
   image (serrucho,50,50);
   
   fill (0);
   textSize(18);
   text ("Hola mi nombre es Ignacio y hoy voy a presentar la herramienta llamada serrucho",  y,x);
   x+=1;

 
  if (millis()>= 5000)
  estado = 1;
   marcaTiempo = millis( );
 
 
 
}else if (estado == 1 ){
 background (23,93,106);

  image (mesa,0,50);
  
   fill (255);
textSize(15);
 posX = posX + 0.5;
text ("El serrucho es una herramienta creada hace mucho tiempo \n Existe una leyenda Griega que un niño llamado Perdix quien, mientras era aprendiz de su tio. \n fue inspirado a crear esta herramienta al mirar la espina de un pez. \n El serrucho hace mucho mas facil el corte de madera y otros materiales, este permitio a los humanos \n avanzar facilmente con la construccion.", m,n);
n+=1;

 
   
 
 
 
  if ( diferencia >= 10000 ){
    estado = 2;
    marcaTiempo = millis( );
  }
}else if (estado == 2 ){
  background (108,158,167);
  
  image (serruchooo,20,20);
  
  fill (0);
textSize (16);
  text ("El serrucho consiste en una hoja de metal \n dentada, que tiene como forma mas \n comun en el  trapecio pero una forma mas estrecha en la punta. \n posee un mango de madera o plastico para poder sujetar. \n Se usa pricipalmente para cortar madera en trabajos de carpinteria o blicolaje general.", mouseX,p);
  p+=1;
  
  y+=1;
if ( diferencia >= 5*1000 ){
    estado = 3;
    marcaTiempo = millis( );
}
}else if (estado == 3 ){
background (123,221,240);

image (cajita,10,10);

fill (0);
textSize(15);
text ("Al serrucho podemos encontrarlo facilmente en la caja de herramientas \n  ya que es una herramienta de uso cotidiano \n  y nos permite realizar diversas funciones.", n, 50);
n-=2;

if ( diferencia >= 5000){
  estado = 4;
  marcaTiempo = millis( );
}
}else if (estado == 4 ) {
  background ( 77,156,232);
  
  image (fondo,10,50);
  
  fill (255);
  textSize (18);
  text ("Espero que les haya gustado esta presentacion \n  sobre las diversas funciones que cumple nuestra gran herramienta el serrucho. \n Nunca sabemos cuando lo vamos a necesitar \n pero el estara ahi siempre para ayudar." , n, 150);
  n+=1;
  
  fill (0);
 rect (a,b,c,d);
  if (diferencia >= 2000){
     marcaTiempo = millis( );
  //
}

 }
}
void mousePressed() {
 if (dist(mouseX,mouseY,a,b) < d) {
 botonFinal = false;
 estado= 0;
  }
 }
