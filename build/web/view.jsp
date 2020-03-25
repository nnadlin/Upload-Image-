<%-- 
    Document   : view
    Created on : May 27, 2019, 6:52:03 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Image Successful</title>
    </head>
    <body>
        <h1>Image Uploaded Successfully...!</h1>
        <b>View | <a href="index.jsp">Upload</a></b><br/><br/>

        <form action="viewImage.jsp" method="post">
            <input type="text" name="id" required="required" placeholder="Enter your image id.."/><br/><br/>
            <input type="submit" value="Upload"/>
        </form>
    </body>
</html>
