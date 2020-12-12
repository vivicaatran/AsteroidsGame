class Star //note that this class does NOT extend Floater
{
  private float myX, myY, mySize, myOpacity;
  private color mColor;

   public Star() {
     myX = (float)(Math.random()*width);
     myY = (float)(Math.random()*height);
     mySize = (float)1.5;
     myOpacity = (float)(Math.random()*200);
     mColor = color(255, 255, 255);
    }

    public void show() {
      noStroke();
      fill(mColor, myOpacity);
      ellipse(myX, myY, mySize, mySize);
    }
}
