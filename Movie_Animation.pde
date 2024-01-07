//Movie Project
/*
Fun animation based on the movie Despicable Me
Background minions change positions when mouse is clicked
Gru elevator and platform minions animaiton is reset when space key is pressed
*/


//Variables
float [] BMin1 = new float[5];
float [] BMin2 = new float[5];
float [] BMin3 = new float[5];
float []Screws = {780, 680, 580, 480, 380, 280, 180, 80};
float []ScrewsT = {782, 682, 582, 482, 382, 282, 182, 82};
float Add = 0;
float Add2 = 2;
float Timer = 400;
float MinX = 1500;
float TMin = -500;

void setup(){
size(800, 500);

//Place background minions in random spots
RanMin();
}

void draw(){
  background(#46A1AD);
  noStroke();
  
  //Half of the back wall is a lighter shade
  fill(#479ca8);
  rect(0, 0, width/2, height);
  
  //Timer for Gru's descent 
  Timer --;
  
  //Marching Minions
  MinX = MinX - 2;
  
  //Wall Design
  Design();
  
  //Tube Minion
  TMin = TMin + 2;
  TubeMinions(TMin);
  if(TMin == 320){
    TMin = -400;
  }
  
  //Tube
  stroke(#B7B7B7, 170);
  strokeWeight(2);
  fill(#6AB3BC, 170);
  rect(158, 0, 55, height);
  
  //Curved Tube
  stroke(#444548, 170);
  strokeWeight(2);
  fill(#62666C, 170);
  beginShape();
  curveVertex(485, 84);
  curveVertex(485, 84);
  curveVertex(290, 84);
  curveVertex(290, 500);
  curveVertex(345, 500);
  curveVertex(345, 139);
  curveVertex(484, 139);
  curveVertex(485, 84);
  endShape();
  
  //Background Platform
  noStroke();
  fill(#1B2121);
  rotate(PI/30);
  rect(900, 225, -400, 25);
  fill(#2C2C2C);
  rect(900, 225, -400, 10);
  fill(#1B2121);
  rotate(-PI/30);
  rect(480, 277, -500, 25);
  fill(#2C2C2C);
  rect(480, 277, -500, 10);
  
  //Background Minions
  strokeWeight(8);
  stroke(#66D8DB, 120);
  fill(#7C7C7C);
  beginShape();
  curveVertex(490, 55);
  curveVertex(490, 55);
  curveVertex(760, 55);
  curveVertex(760, 240);
  curveVertex(490, 240);
  curveVertex(490, 55);
  curveVertex(490, 55);
  endShape();
  noStroke();
  fill(#646464);
  beginShape();
  curveVertex(500, 65);
  curveVertex(500, 65);
  curveVertex(750, 65);
  curveVertex(750, 230);
  curveVertex(500, 230);
  curveVertex(500, 65);
  curveVertex(500, 65);  
  endShape();
  fill(0);
  rect(778, 125, -286 ,5);
  rect(773, 190, -289 ,5);
  
  strokeWeight(8);
  stroke(#66D8DB, 120);
  fill(#7C7C7C);
  beginShape();
  curveVertex(10, 325);
  curveVertex(10, 325);
  curveVertex(280, 325);
  curveVertex(280, 500);
  curveVertex(10, 500);
  curveVertex(10, 325);
  curveVertex(10, 325);
  endShape();
  noStroke();
  fill(#646464);
  beginShape();
  curveVertex(20, 335);
  curveVertex(20, 335);
  curveVertex(270, 335);
  curveVertex(270, 490);
  curveVertex(20, 490);
  curveVertex(20, 335);
  curveVertex(20, 335);  
  endShape();
  fill(0);
  rect(7, 402, 292, 5);
  
  //Background Minions
    for(int i = 0; i<BMin1.length; i++){
    fill(#C8AA5A);
    ellipse(BMin1[i], 102, 22, 42);
    ellipse(BMin2[i], 168, 22, 42);
    ellipse(BMin3[i], 380, 22, 42);
    fill(#3959B7);
    rect(BMin1[i]-10, 112, 20, 12);
    rect(BMin2[i]-10, 178, 20, 12);
    rect(BMin3[i]-10, 390, 20, 12); 
    }
  
  //Elevator + Gru
    Elevator(0 + Add);
    Gru(0 + Add);
    
  //Platform
  fill(#212B2C);
  rect(0, 430, width, 70); 
  fill(#2A3334);
  rect(0, 430, width, 50); 
  
  //Screws on Platform
  for(int i = 0; i<Screws.length; i++){
  fill(#434343);
  ellipse(Screws[i], 460, 20, 15);
  fill(#5F5F5F);
  ellipse(ScrewsT[i], 456, 12, 7);
  }

//For Elevator and Gru's descent 
Add = Add + Add2;

//If "Add" equal 280, stop Gru and display message. Wait for timer and then keep moving Gru
if(Add == 280){
 Add2 = 0;  
 stroke(0);
 strokeWeight(2);
 fill(255);
 ellipse(650, 160, 250, 150);
 fill(0);
 textSize(25);
 text("Minions Assemble!", 555, 165);
   if(Timer <= 0){
     Add2 = 2; 
     RanMin();
   }
}

//Move Minions
Minion(MinX);
Minion(MinX+250);
Minion(MinX+500);

//Reset Animation when key is pressed
if(keyPressed){ 
  Timer = 400;
  Add = -200;
  MinX = 1500;
  
  }
}

//When mousepressed move minions to random positions
void mousePressed(){
RanMin();  
}



void RanMin(){
  //Background minions go to random position
  for(int i = 0; i<BMin1.length; i++){
  BMin1[i] = random(510, 760);
  BMin2[i] = random(500, 760);
  BMin3[i] = random(25, 285);  
      }  
}

void Elevator(float y){
      //Elevator
    fill(#9FD2E2);
    rect(300, y-200, 200, 300);
    fill(#add4e0, 200);
    rect(320, y-200, 160, 300);
    fill(#b1d3de, 200);
    rect(340, y-200, 120, 300);
    fill(#bfd8e0, 200);
    rect(360, y-200, 80, 300);
    fill(#54595A);
    rect(300, y+100, 200, 20);
    rect(320, y+120, 160, 20);
    rect(300, y-220, 200, 20);
    rect(320, y-240, 160, 20);
   
    //Glow   
    noStroke();
    fill(255, 50);
    rect(280, y-200, 240, 300);
}


void Gru(float y){
    //Gru
   
    fill(#606567);
      //Body
      beginShape();
      curveVertex(340, y-60);
      curveVertex(340, y-60);
      curveVertex(460, y-60);
      curveVertex(445, y+50);
      curveVertex(355, y+50);
      curveVertex(340, y-60);
      curveVertex(340, y-60);
      endShape();
    
      //Legs
      stroke(#606567);
      strokeWeight(8);
      line(370, y+30, 380, y+100);
      line(430, y+30, 420, y+100);
      
      //Scarf
      noStroke();
      fill(#3E3E3E);
      beginShape();
      curveVertex(436, y+16);
      curveVertex(436, y+16);
      curveVertex(452, y+16);
      curveVertex(457, y-69);
      curveVertex(345, y-68);
      curveVertex(347, y+24);
      curveVertex(368, y+26);
      curveVertex(368, y-35);
      curveVertex(435, y-40);
      curveVertex(436, y+25);
      curveVertex(436, y+25);
      endShape();
      fill(#5F5F5F);
      ellipse(400, y-72, 100, 25);
      
      //Face
      fill(#FFEAC4);
      ellipse(400, y-90, 80, 55);
      stroke(0);
      strokeWeight(2);
      line(373, y-108, 383, y-108);
      line(410, y-112, 420, y-114);
      beginShape();
      curveVertex(389, y-83);
      curveVertex(389, y-83);
      curveVertex(398, y-84);
      curveVertex(407, y-82);
      curveVertex(407, y-82);
      endShape();
      noStroke();
      fill(0);
      ellipse(382, y-100, 10, 10);
      ellipse(416, y-100, 10, 10);
      
      
      //Arms
      fill(#7C7C7C);
      beginShape();
      curveVertex(334, y-54);
      curveVertex(334, y-54);
      curveVertex(335, y-35);
      curveVertex(390, y-20);
      curveVertex(389, y-29);
      curveVertex(334, y-54);
      endShape();
      fill(#FFEAC4);
      ellipse(395, y-23, 12, 12); 
      fill(#7C7C7C);
      beginShape();
      curveVertex(464, y-54);
      curveVertex(464, y-54);
      curveVertex(450, y+13);
      curveVertex(442, y+15);
      curveVertex(446, y-54);
      curveVertex(446, y-54);
      endShape();
      fill(#FFEAC4);
      ellipse(445, y+16, 12, 12);
  
}

void Minion(float x){
 noStroke();
 fill(#C8AA5A);
   beginShape();
   curveVertex(x+230, 305);
   curveVertex(x+230, 305);
   curveVertex(x+230, 305);
   curveVertex(x+320, 305);
   curveVertex(x+320, 435);
   curveVertex(x+230, 435);
   curveVertex(x+230, 305);
   curveVertex(x+230, 305);
   endShape();
  fill(#C8AA5A);
  ellipse(x+276, 305, 88, 21);
 
 //Goggles
 fill(#343434);
 rect(x+240, 345, 90, 10);
 fill(#939393);
 ellipse(x+230, 350, 20, 50);
 fill(255);
 ellipse(x+225, 350, 5, 30);
 fill(0);
 ellipse(x+225, 350, 2, 12);
 
 //Overalls
 fill(#3959B7);
 beginShape();
 curveVertex(x+225, 404);
 curveVertex(x+225, 404);
 curveVertex(x+245, 405);
 curveVertex(x+245, 448);
 curveVertex(x+225, 426);
 curveVertex(x+225, 404);
 curveVertex(x+225, 402);
 curveVertex(x+225, 402);
 endShape();
 beginShape();
 curveVertex(x+243, 433);
 curveVertex(x+243, 433);
 curveVertex(x+312, 433);
 curveVertex(x+308, 446);
 curveVertex(x+243, 446);
 curveVertex(x+243, 433);
 endShape();
 ellipse(x+273, 442, 70, 20);
 beginShape();
 curveVertex(x+316, 441);
 curveVertex(x+316, 441);
 curveVertex(x+326, 405);
 curveVertex(x+241, 403);
 curveVertex(x+241, 409);
 curveVertex(x+311, 409);
 curveVertex(x+306, 435);
 curveVertex(x+316, 441);
 endShape();
 rect(x+268, 450, 13, 12);
 fill(0);
 rect(x+281, 463, -25, 8); 
 
//Arm
fill(#E0BF39);
rect(x+273, 410, 8, 25);
fill(0);
ellipse(x+277, 435, 10, 10); 
}

void Design(){
   //Background design
  //Background lines
  stroke(#3a657d);
  strokeWeight(3);
  line(800, 250, 438, 196);
  line(438, 196, 438, 0);
  line(438, 100, 345, 100);
  line(345, 100, 345, 162);
  line(345, 162, 246, 177);
  line(246, 177, 246, 280);
  line(246, 247, 392, 247);
  line(392, 247, 392, 230);
  line(392, 230, 496, 230);
  line(600, 261, 600, 500);
  line(600, 369, 345, 300);
  line(460, 332, 460, 388);
  line(460, 388, 390, 388);
  line(390, 388, 390, 500);
  line(600, 340, 800, 340);
  line(715, 340, 714, 500);
  line(680, 44, 680, 0);
  line(345, 100, 0, 100);
  line(127, 100, 127, 194);
  line(127, 194, 0, 194);
  line(127, 194, 127, 216);
  line(127, 216, 246, 216);
  line(203, 100, 253, 38);
  line(253, 38, 253, 18);
  line(253, 18, 438, 18);
  line(47, 100, 47, 0); 
  fill(0, 0);
  ellipse(665, 408, 25, 100);
  arc(49, 55, 50, 50, 0, HALF_PI);
  arc(64, 280, 100, 100, radians(180), PI+PI);
  line(75, 55, 239, 55);
  fill(#46A1AD);
  arc(599, 361, 60, 100, radians(90), radians(180));
  
  //Glowing Dots
  noStroke();
  fill(#75F2FC);
  ellipse(113, 133, 10, 20);
  ellipse(113, 151, 10, 10);
  ellipse(113, 164, 10, 10);
  ellipse(665, 384, 13, 13);
  ellipse(665, 399, 10, 10);
  ellipse(665, 412, 10, 10);
  ellipse(665, 427, 13, 13);

}

void TubeMinions(float y){
  noStroke();
  fill(#C8AA5A);
    ellipse(185, y, 22, 42);
    fill(#3959B7);
    rect(175, y+8, 20, 12);
}
