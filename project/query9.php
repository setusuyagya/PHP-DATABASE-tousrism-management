<?php

include('conn.php');

?>
<!DOCTYPE html>
<html>
<head>
	<title>Query 9</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<style type="text/css">
	a{
		margin-left: 0%;
	}
	body{
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: url(aaa.jpg);
	background-size: cover;
}
</style>

</head>
<body >
	
	<div class="container-fluid" style="margin-top: 10px;text-align: center;" >
	<a class="btn btn-primary btn-lg" href="accom.php" role="button">Accomodation</a>
	<a class="btn btn-primary btn-lg" href="tour.php" role="button">Tourist Place</a>
	<a class="btn btn-primary btn-lg" href="Weather.php" role="button">Weather</a>
	<a class="btn btn-primary btn-lg" href="events.php" role="button">Events</a>
	<a class="btn btn-primary btn-lg" href="shop.php" role="button">Shopping</a>
	<a class="btn btn-primary btn-lg" href="transportation.php" role="button">Transportation</a>
	<a class="btn btn-primary btn-lg" href="photoalbum.php" role="button">Photo Album</a>
	
	<a class="btn btn-primary btn-lg" href="emergency.php" role="button">Emergency</a>
	<a class="btn btn-primary btn-lg" href="restaurant.php" role="button">Restaurant</a>
	<a class="btn btn-primary btn-lg" href="query.php" role="button" style="background-color: green;">QUERY</a>

	<a class="btn btn-primary btn-lg" href="Login.html" role="button" style="background-color: red;">Logout</a>




<div class="bg-danger text-white" style="margin-top: 50px;">
<div class="card-title" style="margin-top: 10px;margin-bottom: 5px;font-size: 25px;">All  Details</div>
							<div>
								
								<table class="display table  table-hover table-dark " cellspacing="0" width="90%" style="margin-left: 0px; text-align: center;">
									<thead class="thead-dark">
										<tr>
											<th>Name</th>
								            <th>Max(Temp)</th>
								            <th>Min(Temp)</th>
								            

											</tr>
										</thead>
									<tbody>

<?php	
$sql="SELECT T.Name, MAX(MaxTemp),MIN(MinTemp)
FROM Transportation T, TouristPlace TP, Weather W
WHERE T.PlaceID = TP.PlaceID AND TP.PlaceID = W.PlaceID
GROUP BY W.PlaceID;
";
$result=mysqli_query($conn,$sql);


while($row=mysqli_fetch_assoc($result))
  {
	  	?>


<tr><td><?php echo $row["Name"]; ?></td>
	<td><?php echo $row["MAX(MaxTemp)"]; ?></td>
	<td><?php echo $row["MIN(MinTemp)"]; ?></td>
	

</tr>

	 	
									<?php


									 } ?>

										</tr>
									
										
									</tbody>
								</table>

								</div>
							</div>
						</div>




</div>
</body>
</html>