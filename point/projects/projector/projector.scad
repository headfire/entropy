//sx=5200;
//sy=3100;
//sz=2500;
// translate([-sx,0,0])
// #cube([sx,sy,sz]);

lMain=600;
xMain=1550;
hMain=1700;

// Home main variant
rot1=35; 
rot2=0;
rot3=30;

module projec(rot1,rot2,rot3, lMain, xMain, hMain) {
translate([-xMain,0,hMain])
rotate([0,0,180])
{

cube([80,80,100],true);
translate([0,-20,0])
rotate([0,0,rot3])
translate([0,-175,0])
{
translate([-20,0,0])
cube([40,175,40]);
rotate([0,0,rot2])
translate([0,-lMain,0])
{
translate([-20,0,0])
cube([40,lMain,40]);
rotate([0,0,rot1])
translate([-150, -110, -110])
{
xPr=300;
yPr=240;
zPr=110;
cube([xPr,yPr,zPr]);
translate([60,5,60])
    rotate([90,0,0])
        cylinder(10,40,40);

color([0.7,0.7,1])
translate([60,5,60])
    rotate([90,0,0])
        cylinder(2300,5,1850/4*3/2);
        
color([1,1,1])
translate([60,-2300,60])
    rotate([90,0,0])
        cube([1850,1850/4*3,1], true);
}        
}
}
}
}

module obj(sx,sy,sz, tx,ty,tz) {
 translate([-sx-tx, ty, tz])
  cube([sx,sy,sz]);
 }

// Guest divan variant
/*
rot1=-70;
rot2=70;
rot3=0;
*/

// Parking
/*
rot1=0;
rot2=-90;
rot3=0;
*/


xRoom = 5200;
yRoom = 3100;
zRoom = 2500; 

hPolka1=800; // 1 уровень полки
hPolka2=1500; // 2 уровень полки
hPanel=18; //толщина мебельной панели
obj(1280,250,hPanel,0,0, hPolka1);
obj(600,1050,hPanel,0,0, hPolka1);
obj(1280,250,hPanel,0,0, hPolka2);
obj(400,1050,hPanel,0,0, hPolka2);
obj(520,200,400,0,0, hPolka2+hPanel);

xBed=900;
yBed=2000;
zBed=500;
color([0.5,1,0.5])
obj (xBed, yBed, zBed, 0,yRoom-yBed, 0);
translate([-xBed/2,yRoom-yBed+200,zBed+300])
    color([1.0,0,0])
         sphere(200);

xChear=500;
yChear=500;
zChear=600;
color([0.2,0.2,0.4])
obj (xChear, xChear, xChear, 600,300,0);
translate([-700,400,1200])
    color([1.0,0,0])
         sphere(200);


xDivan=2100;
yDivan=600;
zDivan=600; 
color([0.5,1,0.5])
obj (xDivan, yDivan, zDivan, 1550, 0, 0);
translate([-xDivan+300,yDivan/2,1000])
    color([1.0,0,0])
         sphere(200);

xScaf=600;
yScaf=2100;
zScaf=2500; 
color([1,1,0.5])
obj (xScaf, yScaf, zScaf, xRoom-xScaf, yRoom-yScaf, 0);

yWinZone=200;
color([0.9,0.9,0.9])
obj (xRoom, yWinZone, zRoom, 0, yRoom-yWinZone, 0);



projec(rot1,rot2,rot3, lMain, xMain, hMain);

