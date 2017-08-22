<html>
	<head>
		<title>Addmission Form</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<script type="javascript/text">
			
			var fname = document.getElementById("fname").value;
			var add = document.getElementById("add").value;
			var dob = document.getElementById("dob").value;
			var edu = document.getElementById("edu").value;
			
			var username = document.getElementById("username").value;
			var pass = document.getElementById("pass").value;
			
			function validateForm() 
			{
					if(fname=="" && add=="" && dob=="" && edu=="" && username=="" && pass=="")
					{
						alert("please fill the form correctly");
						return true;
					}
					else
					{
						return false;
						window.location.href="login.html";
					}
			}
			
			function AllowAlphabet()
			{
				 
				if (!/^[a-zA-Z]*$/g.test(document.myForm.fname.value))
				 {
					alert("Invalid characters");
					document.myForm.fname.focus();
					return false;
				}
				
			}
			
			function ValidatePass()
			{
				 if (!/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/g.test(document.myForm.pass.value))
				 {
					alert("Please enter atleast 1 number, 1 special character,1 upper case aplphabet with minimum range 8 character");
					document.myForm.pass.focus();
					return false;
				}
			}
			
			function calculateAge(dob) 
			{ 
				var today = new Date();
				var age = today.getFullYear() - dob.getFullYear();
				var m = today.getMonth() - dob.getMonth();
				if (m < 0 || (m === 0 && today.getDate() < dob.getDate())) {
					age--;
				}
				return age;
				
				if(age<20)
				{
					alert("Your not eligiable");
					return false;
				}
				
			}
		</script>
	</head>
	<body>
		<div class="row">
			<div class="col-sm-4">
			</div>
			<div class="col-sm-4">
				<center><h1>Enter Details</h1></center>
			</div>
			<div class="col-sm-4">
			</div>
		</div>
		<div class="row">
			<form name="myForm" onsubmit="validateForm()" method="post" action="validate">
				<div class="col-sm-4">
				</div>
				<div class="col-sm-4">
					<div class="row" style="border:1px solid lightgray;padding-top:50px !important;box-shadow:1px 1px 1px 1px lightgray;">
						<div class="col-sm-6">
							<label for="email" class="">Name:</label>
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control pull-right" id="fname" name="fname" onblur="AllowAlphabet()" placeholder="Enter your name here" required>
						</div>
						<br><br><br>
						<div class="col-sm-6">
							<label for="email" class="">Address:</label>
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control pull-right" id="add" name="add" placeholder="Enter your address here" required>
						</div>
						<br><br><br>
						
						<div class="col-sm-6">
							<label for="email" class="">DOB:</label>
						</div>
						<div class="col-sm-6">
							<input type="date" class="form-control pull-right" id="dob" name="dob" required onblur="calculateAge()">
						</div>
						<br><br><br>
						<div class="col-sm-6">
							<label for="email" class="">Education:</label>
						</div>
						<div class="col-sm-6">
							<select class="form-control" id="edu" required>
								<option value="select">Select here</option>
								<option value="ssc">SSC</option>
								<option value="hsc">HSC</option>
								<option value="tybcom">TYBCOM</option>
								<option value="mca">MCA</option>
								<option value="be">BE</option>
								<option value="mba">MBA</option>
							  </select>
						</div>
						<br><br><br>
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
							<input type="password" class="form-control pull-right" id="pass" name="pass" placeholder="Enter your password here" required onblur="ValidatePass()">
						</div>
						<br><br><br>
						<div class="col-sm-3">
						</div>
						<div class="col-sm-3">
							<button type="submit" name="submit" class="btn btn-success">Submit</button>
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