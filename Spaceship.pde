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
    	corners = 28;
    	xCorners = new int[28];
    	yCorners = new int[28];
    	
    	xCorners[0] = 40;
    	yCorners[0] = 5;

    	xCorners[1] = 15;
    	yCorners[1] = 11;
    	
    	xCorners[2] = 5;
    	yCorners[2] = 9;
    	
    	xCorners[3] = 3;
    	yCorners[3] = 8;
    	
    	xCorners[4] =20;
    	yCorners[4] = 3;
    	
    	xCorners[5] = 9;
    	yCorners[5] = 3;
    	
    	xCorners[6] = 9;
    	yCorners[6] = -3;
    	
    	xCorners[7] = 20;
    	yCorners[7] = -3;
    	
    	xCorners[8] = 3;
    	yCorners[8] = -8;
    	
    	xCorners[9] = 5;
    	yCorners[9] = -9;
    	
    	xCorners[10] = 15;
    	yCorners[10] = -11;
    	
    	xCorners[11] = 40;
    	yCorners[11] = -5;
    	
    	xCorners[12] = 12;
    	yCorners[12] = -16;
    	
    	xCorners[13] = -9;
    	yCorners[13] = -17;
    	
    	xCorners[14] = -16;
    	yCorners[14] = -13;

    	xCorners[15] = -23;
    	yCorners[15] = -8;

    	xCorners[16] = -9;
    	yCorners[16] = -12;

    	xCorners[17] = -2;
    	yCorners[17] = -8;

    	xCorners[18] = -6;
    	yCorners[18] = -5;

    	xCorners[19] = -8;
    	yCorners[19] = -3;

    	xCorners[20] = -8;
    	yCorners[20] = 3;

    	xCorners[21] = -6;
    	yCorners[21] = 5;

    	xCorners[22] = -2;
    	yCorners[22] = 8;

    	xCorners[23] = -9;
    	yCorners[23] = 12;

    	xCorners[24] = -23;
    	yCorners[24] = 8;

    	xCorners[25] = -16;
    	yCorners[25] = 13;

    	xCorners[26] = -9;
    	yCorners[26] = 17;

    	xCorners[27] = 12;
    	yCorners[27] = 16;
    }

	public void show (boolean rockets)  //Draws the floater at the current position  
	  {             
	    fill(200);   
	    stroke(100);
	    strokeWeight(1);    
	    
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

	    //cockpit
	    //strokeWeight(1);
	    fill(#BF77D6);
	    beginShape();
	    vertex(9,3);
	    vertex(7,0);
	    vertex(9,-3);
	    vertex(28,-2);
	    vertex(30,0);
	    vertex(28,2);
	    endShape(CLOSE);

	    if(rockets){
	    	noStroke();
	    	fill(#0D84FF);
	    	beginShape();
	    		vertex(-9,3);
	    		vertex(-30,7);
	    		vertex(-34,0);
	    		vertex(-30,-7);
	    		vertex(-9,-3);
	    	endShape(CLOSE);
	    	fill(#0DBCFF);
	   		beginShape();
	   			vertex(-9,2);
	   			vertex(-24,6);
	   			vertex(-28,0);
	   			vertex(-24,-6);
	   			vertex(-9,-2);
	   		endShape(CLOSE);
	    	fill(#62FAF1);
	   		beginShape();
	    		vertex(-9,1);
	    		vertex(-18,5);
	    		vertex(-22,0);
	    		vertex(-18,-5);
	    		vertex(-9,-1);
	   		endShape(CLOSE);

	    }

	    //"unrotate" and "untranslate" in reverse order
	    rotate(-1*dRadians);
	    translate(-1*(float)myCenterX, -1*(float)myCenterY);
	  }   

}
