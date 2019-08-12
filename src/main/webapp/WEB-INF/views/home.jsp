<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<!-- fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Pacifico&display=swap"
	rel="stylesheet">
	
<title>The Golden Spoon Home</title>
<!-- Required meta tags -->
<meta charset="utf-8">


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0 ; background-image: url('https://c.pxhere.com/images/4f/b0/6c67e457c5098296a9321733d364-1430907.jpg!d') ; background-repeat: none;" >
 
</div>

	<!--    navbar come here          -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
		<a class="navbar-brand" href="/"style="color:red;">The Golden Spoon</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" >
			
		</button>

		<div id="navbarColor02">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/list-results">Recipes</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- end navbar  -->
	<div class="wrapper">
	
		<h1
			style=" text-shadow: 2px 2px 4px #d9d9d2; font-family: 'Pacifico', cursive; text-align: center; padding-top: 2%;  color: red; font-size: 60px;"> Welcome to The Golden Spoon
			Recipe Finder</h1>


		<form action="/list-results" method="post" style="text-align:center; padding-top: 4%;">
            
                <div class="form" >
                <h3 style="color:orange;">Enter the name, ingredient, or serving size </h3>
                     <input type="text" name="recipe"></br></br>
                     
                       <button type="submit" class="btn btn-warning">Submit</button>
                </div>
                
    
        </form>
        
	</div>


</body>


</html>
