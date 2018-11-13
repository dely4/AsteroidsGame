class Asteroid extends Floater{

	private int rotVel;
	public Asteroid(){
		rotVel = (int)(Math.random()*3-2);
		corners = (int)(Math.random()*2+4);
		xCorners = new int[corners];
		yCorners = new int[corners];
		for(int i =0; i < corners; i++){
			xCorners[i] = (int)(Math.random()*51-25);
			yCorners[i] = (int)(Math.random()*51-25);
		}
		myColor = 255;
		myCenterX = Math.random()*1000;
		myCenterY = Math.random()*1000;
		myDirectionX = Math.random()*5;
		myDirectionY = Math.random()*5;
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