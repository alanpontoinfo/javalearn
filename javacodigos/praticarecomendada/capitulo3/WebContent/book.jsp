<%@page import="com.alpi.capitulo3.model.Book"%>
<%@page import="com.alpi.capitulo3.model.Author"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<table border="1">
<tr>
<th width= "20px">Description</th>
<th>code</th>
<th>output</th>
</tr>

<% 
Book book=(Book)request.getAttribute("bookAttrib");
Author author=book.getAuthor(); 
 %>

<tr>
<td>Author's Name using <b>Scriptlet and Expression</b></td>
<td>${fn:escapeXml("<%= author.getName() %>")}</td>
<td><%=author.getName()%></td>
</tr>
<jsp:useBean id="bookAttrib" class="com.alpi.capitulo3.model.Book" scope="request"/>
<tr>
<td>Author's Name using <b> jsp:getProperty action </b>
</td>
<td>
<table border="1">
<tr>
<td>${fn:escapeXml("<jsp:getProperty name = \"bookAttrib \" property= \"author \" />")}</td>
</tr>
<tr>
<td>${fn:escapeXml("<jsp:getProperty name = \"bookAttrib \" property= \"author.name \" />")}</td>
</tr>
</table>
<span>${header["user-agent"]}</span>

</td>
<td>
<table border="1">
<tr>
<td><jsp:getProperty name="bookAttrib" property="author" />
</td>
</tr>
<tr>
<td>
<%-- <jsp:getProperty name ="bookId" property="author.name" /> - this code will yield run time 
exception --%>
51.Not possible
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>Author's Name using<b> EL </b></td>
<td>${fn:escapeXml("${bookAttrib.author.name}")}</td>
<td>${bookAttrib.author.name}</td>
</tr>
</table>
</body>
</html>