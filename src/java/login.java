import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String s=request.getParameter("u");
            int i=Integer.valueOf(request.getParameter("p"));
            
            if(!(s.equals("a")& i==1) | (s.equals("")& i==0)){
                
                //if lgin failed the client will go to this page
                 request.getRequestDispatcher("index.html").forward(request, response);
            }
            else{
                 out.println("<center><h1>Login Sucsessfully</h1></center>");   
                 request.getRequestDispatcher("home.html").forward(request, response);
            }
            //adding a new cookie
            Cookie c=new Cookie("n",s);
            response.addCookie(c);
            
            //show any cookie
            Cookie co[]=request.getCookies();
            out.println("<h1>Name: "+co[0].getValue()+"</h1>");
            
            //out.println("<meta http-equiv='refresh' content='1'>");
            //out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
        }
    
    }
}