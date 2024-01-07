//Boat Project 
/*
Simple animation that tracks the mouse and has the boat follow
Time changes from day to night and resets when space key is pressed
Clicking mouse changes color of the flag on the boat
*/

float BoatX = 25; 
float SunY = 100;
float MoonY = 400;
float SkyR = 116;
float SkyG = 204;
float SkyB = 229;
float Fish = 50;
float rFlagR = random(0, 255); 
float rFlagG = random(0, 255); 
float rFlagB = random(0, 255); 

void setup(){
size(800,500); 
}

void draw(){
//Background Color
background(SkyR, SkyG, SkyB);        

//Sun
fill(#FFD950);
ellipse(width/2, SunY, 70, 70);
fill(#FFE174, 120);
ellipse(width/2, SunY, 90, 90);

//Moon
fill(#EDEDED);
ellipse(100, MoonY, 65, 65);
fill(SkyR, SkyG, SkyB);  
ellipse(125, MoonY-1, 65, 65);

//Sea-Ocean
noStroke();
fill(#0E55C4);
rect(0,300, width, height);

//Sand
fill(#FFD743);
rect(0, 475, width, height);

//Seaweed
strokeWeight(4);
stroke(#00A201);
line(50, 425, 50, 475);
line(60, 455, 60, 475);
line(100, 405, 100, 475);
line(300, 415, 300, 475);
line(400, 465, 400, 475);
line(450, 440, 450, 475);
line(750, 410, 750, 475);

//Fish
noStroke();
fill(#F09F07);
beginShape();
vertex(Fish, 350);
vertex(Fish + 5, 360);
vertex(Fish + 10, 352);
vertex(Fish + 20, 360);
vertex(Fish + 10, 368);
vertex(Fish + 5, 360);
vertex(Fish, 370);
endShape();

beginShape();
vertex(Fish + 20, 400);
vertex(Fish + 25, 410);
vertex(Fish + 30, 402);
vertex(Fish + 40, 410);
vertex(Fish + 30, 418);
vertex(Fish + 25, 410);
vertex(Fish + 20, 420);
endShape();

beginShape();
vertex(Fish + 150, 400);
vertex(Fish + 145, 410);
vertex(Fish + 140, 402);
vertex(Fish + 130, 410);
vertex(Fish + 140, 418);
vertex(Fish + 145, 410);
vertex(Fish + 150, 420);
endShape();

beginShape();
vertex(Fish + 180, 425);
vertex(Fish + 175, 435);
vertex(Fish + 170, 427);
vertex(Fish + 160, 435);
vertex(Fish + 170, 443);
vertex(Fish + 175, 435);
vertex(Fish + 180, 445);
endShape();

//Boat
fill(#AA7321);
beginShape();
vertex(BoatX,310); 
vertex(BoatX-15, 270);
vertex(BoatX+95, 270);
vertex(BoatX+80, 310);
endShape();

//Sail
fill(255);
triangle(BoatX-10, 265, BoatX+42, 205, BoatX+90, 265); 

//Pole
strokeWeight(3);
stroke(#6C6C6C);
line(BoatX+40, 180, BoatX+40, 270);

//Flag
noStroke();
fill(rFlagR, rFlagG, rFlagB);
beginShape();
vertex(BoatX+42, 180);
vertex(BoatX+72, 190);
vertex(BoatX+42, 200);
endShape();

//Text on Boat
fill(0);
textSize(16);
text("Mia Larkin", BoatX, 295);

//Stick Person
noFill();
stroke(0);
strokeWeight(2);
ellipse(BoatX + 60, 240, 15, 15);
line(BoatX + 60, 248, BoatX + 60, 265);
line(BoatX +61, 252, BoatX + 66, 250);
line(BoatX +61, 256, BoatX + 66, 253);
line(BoatX +61, 265, BoatX + 70, 270);
line(BoatX +61, 267, BoatX + 72, 275);

//Fishing Rod
stroke(#904E06);
strokeWeight(2); 
line(BoatX + 66, 252, BoatX + 85, 248);
stroke(#FCFCFC);
line(BoatX + 85, 248, BoatX + 95, 375);
fill(255);
stroke(255);
ellipse(BoatX + 95, 375, 10, 10);
noStroke();
fill(#F50707);
beginShape();
vertex(BoatX + 89, 375);
vertex(BoatX + 103, 375);
vertex(BoatX + 101, 382);
vertex(BoatX + 91, 382);
endShape();

//Animation
BoatX = mouseX;
Fish = mouseX;
frameRate(35);
SunY++;
MoonY--;
MoonY=constrain(MoonY, 70, 400);
SkyR--;
SkyG--;
SkyB--;

}


void keyPressed(){
// Restart animatio   
SunY = 100;
MoonY = 400;
SkyR = 116;
SkyG = 204;
SkyB = 229;
}

void mousePressed(){
// Change flag color
rFlagR = random(0, 255); 
rFlagG = random(0, 255); 
rFlagB = random(0, 255);   
}
