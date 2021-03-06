/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.kym.instagrim.servlets;

import com.datastax.driver.core.Cluster;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uk.ac.dundee.computing.kym.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.kym.instagrim.models.User;
import uk.ac.dundee.computing.kym.instagrim.stores.LoggedIn;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    Cluster cluster=null;


    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();
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
        
        String username=request.getParameter("username");
        username = username.toLowerCase();
        String password=request.getParameter("password");
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        
        User us=new User();
        us.setCluster(cluster);
        boolean isValid=us.IsValidUser(username, password);
        HttpSession session=request.getSession();
        System.out.println("Session in servlet "+session);
        
        if (isValid){ //user is registered
            LoggedIn lg= new LoggedIn(); //login and set details
            lg.setLoggedin();
            lg.setUsername(username);
            lg.setfirstName(firstName);
            lg.setlastName(lastName);
            lg.setEmail(email);
            
            session.setAttribute("LoggedIn", lg);
            System.out.println("Session in servlet "+session);
            
            LoggedIn lgpath = (LoggedIn) session.getAttribute("LoggedIn");
            String url_username = lgpath.getUsername();
            
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp"); //send user to profile after login
            request.setAttribute("uname", url_username); //for sending user to profile after login

	    rd.forward(request,response);
            
        }else{
            response.sendRedirect("/Instagrim/login.jsp");
        }
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
         rd.forward(request,response);
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
