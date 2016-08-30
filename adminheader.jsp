<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
<meta name="viewport" content="width=device-width, initial scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Manage</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-center">
          <li class="active"><a href="Admin"><b>Home</b></a></li>             
	        <li class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Manage</b><b class="caret"></b></a>
	            <ul class="dropdown-menu multi-column columns-3">
		            <div class="row">
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
					            <li><b>Products</b></li>					      
					            <li class="divider"></li>
					            <li><a href="editproduct" target="_self">Add</a></li>
					            <li><a href="editproduct" target="_self">Remove</a></li>
					            <li><a href="editproduct" target="_self">Update</a></li>
					            <!--  <li><a href="#">Search</a></li>-->
					            <li><a href="products" target="_self">View all</a></li>
				            </ul>
			            </div>
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
					            <li><b>Category</b></li>
					            <li class="divider"></li>
					            <li><a href="editcategories" target="_self">Add</a></li>
					            <li><a href="editcategories" target="_self">Remove</a></li>
					            <li><a href="editcategories" target="_self">Update</a></li>
					            <!-- <li><a href="#">Search</a></li>-->
					            <li><a href="categories" target="_self">View all</a></li>
				            </ul>
			            </div>
			            
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
					            <li><b>Suppliers</b></li>
					            <li class="divider"></li>
					            <li><a href="managesuppliers" target="_self">Add</a></li>
					            <li><a href="managesuppliers" target="_self">Remove</a></li>
					            <li><a href="managesuppliers" target="_self">Update</a></li>
					            <!--  <li><a href="#">Search</a></li>-->
					            <li><a href="suppliers" target="_self">View all</a></li>
					            <li><a href="logout" target="_self">Log Out</a></li>
					            
				            </ul>
			            </div>
		            </div>
	            </ul>
	        </li>
          </ul>         
        </div><!--/.nav-collapse -->