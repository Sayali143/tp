import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Validate {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String name = request.getParameter("username");
        String pass = request.getParameter("pass");
        
        if(pass.equals("Sayali@8"))
        {
            HttpSession session = request.getSession();
            session.setAttribute("username", name);
            response.sendRedirect("home");
        }
    }
}