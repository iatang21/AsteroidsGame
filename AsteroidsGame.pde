Spaceship bob;
Star[] starry;
ArrayList <Asteroid> rock;
boolean rockets = false;
boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;
boolean qPressed = false;
public void setup() 
{
	smooth();
	size(800,800);
  	bob = new Spaceship();
  	bob.setX(450);
  	bob.setY(450);
  	starry = new Star[1000];
  	for(int i=0; i<starry.length; i++)
  		starry[i] = new Star();
  	rock = new ArrayList <Asteroid>();
  	for(int i=0; i<10; i++)
  		rock.add(new Asteroid());

}
public void draw() 
{
	fill(0);
	rect(0,0,800,800);
	for(int i=0; i<starry.length; i++)
  		starry[i].show();
  	for(int i=0; i< rock.size(); i++){
		rock.get(i).move();
		rock.get(i).show();
		float d =dist(bob.getX(),bob.getY(),rock.get(i).getX(),rock.get(i).getY());
		if (d<20)
			rock.remove(i);
	}
  	bob.show(rockets);
  	bob.move();
  	if(keyPressed){
	 	if(wPressed){
	 		bob.accelerate(0.08);
	 	}
	 	if(sPressed){
	 		bob.accelerate(-0.08);
	 	}
	 	if(aPressed){
	 		bob.turn(-4);
	 	}
	 	if(dPressed){
	 		bob.turn(4);
	 	}
	 }
     

  	
  }
public void keyPressed(){
  	if(key=='q')
  	{
  		bob.setPointDirection((int)(Math.random()*360));
  		bob.setX((int)(Math.random()*700)+25);
  		bob.setY((int)(Math.random()*700)+25);
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