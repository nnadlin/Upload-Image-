<%-- 
    Document   : viewImage
    Created on : May 27, 2019, 6:53:10 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viewing Image</title>
    </head>
    <body>
        <h1>View Image</h1>
        <b>View | <a href="index.jsp">Upload</a></b><br/><br/>
        
		<%
		String id = request.getParameter("id");
		%>
		<img src="getImage.jsp?id=<%=id%>" width="400px"/>
    </body>
</html>

