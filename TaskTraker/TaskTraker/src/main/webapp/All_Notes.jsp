<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@include file="All_css.jsp"%>
</head>

<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3" >
					<img src="Image/notebook.png" style="max-width:100px;" class="card-img-top m-4 ml-5" alt="not find">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text "><%=note.getContent() %></p>
						<p><b class="text-primary"><%=note.getAddedDate() %></b></p>
						<div class="container d-flex justify-content-end " >
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger m-1">Delete</a>
						<a href="Edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary m-1">Update</a>
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>

			</div>
		</div>

	</div>

</body>
</html>