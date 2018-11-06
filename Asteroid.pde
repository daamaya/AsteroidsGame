class Asteroid //extends Floater
{
	private int size;
	Asteroid()
	{
		myCenterX = Math.random()*width;
		myCenterY = Math.random()*height;
		myDirectionX = Math.random()*10;
		myDirectionY = Math.random()*10;
		myPointDirection = Math.random()*360;
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		size = 
		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 0 * size;
		yCorners[0] = -3 * size;
		xCorners[1] = 2 * size;
		yCorners[1] = -1 * size;
		xCorners[2] = 1 * size;
		yCorners[2] = 3 * size;
		xCorners[3] = -4 * size;
		yCorners[3] = 2 * size;
		xCorners[4] = -3 * size;
		yCorners[4] = -1 * size;
	}
}