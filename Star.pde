class Star //note that this class does NOT extend Floater
{
  //your code here
  private int starX,starY;
  public Star(){
  	starX = (int)random(0,900);
  	starY = (int)random(0,900);
  }
  public void show(){
  	fill(255);
  	noStroke();
  	ellipse(starX,starY,2,2);
  }
}
