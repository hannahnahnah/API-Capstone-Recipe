<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table class= "table">
<tr>
<th>Name</th>
<th>Uri</th>
<th>Image</th> 
</tr>
<c:forEach items="${query}" var="query">
<tr>
<td>${query.lable}</td>
<td>${query.uri}</td>
<td>${query.image}</td>
</tr>
</c:forEach>


</table>

</body>
</html>