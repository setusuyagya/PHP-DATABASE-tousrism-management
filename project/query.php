<?php

include('conn.php');

?>
<!DOCTYPE html>
<html>
<head>
  <title>QUERY</title>
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

</div>






<a class="btn btn-primary btn-lg" href="query1.php" role="button" style="background-color:#00FFFF; color: black; margin-bottom: 1%;margin-top: 8%">1. Display the PlaceID common at Emergency and weather.</a><br>
<a class="btn btn-primary btn-lg" href="query2.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">2. Select all the AccID Accomodation except the AccID in TouristPlace.</a><br>
<a class="btn btn-primary btn-lg" href="query3.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">3. Display the EventType and the Names of the PhotoAlbum.
</a><br>
<a class="btn btn-primary btn-lg" href="query4.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">4. Display the name where the place id of weather is 1005.
</a><br>
<a class="btn btn-primary btn-lg" href="query5.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">5. What are the top event that people choose when they are on a trip for more than 5 days?
</a><br>
<a class="btn btn-primary btn-lg" href="query6.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">6. Which is the most liked place and the least liked one?
</a><br>
<a class="btn btn-primary btn-lg" href="query7.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">7. List a place where users have gone more than once and list the counts if they have gone more than once.
</a><br>
<a class="btn btn-primary btn-lg" href="query8.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">8. List the type of Restaurants visited by people in various places
</a><br>
<a class="btn btn-primary btn-lg" href="query9.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">9. List the means of transport used where climate is too hot and too cold?
</a><br>
<a class="btn btn-primary btn-lg" href="query10.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">10. Which is the mostly traveled place in the Fall?
</a><br>
<a class="btn btn-primary btn-lg" href="query11.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">11. Which is the event that people choose mostly when they have opted for Accommodation for more than 6 days?
</a><br>
<a class="btn btn-primary btn-lg" href="query12.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">12. Which is the mostly visited shopping place?
</a><br>
<a class="btn btn-primary btn-lg" href="query13.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">13. What is the maximum count of Photo Album owned by a person for a place?
</a><br>
<a class="btn btn-primary btn-lg" href="query14.php" role="button" style="background-color: #00FFFF; color: black; margin-bottom: 1%;">14. List the name and address of Accommodations available that cost between 4000-10000</a><br>





    
                  
                    
                 

               



</div>
</body>
</html>