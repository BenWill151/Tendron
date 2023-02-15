public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
  
       Tendril T1 = new Tendril(len, (Math.random()*(2*PI)),x,y);
       T1.show();                  
       Tendril T2 = new Tendril(len, (Math.random()*(2*PI)),x,y);
       T2.show();
       Tendril T3 = new Tendril(len, (Math.random()*(2*PI)),x,y);
       T3.show();
       Tendril T4 = new Tendril(len, (Math.random()*(2*PI)),x,y);
       T4.show();
       Tendril T5 = new Tendril(len, (Math.random()*(2*PI)),x,y);
       T5.show();
       Tendril T6 = new Tendril(len, (Math.random()*(2*PI)),x,y);
       T6.show();
       Tendril T7 = new Tendril(len, (Math.random()*(2*PI)),x,y);
       T7.show();
    }
    
}
