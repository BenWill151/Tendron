public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {  
      for(int i = 0; i< NUM_STEMS;i++){
       Tendril T1 = new Tendril(len,(2*PI)*i * 2/9,x,y);
       T1.show();                  
      }
    }
    
}
