//Game Project
/*
This program is a game where you have to click at the right time when the shape 
drops to score points. When you score 15 points, you win
*/

//List setting random x positions for the shapes
float [] xPos = {random(50,100), random(100,200), random(200, 350)};

//List setting random y positions for the shapes
float [] yPos = {random(-100, -50), random(-50, 0), random(0, 50)};

//Three set colors for the shapes
color [] Color = {#36FFBE, #FF3694, #3648FF}; 

//Variable that stands for the score of the player
int score = 0;

//Homemade Timer
int timer = 800;


//Setup
void setup(){
size(400, 600);
noStroke();
}

//Animation
void draw(){

//Background sky
background(#B2F3FF);  

//Grass - Click a key here to score
fill(#11A532);
rect(0, 550, width, height);

//This shows the score of the player
fill(0);
textSize(20);
text("Score: " + score, 300, 30);

//Decreases timer by 1
timer--;

//Displays countdown till start and game instructions
fill(#FF1F1F);
textSize(40);
text(timer/50 + "...", 180, 200);
fill(0);
textSize(20);
text("Click a key when the shape hits the ground", 30, 300);
text("to score 1 point. If you miss, you lose 1", 30, 320);
text("point. Get 15 points to win! For different", 30, 340);
text("shapes, keep mouse on left side of screen ", 30, 360);
text("for circle and right side of ", 30, 380);
text("screen for square.", 30, 400);

//Removes text and timer after 10 seconds
if(timer/50 <= 0){
fill(#B2F3FF);
rect(30, 100, width, 450);  
  
}

//Calls cloud function
cloud(100, 80);

//Calls circle function if mouse is to left side of screen
if(timer/50 <=0 && mouseX <= 200){
 fall(0);
}
// dividing by 50 makes it almost seconds. Less then or equal to 0 because (AFTER THE 15)

//Call falling square if mouse is to right side of screen
if(timer/50 <=0 && mouseX >= 200){
 fall(1);
}

//If you score 15 points, you win and tefee game ends
if (score == 15){
  for(int i = 0; i <xPos.length; i++){ 
  xPos[i] = -50;
  yPos[i] = -50;
     }
  fill(#FF1212);
  textSize(45);
  text("You Win!", 115, 300); 
 
      }
    } 
 
 
 
//Cloud function
void cloud(float x, float y){
fill(255);
ellipse(x-40,y+10,60,60);
ellipse(x,80,y,80);
ellipse(x+40,y+10,60,60);

ellipse(x+180,y+330,60,60);
ellipse(x+220,y+320,80,80);
ellipse(x+260,y+330,60,60);
}
 
 
//Falling function 
void fall(float s){ 

//Loop setting the shape to have a random x and y position by calling each index
//If s = 0 then the shape will be a circle. If s = 1 then the shape will be a square
for(int i = 0; i <xPos.length; i++){ 
  if(s == 0){
    fill(Color[i]);
    ellipse(xPos[i], yPos[i], 50, 50);
     }
     
     else if(s == 1){
      fill(Color[i]);
      rect(xPos[i], yPos[i], 50, 50);
     }

//Having the shape fall at speed 3
yPos[i] = yPos[i] + 3;

//If statement saying if the shape is in the green area and a key is pressed,
//add 1 to score. If a key isn't pressed subtract 1 from score 
//Then set shape to have random x and y position for either statements 
if(yPos[i]>=555 && keyPressed){
  yPos[i] = random(-50, 50);
  xPos[i] = random(50, 350);
  score = score + 1;
  
    }
    else if(yPos[i] >= height){
    yPos[i] = random(-50, 50);
    xPos[i] = random(50, 350);
      score = score - 1;
      }
    }
  }
