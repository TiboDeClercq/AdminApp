import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
@WebServlet("/EditServlet2")  
public class EditServlet2 extends HttpServlet {  
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
          throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);  
        String name=request.getParameter("name");   
        String email=request.getParameter("email");  
        String branch=request.getParameter("branch"); 
        String y1=request.getParameter("year1");
        String y2=request.getParameter("year2");
        int year1=Integer.parseInt(y1);
        int year2=Integer.parseInt(y2);
        String mobile=request.getParameter("mobile");
          
        Student e=new Student();  
        e.setId(id);  
        e.setName(name);   
        e.setEmail(email);  
        e.setBranch(branch);
        e.setYear1(year1);
        e.setYear2(year2);
        e.setMobile(mobile); 
          
        int status=StudentDatabase.update(e);  
        if(status>0){  
            response.sendRedirect("ViewServlet");  
        }else{  
            out.println("Sorry! unable to update record");  
        }  
          
        out.close();  
    }  
  
}  