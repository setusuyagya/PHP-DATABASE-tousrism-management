
<!DOCTYPE html>
<html>
<head>
	<title>SignUP</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <style type="text/css">
  a{
    margin-left: 0%;
  }
</style>
</head>
<body>
	<div class="header">
		<h1>Register</h1>
		<a href="login.html"><input class="btn" style="background-color:#4B0082; height: 50px; width: 100px; margin-left: 1300px; " type="Submit" name="BACK" value="BACK" ></a>

		
	</div>
	<form method="post" action="Register.php">
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="Username" class="textInput"></td>
			</tr>

			<tr>
				<td>Name:</td>
				<td><input type="Name" name="Name" class="textInput"></td>
			</tr>
			<h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>

			<tr>
				<td>Password:</td>
				<td>
				<input type="password" id="password" name="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
			
			</tr>

			<tr>
				<td>Password:</td>
				<td>
				<input type="password" id="password" name="Password2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
			
			</tr>

			<tr>
				<td></td>
				<td><input class="btn" style="background-color:#4B0082" type="Submit" name="Register_btn" value="Register"></td>

			</tr>
		</table>
	</form>
	<?php 

include('conn.php');
	$Username=filter_input(INPUT_POST, "Username");
	$Name=filter_input(INPUT_POST, "Name");
	$Password=filter_input(INPUT_POST, "Password");
	$Password2=filter_input(INPUT_POST, "Password2");
	
		if ($Password==$Password2) {
			
			$sql1="INSERT INTO touruser VALUES ('$Username','$Name','$Password')";
			if($conn->query($sql1)){
			header("location:Login.php");
		}
	}
	else
		{
		//failed
			echo "check password";
		}
		
 ?>
</body>
</html>

