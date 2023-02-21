class Tendril
{
  public final static float SEG_LENGTH = 25; //length of each segment in the tendril
  private int len, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int myNumSegments, double theta, int x, int y)
  {
    myAngle = theta;
    len = myNumSegments;
    myX = x;
    myY = y;
  }
  public void show()
  {
    float startX = myX;
    float startY = myY;
    float endX,endY;
    if(len > 30){
      stroke(150);
    }else if(len > 25){
      stroke(100);
    }else if(len > 20){
      stroke(50);
    }else{
      stroke(25);
      
      for(int i = 0; i<len;i++){
        
        myAngle = myAngle + ((double)(Math.random()*.4)-.2);
        endX = (startX + cos((float)(myAngle))*SEG_LENGTH);
        endY = (startY + sin((float)(myAngle))*SEG_LENGTH);
        strokeWeight(2);
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        line(startX,startY,endX,endY);          
        startX = endX;
        startY = endY; 
        
      }  
      if(len >=1.1 ){      
         new Cluster(len/2, (int)startX, (int)startY);     
      }
      
    }
    
  }
}





       //Tendril T1 = new Tendril(len-1, (Math.random()*(2*PI)),myX,myY);
       //T1.show();
       //Tendril T2 = new Tendril(len-1, (Math.random()*(2*PI)),myX,myY);
       //T2.show();
       //Tendril T3 = new Tendril(len-1, (Math.random()*(2*PI)),myX,myY);
       //T3.show();
       //Tendril T4 = new Tendril(len-1, (Math.random()*(2*PI)),myX,myY);
       //T4.show();
       //Tendril T5 = new Tendril(len-1, (Math.random()*(2*PI)),myX,myY);
       //T5.show();
       //Tendril T6 = new Tendril(len-1, (Math.random()*(2*PI)),myX,myY);
       //T6.show();
       //Tendril T7 = new Tendril(len-1, (Math.random()*(2*PI)),myX,myY);
       //T7.show();
