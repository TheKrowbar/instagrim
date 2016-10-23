<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.kym.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim Upload</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <h1>Instagrim </h1>
        <h2>Your world in Black and White</h2>
 
        <article>
            <h3>File Upload</h3>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/> <%--uploads file--%>
                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form> 

        </article>
        <footer>
            <ul>
                <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn"); 
                String UserName = lg.getUsername(); //get their username %>
        <li><a href="/Instagrim/Images/<%=UserName%>">Back</a></li> <%-- user's profile page --%>
            </ul>
        </footer>
    </body>
</html>
