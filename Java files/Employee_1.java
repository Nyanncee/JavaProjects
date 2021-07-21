/**
 *
 * @author pande
 */
class Employee_1 {
    
    private int eid,mid;
    private String ename,position;
    
    public Employee_1 ( int eid, String ename, String position, int mid)
    {
        
       this.eid = eid;
       this.ename = ename;
       this.position = position;
       this.mid = mid;
        
    }
    
    public int geteid(){
        return eid;
    }
    public String getename(){
        return ename;
    }
     
    public String getposition(){
        return position;
    }
    
    public int getmid(){
        return mid;
    }
}
