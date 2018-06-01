<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/myCss.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">
<script src="<c:url value='/resources/js/js/bootstrap.min.js'/>"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
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
				<a class="navbar-brand" href="<c:url value='/' />">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value='/'/>">Home</a></li>
					<li><a href="<c:url value='/info'/>">MyPage</a></li>
					<li><a href="<c:url value='/setting' />">Setting</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
				<% String user = (String)session.getAttribute("userID");
				String host = request.getContextPath();
					if(user != null){
						%>
						<li><a href="<%=host %>/sessions/logout.jsp"><%=user %></a></li>
					<%
					}else{
						%>
					<li><a href="<c:url value='/loginForm' />"> Login</a></li>
					<li><a href="<c:url value='/SignUp'/>"> Sign up</a></li>
						<%
					}
				
				
				%>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="./notice/list.html">Daily</a>
				</p>
				<p>
					<a href="#">Food</a>
				</p>
				<p>
					<a href="#">Friends</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">

				<h1>Welcome</h1>

				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat
					cupidatat non proident, sunt in culpa qui officia deserunt mollit
					anim id est laborum consectetur adipiscing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
					minim veniam, quis nostrud exercitation ullamco laboris nisi ut
					aliquip ex ea commodo consequat.</p>
				<input class="btn btn-primary" type="button" id="insert"
					name="insert" value="글쓰기"
					onclick="location.href='./notice/insert.html'">
				<hr>

				<p>조회수 많은 게시물 리스트</p>
				<!-- 게시물 목록 -->
				<div>
					<table class="table table-hover">
						<tr>
							<td><a href="#">list 01 title</a></td>
							<td>2018-05-16</td>
						</tr>
						<tr>
							<td><a href="#">list 02 title</a></td>
							<td>2018-05-16</td>
						</tr>
						<tr>
							<td><a href="#">list 03 title</a></td>
							<td>2018-05-16</td>
						</tr>
						<tr>
							<td><a href="#">list 04 title</a></td>
							<td>2018-05-16</td>
						</tr>
						<tr>
							<td><a href="#">list 05 title</a></td>
							<td>2018-05-16</td>
						</tr>

					</table>
				</div>
				<div>
					<ul class="pagination">
						<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
						</li>
						<li class="page-item active"><a class="page-link" href="#">1</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">&raquo;</a>
						</li>
					</ul>
				</div>


			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>
