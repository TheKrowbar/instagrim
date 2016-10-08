<%-- 
    Document   : profile
    Created on : 08-Oct-2016, 13:22:30
    Author     : Kerr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Styles.css" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn"); 
           String UserName = lg.getUsername(); //get their username %>
           
        <title><%=UserName%>'s Profile</title>
    </head>
    <body>
        <header>
            <h1><%=UserName%>'s Profile</h1> <%-- displays user's name, pretty cool huh? --%>
        </header>
        <nav>
            <ul>
                    
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
