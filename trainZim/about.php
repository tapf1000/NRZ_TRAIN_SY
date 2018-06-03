<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="customCss.css">
</head>

<body>


 
 <div class='blue-top'>
		<p>
		    <span>

<?php

include("db_connection.php");
include('navbar.html');

 extract($_GET);

 
 $qry = "SELECT * FROM class_info WHERE class_id='{$class}'";
 $xqt = mysqli_query($cxn, $qry);
 

 while ($row = mysqli_fetch_assoc($xqt)) {
     extract($row);
	 
	 echo "<center style='margin-top: 2em;'>",
	 "<img src='img/train.png' class='train-icons'/>",
	 "<h4>$class_name</h4>";
	 echo "<p style='margin: 2% 10% 2% 10%;'>$description</p>";
	 
	 global $cn; //classsname var
	 $cn = $class_name;
}
 ?>
 
  <center>
		<small>
		Find out more info about other classes:
		<br/>
        (
		<a href='about.php?class=SLP'><span>Sleeper</span></a>
		&nbsp &nbsp
		<a href='about.php?class=STN'><span>Standard</span></a>
		&nbsp &nbsp
		<a href='about.php?class=ECO'><span>Economy</span></a>
		)
		</small>
	</center>
 </span>
 <br/>
 <img src='img/divider.png'/>
 <br/>
 Choose you destination and point of departure.
 <br/>
 <form method='POST' action='reservations.php?class=<?php echo $cn ?>'>
	  <ul id='traincons'>
	  <li>
	  Departing From:
	  <br/>
	  <img src='icns/right_up-24.png'>
	  <br/>
      <select name='sp' style=' color: black;'> <!-- sp = end point-->
	      <option value='Harare'>Harare</option>
		  <option value='Macheke/Headlands'>Macheke/Headlands</option>
		  <option value='Marondera'>Marondera</option>
		  <option value='Nyazura'>Nyazura</option>
		  <option value='Rusape'>Rusape</option>
	  </select>
	  </li>
	  
	  <li>
	  Arriving At:
	  <br/>
	  <img src='icns/left_down-24.png'/>
	  <br/>
	  <select name='ep' style=' color: black;'> <!-- ep = end point-->
		  <option value='Macheke/Headlands'>Macheke/Headlands</option>
		  <option value='Marondera'>Marondera</option>
		  <option value='Mutare'>Mutare</option>
		  <option value='Nyazura'>Nyazura</option>
		  <option value='Rusape'>Rusape</option>
		</select>
		</li>
		</ul>
		
		<p>Return Trip? &nbsp<input type='checkbox' name="triptype[selection]" value=2></p>
		
	</div>
	<br/>
		<center>
		<p>
		<input type='submit' value='Submit' id='submit-btn'>
		</p>
		</center>
 </form>
</p>
</center>
</body>
</html>
