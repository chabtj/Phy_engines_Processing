class Segment 
{ PVector a ;
PVector b; 
float armlength;
float angle ;
Segment parent=null;
Segment ( float x , float y , float armlength_, float angle_ ) 
{ armlength=armlength_;
  angle=angle_;
  a= new PVector(x,y);
  calcb();
}

Segment(Segment parent_, float armlength_, float angle_ )

{
  parent=parent_;
  armlength=armlength_;
  angle=angle_;
  
  a=parent.b.copy();
  calcb();
}

void calcb()
{float dx=armlength*cos(angle);
float dy=armlength*sin(angle);
b=new PVector(a.x+dx,a.y+dy);
}
void update ()
{calcb();
}


void makearm ()
{ stroke(255);
strokeWeight(4);
line(a.x,a.y,b.x,b.y);
}

void follow(float targetx,float targety)
{ 
  PVector target=new PVector(targetx,targety);
PVector direction=PVector.sub(target,a);
angle=direction.heading();
direction.setMag(armlength);

a=PVector.sub(target,direction);

}

void moveback(PVector pos)
{a=pos.copy();
calcb();
}


}
