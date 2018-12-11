class Planet
{
	private int planetX, planetY;
	public Planet(){
		planetX=(int)random(0,800);
		planetY=(int)random(0,800);
	}
	public void show(){
		fill(#2964FF);
		noStroke();
		ellipse(planetX,planetY,10,10);
		stroke(#C7FA51);
		noFill();
		ellipse(planetX,planetY-1,15,4);
		fill(#2964FF);
		noStroke();
		ellipse(planetX,planetY-2,10,3);
	}


}