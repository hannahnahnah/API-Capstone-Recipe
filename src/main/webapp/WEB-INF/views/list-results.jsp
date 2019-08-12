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

<title>Recipe Results</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


</head>
<body>
	<div class="jumbotron text-center"
		style="margin-bottom: 0; background-image: url('https://c.pxhere.com/images/12/df/75ef1a554c8b23cca4fba078ed8a-1442849.jpg!d'); background-repeat: none;">

	</div>



	<!--    navbar come here          -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
		<a class="navbar-brand" href="/" style="color: red;">The Golden
			Spoon</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01">

		</button>

		<div id="navbarColor02">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/list-results">Recipes <span class="sr-only">(current)</span>
				</a></li>

			</ul>
		</div>
	</nav>
	<!-- end navbar  -->

	<div class="wrapper">

		<h1
			style="font-family: 'Pacifico', cursive; text-align: center; padding-top: 2%; padding-bottom: 2%; color: red; font-size: 60px;">Recipes</h1>
		<div class="container">
			<c:forEach items="${food}" var="food">
				<div class="gallery"
					style="float: left; width: 33.33%; height: 500px; padding: 5px;">
					<div class="responsive">
						<div class="thumbnail" style="box-shadow: 5px 5px 7px #d9d9d2;">

							<div class="card text-white bg-warning mb-3">
								<h4 class="card-header">${food.recipe.label}</h4>
								<img style="height: 160px; width: 100%;"
									src="${food.recipe.image}" alt="card-image">
								<div class="desc">
									<div class="card-body">
										<p class="card-text">Heath Label:
											${food.recipe.healthLabels}</p>
										<p class="card-text">Serving Size: ${food.recipe.yield}</p>
									</div>

									<a href="/details?label=${food.recipe.label}"><button
											type="button" class="btn btn-info btn-lg btn-block">Recipe</button></a>

									<a href="${food.recipe.url}"><button type="button"
											class="btn btn-danger btn-lg btn-block">Recipe
											Source</button></a>

								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>







			<!--<<table class= "table">
<thead>
				<tr>
					<th>Name</th>
					<th>Serves</th>
					<th>Allergy warning </th>
					
				</tr>
			</thead>
<c:forEach items="${food}" var="food">

<tr>
<td>${food.recipe.label}<br><img src="${food.recipe.image}" style="width: 100px; height: 100px"></td>
<td>${food.recipe.yield}</td>
<td>${food.recipe.healthLabels}</td>

<td><a  href="/details?label=${food.recipe.uri}"><button type="button" class="btn btn-info bg-warning">Recipe</button></a></td>

</tr>
</c:forEach>


</table> -->
		</div>
</body>

<!-- Core JS Files -->
<script src="/assets/js/jquery-3.2.1.js" type="text/javascript"></script>
<script src="/assets/js/jquery-ui-1.12.1.custom.min.js"
	type="text/javascript"></script>
<script src="/assets/js/popper.js" type="text/javascript"></script>
<script src="/assets/js/bootstrap.min.js" type="text/javascript"></script>


</html>



