float m1 =40;
float m2=40;
float r1=200;
float r2=200;
float a1=0;
float a2=0;
PGraphics obj;
void setup()
{
  size ( 800,800); 
obj=createGraphics(800,800);
obj.beginDraw();
obj.background(0);
obj.endDraw();
}
void draw()
{
image(obj,0,0);
float a1_a=0;
float a2_a=0;
float a1_v=0;
float a2_v=0;

//background(0);
stroke(255);
strokeWeight(2);
line (100,20,500,20);
translate(300,20);
float x1=r1*sin(a1);
float y1=r1*cos(a1);
line(0,0,x1,y1);
ellipse (x1,y1,m1,m1);
float x2= x1+r2*sin(a2);
float y2=y1+r2*cos(a2);
line (x1,y1,x2,y2);
ellipse(x2,y2,m2,m2);


a1_v+=a1_a;
x1+=a1_v;

a2_v+=a2_a;
x2+=a2_v;



stroke(200);
ellipse(x2,y2,3,3); 
a1+=0.01;
a2-=0.001;
obj.beginDraw();
obj.translate (300,20);
obj.strokeWeight(4);

obj.stroke(255);
obj.point(x2,y2);
obj.endDraw();
}
