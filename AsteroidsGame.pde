Spaceship Alpha;
private boolean wPressed, sPressed, aPressed, dPressed;
public void setup() 
{
	size(800,800);
	Alpha = new Spaceship();
	wPressed = false;
	sPressed = false;
	aPressed = false;
	dPressed = false;
}
public void draw() 
{
	background(0);
	Alpha.show();
	Alpha.move();
	if(keyPressed)
	{
		if(wPressed == true){Alpha.accelerate(0.3);}
		if(sPressed == true){Alpha.accelerate(-0.3);}
		if(aPressed == true){Alpha.turn(-5);}
		if(dPressed == true){Alpha.turn(5);}
	}
	keyReleased();
}
public void keyPressed()
{
	if(key == 'w'){wPressed = true;}
	if(key == 's'){sPressed = true;}
	if(key == 'a'){aPressed = true;}
	if(key == 'd'){dPressed = true;}
	if(key == 'r')
		{
			Alpha.setX((int)(Math.random()*width));
			Alpha.setY((int)(Math.random()*width));
			Alpha.setPointDirection((int)(Math.random()*360));
			Alpha.setDirectionX(0);
			Alpha.setDirectionY(0);
		}
}
public void keyReleased()
{
	if(key == 'w')
	{
		wPressed = false;
		Alpha.setDirectionY(Alpha.getDirectionY()*.95);
		Alpha.setDirectionX(Alpha.getDirectionX()*.95);
	}
	if(key == 's')
	{
		sPressed = false;
		Alpha.setDirectionY(Alpha.getDirectionY()*.95);
		Alpha.setDirectionX(Alpha.getDirectionX()*.95);
	}
}
