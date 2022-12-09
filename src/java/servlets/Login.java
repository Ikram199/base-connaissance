/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ayoub
 */
public class Login extends HttpServlet {
    Connection con;
    Statement state;
    ResultSet dataEmploye;
    ResultSet dataIntervenant;
    ResultSet dataAdministrateur;
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
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
        try {
            //take the data from fields
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            //create a session
            HttpSession session=request.getSession();
            //create connection to data base
            con=MyConnection.getMyConnection();
            state=con.createStatement();
            dataAdministrateur=state.executeQuery("select * from administrateur where EMAIL_ADMIN='"+email+"' and MOTDEPASSE_ADMIN='"+password+"'");
//            dataIntervenant=state.executeQuery("select * from intervenant where EMAIL_INTERVENANT='"+email+"' and MOTDEPASSE_INTERVENANT='"+password+"'");
//            dataEmploye=state.executeQuery("select email,password from employe where email='"+email+"' and password='"+password+"'");
            //check the data if exist
            if(dataAdministrateur.next()){
                String n=dataAdministrateur.getString("NOM_ADMIN");
                String p=dataAdministrateur.getString("PRENOM_ADMIN");
                session.setAttribute("nom", n);
                session.setAttribute("prenom", p);
                String no=(String)session.getAttribute("nom");
                System.out.println(no);
                response.sendRedirect("views/administrateur.jsp");
            }
//            if(dataIntervenant!=null){
//                request.setAttribute("email", email);
//                request.setAttribute("password", password);
//                response.sendRedirect("views/intervenant.jsp");
//            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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