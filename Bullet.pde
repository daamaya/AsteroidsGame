class Bullet extends Floater
{
	Bullet()
	{
		myCenterX = 400;
		myCenterY = 400;
		myPointDirection = 0;
		myDirectionX = 0;
		myDirectionY = 0;
	}
	Bullet(Spaceship theship)
	{
		myCenterX = theship.getX();
		myCenterY = theship.getY();
		myPointDirection = theship.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + theship.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + theship.getDirectionY();
	}
	public void show()
	{
		stroke(0);
		fill(255,0,0);
		ellipse((float)myCenterX,(float)myCenterY,5,5);
		//System.out.println("showing");
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