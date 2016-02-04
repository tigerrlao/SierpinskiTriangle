int change = 100;
public void setup()
{
	background(0);
	size(500,500);
}
public void draw()
{
	sierpinski(0,500,500);
}
public void mouseDragged() //optional
{
	if(mouseY > 250)
		change= change + 5;
	if(mouseY < 250 && change > 5)
		change= change - 5;
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= change)
	{
		// strokeWeight((int)(Math.random()*15));
		stroke(255,255,255);
		fill(0);
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else
	{	
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}

}