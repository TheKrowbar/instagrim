<%-- 
    Document   : logout
    Created on : 15-Oct-2016, 14:48:34
    Author     : Kerr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="Styles.css" /> <%-- links to css --%>
        <title>Logout</title>
    </head>
    <header>
            <h1>InstaGrim</h1>
            <h2>Your world in Black and White</h2>
        </header>
    <body>
        <nav>
        <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn"); 
        String UserName = lg.getUsername(); //get their username %>
        <li><a href="/Instagrim/Images/<%=UserName%>">Back to My Profile</a></li> <%-- user's profile page --%>
        <form method="POST"  action="Logout"> <%-- logs user out --%>
        <input type="submit" value="Logout"> </form>
        </nav>
    </body>
</html>
