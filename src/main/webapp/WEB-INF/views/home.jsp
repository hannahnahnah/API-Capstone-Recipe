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
<title>The Golden Spoon Home</title>
<!-- Required meta tags -->
<meta charset="utf-8">


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


</head>
<body>
	<!--    navbar come here          -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
		<a class="navbar-brand" href="/">The Golden Spoon</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
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
	
		<h1 style="text-align: center; padding-top: 2%;"> Welcome to The Golden Spoon
			Recipe Finder</h1>


		<form action="/list-results" method="post" style="text-align:center; padding-top: 4%;">
			
				<div class="form" >
				<h3>Enter the name, ingredient, or serving size </h3>
					 <input type="text" name="recipe"></br></br>
					 
					   <button type="submit" class="btn btn-primary bg-warning">Submit</button>
				</div>
				
	
		</form>

	</div>


</body>


</html>
