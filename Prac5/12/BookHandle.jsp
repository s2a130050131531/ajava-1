<%-- 
    Document   : BookHandle
    Created on : Apr 5, 2016, 12:15:53 PM
    Author     : Kandy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
         <c:import var="B" url="Book.xml"/>
         <x:parse xml="${B}" var="s"/>
         <table>
             <tr>
                 <td>id</td>
                 <td>name</td>
                 <td>author</td>
             </tr>
                    <x:forEach var="a" select="$s//books//book">
                        <tr>
                            <td><x:out select="id"/></td>
                            <td><x:out select="name"/></td>
                            <td><x:out select="author"/></td>
                        </tr>
                    </x:forEach>
         </table>
        </center>
    </body>
</html>
