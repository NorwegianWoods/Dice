int count;
void setup(){
  size(590,620);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw(){
  for(int y = 0 ; y <= 590; y += 60)
  {
    for(int x = 0 ; x <= 600 ; x += 60)
    {
      Die bob = new Die(x,y);
      bob.show();
    }
  }
    text("Total number is: " + count, 295, 595);
   	count = 0;



}
void mousePressed(){
	redraw();
}
class Die {
	int myX, myY, numDice;
	
	Die(int x, int y){
		myX = x;
		myY = y;
		roll();
	
	}
	void roll(){
		numDice = (int)(Math.random()* 6) + 1;
	}
	void show(){
		fill(255);
		rect(myX,myY,50,50);
		System.out.println(numDice);
		fill((int)(Math.random()* 255),(int)(Math.random()* 255),(int)(Math.random()* 255));
		if (numDice == 1){
   			ellipse(myX + 25, myY + 25, 10,10);
   			count = count + 1;
   		}
   		else if (numDice == 2){
   			ellipse(myX + 13, myY + 25, 10, 10);
   			ellipse(myX + 36, myY + 25, 10, 10);
   			count = count + 2;
   		}
   		else if (numDice == 3){
   			ellipse(myX + 12, myY + 12.33, 10,10);
   			ellipse(myX + 24, myY + 24.66, 10,10);
   			ellipse(myX + 36, myY + 37, 10, 10);
   			count = count + 3;
   		}
   		else if (numDice == 4){
   			ellipse(myX + 12, myY + 12.33, 10, 10);
   			ellipse(myX + 12, myY + 37, 10, 10);
   			ellipse(myX + 36, myY + 12.33, 10, 10);
   			ellipse(myX + 36, myY + 37, 10, 10);
   			count = count + 4;
   		}
   		else if (numDice == 5){
   			ellipse(myX + 13, myY + 13, 10, 10);
   			ellipse(myX + 37, myY + 13, 10, 10);
   			ellipse(myX + 13, myY + 37, 10, 10);
   			ellipse(myX + 37, myY + 37, 10, 10);
   			ellipse(myX + 25, myY + 25, 10, 10);
   			count = count + 5;
   		}
   		else{
   			ellipse(myX + 13, myY + 11.5, 10, 10);
   			ellipse(myX + 13, myY + 25, 10, 10);
   			ellipse(myX + 13, myY + 39.5, 10, 10);
   			ellipse(myX + 37, myY + 11, 10, 10);
   			ellipse(myX + 37, myY + 25, 10, 10);
   			ellipse(myX + 37, myY + 39.5, 10, 10);
   			count = count + 6;
   		}


	}
}
