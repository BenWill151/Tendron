public void setup()
{
  size(1000, 1000);  
  background(255);
  rectMode(CENTER);
  //noLoop();
}
float mx,my,xpos,ypos;
float xpos1,ypos1;
float angle;
float speed = 5;
float angle1;
float speed1 = 5;
public void draw()
{
  background(255);
   if (abs(xpos - mouseX) > 2 || abs(ypos - mouseY) > 2) {
      angle = atan2(mouseY - ypos, mouseX- xpos);
      xpos = xpos + round(speed * cos(angle));
      ypos = ypos + round(speed * sin(angle));
    }  
    if (abs(xpos1 - mouseX) > 2 || abs(ypos1 - mouseY) > 2) {
      angle1 = atan2(mouseY - ypos1, mouseX- xpos1);
      xpos1 = xpos1 + round(speed1 * cos(angle1));
      ypos1 = ypos1 + round(speed1 * sin(angle1));
    }   
  Cluster c = new Cluster(5, (int)xpos, (int)ypos);
  if(dist(xpos,ypos,mouseX,mouseY)<5){
    background(0);
    Cluster s = new Cluster(5, (int)xpos1, (int)ypos1);
    Cluster e = new Cluster(5, (int)xpos1, (int)ypos1);
    
  }
   // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
