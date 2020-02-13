import java.util.*;  
import java.sql.*;  
  
public class StudentDatabase {  
  
    public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/itm","root","root");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public static int save(Student e){  
        int status=0;  
        try{  
            Connection con=StudentDatabase.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into addstudent(id,name,email,branch,year1,year2,mobile) values (?,?,?,?,?,?,?)");
            ps.setInt(1,e.getId());
            ps.setString(2,e.getName());   
            ps.setString(3,e.getEmail());  
            ps.setString(4,e.getBranch()); 
            ps.setInt(5,e.getYear1());
            ps.setInt(6,e.getYear2());
            ps.setString(7,e.getMobile()); 
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int update(Student e){  
        int status=0;  
        try{  
            Connection con=StudentDatabase.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "update addstudent set  name=?,email=?,branch=?,year1=?,year2=?,mobile=? where id=?");
            ps.setInt(1,e.getId());
            ps.setString(2,e.getName());  
            ps.setString(3,e.getEmail());  
            ps.setString(4,e.getBranch());  
            ps.setInt(5,e.getYear1());  
            ps.setInt(6,e.getYear2()); 
            ps.setString(7,e.getMobile());
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int delete(int id){  
        int status=0;  
        try{  
            Connection con=StudentDatabase.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from addstudent where id=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static Student getEmployeeById(int id){  
        Student e=new Student();  
          
        try{  
            Connection con=StudentDatabase.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from addstudent where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                e.setId(rs.getInt(1));  
                e.setName(rs.getString(2));  
                e.setEmail(rs.getString(3));  
                e.setBranch(rs.getString(4));
                e.setYear1(rs.getInt(5)); 
                e.setYear2(rs.getInt(6));
                e.setMobile(rs.getString(7));  
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return e;  
    }  
    public static List<Student> getAllEmployees(){  
        List<Student> list=new ArrayList<Student>();  
          
        try{  
            Connection con=StudentDatabase.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from addstudent");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Student e=new Student();  
                e.setId(rs.getInt(1));  
                e.setName(rs.getString(2));  
                e.setEmail(rs.getString(3));  
                e.setBranch(rs.getString(4));
                e.setYear1(rs.getInt(5)); 
                e.setYear2(rs.getInt(6));
                e.setMobile(rs.getString(7));   
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }  
}  