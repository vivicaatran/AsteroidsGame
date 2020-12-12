class Asteroid extends Floater {
  private int rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*5)-3;
    corners = 5;
    myColor = #5c5e61;
    xCorners = new int[corners];
    yCorners = new int[corners];
    corners = 5;
    xCorners = new int[] {-15, 0, 15, 10, -10};
    yCorners = new int[] {0, -13, 0, 15, 15};
    myCenterX = (int)(Math.random()*400);
      myCenterY = (int)(Math.random()*400);
      myXspeed = (int)(Math.random()*5)-2;
      myYspeed = (int)(Math.random()*5)-2;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
        return myCenterX;
    }
    public double getY(){
        return myCenterY;
    }
}
