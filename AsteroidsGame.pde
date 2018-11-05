Spaceship bob;
Star[] starry;
boolean rockets = false;
boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;
boolean qPressed = false;
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
  	bob.show(rockets);
  	bob.move();
  	if(keyPressed){
	 	if(wPressed){
	 		bob.accelerate(0.15);
	 	}
	 	if(sPressed){
	 		bob.accelerate(-0.15);
	 	}
	 	if(aPressed){
	 		bob.turn(-2);
	 	}
	 	if(dPressed){
	 		bob.turn(2);
	 	}
	 }
     

  	
  }
public void keyPressed(){
  	if(key=='q')
  	{
  		bob.setPointDirection((int)(Math.random()*360));
  		bob.setX((int)(Math.random()*800)+50);
  		bob.setY((int)(Math.random()*800)+50);
  		bob.accelerate(0);
  		bob.setDirectionX(0);
  		bob.setDirectionY(0);
  	}
  	if(key=='w')
  	{
  		rockets = true;
  		wPressed = true;
  	}
  	if(key=='s')
  		sPressed = true;
  	if(key=='a')
  		aPressed = true;
  	if(key=='d')
  		dPressed = true;
}
public void keyReleased(){
	if(key=='w'){
		rockets = false;
		wPressed = false;
	}
	if(key=='s')
		sPressed = false;
	if(key=='a')
		aPressed = false;
	if(key=='d')
		dPressed = false;
}