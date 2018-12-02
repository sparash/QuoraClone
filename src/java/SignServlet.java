import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class SignServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/spas?useSSL=false","root","sparashadmin1234.@");
            String query1="insert into info2 values(?,?,?)";
            PreparedStatement pstmt=conn.prepareStatement(query1);
            String n=request.getParameter("Name");
            String u=request.getParameter("email");
            String p=request.getParameter("psw");
            pstmt.setString(1,n);
            pstmt.setString(2,u);
            pstmt.setString(3,p);
            //pstmt.setString(4,p);
            int rs=pstmt.executeUpdate();
            if(rs>=1)
            {
                //System.out.print(rs);
                HttpSession session=request.getSession();
                session.setAttribute("user",u);
            // Set expiry time of the session to 30mins
                session.setMaxInactiveInterval(30*60);
                String url=response.encodeRedirectURL("index.html");
                response.sendRedirect(url);
            }
            else
            {
                request.getSession().invalidate();
            response.sendRedirect("Login.html");
            }
            System.out.println("Rows Affected:::"+rs);
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }

   
     // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
