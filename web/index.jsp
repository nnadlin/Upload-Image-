<%-- 
    Document   : index
    Created on : May 27, 2019, 6:50:57 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Uploading Image</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <b>Upload | <a href="view.jsp">View</a></b><br/><br/>
        <form action="uploadImage" method="post" enctype="multipart/form-data">
            <input type="file" name="image" required="required"/><br/><br/>
            <input type="submit" value="Upload"/>
        </form>
    </body>
</html>
