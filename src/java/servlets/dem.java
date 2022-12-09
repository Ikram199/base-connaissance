/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author IKRAM
 */
public class dem extends HttpServlet {
    Connection con;
    Statement state;
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet dem</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dem at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try {
            con=MyConnection.getMyConnection();
            state=con.createStatement();
            int id=3;
            String nom=request.getParameter("nom");
            String prenom=request.getParameter("prenom");
            String email=request.getParameter("email");
            String tel=request.getParameter("tel");
            String typeProb=request.getParameter("typeProb");
            String description =request.getParameter("description");
            
            state.executeUpdate("insert into testtt values('"+id+"','"+nom
                    +"','"+prenom+"','"+email+"','"+tel+"','"+typeProb+"','"+description+"')");
//                response.sendRedirect("Intervenant.jsp");

//         String sql ="insert into testtt(nom,prenom,email,tel,typeProb,description )values (?,?,?,?,?,?)"; 
//             PreparedStatement ps= con.prepareStatement(sql);
//             ps.setString(1, nom);
//             ps.setString(2, prenom);
//             ps.setString(3, email);
//             ps.setString(4, tel);
//             ps.setString(5, typeProb);
//             ps.setString(6, description );
//             ps.executeUpdate();

System.out.println("ana zwina ");


        } catch (SQLException ex) {
            Logger.getLogger(dem.class.getName()).log(Level.SEVERE, null, ex);
        }
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
//         con=MyConnection.getMyConnection();            
//         state=con.createStatement();
//            int id=2;
//            String nom=request.getParameter("nom");
//            String prenom=request.getParameter("prenom");
//            String email=request.getParameter("email");
//            String tel=request.getParameter("tel");
//            String typeProb=request.getParameter("typeProb");
//            String description =request.getParameter("description");
//            
//            state.executeUpdate("insert into testtt values('"+id+"','"+nom
//                        +"','"+prenom+"','"+email+"','"+tel+"','"+typeProb+"','"+description+"')");
//                response.sendRedirect("Intervenant.jsp");

//         String sql ="insert into testtt(nom,prenom,email,tel,typeProb,description )values (?,?,?,?,?,?)"; 
//             PreparedStatement ps= con.prepareStatement(sql);
//             ps.setString(1, nom);
//             ps.setString(2, prenom);
//             ps.setString(3, email);
//             ps.setString(4, tel);
//             ps.setString(5, typeProb);
//             ps.setString(6, description );
//             ps.executeUpdate();
             
//         System.out.println("ana zwina ");

        }
    @Override
    public String getServletInfo() {
        return "Short description";
    }


}
