<%-- 
    Document   : successlogin
    Created on : 19 Δεκ 2013, 9:41:18 μμ
    Author     : Jim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>.
<%} else {
%>

Welcome <%=session.getAttribute("username")%>
<a href="logout.jsp">Log out</a>.
<%
    }
%>
