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
<title>Recipe Results</title>
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
				<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/list-results">Recipes <span class="sr-only">(current)</span>
				</a></li>

			</ul>
		</div>
	</nav>
	<!-- end navbar  -->

	<div class="wrapper">

		<h1 style="text-align: center; padding-top: 2%;">Recipe List</h1>

		<c:forEach items="${food}" var="food">
		<div class="container">
			<div class="col-md-4">
				<div class="responsive">
					<div  class="thumbnail" >
						<div class="card text-white bg-warning mb-3"
							>
							<h3 class="card-header">${food.recipe.label}</h3>
							<img style="height: 150px; width: 100%; display: block;"
								src="${food.recipe.image}" alt="card-image">
									<div class="desc">
							<div class="card-body">
							<p class="card-text">Allergy Alert</p>
								<p class="card-text">${food.recipe.healthLabels}</p>
							</div>
						
								<a href="/details?label=${food.recipe.uri}"><button
										type="button"class="btn btn-danger btn-lg btn-block">Recipe</button></a>
							</div>
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



