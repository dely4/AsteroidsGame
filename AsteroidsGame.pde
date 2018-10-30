Spaceship ship;
public void setup(){
	size(1000,1000);
	ship = new Spaceship();
}
public void draw() 
{
	background(0);
	ship.move();
	ship.setPointDirection(mouseY);
	ship.show();
}

public void keyPressed(){
	
	if(key == 'w'){
		ship.accelerate(5);
	}
}