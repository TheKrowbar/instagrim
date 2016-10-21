<%-- 
    Document   : userspics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%-- NOTE: This page is named UsersPics but has been adapted to be the user's profile page also --%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.kym.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn"); 
        
        String UserName = lg.getUsername(); //get their username 
        String f_name = lg.getfirstName();
        String l_name = lg.getlastName();
        String email = lg.getEmail();
        
        String upper_name = UserName.substring(0, 1).toUpperCase() + UserName.substring(1); //capitalises first letter of uname %>
        <title><%=upper_name%>'s Profile</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        <header>
        
        <h1><%=upper_name%>'s Profile</h1> <%-- displays user's name, pretty cool huh? --%>
        </header>
        
        <article>
            <h2>First Name: <%=f_name%></h2>
            <h3>Last Name: <%=l_name%></h3>
            <h4>Email: <%=email%></h4>
        </article>
        
        <nav>
            <ul>
                <li class="nav"><a href="/Instagrim/Upload">Upload</a></li>
                <li class="nav"><a href="/Instagrim/logout.jsp">Logout</a></li>
            </ul>
        </nav>
 
        <article>
            <h1>Your Pics</h1>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>You don't seem to have uploaded any pictures to Instagrim...</p>
        <%
        } else { %>
            <%-- make a grid for the images --%>
            <table> <%
                    Iterator<Pic> iterator;
                    iterator = lsPics.iterator(); 
                    while (iterator.hasNext()) {
                        Pic p = (Pic) iterator.next(); %>
                        <td>
                            <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a>
                        </td>    
                    <%} //while%>
            </table>
            <%} //else%>
        </article>
    </body>
</html>