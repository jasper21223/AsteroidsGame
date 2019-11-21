Spaceship ship = new Spaceship();
Star [] b = new Star[100];
public void setup() 
{

  background(0);
  size(500,500);
  for(int i = 0; i < b.length; i++){
  	b[i] = new Star();
  }

}
public void draw() 
{
  fill(0,0,0,250);
  rect(0,0,500,500);
  for(int  i = 0; i<b.length;i++){
  	b[i].show();
  }
  ship.show();
  ship.move();
}

public void keyPressed(){
	if(key == 'w'){
		ship.accelerate(0.5);
	}
	if(key == 'a'){
		ship.turn(-5);
	}
	if(key == 's'){
		ship.accelerate(-0.5);
	}
	if(key == 'd'){
		ship.turn(5);
	}
	if(key == 'q'){ //hyperspace
		ship.setmyDirectionX(0);
		ship.setmyDirectionY(0);
		ship.setmyCenterX((Math.random()*500)+1);
		ship.setmyCenterY((Math.random()*500)+1);
		ship.setmyPointDirection(Math.random()*360);
	}
}