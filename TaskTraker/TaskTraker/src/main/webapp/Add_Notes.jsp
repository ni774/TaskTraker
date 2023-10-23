<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@include file="All_css.jsp" %> 
</head>
<body>
   <div class="container">
           <%@include file="navbar.jsp" %>   
           
           <br>
           <h1>Please fill your note detail</h1>
      <br>
      
    <form action="SaveNoteServlet" method="post">
  
  <div class="mb-3">
    <label for="title" class="form-label">Note title</label>
    <input type="text" class="form-control" 
    name="title"
    id="title" aria-describedby="emailHelp" placeholder="Enter title here" required>
  </div>
  
  <div class="mb-3">
    <label for="Content" class="form-label">Note Content</label>
    <textarea
        id="Content" class="form-control" placeholder="Enter your content here" name="content"
        style ="height:300px" required
    ></textarea>
  </div>
  
 
  <button type="submit" class="btn btn-primary">Add</button>
</form>
</div>
</body>
</html>