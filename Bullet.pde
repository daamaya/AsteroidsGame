class Bullet //extends floater
{
	Bullet(Spaceship Alpha)
	{
		myX = Alpha.getX();
		myY = ALpha.getY();
		myPointDirection = Alpha.getPointDirection();
		myDirectionX = 5*Alpha.getDirectionX();
	}
}