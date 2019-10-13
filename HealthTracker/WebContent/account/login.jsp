<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="">
 <meta name="author" content=""> 
    <title>Login Page</title> 
 <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/style.css" /> 
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap.css" /> 
</head>

<body> 
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form action="/LoginServlet" method="GET">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div> 
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/metisMenu.js"></script>
	
  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/app.js"></script>
  

</body>
</html>