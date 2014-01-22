<%-- 
    Document   : login
    Created on : 19 Δεκ 2013, 9:28:23 μμ
    Author     : Jim
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%  request.setCharacterEncoding("UTF-8");

    String uname = request.getParameter("username");    
    uname = uname.replace("\'","\'\'");
    String psswrd = request.getParameter("password");
    psswrd = psswrd.replace("\'","\'\'");
    
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8",
            "root", "******");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + uname + "' and password='" + psswrd + "'");
    if (rs.next()) {
        session.setAttribute("username", uname);
        response.sendRedirect("index.jsp");
    } else {
        
        out.println("Invalid password or username.<a href='index.jsp'>Try again</a>.");
        
    }
%>
<html>
<body background="images/images.jpg">    
</body>
</html>
