class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = #ffffff;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 180;
    }
    public void setCenterX(int x){
      myCenterX = x;
    }
    public void setCenterY(int y){
      myCenterY = y;
    }
    public void setDirectionX(double x){
      myXspeed = x;
    }
    public void setDirectionY(double y){
      myYspeed = y;
    }
    public void setPointDirection(int x){
      myPointDirection = x;
    }
    public double getX(){
        return myCenterX;
    }
    public double getY(){
        return myCenterY;
    }
}
