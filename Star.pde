class Star{

	private int myX, myY;

	public Star(){
		myX = (int)(Math.random()*1000);
		myY = (int)(Math.random()*1000);
	}

	public void draw(){
		ellipse(myX,myY,2,3);
	}

}