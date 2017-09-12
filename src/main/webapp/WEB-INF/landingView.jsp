<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>WaterBnB</title>
<!-- 	<link rel="stylesheet" type="text/css" href="css/loginRegStyle.css"> -->
</head>
<body>
	<c:choose>
		<c:when test="${principal == null}">
			<a href="/guest/signin">Sign In/Sign Up</a>
		</c:when>
		<c:otherwise>
			<form id="logoutForm" method="POST" action="/logout">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="submit" value="Logout"/>
			</form>
		</c:otherwise>
	</c:choose>
	<h2>Find places to swim and sleep on water bnb!</h2>
	
	<form method="POST" action="/search">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<label>Search:
		<input type="text" name="searchQuery"></label>	
		<input type="submit" value="Search">
	</form>
</body>
</html>