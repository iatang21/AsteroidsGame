class Asteroid extends Floater{
	  private int myRotSpeed;
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
	  
	  public Asteroid(){
	  	myCenterX = (int)(Math.random()*800);
	    myCenterY = (int)(Math.random()*800);
	    myDirectionX = ((Math.random()*3)-1);
	    myDirectionY = ((Math.random()*3)-1);
	    myPointDirection = 0;
	    myRotSpeed = (int)random(-5,5);

	  	corners = 8;
	  	xCorners = new int[8];
	  	yCorners = new int[8];

	  	xCorners[0] = 15;
	  	yCorners[0] = 15;

	  	xCorners[1] = 18;
	  	yCorners[1] = 5;

	  	xCorners[2] = 9;
	  	yCorners[2] = -6;

	  	xCorners[3] = 0;
	  	yCorners[3] = -12;

	  	xCorners[4] = -12;
	  	yCorners[4] = -10;

	  	xCorners[5] = -16;
	  	yCorners[5] = -6;

	  	xCorners[6] = -13;
	  	yCorners[6] = 13;

	  	xCorners[7] = 0;
	  	yCorners[7] = 17;
	  	}
	 public void show(){
	 	fill(150);   
	    stroke(100);    
	    
	    //translate the (x,y) center of the ship to the correct position
	    translate((float)myCenterX, (float)myCenterY);

	    //convert degrees to radians for rotate()     
	    float dRadians = (float)(myPointDirection*(Math.PI/180));
	    
	    //rotate so that the polygon will be drawn in the correct direction
	    rotate(dRadians);
	    
	    //draw the polygon
	    beginShape();
	    for (int nI = 0; nI < corners; nI++)
	    {
	      vertex(xCorners[nI], yCorners[nI]);
	    }
	    endShape(CLOSE);

	    rotate(-1*dRadians);
	    translate(-1*(float)myCenterX, -1*(float)myCenterY);
	 }

	 public void move(){
	 	turn(myRotSpeed);
	 	super.move();
	 }
	}
