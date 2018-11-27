class Asteroid extends Floater
{
	private int myRotSpd, mySize;
	Asteroid()
	{
		myCenterX = Math.random()*width;
		myCenterY = Math.random()*height;
		myDirectionX = Math.random()*5-2;
		myDirectionY = Math.random()*5-2;
		//myDirectionX = myDirectionY = 0; //test speed
		myPointDirection = Math.random()*360;
		myRotSpd = (int)(Math.random()*11) - 5;
		//myRotSpd = 10; //test rotation speed
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		mySize = (int)(Math.random()*10)+5;
		//mySize = 15; //test size
		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 0 * mySize;
		yCorners[0] = -3 * mySize;
		xCorners[1] = 3 * mySize;
		yCorners[1] = -2 * mySize;
		xCorners[2] = 1 * mySize;
		yCorners[2] = 3 * mySize;
		xCorners[3] = -3 * mySize;
		yCorners[3] = 2 * mySize;
		xCorners[4] = -3 * mySize;
		yCorners[4] = -1 * mySize;
	}
	public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
    public void move()
    {
    	super.move();
    	myPointDirection += myRotSpd;
    }
}