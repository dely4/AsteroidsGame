class Asteroid extends Floater{

	private int rotVel;
	public Asteroid(){
		rotVel = (int)(Math.random()*3-2);
		corners = 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = (int)(Math.random()*51-25);
		yCorners[0] = (int)(Math.random()*51-25);
		for(int i = 1; i < corners; i++){
			xCorners[i] = (xCorners[i-1] + ((int)(Math.sin(Math.random()*(HALF_PI*1.5))*50)));
			yCorners[i] = (yCorners[i-1] + ((int)(Math.cos(Math.random()*(HALF_PI*1.5))*50)));
		}
		myColor = 255;
		myCenterX = Math.random()*1000;
		myCenterY = Math.random()*1000;
		myDirectionX = Math.random()*2;
		myDirectionY = Math.random()*2;
		myPointDirection = Math.random()*360;
	}
	public void setX(int x){myCenterX = x;}  
	public int getX(){return((int)myCenterX);}   
	public void setY(int y){myCenterY = y;}   
	public int getY(){return((int)myCenterY);}   
	public void setDirectionX(double x){myDirectionX = x;}   
	public double getDirectionX(){return(myDirectionX);}   
	public void setDirectionY(double y){myDirectionY = y;}   
	public double getDirectionY(){return(myDirectionY);}   
	public void setPointDirection(int degrees){myPointDirection = degrees;}   
	public double getPointDirection(){return(myPointDirection);} 

	public void move(){
		myCenterX += myDirectionX;
		myCenterY += myDirectionY;
		if(myCenterX >width){     
      		myCenterX = 0;    
    	}else if (myCenterX<0){     
    		myCenterX = width;    
   		}    
    
    	if(myCenterY >height){    
      		myCenterY = 0;    
      	}else if (myCenterY < 0){     
      		myCenterY = height;    
    	}

    	turn(rotVel);
	}
}