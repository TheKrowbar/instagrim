                         <%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up for Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" /> <%-- link to css --%>
    </head>
    <body>
        <header>
        <h1>Instagrim</h1>
        <h2>Your world in Black and White</h2>
        </header>
        <article>
            <h3>Sign up for Instagrim! You know you want to</h3>
            <form method="POST"  action="Register">
                <ul>
                    <%-- enter new username and password --%>
                    <li>User Name  <input type="text" name="username" required minlength = 2></li> <%-- "required" so user can't just hit register without filling in --%>
                    <li>Password   <input type="password" name="password" required minlength = 4></li>
                    <li>First Name <input type="text" name="first_name" required></li>
                    <li>Last Name  <input type="text" name="last_name" required></li>
                    <li>Email      <input type="text" name="email" required></li>
                </ul>
                <br/>
                <input type="submit" value="Register"> <%-- registers user --%>
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li> <%-- index page link --%>
            </ul>
        </footer>
    </body>
</html>
