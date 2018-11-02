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
	if (!wPressed || !sPressed)
	{
		Alpha.setDirectionY(Alpha.getDirectionY()*.95);
		Alpha.setDirectionX(Alpha.getDirectionX()*.95);
	}
	if(keyPressed)
	{
		if(wPressed){Alpha.accelerate(0.25);}
		if(sPressed){Alpha.accelerate(-0.25);}
		if(aPressed){Alpha.turn(-5);}
		if(dPressed){Alpha.turn(5);}
	}
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
	if(key == 'w'){wPressed = false;}
	if(key == 's'){sPressed = false;}
	if(key == 'a'){aPressed = false;}
	if(key == 'd'){dPressed = false;}
}
