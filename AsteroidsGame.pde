Spaceship Alpha;
Star[] Platinum = new Star[500]; //is that a fukin jojo reference??!?!?!!?11!!1
ArrayList <Asteroid> Azeroth = new ArrayList <Asteroid>();
private boolean wPressed, sPressed, aPressed, dPressed;
public void setup() 
{
	size(800,800);
	Alpha = new Spaceship();
	wPressed = false;
	sPressed = false;
	aPressed = false;
	dPressed = false;
	for(int i = 0; i < Platinum.length; i++){Platinum[i] = new Star();}
	for(int j = 0; j < 10; j++){Azeroth.add(new Asteroid());}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < Platinum.length; i++){Platinum[i].show();}
	Alpha.show();
	Alpha.move();
	if (!wPressed && !sPressed)
	{
		Alpha.setDirectionY(Alpha.getDirectionY()*.95);
		Alpha.setDirectionX(Alpha.getDirectionX()*.95);
	}
	//if(keyPressed)
	//{
		if(wPressed){Alpha.accelerate(0.2);}
		if(sPressed){Alpha.accelerate(-0.2);}
		if(aPressed){Alpha.turn(-5);}
		if(dPressed){Alpha.turn(5);}
	//}
	for(int j = 0; j < Azeroth.size(); j++)
	{
		Azeroth.get(j).show();
		Azeroth.get(j).move();
		if(dist(Azeroth.get(j).getX(), Azeroth.get(j).getY(), Alpha.getX(), Alpha.getY()) < 30 + 2 * Azeroth.get(j).getMySize())
		{
			Azeroth.remove(j);
		}
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