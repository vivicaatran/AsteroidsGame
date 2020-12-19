Spaceship ship = new Spaceship();
Star[]sky = new Star[1000];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bullet = new ArrayList <Bullet>();
public void setup() 
{
  size(500, 500);
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
    float collision = dist((float)ship.getX(),(float)ship.getY(),(float)rocks.get(i).getX(),(float)rocks.get(i).getY());
    if(collision < 15){
      rocks.remove(i);
    }
  }
  for(int i = 0; i < bullet.size(); i++){
    bullet.get(i).show();
    bullet.get(i).move();
  }
  for(int i = 0; i < bullet.size(); i++){
    for(int j = 0; j < rocks.size(); j++){
      float shot = dist((float)bullet.get(i).getX(),(float)bullet.get(i).getY(),(float)rocks.get(j).getX(),(float)rocks.get(j).getY());
      if(shot < 10){
        rocks.remove(j);
        bullet.remove(i);
       break;
      }
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
  if(key == ' '){
    bullet.add(new Bullet(ship));
  }
}

