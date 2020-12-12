Spaceship ship = new Spaceship();
Star[] sky = new Star[1000];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0, 0, 0);
  for(int i = 0; i < sky.length; i++){
    noStroke();
    sky[i].show();
  }
  ship.show();
  ship.move();
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float crash = dist((float)ship.getX(),(float)ship.getY(),(float)rocks.get(i).getX(),(float)rocks.get(i).getY());
    if(crash < 15){
      rocks.remove(i);
    }
  }
}
public void keyPressed()
{
  if(keyCode == UP){
    ship.accelerate(.2);
  }
  if(keyCode == DOWN){
    ship.accelerate(-.2);
  }
  if(keyCode == LEFT){
    ship.turn(-10);
  }
  if(keyCode == RIGHT){
    ship.turn(10);
  }
}
