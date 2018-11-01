Spaceship bob;
Star[] starry;
public void setup() 
{
	smooth();
	size(900,900);
  	bob = new Spaceship();
  	bob.setX(450);
  	bob.setY(450);
  	starry = new Star[1000];
  	for(int i=0; i<starry.length; i++)
  		starry[i] = new Star();

}
public void draw() 
{
	fill(0);
	rect(0,0,900,900);
	for(int i = 0; i<starry.length; i++)
  		starry[i].show();
  	bob.show();
  	bob.move();
  	
  }
public void keyPressed(){
  	if(key=='q')
  	{
  		bob.setPointDirection((int)(Math.random()*360));
  		bob.setX((int)(Math.random()*225)+50);
  		bob.setY((int)(Math.random()*225)+50);
  		bob.accelerate(0);
  		bob.setDirectionX(0);
  		bob.setDirectionY(0);
  	}
  	if(key=='w')
  		bob.accelerate(0.5);
  	if(key=='s')
  		bob.accelerate(-0.5);
  	if(key=='a')
  		bob.turn(-10);
  	if(key=='d')
  		bob.turn(10);
}
