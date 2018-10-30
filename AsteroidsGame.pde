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
}