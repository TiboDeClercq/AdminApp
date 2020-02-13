import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
@WebServlet("/EditServlet")  
public class EditServlet extends HttpServlet {  
    
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
           throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        out.println("<h1>Update Record</h1>");  
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);  
          
        Student e=StudentDatabase.getEmployeeById(id);  
          
        out.print("<form action='EditServlet2' method='post'>");  
        out.print("<table>");  
        out.print("<tr><td>Id</td><td><input type='text' name='id' value='"+e.getId()+"'/></td></tr>");  
        out.print("<tr><td>Name:</td><td><input type='text' name='name' value='"+e.getName()+"'/></td></tr>"); 
        out.print("<tr><td>Email:</td><td><input type='email' name='email' value='"+e.getEmail()+"'/></td></tr>");  
        out.print("<tr><td>Branch:</td><td>");  
        out.print("<select name='branch' style='width:150px'>");  
        out.print("<option>B.tech</option>");  
        out.print("<option>Mca</option>");  
        out.print("<option>Mba</option>");  
        out.print("<option>Bca</option>");
        out.print("<option>Bba</option>");
        out.print("</select>");  
        out.print("</td></tr>");  
        out.print("<tr><td>Year1:</td><td><input type='text' name='year1' value='"+e.getYear1()+"'/></td></tr>");
        out.print("<tr><td>Year2:</td><td><input type='text' name='year2' value='"+e.getYear2()+"'/></td></tr>");
        out.print("<tr><td>Mobile:</td><td><input type='text' name='mobile' value='"+e.getMobile()+"'/></td></tr>");
        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");  
        out.print("</table>");  
        out.print("</form>");  
          
        out.close();  
    }  
}  