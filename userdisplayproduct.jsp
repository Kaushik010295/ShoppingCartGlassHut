

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script>
var app = angular.module('myApp', []);

function MyController($scope, $http) {

 $scope.sortType = 'name'; // set the default sort type
  $scope.sortReverse = false;  // set the default sort order
  $scope.searchBTitle = '';
  
    $scope.getDataFromServer = function() {
            $http({
                    method : 'GET',
                    url : 'GsonCon'
            }).success(function(data, status, headers, config) {
                    $scope.prod = data;  
            }).error(function(data, status, headers, config) {
                    // called asynchronously if an error occurs
                    // or server returns response with an error status.
            });
    };
};

</script>
<style>
body {
background-color:#1A5276;
}
</style>
</head>
<body>

<div class="container" ng-app="myApp" ng-controller="MyController" ng-init="getDataFromServer()">

<form>
<div class="form-group">
<div class="input-group">
<div class="input-group-addon"><i class="fa fa-search"></i></div>
<input type="text" class="form-control" placeholder="Search Product Name" ng-model="searchPTitle">
</div>
</div>
</form>

<table class="table table-bordered table-striped">

<thead>
  <tr>
  <td>
      <a href="#" ng-click="sortType = 'id'; sortReverse = !sortReverse">
        Product Id 
        <span ng-show="sortType == 'pid' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'pid' && sortReverse" class="fa fa-caret-up"></span>
      </a>
    </td>
    
    <td>
      <a href="#" ng-click="sortType = 'pname'; sortReverse = !sortReverse">
        Product Name 
        <span ng-show="sortType == 'pname' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'pname' && sortReverse" class="fa fa-caret-up"></span>
      </a>
    </td>
     <td>
      <a href="#" ng-click="sortType = 'pdescription'; sortReverse = !sortReverse">
        Product Description 
        <span ng-show="sortType == 'pdescription' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'pdescription' && sortReverse" class="fa fa-caret-up"></span>
      </a>
    </td>
    
    <td>
      <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse">
      Price
        <span ng-show="sortType == 'price' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'price' && sortReverse" class="fa fa-caret-up"></span>
      </a>
    </td>
    
    </tr>
</thead>

<tbody>
  <tr ng-repeat="p1 in prod | orderBy:sortType:sortReverse | filter:searchPTitle">
            <td>{{p1.pid}}</td>
            <td>{{p1.pname}}</td>
            <td>{{p1.pdescription}}</td>
            <td>{{p1.price}}</td>
            <td> <a href="product-table?pid={{p1.pid}}"> View Product</a>
  </tr>
</tbody>
</table>

</div>

</body>
</html>


