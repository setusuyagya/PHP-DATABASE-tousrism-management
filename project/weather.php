<?php

include('conn.php');

?>
<!DOCTYPE html>
<html>
<head>
  <title>Weather</title>
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
  <div class="container-fluid" style="margin-top: 10px;text-align: center;">
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
                      
                      <th>WeatherID</th>
                            <th>MinTemp</th>
                            <th>MaxTemp</th>
                            <th>Weblink</th>
                            
                            
                            <th>PlaceID</th>
                            
                            


                      </tr>
                    </thead>
                  <tbody>

<?php 
$sql="select * from Weather";
$result=mysqli_query($conn,$sql);


while($row=mysqli_fetch_assoc($result))
  {
      ?>


<tr><td><?php echo $row["WeatherID"]; ?></td>
  <td><?php echo $row["MinTemp"]; ?></td>
  <td><?php echo $row["MaxTemp"]; ?></td>

  <td><?php echo $row["WebLink"]; ?></td>
  
  <td><?php echo $row["PlaceID"]; ?></td>
  

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