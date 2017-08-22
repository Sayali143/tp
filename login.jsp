<html>
	<head>
		<title>Login Form</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="javascript/text">
			function validateForm() 
			{
				var username = document.getElementById("username").value;
				var pass = document.getElementById("pass").value;
				if(username=="admin" && pass=="Sayali@8")
				{
					alert("Login succefully");
					retuen true;
					window.location.href="home.html";
				}
				else
				{
					alert("Invalid credentials");
					retuen false;
					
				}
			}
		</script>
	</head>
	<body>
		<div class="row">
			<div class="col-sm-4">
			</div>
			<div class="col-sm-4">
				<center><h1>Login Details</h1></center>
			</div>
			<div class="col-sm-4">
			</div>
		</div>
		<div class="row">
			<form name="myForm" onsubmit="validateForm()" method="post" action="home">
				<div class="col-sm-4">
				</div>
				<div class="col-sm-4">
					<div class="row" style="border:1px solid lightgray;padding-top:50px !important;box-shadow:1px 1px 1px 1px lightgray;">
						<div class="col-sm-6">
							<label for="email" class="">Username:</label>
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control pull-right" id="username" name="username" placeholder="Enter your username here" required>
						</div>
						<br><br><br>
						<div class="col-sm-6">
							<label for="email" class="">Password:</label>
						</div>
						<div class="col-sm-6">
							<input type="password" class="form-control pull-right" id="pass" name="pass" placeholder="Enter your password here" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
						</div>
						<br><br><br>
						<div class="col-sm-3">
						</div>
						<div class="col-sm-3">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
						<div class="col-sm-3">
							<button type="button" class="btn btn-danger">Cancel</button>
						</div>
						<div class="col-sm-3">
						</div>
						
						<br><br><br>
					</div>
				</div>
				<div class="col-sm-4">
				</div>
			</form>
		</div>
	</body>
</html>