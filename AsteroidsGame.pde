Spaceship ship;
Star[] stars;
ArrayList <Asteroid> ast = 	new ArrayList <Asteroid>();
boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;
ArrayList <Bullet> bullets = new ArrayList <Bullet>();

public void setup(){
	for(int i = 0; i < 10; i++){
		ast.add(new Asteroid());
	}
	size(800,800);
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
	for(int i = 0; i < ast.size(); i++){
		if(dist(ship.getX(), ship.getY(), ast.get(i).getX(), ast.get(i).getY()) <= 30){
			ast.remove(i);
		}
	}
	for(int i = 0; i < bullets.size(); i++){
		for(int q = 0; q < ast.size(); q++){
			if(dist(ast.get(q).getX(), ast.get(q).getY(), bullets.get(i).getX(), bullets.get(i).getY()) <= 30){
				ast.remove(q);
				bullets.remove(i);
				break;
			}
		}
	}
	
	for(int i = 0; i < bullets.size(); i++){
		if(bullets.get(i).getX()==width || bullets.get(i).getX() == 0){
			bullets.remove(i);
			break;
		}	
	}
	for(int i = 0; i < bullets.size(); i++){
		if(bullets.get(i).getY()==height || bullets.get(i).getY() == 0){
			bullets.remove(i);
			break;
		}	
	}
	for(Bullet bullet: bullets){
		bullet.show();
		bullet.move();
	}
	for(int i = 0; i < ast.size(); i++){
		ast.get(i).show();
		ast.get(i).move();
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
public void mouseClicked(){
	bullets.add(new Bullet(ship));
}
