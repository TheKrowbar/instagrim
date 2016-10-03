<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
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
        
        <%-- Links to upload register and log in --%>
        <nav>
            <ul>
                <li><a href="upload.jsp">Upload</a></li>
                    <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) { //they are logged in
                            String UserName = lg.getUsername(); //get their username
                            if (lg.getloggedin()) { %>
                                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li> <%} //navigate to users uploads
                        }else{ %>
                            <li><a href="register.jsp">Register</a></li> <%-- navigate to register page --%>
                            <li><a href="login.jsp">Login</a></li> <% //navigate to login page        
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
