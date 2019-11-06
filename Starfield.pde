//your code here
Particle[] hongKong=new Particle[102];
PImage ernie, jason;
void setup()
{
  size(1000,1000);
  background(92);
  
  for(int i=0; i<99; i++) {
    hongKong[i]=new Particle();
  }
  for(int i=99; i<102; i++) {
    hongKong[i]=new OddballParticle();
  }
  
  ernie=loadImage("ernest.jpg");
  jason=loadImage("jasonDisney.jpg");
}
void draw()
{
  //for loops assigning hongKong[i] to new PArticle; move; then show
  for(int i=0; i<hongKong.length; i++) {
    hongKong[i].move();
    hongKong[i].show();
  }
}
class Particle
{
  Particle() {
    double myX, myY, mySpeed;
  }
  move() {
    myX=
  }
  show() {
    image(ernie,myX,myY,20,20);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
	show() {
    image(jason,,,20,20);
  }
}
