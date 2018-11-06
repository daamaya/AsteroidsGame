class Star //note that this class does NOT extend Floater
{
	private float myX, myY;
	Star()
	{
		myX = (float)(Math.random()*width);
		myY = (float)(Math.random()*height);
	}
	public void show()
	{
		stroke(255);
		fill(255);
		ellipse(myX,myY,1,1);
	}
}
