PImage bg;
PImage soil;
PImage life;
PImage groundhog;
PImage robot;
PImage soldier;

int x = 0;
int y = 160;

int soldierX = 80 ;
int soldierY = y + floor(random(4))*80;
float soldierSpeed ;

int robotX = x + floor(random(400));
int robotY = y + floor(random(4))*80;




void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
 bg = loadImage("img/bg.jpg");
 soil = loadImage("img/soil.png");
 life = loadImage("img/life.png");
 groundhog = loadImage("img/groundhog.png");
 robot = loadImage("img/robot.png");
 soldier = loadImage("img/soldier.png");
 soldierSpeed = 3 ;
 
}

void draw() {
	// Enter Your Code Here
 background(bg);
 
 //soil
 image(soil,0,160);
 
 //life
 image(life,10,10);
 image(life,80,10);
 image(life,150,10);
 
 //grass
 noStroke();
 fill(124,204,25);
 rect(0,145,640,15);
 
 //groundhog
 image(groundhog,280,80);
 
 //sun
 noStroke();
 fill(255,255,0);
 ellipse(590,50,130,130);
 fill(253,184,19);
 ellipse(590,50,120,120);
 
 //soldier
 image(soldier,soldierX-80,soldierY);
 soldierX += soldierSpeed ;
 soldierX %= 640+80 ;
 
 //robot
 image(robot,robotX+160,robotY);
 //
 
 
}
