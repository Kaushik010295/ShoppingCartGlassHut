

<!DOCTYPE html>

<html lang="en">

<head>

<title>Sunglass Products</title>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<head>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script>
	document.write('<base href="' + document.location + '" />');
</script>


<link href="./resources/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<link href="./resources/css/style.css" rel="stylesheet" media="screen">

<script data-require="angular.js@1.0.x"
	src="http://code.angularjs.org/1.0.7/angular.min.js"
	data-semver="1.0.7"></script>

<style>
body {
	background-color: #1A5276;
}

/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span
					class="glyphicon glyphicon-home"></span></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="about">About</a></li>
					<li>&nbsp; &nbsp; &nbsp; &nbsp;</li>

					<li>
						<button type="button" class="btn btn-primary btn-s"
							style="background-color: red">Shop Your Glasses</button>
					</li>
					<li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
					<li><a href="viewproduct">View Products</a></li>



				</ul>
			</div>
		</div>
	</nav>
	<div>
		<center>
			<img src="/WEB-INF/resources/images/bag3.jpg"
				style="width: 300px; height: 300px">
		</center>
	</div>
	<div>
		<div class="container">
			<div ng-app="myApp" ng-controller="dataCtrl">
				Enter Product Name: <input type="text" ng-model="search">&nbsp&nbsp<span
					class="glyphicon glyphicon-search"></span>
				<hr></hr>
				<table class="table table-striped">
					<tr>
						<th>Product Id</th>
						<th>Product Name</th>
						<th>Product Description</th>
						<th>Product Price</th>
						<th>Product Image</th>
						<th>Category</th>
						<th>Supplier</th>


					</tr>
					<tr ng-repeat="product in names | filter:search">
						<td>{{product.pid}}</td>
						<td>{{ product.pname}}</td>
						<td>{{ product.dpescription}}</td>
						<td>{{product.price}}</td>
						<td>{{product.category.cname}}</td>
						<td>{{product.supplier.sname}}</td>


						<td><img src="resources/images/{resource.pid}.jpg"
							style="width: 200px; height: 150px"></td>

					</tr>
				</table>
			</div>

			<script>
				angular.module('myApp', []).controller('dataCtrl',
						function($scope) {

							$scope.names = $
							{
								listofitem
							}
							;
							$scope.orderByMe = function(x) {
								$scope.myOrderBy = x;
							}
						});
			</script>
</body>

</html>


