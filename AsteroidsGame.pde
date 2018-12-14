Spaceship bob;
Star[] starry;
ArrayList <Asteroid> rock;
ArrayList <Bullet> bill = new ArrayList<Bullet>();
boolean rockets = false;
boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;
boolean qPressed = false;
boolean firing = false;
int life = 3;
public void setup() 
{
	smooth();
	size(800,800);
  	bob = new Spaceship();
  	bob.setX(450);
  	bob.setY(450);
  	starry = new Star[800];
  	for(int i=0; i<starry.length; i++)
  		starry[i] = new Star();
  	rock = new ArrayList <Asteroid>();
  	for(int i=0; i<40; i++)
  		rock.add(new Asteroid());
  	smooth();
  	frameRate(100);

}
public void draw() 
{
	if(life==0){
  		fill(0);
  		rect(0,0,800,800);
  		fill(255);
  		textAlign(CENTER);
  		textSize(40);
  		text("YOU LOSE!\nPress R to restart!",400,400);
  	}
  	else{
		fill(0,0,0,30);
		rect(0,0,800,800);
		for(int i=0; i<starry.length; i++)
	  		starry[i].show();

	  	bob.show(rockets);
	  	bob.move();
	  	bob.turn();
	  	if(keyPressed){
		 	if(wPressed){
		 		bob.accelerate(0.075);
		 	}
		 	if(sPressed){
		 		bob.accelerate(-0.075);
		 	}/*
		 	if(aPressed){
		 		bob.turn(-3);
		 	}
		 	if(dPressed){
		 		bob.turn(3);
		 	}*/
		 }

		 if(mousePressed&&frameCount%10==0){
		 	if(firing)
		 		bill.add(new Bullet(bob));
		 }
		 for(int i=0;i<bill.size();i++){
		 	bill.get(i).show();
		 	bill.get(i).move();
		 }

	  	for(int i=0; i< rock.size(); i++){
			rock.get(i).move();
			rock.get(i).show();
			float dShip = dist(bob.getX(),bob.getY(),rock.get(i).getX(),rock.get(i).getY());
			if (dShip<30){
				rock.remove(i);
				fill(#AD1728);
				rect(0,0,800,800);
				life--;
				break;
			}
			for(int a=0;a<bill.size();a++){
				float dBullet = dist(bill.get(a).getX(),bill.get(a).getY(),rock.get(i).getX(),rock.get(i).getY());
				if(dBullet<30){
					noStroke();
					fill(#F53B16);
					ellipse(rock.get(i).getX(),rock.get(i).getY(),75,75);
					fill(#FAA244);
					ellipse(rock.get(i).getX(),rock.get(i).getY(),60,60);
					fill(#FAE89F);
					ellipse(rock.get(i).getX(),rock.get(i).getY(),45,45);
					fill(255);
					ellipse(rock.get(i).getX(),rock.get(i).getY(),24,24);
					rock.remove(i);
					bill.remove(a);
					break;
				}
			}
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
  	if(key=='r'){
  		rock = new ArrayList <Asteroid>();
  			for(int i=0; i<40; i++)
  				rock.add(new Asteroid());
  		life=3;
  		bob.setPointDirection((int)(Math.random()*360));
  		bob.setX((int)(Math.random()*700)+25);
  		bob.setY((int)(Math.random()*700)+25);
  		bob.accelerate(0);
  		bob.setDirectionX(0);
  		bob.setDirectionY(0);
  	}
}
public void mousePressed(){
	firing = true;
}

public void mouseReleased(){
	firing = false;
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