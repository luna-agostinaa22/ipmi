PImage img1, img2, img3;
int pantalla = 0;
int tiempoInicio;
float textoX = -600;

void setup() {
  size(640, 480);
  img1 = loadImage("gta1.jpg");
  img2 = loadImage("gta2.jpeg");
  img3 = loadImage("gta3.jpg");
  tiempoInicio = millis();
  textFont(createFont("Arial", 20));
}

void draw() {
  background(0);

  if (millis() - tiempoInicio > 5000) {
    pantalla++;
    if (pantalla > 2) pantalla = 0;
    tiempoInicio = millis();
    textoX = -600;
  }

  
if (textoX < 30) {
    textoX += 5;
  }
  fill(255);
  textSize(22);

  if (pantalla == 0) {
    image(img1, 0, 0, width, height);
    text("GTA V: Un mundo abierto lleno de acción.", textoX, 50);
    text("Explora Los Santos, una ciudad inspirada en Los Ángeles.", textoX, 80);
    text("Tres personajes. Una historia. Infinitas posibilidades.", textoX, 110);
  } 
  else if (pantalla == 1) {
    image(img2, 0, 0, width, height);
    text("Conocé a los protagonistas:", textoX, 50);
    text("Michael: el ex ladrón de bancos.", textoX, 90);
    text("Franklin: un joven ambicioso del barrio.", textoX, 130);
    text("Trevor: caos puro con patas.", textoX, 170);
  } 
  else if (pantalla == 2) {
    image(img3, 0, 0, width, height);
    textSize(20);
    text("Podés robar autos, volar aviones, correr carreras o simplemente pasear.", textoX, 50);
    text("GTA es una caja de arena digital donde vos decidís qué hacer.", textoX, 90);
    text("¿Estás listo para causar caos?", textoX, 130);

    fill(200);
    rect(250, 300, 140, 50);
    fill(0);
    textSize(20);
    text("Reiniciar", 275, 330);
  }
}

void mousePressed() {
  if (pantalla == 2 && mouseX > 250 && mouseX < 390 && mouseY > 300 && mouseY < 350) {
    pantalla = 0;
    tiempoInicio = millis();
    textoX = -600;
  }
}
