<%-- 
    Document   : registration
    Created on : 19 ??? 2013, 7:48:39 ??
    Author     : Jim
--%>

<%@ page import = "java.sql.*" %>

<%
   
    String fName = request.getParameter("firstName");   
    String lName = request.getParameter("lastName");
    String uname = request.getParameter("username");
    String psswrd = request.getParameter("password");
    String mail = request.getParameter("email");
    uname = uname.replace("\'","\'\'");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8","root","*****");
    
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into users (firstName , lastName ,username , password , email ) values ('" + fName + "','" + lName + "','" + uname + "','" + psswrd + "','" + mail +"')");
    
%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/register.css">
</head>    
<body background="images/images.jpg">  
    <div id ="smallTips">
           <FONT COLOR="#FFFFFF">
                <h1>Small Tips</h1>
           </FONT>
       </div>
<div id="success_registration">
<h3>Registration Successful.Go <a href="logout.jsp">back</a> to login.<h3>
</div>

</body>
</html>
