
package CSC346.HashtableAssignment;

import java.util.*;


public class Student{
     
     int Student_id;
    String firstname;
    public Student(int Student_id,String firstname){
        this.Student_id=Student_id;
        this.firstname=firstname;
        
        
          Map<Integer,Student>map=new HashMap<>();  
          map.entrySet().forEach((entry) -> {
              int key=entry.getKey();
              Student s=entry.getValue();
              System.out.println(key+" Student:");
              System.out.println(s.Student_id+" "+s.firstname+" ");
         });   
         
    }
}
      
  
    
    


      
   
  
    

   