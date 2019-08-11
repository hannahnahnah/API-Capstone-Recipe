<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/miss.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Item detail</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />

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
				<li class="nav-item"><a class="nav-link" href="/">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="/list-results">Recipes</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- end navbar  -->

	<div class="wrapper">
		<h2>${food.recipe.label}</h2>
		<div class="container" >

			<div class="row">
				<div class="column">
					<img src="${food.recipe.image}" style="width: 150px; height: 150px">
					<p>${food.recipe.dietLabels}</p>
					<p>${food.recipe.healthLabels}</p>
					<p>${food.recipe.calories}</p>
					<p>${food.recipe.cautions}</p>
				</div>


				<div class="column">
					<h3>Ingredients</h3>
					<p>${food.recipe.ingredientLines}</p>
					<a href="${food.recipe.url}"><button type="button" class="btn btn-info bg-warning">${food.recipe.source}</button></a>

				</div>

			</div>
		</div>






	</div>




	<!-- Core JS Files -->
	<script src="/assets/js/jquery-3.2.1.js" type="text/javascript"></script>
	<script src="/assets/js/jquery-ui-1.12.1.custom.min.js"
		type="text/javascript"></script>
	<script src="/assets/js/popper.js" type="text/javascript"></script>
	<script src="/assets/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>