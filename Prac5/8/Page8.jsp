<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h3>Enrollment No:130050131531</h3>
         <h3>Testing page object</h3>
         <%
            out.print(((Servlet)page).getServletInfo());
          %>
    </body>
</html>
