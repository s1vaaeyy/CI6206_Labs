<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${param.title} - Health Tracker</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/metisMenu.css" />

</head>
<body>
	<jsp:include page="/WEB-INF/pages/header.jsp"/> 
	<jsp:include page="/WEB-INF/pages/footer.jsp"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/metisMenu.js"></script>
	<script type="text/javascript">
  var isLoggedIn = "<%= (String)session.getAttribute("isLoggedIn")%>";
  if(isLoggedIn === "null" || isLoggedIn === "false"   )
  {
     window.location.href=  "${pageContext.request.contextPath}/account/login.jsp";
  }
</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/app.js"></script>
</body>
</html>