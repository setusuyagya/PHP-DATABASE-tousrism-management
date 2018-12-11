<!DOCTYPE html>
<html>
<head>
	<title>
		tourist
	</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="login-box">
		<form method="POST" action="login.php">
		<a href="login.html"><input class="btn" type="button" style="background-color: #B0C4DE" value="LOGIN AGAIN"></a>

		  

		</form>
		<a href="register.php"><input class="btn" type="button" style="background-color: #B0C4DE" value="Sign up"></a>

	</div>
	
	<?php 
	include("conn.php");
	$id=filter_input(INPUT_POST,"id");
	$pass=filter_input(INPUT_POST,"password");

	$sql=mysqli_query($conn,"SELECT * FROM touruser WHERE Userid='$id' AND Password='$pass'");
	if ($row=mysqli_num_rows($sql)>0) {
		header("location:index1.html");

	}else
	{
		echo "check user id or password";
	}


	 ?>


</body>
</html>
	