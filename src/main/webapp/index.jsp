<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.kym.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" /> <%-- links to css --%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    
    <body> <%-- main content --%>
        <header>
            <h1>InstaGrim</h1>
            <h2>Your world in Black and White</h2>
        </header>
        
        <%-- if user is logged in, take them to their uploads --%>
        <nav>
            <ul>
                    <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) { //they are logged in
                            String url_username = (String)request.getAttribute("uname"); //get their username
                            if (lg.getloggedin()) { 
                                response.sendRedirect(request.getContextPath() + "/Images/" + url_username);//go to user's profile
                            } 
                        }else{ %>
                            <li><a href="/Instagrim/Register">Register</a></li> <%-- link to register page --%>
                            <li><a href="/Instagrim/Login">Login</a></li> <% //link to login page        
                        }%>
            </ul>
        </nav>
            
        <%-- links to home --%>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li> <%-- navigate to index page --%>
                <li>&COPY; Kerr Macpherson</li>
            </ul>
        </footer>
    </body>
</html>
