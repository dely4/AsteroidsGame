Spaceship ship;
Star[] stars;
boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;

public void setup(){
	size(1000,1000);
	ship = new Spaceship();
	stars = new Star[50];
	for(int i = 0; i < 50; i++){
		stars[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < 50; i++){
		stars[i].draw();
	}
	ship.move();
	ship.show();
	if(wPressed){
		ship.accelerate(0.1);
	}
	if(sPressed){
		ship.accelerate(-0.1);
	}
	if(aPressed){
		ship.turn(-2);
	}
	if(dPressed){
		ship.turn(2);
	}
}


public void keyPressed(){
	if(key == ' '){
		ship.hyperspace();
	}
	if(key == 'w'){
		wPressed = true;
	}
	if(key == 's'){
		sPressed = true;
	}
	if(key == 'a'){
		aPressed = true;
	}
	if(key == 'd'){
		dPressed = true;
	}
}
public void keyReleased(){
	if(key == 'w'){
		wPressed = false;
	}
	if(key == 's'){
		sPressed = false;
	}
	if(key == 'a'){
		aPressed = false;
	}
	if(key == 'd'){
		dPressed = false;
	}
}