/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package POJO;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Utkarsh
 */
public class LoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NullPointerException {
        response.setContentType("text/html;charset=UTF-8");
        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        
        
        /*SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session s=sf.openSession();
        Transaction t=s.beginTransaction();
        
        User u= (User)s.get(User.class, username);
        if(username.equals(u.getUsername()))
                {
                    out.println("username");
                }
            if(u == null){
                response.getWriter().print("Invalid Username/Password");
            }
            if(u!=null){
            String checkPassword= u.getPassword();
            if(checkPassword.equals(password))
            {
                response.sendRedirect("Home.jsp");
            }
            else
            {
               response.getWriter().print("Invalid Username/Password");  
            
            }
            }
                
        s.save(u);
        t.commit();
        s.close();*/
        
            
           Connection con=null;
            ResultSet rs=null;
            Statement st=null;
            
            String tablePassword="";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata","root","root");
                st = con.createStatement();
                String query="select password from user where username='"+username+"'"; //'"+uname+"'
                rs=st.executeQuery(query);
                if(rs.next())
                {
                    tablePassword=rs.getString(1);
                }
                
            }
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            if(username!=null && password!=null && !username.trim().equals("") && password.equals(tablePassword))
            {
                request.setAttribute("username", username);
        RequestDispatcher session= getServletConfig().getServletContext().getRequestDispatcher("/Home.jsp");
        session.forward(request, response);
            }
            /*else
            {
                out.println("Invalid Username/Password");
            }*/
            
            
            
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
             
            out.println("<h1>Invalid username/password</h1>");
            out.println("<a href='login.html'>Try Again</a>"); 
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
   

}
