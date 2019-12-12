class Asteroid extends Floater{
	private int rotSpeed;

	Asteroid(){
		corners = 6;
		xCorners = new int[]{7,-8,-15,-7,7,15};
		yCorners = new int[]{-13,-13,0,13,13,0};
		myColor = color(100,100,100);
		myCenterX = ((int)(Math.random()*501));
		myCenterY = ((int)(Math.random()*501));
		myPointDirection = ((int)(Math.random()*361));

		rotSpeed = 2;
	}

	public void show(){
		turn(rotSpeed);
		super.show();
	}
	public void move(){
		super.move();
	}
	public double getmyCenterX(){
		return myCenterX;
	}
	public double getmyCenterY(){
		return myCenterY;
	}	
}