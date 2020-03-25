<%-- 
    Document   : getImage
    Created on : May 27, 2019, 6:52:46 PM
    Author     : ACER
--%>
<%@page import="UI.DB" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Blob" %>
<%@page import="java.io.OutputStream" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.*" %>

<%
    String id = request.getParameter("id");
    try {
        Connection con = DB.getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM data where id=?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            Blob blob = rs.getBlob("image");
            byte byteArray[] = blob.getBytes(1, (int) blob.length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);;
            os.flush();
            os.close();
        } else {
            System.out.println("No image found with this id");
        }
    } catch (Exception e) {
        out.println(e);

    }
%>