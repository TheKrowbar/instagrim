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
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" /> <%-- link to css --%>
    </head>
    <body>
        <header>
        <h1>InstaGrim!</h1>
        <h2>Your world in Black and White</h2>
        </header>
        <nav>
            <ul>
                <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
            </ul>
        </nav>
       
        <article>
            <h3>Sign up for Instagrim! You know you want to</h3>
            <form method="POST"  action="Register">
                <ul>
                    <%-- enter new username and password --%>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <br/>
                <input type="submit" value="Register"> <%-- haha! I fixed your spelling error! Although if u/name or p/word are empty we get server errors --%>
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li> <%-- index page link --%>
            </ul>
        </footer>
    </body>
</html>
