Spaceship ship = new Spaceship();
Star [] b = new Star[100];
ArrayList <Asteroid> arrAst = new ArrayList <Asteroid>();
ArrayList <Bullet> arrBull = new ArrayList <Bullet>();

public void setup() 
{

  background(0);
  size(500,500);

  //star
  for(int i = 0; i < b.length; i++){
  	b[i] = new Star();
  }

  //asteroidwwwwww
  for(int p = 0; p<10; p++){
  	arrAst.add(new Asteroid());
  	arrAst.get(p).accelerate(1.5);
  }



}
public void draw() 
{
  fill(0,0,0,250);
  rect(0,0,500,500);
  //draw star
  for(int  i = 0; i<b.length;i++){
  	b[i].show();
  }

  //show a ship 
  ship.show();
  ship.move();

  //show asteroid
  for(int o = 0; o < arrAst.size(); o++){
  	arrAst.get(o).move();
  	arrAst.get(o).show();
  }

   for(int o = 0; o < arrBull.size(); o++){
  	arrBull.get(o).move();
  	arrBull.get(o).show();
  }

  for(int i = 0 ; i < arrAst.size(); i++){
	for(int a = 0; a < arrBull.size();a++){
		if(dist((float)(arrBull.get(a).getmyCenterX()),(float)(arrBull.get(a).getmyCenterY()), (float)(arrAst.get(i).getmyCenterX()), (float)(arrAst.get(i).getmyCenterY()))<20){
			arrAst.remove(i);
			arrBull.remove(a);
			break;
		}
	}
  }
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
	if(key == ' '){
		arrBull.add(new Bullet(ship));


	}
}