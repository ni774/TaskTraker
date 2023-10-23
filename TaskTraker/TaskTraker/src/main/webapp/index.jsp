<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <%@include file="All_css.jsp" %>   
  </head>
  <body>
    
    <div class="container">
           <%@include file="navbar.jsp" %>
           <br>
           
           <div class="card shadow bg-white py-5">
               <img src="Image/pencil.png" style="max-width:400px" class="img-fluid mx-auto">
               <h1 class="text-center text-primary text-uppercase">Start taking your note</h1>
            
           
           <div class="container text-center">
               <button class="btn btn-outline-primary" ><a href="Add_Notes.jsp" style="text-decoration:none;">Start here</a></button>
           </div>
           </div>  
    </div>
    
    
  </body>
</html>
