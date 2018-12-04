class Bullet extends Floater{
	public void setX(int x){myCenterX = x;}
	public int getX(){return (int)myCenterX;}
	public void setY(int y){myCenterY = y;}
	public int getY(){return (int)myCenterY;}
	public void setDirectionX(double x){myDirectionX = x;}
	public double getDirectionX(){return myDirectionX;}
	public void setDirectionY(double y){myDirectionY = y;}
	public double getDirectionY(){return myDirectionY;}
	public void setPointDirection(int degrees){myPointDirection = degrees;}
	public double getPointDirection(){return (int)myPointDirection;}

	public Bullet(Spaceship ship){
		myCenterX=ship.getX();
		myCenterY=ship.getY();
		myPointDirection=ship.getPointDirection();
		double dRadians=myPointDirection*(Math.PI/180);
		myDirectionX=5*Math.cos(dRadians)+ship.getDirectionX();
		myDirectionY=5*Math.sin(dRadians)+ship.getDirectionY();
	}

	public void move ()   //move the floater in the current direction of travel
	  {      
	    //change the x and y coordinates by myDirectionX and myDirectionY       
	    myCenterX += myDirectionX;    
	    myCenterY += myDirectionY;
	    } 

	public void show(){
		noStroke();
		fill(#74F0FF);
		
		//translate the (x,y) center of the ship to the correct position
	    translate((float)myCenterX, (float)myCenterY);

	    //convert degrees to radians for rotate()     
	    float dRadians = (float)(myPointDirection*(Math.PI/180));
	    
	    //rotate so that the polygon will be drawn in the correct direction
	    rotate(dRadians);

        ellipse(50,5,30,2);
		ellipse(50,-5,30,2);

	    //"unrotate" and "untranslate" in reverse order
	    rotate(-1*dRadians);
	    translate(-1*(float)myCenterX, -1*(float)myCenterY);

	}


}