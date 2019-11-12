//your code here
Particle[] hongKong=new Particle[102];
PImage ernie, jason;
void setup()
{
  size(1000,1000);
  background(255,255,255);
  
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
  double myX, myY, speed,angle;
  //DECLARE ANGLE 
  Particle() {
    myX=myY=500;
    angle=Math.random() * 2 * Math.PI;
    speed=Math.random()*6;
  }
  void move() {
    myX += Math.sin(angle)*speed;
    myY += Math.cos(angle)*speed;
  }
  void show() {
    image(ernie,(float)myX,(float)myY,100,100);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
	void move() {
    myY+=(int)(Math.random()*110)-55;
    myX+=(int)(Math.random()*20)-10;
  }
  void show() {
    image(jason,(float)myX,(float)myY,100,100);
  }
}
