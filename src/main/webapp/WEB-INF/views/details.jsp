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
	
<title>Item detail</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0 ; background-image: url('https://c.pxhere.com/photos/54/0f/bread_breakfast_delicious_eating_healthy_egg_yolk_eggs_food_food_photography-1552771.jpg!d') ; background-repeat: none; background-position: center;" >
 
</div>
	<!--    navbar come here          -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
		<a class="navbar-brand" href="/" style="color:red;">The Golden Spoon</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			>
			
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
        
        <h1
            style="font-family: 'Pacifico', cursive; text-align: center; padding-top: 2%; padding-bottom: 2%; color: red; font-size: 60px;">${food.recipe.label}</h1>
        <div class="container" >
            <div class="row">
                <div class="col-sm-4">
                <div class="card bg-warning" style="width: inherit;">
                    <img src="${food.recipe.image}" style="width: 100%; height: 200px">
                    <div class="card-body">
                    <p class="card-text">DietLabels: ${food.recipe.dietLabels}</p>
                    <p class="card-text">Calories:${food.recipe.calories}</p>
                    <p class="card-text">Serving Size: ${food.recipe.calories}</p>
                    
                    </div>
                    </div>
                
                </div>
                <div class="col-sm-8">
                    <h3>Ingredients</h3>
                    <p>${food.recipe.ingredientLines}</p>
                    <br>
                    <h3>Heath Labels</h3>
                    <p>${food.recipe.healthLabels}</p>
                    
                    <a href="${food.recipe.url}"><button type="button" class="btn btn-warning">${food.recipe.source}</button></a>
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