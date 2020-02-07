private double fractionLength = .85; 
private int smallestBranch = 20; 
private double branchAngle = .1;  
public void setup() 
{   
	size(640,640);     
} 
public void draw() 
{   
	branchAngle+=.05;
	background(0);   
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
	line(width/2,height,320,500);   
	drawBranches(320,500,100,3*HALF_PI);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	double angle1,angle2;
	angle1 = angle+branchAngle;
	angle2 = angle-branchAngle;
	branchLength*=fractionLength;
	line(x,y,(int)(branchLength*Math.cos(angle1)+x),(int)(branchLength*Math.sin(angle1)+y));
	line(x,y,(int)(branchLength*Math.cos(angle2)+x),(int)(branchLength*Math.sin(angle2)+y));
	if(branchLength>smallestBranch){
		drawBranches((int)(branchLength*Math.cos(angle1)+x),(int)(branchLength*Math.sin(angle1)+y),branchLength,angle1);    
		drawBranches((int)(branchLength*Math.cos(angle2)+x),(int)(branchLength*Math.sin(angle2)+y),branchLength,angle2);
	}
} 
