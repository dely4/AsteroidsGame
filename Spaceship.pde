class Spaceship extends Floater  {   
	
	public Spaceship(){
		corners = 40;
		xCorners = new int[corners];
		yCorners = new int[corners];
		declareX();
		declareY();
		myColor = 0;
		myCenterX = 500;
		myCenterY = 500;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 180;
	}
	

	public void declareX(){
			xCorners[0] = -5;
			xCorners[1] = -5;
			xCorners[2] = -10;
			xCorners[3] = -10;
			xCorners[4] = -12;
			xCorners[5] = -12;
			xCorners[6] = -14;
			xCorners[7] = -14;
			xCorners[8] = -16;
			xCorners[9] = -16;
			xCorners[10] = -12;
			xCorners[11] = -12;
			xCorners[12] = -10;
			xCorners[13] = -10;
			xCorners[14] = -8;
			xCorners[15] = -8;
			xCorners[16] = -6;
			xCorners[17] = -6;
			xCorners[18] = -2;
			xCorners[19] = -2;
			xCorners[20] = 2;
			xCorners[21] = 2;
			xCorners[22] = 6;
			xCorners[23] = 6;
			xCorners[24] = 8;
			xCorners[25] = 8;
			xCorners[26] = 10;
			xCorners[27] = 10;
			xCorners[28] = 12;
			xCorners[29] = 12;
			xCorners[30] = 16;
			xCorners[31] = 16;
			xCorners[32] = 14;
			xCorners[33] = 14;
			xCorners[34] = 12;
			xCorners[35] = 12;
			xCorners[36] = 10;
			xCorners[37] = 10;
			xCorners[38] = 5;
			xCorners[39] = 5;
	}

	public void declareY(){
		yCorners[0]= 5;
		yCorners[1]= 3;
		yCorners[2]= 3;
		yCorners[3]= 1;
		yCorners[4]= 1;
		yCorners[5]= -1;
		yCorners[6]= -1;
		yCorners[7]= -4;
		yCorners[8]= -4;
		yCorners[9]= -5;
		yCorners[10]= -5;
		yCorners[11]= -7;
		yCorners[12]= -7;
		yCorners[13]= -9;
		yCorners[14]= -9;
		yCorners[15]= -7;
		yCorners[16]= -7;
		yCorners[17]= -5;
		yCorners[18]= -5;
		yCorners[19]= -7;
		yCorners[20]= -7;
		yCorners[21]= -5;
		yCorners[22]= -5;
		yCorners[23]= -7;
		yCorners[24]= -7;
		yCorners[25]= -9;
		yCorners[26]= -9;
		yCorners[27]= -7;
		yCorners[28]= -7;
		yCorners[29]= -5;
		yCorners[30]= -5;
		yCorners[31]= -4;
		yCorners[32]= -4;
		yCorners[33]= -1;
		yCorners[34]= -1;
		yCorners[35]= 1;
		yCorners[36]= 1;
		yCorners[37]= 3;
		yCorners[38]= 3;
		yCorners[39]= 5;
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

}
