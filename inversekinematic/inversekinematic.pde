int n=4 ;
int armlen=200;
Segment []seg=new Segment[n];
PVector base=new PVector (300,350);
void setup()
{size ( 600,400);
seg[0]=new Segment (300,300,armlen,0);
for (int  i=1;i<n;i++)
seg[i]=new Segment(seg[i-1],armlen,0);
}
void draw()
{
  background(51);

update();
}
void mouseClicked()

{ int ctr =0;
  
  while (seg[n-1].b.x!=mouseX && seg[n-1].b.y!=mouseY)
 {
  
   seg[n-1].follow(mouseX,mouseY);
   update();
   
   ctr++;
   if ( ctr>1000){
   ctr=0;
 break;}
 if(ctr<10)
 {delay(20);
 }
   
   
 

}
 }
void update()
{
  seg[n-1].update(); 



for (int i =n-2;i>=0;i--)
{ 
seg[i].follow(seg[i+1].a.x,seg[i+1].a.y);
seg[i].update();
}
seg[0].moveback(base);

for ( int i=1;i<n;i++)
{seg[i].moveback(seg[i-1].b);
}

for ( int i =0;i<n;i++)
{seg[i].makearm();
}

}
