Spaceship Alpha;
public void setup() 
{
	size(800,800);
	Alpha = new Spaceship();
}
public void draw() 
{
	background(0);
	Alpha.show();
	Alpha.move();
}
public void keyPressed()
{
	if(key == 'w'){Alpha.accelerate(0.3);}
	if(key == 's'){Alpha.accelerate(-0.3);}
	if(key == 'a'){Alpha.turn(-10);}
	if(key == 'd'){Alpha.turn(10);}
	if(key == 'r')
	{
		Alpha.setX((int)(Math.random()*width));
		Alpha.setY((int)(Math.random()*width));
		Alpha.setPointDirection((int)(Math.random()*360));
	}
}