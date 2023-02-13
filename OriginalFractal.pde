int myColor = 255;
int myColor1 = 0;
int myColor2 = 0;

public void setup() {
  size(601, 601);
  rectMode(CENTER);
  

} 

public void draw() {
  background(0);
  myFractal(500, 100, 600, 150);

}

//int rot = 3;
public void myFractal(float xPos, float yPos, float len , float triLen) {
//float triXPos, float triYPos
  stroke(myColor2,myColor,myColor1);
    triangle(600, 300, 300+triLen, 300-triLen, 300+triLen, 300+triLen);
  ellipse(300, 300, len, len);

  fill(myColor,myColor1,myColor2);
  rect(300, 300, len, len);
triangle(myColor, 300, 300+triLen, 300-triLen, 300+triLen, 300+triLen);
  fill(0);
  ellipse(300, 300, len, len);
triangle(myColor, 300, 300+triLen, 300-triLen, 300+triLen, 300+triLen);
    ellipse(300, 300, len, len);
triangle(myColor, 300, 300+triLen, 300-triLen, 300+triLen, 300+triLen);
    ellipse(300, 300, len, len);
triangle(myColor, myColor, 300+triLen, 300-triLen, 300+triLen, 300+triLen);
  //rotate(PI/rot);
  if(len > 1) {
    myFractal(xPos, yPos, len/2, triLen/2);
  }
}

public void mousePressed() { 
  myColor = (int)(Math.random()*256);
   myColor1 = (int)(Math.random()*256);
    myColor2 = (int)(Math.random()*256);
}
