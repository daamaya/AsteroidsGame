class Spaceship extends Floater  
{   
	Spaceship()
	{
		myCenterX = myCenterY = 400;
		myColor = color(0,0,255);
		corners = 23;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 2;
		yCorners[0] = -2;
		xCorners[1] = 15;
		yCorners[1] = -2;
		xCorners[2] = 18;
		yCorners[2] = 0;
		xCorners[3] = 15;
		yCorners[3] = 2;
		xCorners[4] = 2;
		yCorners[4] = 2;
		xCorners[5] = 2;
		yCorners[5] = 6;
		xCorners[6] = 6;
		yCorners[6] = 6;
		xCorners[7] = 9;
		yCorners[7] = 8;
		xCorners[8] = 6;
		yCorners[8] = 10;
		xCorners[9] = -6;
		yCorners[9] = 10;
		xCorners[10] = -6;
		yCorners[10] = 6;
		xCorners[11] = -2;
		yCorners[11] = 6;
		xCorners[12] = -2;
		yCorners[12] = 2;
		xCorners[13] = -6;
		yCorners[13] = 2;
		xCorners[14] = -6;
		yCorners[14] = -2;
		xCorners[15] = -2;
		yCorners[15] = -2;
		xCorners[16] = -2;
		yCorners[16] = -6;
		xCorners[17] = -6;
		yCorners[17] = -6;
		xCorners[18] = -6;
		yCorners[18] = -10;
		xCorners[19] = 6;
		yCorners[19] = -10;
		xCorners[20] = 9;
		yCorners[20] = -8;
		xCorners[21] = 6;
		yCorners[21] = -6;
		xCorners[22] = 2;
		yCorners[22] = -6;
	}
   public void setX(int x){myCenterX = x;}
   public int getX(){return myCenterX;}
   public void setY(int y){myCenterY = y;}
   public int getY(){return myCenterY;}
   public void setDirectionX(double x){myDirectionX = x;}
   public double getDirectionX(){return myDirectionX;}
   public void setDirectionY(double y){myDirectionY = y;}
   public double getDirectionY(){return myDirectionY;}
   public void setPointDirection(int degrees){myPointDirection = degrees;}
   public double getPointDirection(){return myPointDirection;}
}