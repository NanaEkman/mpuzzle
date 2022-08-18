<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="cssNANA.css"> <!-- https://www.w3schools.com/css/tryit.asp?filename=trycss_grid_layout_named-->
<link href="http://fonts.cdnfonts.com/css/bauhaus-modern" rel="stylesheet">
<style>
	@import url('http://fonts.cdnfonts.com/css/bauhaus-modern');
</style>
<link href="cssCAMI.css" rel="stylesheet" type="text/css">
<link href="cssNANA.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>mpuzzle</title>
</head>
<body style="background-color: white;">
	
	<div class="grid">
	   <div class="logoPrincipal">
	   <%@ include file="NomeJogo.jsp" %>
	   </div>
	   
	   <div class="divs jogar" style="background-color: #ffffff;">
	   <%@ include file="Jogar.jsp" %>
	   </div>
	   
	   <div class="divs menu" style="background-color: #ff5e5b;">
	   <%@ include file="Menu.jsp" %>
	   </div>
	   
	   <div class="divs corpo" style="background-color: #fef9ff;">
	   <%@ include file="Cartas.jsp" %>
	   </div>
	   
	   <div class="divs ranking" style="background-color: #68b7ba;">
	   <%@ include file="Rankings.jsp" %>
	   </div>
	</div>
	
</body>
</html>