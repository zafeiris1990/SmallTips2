<%-- 
    Document   : index
    Created on : 18 Δεκ 2013, 6:05:16 μμ
    Author     : Jim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Small Tips</title>
        
         
    </head>
    <body background="images/images.jpg">
        <div id="created">
                <h3> Created by Dimitris Zafiris</h3>
        </div>
       
       <div id ="smallTips">
           <FONT COLOR="#FFFFFF">
           <h1>Small Tips</h1>
           </FONT>
       </div>
        
        <div id="view_categories">
                <FONT COLOR="#FFFFFF">
                <h1><u>Read our tips</u></h1>
                </FONT>
            </div>
                <div id="view_internetCat"
                 <h3>Internet:</h3><br>
                 <a href="viewInternetTips.jsp"><img id="con" src="images/internet.jpg" width="150" height="120"></a>
            </div>
            <div id="view_hardwareCat"
                 <h3>Hardware:</h3><br>
                 <a href="viewHardwareTips.jsp"><img id="con" src="images/hardware.jpg" width="150" height="120"></a>
            </div>
            <div id="view_softwareCat"
                 <h3>Software:</h3><br>
                 <a href="viewSoftwareTips.jsp"><img id="con" src="images/software.jpg" width="150" height="120"></a>
            </div>
        
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
        
        <div id="login">
        <form method="post" action="login.jsp">
            <left>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                </tbody>
            </table>
            </left>
        </form>
        </div>
        
        <div id="register">
            <a href="register.jsp" ><h3>Register now!</h3></a> 
        </div>
        

        
        <div id="view_categories">
                <FONT COLOR="#FFFFFF">
                <h1><u>Read our tips</u></h1>
                </FONT>
            </div>
                <div id="view_internetCat"
                 <h3>Internet:</h3><br>
                 <a href="viewInternetTips.jsp"><img id="con" src="images/internet.jpg" width="150" height="120"></a>
            </div>
            <div id="view_hardwareCat"
                 <h3>Hardware:</h3><br>
                 <a href="viewHardwareTips.jsp"><img id="con" src="images/hardware.jpg" width="150" height="120"></a>
            </div>
            <div id="view_softwareCat"
                 <h3>Software:</h3><br>
                 <a href="viewSoftwareTips.jsp"><img id="con" src="images/software.jpg" width="150" height="120"></a>
            </div>




            <%} else {
            %>

            <div id="welcome">
            <FONT COLOR="#505050">
            <h3>Welcome <u><%=session.getAttribute("username")%></u></h3>
            </FONT>
            </div>
            
            <div id="logout">
                 <a href='logout.jsp'>Log out</a>
            </div>
                 
            <div id="write_categories">
                <FONT COLOR="#FFFFFF">
                <h1><u>Post your tip</u></h1>
                </FONT>
            </div>    
            <div id="write_internetCat"
                 <h3>Internet:</h3><br>
                 <a href="internetCat.jsp"><img id="con" src="images/write_internet.jpg" width="150" height="120"></a>
            </div>
            <div id="write_hardwareCat"
                 <h3>Hardware:</h3><br>
                 <a href="hardwareCat.jsp"><img id="con" src="images/write_hardware.jpg" width="150" height="120"></a>
            </div>
            <div id="write_softwareCat"
                 <h3>Software:</h3><br>
                 <a href="softwareCat.jsp"><img id="con" src="images/write_software.jpg" width="150" height="120"></a>
            </div>
            
           <%
                }
            %>
          
    </body>
</html>