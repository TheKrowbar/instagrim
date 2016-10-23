<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim Login</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />

    </head>
    <body>
        <header>
        <h1>Login</h1>
        </header>
       
        <article>
            <h3>Login to Instagrim!</h3>
            <form method="POST"  action="Login">
                <ul>
                    <li>User Name <input type="text" name="username" required minlength = 2></li> <%--has to be filled in, has to be 2 chars or more--%>
                    <li>Password <input type="password" name="password" required minlength = 4 ></li>
                </ul>
                <br/>
                <input type="submit" value="Login"> 
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
