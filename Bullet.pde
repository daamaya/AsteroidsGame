class Bullet extends Floater
{
	Bullet()
	{
		myCenterX = width/2;
		myCenterY = height/2;
		myPointDirection = 0;
		myDirectionX = 0;
		myDirectionY = 0;
	}
	Bullet(Spaceship theship)
	{
		myCenterX = theship.getX();
		myCenterY = theship.getY();
		myPointDirection = theship.getPointDirection();
		myDirectionX = 5*theship.getDirectionX();
		myDirectionY = 5*theship.getDirectionY();
	}
	public void show()
	{
		fill(255,0,0);
		ellipse((float)myCenterX,(float)myCenterY,2,2);
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
}