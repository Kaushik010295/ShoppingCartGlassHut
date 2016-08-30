<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>document.write('<base href="' + document.location + '" />');</script>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="./resources/css/style.css" rel="stylesheet" media="screen">
<script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
body
{
background-color:#1A5276;
}
</style>
</head>
<body>

<table>
  <tr>
    <th>Name of the Glass</th>
    <th>Features of the glass </th>
    <th>Price</th>
    <th>This is how <br> the glass looks like</th>

  </tr>
  <tr>
    <td>${product.pname}</td>
    <td>${product.pdescription}</td>
    <td>${product.price}</td>
<td><img src="resources/images/${product.pname}.jpg" style=height:300px;width:300px;"/></td>

  </tr>
 
</table>
<center><a class="btn btn-success" href="CheckUser" target="_parent" style="float: right;"><span class="glyphicon glyphicon-log-out">Add To Cart</span></a></center>

</body>
</html>

