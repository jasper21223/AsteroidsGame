class Star //note that this class does NOT extend Floater
{
  protected int myX;
  protected int myY;
  Star(){
  	myX = (int)(Math.random()*501);
   	myY = (int)(Math.random()*501);
  }
  public void show(){
  	fill(255);
  	ellipse(myX , myY, 5,5);
  }
 }
