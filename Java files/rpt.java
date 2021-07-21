
import java.sql.Date;





/**
 *
 * @author pande
 */
class rpt {
     
    private Date date;
    
    private float sales, taxes, revenue, tips;
    
    public rpt(Date date, float sales, float taxes, float revenue, float tips)
    {
       this.date = date;
       this.sales = sales;
       this.taxes = taxes;
       this.revenue = revenue;
       this.tips = tips;        
    }

    public Date getdate(){
        return date;
    }
    public float getsales(){
        return sales;
    }
     
    public  float gettaxes(){
        return taxes;
    }
    
    public float getrevenue(){
        return revenue;
    }
    
    public float gettips(){
        return tips;
    }
}
