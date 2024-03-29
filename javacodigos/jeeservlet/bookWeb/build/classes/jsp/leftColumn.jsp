<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="br.com.alpi.bookweb.model.Book"%>
<%@page import="br.com.alpi.bookweb.model.Category"%>

<!DOCTYPE html>
<%
	String param1 = application.getInitParameter("param1");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script src="js/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="css/bookstore.css" type="text/css" />
<script src="js/bookstore.js" type="text/javascript"></script>
</head>




<body>
<div class="leftbar">
	<ul id="menu">
		<li><div>
				<a class="link1" href="<%=param1%>"> <span class="label" style="margin-left: 15px;">Home</span>
				</a>
			</div></li>
		<li><div>
				<a class="link1" href="<%=param1%>?action=allBooks"><span
					style="margin-left: 15px;" class="label">All Books</span></a>
			</div></li>
		<li><div>
				<span class="label" style="margin-left: 15px;">Categories</span>
			</div>
			<ul>
				<%
					List<Category> categoryList1 = (List<Category>) application.getAttribute("categoryList");
					Iterator<Category> iterator1 = categoryList1.iterator();
					while (iterator1.hasNext()) {
						Category category1 = (Category) iterator1.next();
				%>
				<li><a class="label" href="<%=param1%>?action=category&categoryId=<%=category1.getId()%>&category=<%=category1.getCategoryDescription()%>">
				<span class="label" style="margin-left: 30px;"><%=category1.getCategoryDescription()%></span></a>
				</li>
				<%
					}
				%>
			</ul></li>
		<li><div>
				<span class="label" style="margin-left: 15px;">Contact Us</span>

			</div></li>
	</ul>
	<form class="search">
		<input type="hidden" name="action" value="search" /> <input id="text"
			type="text" name="keyWord" size="12" /> <span
			class="tooltip_message">?</span>
	
		<input id="submit" type="submit" value="Search" />
	</form>


</div>
</body>
</html>




