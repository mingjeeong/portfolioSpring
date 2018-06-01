<!DOCTYPE html>
<html lang="en">
<head>
<title>index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src=".js/jquery.min.js"></script>
<link rel="stylesheet" href="../css/myCss.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src=".js/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script>
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
				<a class="navbar-brand" href="../index.html">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="../index.html">Home</a></li>
					<li><a href="../info.html">MyPage</a></li>
					<li><a href="../setting.html">Setting</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.html"> Login</a></li>
					<li><a href="signup.html"> Sign up</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">Daily</a>
				</p>
				<p>
					<a href="#">Food</a>
				</p>
				<p>
					<a href="#">Frinds</a>
				</p>
			</div>
			<div class="col-sm-8 text-left ">

				<form>
					<fieldset>
						<legend>포스트 쓰기</legend>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">작성자</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="email@example.com" disabled="disabled">
							</div>
						</div>


						<div class="form-group">
							<label for="exampleSelect1">카테고리 선택</label> <select
								class="form-control" id="exampleSelect1">
								<option>Daily</option>
								<option>Food</option>
								<option>Friends</option>

							</select>
						</div>

						<div class="form-group">
							<label for="exampleTextarea">내용</label>
							<textarea class="form-control" id="exampleTextarea" rows="30"></textarea>
							<script>
								CKEDITOR.replace('exampleTextarea');
							</script>
						</div>
						<div class="form-group">
							<label for="exampleInputFile">File input</label> <input
								type="file" class="form-control-file" id="exampleInputFile"
								aria-describedby="fileHelp"> <small id="fileHelp"
								class="form-text text-muted">This is some placeholder
								block-level help text for the above input. It's a bit lighter
								and easily wraps to a new line.</small>
						</div>
						<fieldset class="form-group">
							<label for="exampleSelect1">설정 정보</label>
							<div class="form-check">
								<label class="form-check-label"> <input type="radio"
									class="form-check-input" name="optionsRadios"
									id="optionsRadios1" value="option1" checked> 전체공개
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input type="radio"
									class="form-check-input" name="optionsRadios"
									id="optionsRadios2" value="option2"> 비공개
								</label>
							</div>

						</fieldset>

						<button type="submit" class="btn btn-primary">저장</button>
					</fieldset>
				</form>
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
