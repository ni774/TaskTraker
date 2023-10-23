<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<%@include file="All_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Update your notes</h1>
		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = (Session) FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		s.close();
		%>

		<form action="UpdateServlet" method="post">

           <input value="<%=note.getId() %>"  name="noteId" type="hidden" />
			<div class="mb-3">
				<label for="title" class="form-label">Note title</label> <input
					type="text" class="form-control" name="title" id="title"
					aria-describedby="emailHelp" placeholder="Enter title here"
					value="<%=note.getTitle() %>"
					required>
			</div>

			<div class="mb-3">
				<label for="Content" class="form-label">Note Content</label>
				<textarea id="Content" class="form-control"
					placeholder="Enter your content here" name="content" 
					style="height: 300px" required><%=note.getContent() %>"</textarea>
			</div>


			<button type="submit" class="btn btn-success">Save your note</button>
		</form>
	</div>
</body>
</html>