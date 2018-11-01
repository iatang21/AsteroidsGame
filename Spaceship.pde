class Spaceship extends Floater  
{   
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
    public Spaceship(){
    	corners = 15;
    	xCorners = new int[15];
    	yCorners = new int[15];
    	xCorners[0] = 0;
    	yCorners[0] = 15;
    	xCorners[1] = 6;
    	yCorners[1] = 6;
    	xCorners[2] = 30;
    	yCorners[2] = 8;
    	xCorners[3] = 40;
    	yCorners[3] = 0;
    	xCorners[4] = 30;
    	yCorners[4] = -8;
    	xCorners[5] = 6;
    	yCorners[5] = -6;
    	xCorners[6] = 0;
    	yCorners[6] = -15;
    	xCorners[7] = -22;
    	yCorners[7] = -20;
    	xCorners[8] = -10;
    	yCorners[8] = -10;
    	xCorners[9] = -5;
    	yCorners[9] = -5;
    	xCorners[10] = -10;
    	yCorners[10] = -2;
    	xCorners[11] = -10;
    	yCorners[11] = 2;
    	xCorners[12] = -5;
    	yCorners[12] = 5;
    	xCorners[13] = -10;
    	yCorners[13] = 10;
    	xCorners[14] = -22;
    	yCorners[14] = 20;
    }
	public void show (boolean rockets)  //Draws the floater at the current position  
	  {             
	    fill(myColor);   
	    stroke(255);    
	    
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

	    if(rockets){
	    	noStroke();
	    	fill(#FC0D00);
	    	beginShape();
	    		vertex(-11,3);
	    		vertex(-24,8);
	    		vertex(-28,0);
	    		vertex(-24,-8);
	    		vertex(-11,-3);
	    	endShape(CLOSE);
	    	fill(#FABD14);
	   		beginShape();
	   			vertex(-11,2);
	   			vertex(-20,6);
	   			vertex(-22,0);
	   			vertex(-20,-6);
	   			vertex(-11,-2);
	   		endShape(CLOSE);
	    	fill(#FFF639);
	   		beginShape();
	    		vertex(-11,1);
	    		vertex(-15,3);
	    		vertex(-18,0);
	    		vertex(-15,-3);
	    		vertex(-11,-1);
	   		endShape(CLOSE);

	    }

	    //"unrotate" and "untranslate" in reverse order
	    rotate(-1*dRadians);
	    translate(-1*(float)myCenterX, -1*(float)myCenterY);
	  }   

}
