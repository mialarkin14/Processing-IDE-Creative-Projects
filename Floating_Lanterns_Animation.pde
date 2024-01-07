//Floating Lanterns Project
/*
Simple animation that turns sky to night when mouse is tracked in the sky
Fireworks grow in color and reset when mouse is clicked
*/

//Color variables 
color redStructure = color(229, 26, 19);
color brownPlatform = color(173, 95, 17);

//Orange firework variables
float OR = 252;    
float OG = 183;    
float OB = 98;     

//Green firework variables
float GR = 49;
float GG = 191;
float GB = 21;

//Red firework variables
float RR = 227;
float RG = 55;
float RB = 46;

//Purple firework variables
float PR = 137;
float PG = 43;
float PB = 201;


void setup(){
 size(800, 700); 
}

void draw(){
 background(88, 192, 255);
 
if(mouseY<175 || mouseX>565 && mouseX<665 && mouseY>440 && mouseY<490){
 background(3, 11, 147); 
}
 
 //River
noStroke();
fill(#1877F0);
rect(0, 175, width, height);
 
//Lanterns
lantern(203, 297);
lantern(447, 345);
lantern(695, 436);
lantern(332, 471);
lantern(626, 268);
lantern(101, 436);

if(mouseY<175 || mouseX>565 && mouseX<665 && mouseY>440 && mouseY<490 ){

//Fireworks
//Orange Firework
firework(559, 96, OR, OG, OB);
//Green Firework
firework(132, 61, GR, GG, GB);
//Red Firework
firework(800, 0, RR, RG, RB);
//Purple Firework
firework(311, 131, PR, PG, PB);
}

 //Light that goes behind the plattform
 if(mouseY<175 || mouseX>565 && mouseX<665 && mouseY>440 && mouseY<490){
 noStroke();
   light(346, 489);
 }
 
 //Platform
 noStroke();
 fill(brownPlatform);
 rect(0, 600, width, height);
     //Platform Fence
     noStroke();
     fill(#864100);
     rect(30, 500, 10, 100); 
     rect(110, 500, 10, 100); 
     rect(190, 500, 10, 100); 
     rect(270, 500, 10, 100); 
     rect(350, 500, 10, 100); 
     rect(430, 500, 10, 100); 
     rect(510, 500, 10, 100); 
     rect(590, 500, 10, 100); 
     rect(670, 500, 10, 100); 
     rect(750, 500, 10, 100); 
     rect(0, 500, width, 10);

//Firework Sign
fill(#9D9288);
rect(566, 436, 100, 50);
stroke(#9D9288);
strokeWeight(2);
line(616, 486, 616, 505);
fill(#004B04);
textSize(12);
text("Time for the", 572, 448);
text("Firework Show!", 572, 458);
textSize(9);
text("*Click anywhere to ", 572, 469);
text("reset Fireworks*", 572, 478);
     
     
//Platform on Water --> Far Right
noStroke();
fill(brownPlatform);
beginShape();
vertex(800, 410);
vertex(680, 215);
vertex(715, 215);
vertex(800, 310);
endShape();
beginShape();
vertex(715, 215);
vertex(700, 200);
vertex(515, 200);
vertex(530, 215);
endShape();
  //Platform Spikes in Water
  stroke(#39342F);
  strokeWeight(3);
  line(792, 400, 792, 440);
  line(762, 350, 762, 385);
  line(735, 305, 735, 335);
  line(711, 265, 711, 290);
  line(692, 235, 692, 255);
  line(680, 215, 680, 235);
  line(655, 215, 655, 235);
  line(630, 215, 630, 235);
  line(605, 215, 605, 235);
  line(580, 215, 580, 235);
  line(555, 215, 555, 235);
  line(530, 215, 530, 235);
    //Platform Fence
    stroke(#904800);
    rect(542, 213, -2, -20);
    rect(569, 213, -2, -20);
    rect(592, 213, -2, -20);
    rect(619, 213, -2, -20);
    rect(642, 213, -2, -20);
    rect(669, 213, -2, -20);
    rect(530, 193, 150, -2);
    stroke(#904800);
    strokeWeight(4);
    line(686, 205, 686, 225);
    line(703, 228, 703, 253);
    line(724, 260, 724, 287);
    line(750, 297, 750, 330);
    line(778, 338, 778, 376);
    strokeWeight(5);
    line(681, 194, 800, 365);
      //Fence on Other Side
      strokeWeight(3);
      rect(542, 203, -2, -20);
      rect(569, 203, -2, -20);
      rect(592, 203, -2, -20);
      rect(619, 203, -2, -20);
      rect(642, 203, -2, -20);
      rect(669, 203, -2, -20);
      rect(700, 203, -2, -20);
      rect(521, 183, 178, -2);
      strokeWeight(4);
      line(723, 205, 723, 225);
      line(748, 228, 748, 253);
      line(780, 260, 780, 287);
      strokeWeight(5);
      line(702, 182, 800, 275);
  
      




//Platform on Water --> Far Left
noStroke();
fill(brownPlatform);
beginShape();
vertex(0, 410);
vertex(120, 215);
vertex(75, 215);
vertex(0, 310);
endShape();
beginShape();
vertex(75, 215);
vertex(90, 200);
vertex(270, 200);
vertex(295, 215);
endShape();
  //Platform Spikes in Water
  stroke(#39342F);
  strokeWeight(3);
  line(7, 400, 7, 440);
  line(36, 350, 36, 385);
  line(65, 305, 65, 335);
  line(88, 265, 88, 290);
  line(107, 235, 107, 255);
  line(120, 215, 120, 235);
  line(145, 215, 145, 235);
  line(170, 215, 170, 235);
  line(195, 215, 195, 235);
  line(220, 215, 220, 235);
  line(245, 215, 245, 235);
    //Platform Fence
    stroke(#904800);
    rect(262, 213, -2, -20);
    rect(235, 213, -2, -20);
    rect(212, 213, -2, -20);
    rect(185, 213, -2, -20);
    rect(162, 213, -2, -20);
    rect(135, 213, -2, -20);
    rect(112, 193, 157, -2);
    stroke(#904800);
    strokeWeight(4);
    line(113, 200, 113, 225);
    line(94, 226, 94, 253);
    line(73, 258, 73, 287);
    line(47, 295, 47, 330);
    line(19, 338, 19, 376);
    strokeWeight(5);
    line(112, 194, 0, 365);
      //Fence on Other Side
      strokeWeight(3);
      rect(262, 203, -2, -20);
      rect(235, 203, -2, -20);
      rect(212, 203, -2, -20);
      rect(185, 203, -2, -20);
      rect(162, 203, -2, -20);
      rect(135, 203, -2, -20);
      rect(112, 203, -2, -20);
      rect(90, 203, -2, -20);
      rect(88, 183, 190, -2);
      strokeWeight(4);
      line(71, 205, 71, 225);
      line(47, 228, 47, 253);
      line(20, 260, 20, 287);
      strokeWeight(5);
      line(88, 182, 0, 280);

//Stone Bridge
noStroke();
fill(#6C6762);
ellipse(400, 215, 270, 150);
fill(#3E3B38);
ellipse(400, 231, 280, 150);
fill(#1877F0);
ellipse(400, 240, 290, 150);

//Other Lantern That goes in Front of Stone Bridge
lantern(402, 241);


//Lights
if(mouseY<175 || mouseX>565 && mouseX<665 && mouseY>440 && mouseY<490){
light(219, 313);
light(417, 257);
light(642, 284);
light(463, 360);
light(117, 452);
light(710, 453);
}


//Structure on Bridge 
noStroke();
fill(redStructure);
rect(340, 155, 10, -60);
rect(460, 155, -10, -60);
rect(330, 85, 140, 10);
fill(0);
rect(325, 82, 148, 5);
stroke(165);
strokeWeight(2);
line(400, 95, 400, 105);

//Light on Bridge Turn on
if(mouseY<175 || mouseX>565 && mouseX<665 && mouseY>440 && mouseY<490){
  noStroke();
  fill(#FFFA6A, 130); 
  triangle(400, 106, 360, 155, 440, 155);  
}

//Brighten Fireworks when Night time
if(mouseY<175 || mouseX>565 && mouseX<665 && mouseY>440 && mouseY<490){
 OR = OR+1;
 OG = OG+1;
 OB = OB+1;
 
 GR = GR+1;
 GG = GG+1;
 GB = GB+1;
 
 RR = RR+1;
 RG = RG+1;
 RB = RB+1;
 
 PR = PR+1;
 PG = PG+1;
 PB = PB+1;

}

//Firework Reset When Mouse is Pressed
if(mousePressed){
 OR = 252;    
 OG = 183;    
 OB = 98;     
 
 GR = 49;
 GG = 191;
 GB = 21;

 RR = 227;
 RG = 55;
 RB = 46;

 PR = 137;
 PG = 43;
 PB = 201;
}

}





//Functions

void lantern(float x, float y){
 //Lantern
  noStroke();
  //Font View
  fill(#FFFCE3);
  rect(x, y, 25, 35);
  //Side View
  fill(#E3DEB9);
  beginShape();
  vertex(x+25, y+35);
  vertex(x+25, y);
  vertex(x+33,y-7);
  vertex(x+33, y+28);
  endShape();
  //Top View
  fill(#F7F0B9);
  beginShape();
  vertex(x, y);
  vertex(x+25, y);
  vertex(x+33, y-7);
  vertex(x+9, y-7);
  endShape();
  //String and Candle
  stroke(0);
  strokeWeight(1);
  line(x+30, y+31, x+25, y+49);
  line(x+5, y+35, x+9, y+49);
  noStroke();
  fill(#8E8E8E);
  ellipse(x+18, y+53, 20, 5);
  fill(#FAB367);
  rect(x+15, y+45, 7, 7);
  triangle(x+15, y+45, x+18, y+42, x+22, y+45); 
}


void firework(float x, float y, float r, float g, float b){
 //Firework
strokeWeight(2);
stroke(r, g, b);
line(x, y, x+44, y-8);
stroke(r+3, g+36, b+98);
line(x+44, y-8, x+81, y-13);

stroke(r, g, b);
line(x-14, y-26, x+27, y-55);
stroke(r+3, g+36, b+98);
line(x+27, y-55, x+56, y-75);

stroke(r, g, b);
line(x-34, y-34, x-21, y-68);
stroke(r+3, g+36, b+98);
line(x-21, y-68, x-12, y-93);

stroke(r, g, b);
line(x-59, y-28, x-87, y-57);
stroke(r+3, g+36, b+98);
line(x-87, y-57, x-114, y-87);

stroke(r, g, b);
line(x-65, y, x-103, y+4);
stroke(r+3, g+36, b+98);
line(x-103, y+4, x-144, y+7);

stroke(r, g, b);
line(x-41, y+19, x-49, y+54);
stroke(r+3, g+36, b+98);
line(x-49, y+54, x-55, y+80);

stroke(r, g, b);
line(x-12, y+22, x+12, y+45);
stroke(r+3, g+36, b+98);
line(x+12, y+45, x+28, y+64); 
}


void light(float x, float y){
  //Light when On
  fill(#FFFA6A, 90);
  ellipse(x, y, 50, 50);
}
