class Bullet extends Floater{
	public Bullet(Spaceship ship){
		myCenterX = ship.getmyCenterX();
		myCenterY = ship.getmyCenterY();
		myPointDirection = ship.getmyPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + ship.getmyPointDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + ship.getmyPointDirectionY();
		myColor = 255;

	}	
	public void show(){
		fill(255,0,0);
		ellipse((float)myCenterX, (float)myCenterY, 10, 10);
		super.show();
	}
	public double getmyCenterX(){
		return myCenterX;
	}
	public double getmyCenterY(){
		return myCenterY;
	}	
}