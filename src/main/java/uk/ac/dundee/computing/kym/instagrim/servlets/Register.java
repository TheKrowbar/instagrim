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
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {
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
        username = username.toLowerCase(); //lowercase username
        String password=request.getParameter("password");
        String first_name=request.getParameter("first_name");
        String last_name=request.getParameter("last_name");
        String email=request.getParameter("email");
        
        User us=new User();
        us.setCluster(cluster); //connect to database
        us.RegisterUser(username, password, first_name, last_name, email); //register new user

        HttpSession session=request.getSession();
        System.out.println("Session in servlet "+session);

        /*
        //The following logs in the new user that has just been registered
        //This has been commented as it messes with sending user to profile after login
        if(us.RegisterUser(username, password)){ //if user has been registered
            //log user in immediately after registering
            LoggedIn lg= new LoggedIn();
            lg.setLoggedin();
            lg.setUsername(username);
            //request.setAttribute("LoggedIn", lg);

            session.setAttribute("LoggedIn", lg);
            System.out.println("Session in servlet "+session);
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }else{
            response.sendRedirect("/Instagrim/register.jsp");
        }
        */

        response.sendRedirect("/Instagrim");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
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
