class Bullet extends Floater{
  Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    float dRadians = (float)(myPointDirection * (Math.PI/180));
    myXspeed = 10 * Math.cos(dRadians) + bob.getDirectionX();
    myYspeed = 10 * Math.sin(dRadians) + bob.getDirectionY();
  }
  public void show(){
    fill(255, 255, 255);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,(float)7.5,(float)7.5);
  }
   public void move ()   
  {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
    if(myCenterX > width)
    {     
      bullet.remove(this);
    }    
    else if (myCenterX < 0)
    {     
      bullet.remove(this);
    }    
    if(myCenterY > height)
    {    
       bullet.remove(this);
    } 
    
    else if (myCenterY < 0)
    {     
       bullet.remove(this);
    }   
  }
  public double getX(){
        return myCenterX;
    }
  public double getY(){
        return myCenterY;
    }   
}
