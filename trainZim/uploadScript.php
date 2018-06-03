<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="customCss.css">
</head>

<body>
<?php

include ('db_connection.php');
include('navbar.html');
include('while.php');

$day = trim($_POST['date_day']);
$month = trim($_POST['date_month']);
$year = date('Y');
$travel_date = $year."-".$month."-".$day;

$name = trim(htmlspecialchars($_POST['fullName']));
$sex = $_POST['gender'];
$nat_id = trim(htmlspecialchars($_POST['id_num']));

$sp = trim($_GET['sp']);//info on departure point
$ep = trim($_GET['ep']); //info on termination point
$trip = trim($_GET['trip']); //info about trip type
$class = trim($_GET['class']);
$cost = $_GET['c'];

$ticket_no = ticketing($class); //calls function to create ticket number
    $today = time();
	$booking = strtotime($travel_date);

	$days = (($booking - $today)/60/60/24);


	if ($days > 30) {
	      echo "Thats not possible, your booking is ".sprintf("%01.0f",$days)." days in advance.<br/>Please book on an earlier date.<br/>Booking can only be done between now and 30 days in advance<br/><br/><a href='index.php'>>Try Again<br/>";
	}
	elseif ($days<0) {
		 echo "Thats not possible, your booking is ".sprintf("%01.0f",$days)." days behind.<br/>Please book on an later date.<br/>Booking can only be done between now and 30 days in advance<br/><br/><a href='index.php'>>Try Again<br/>";
	}
	else {
		
		if ($class == 'Sleeper' && $sex == '' ) {
		    $cost = $cost*2;
			$sex = 'Couple';
		}
		
		$qry = "INSERT INTO ticket_details VALUES ('','{$ticket_no}', '{$class}', '{$name}', '{$nat_id}','{$travel_date}', '{$sex}', '{$trip}', '{$sp}', '{$ep}', '{$cost}',NOW(),'Not Paid')";
		$xqt_qry = mysqli_query($cxn, $qry);

		if ($xqt_qry) {
			echo "<center>",
			"<h3>Done</h3>",
			"<img src='img/divider.png'/>",
			"<br/>";
		
		if ($class == 'Sleeper') {
			echo
			"Your details are as follows:",
			"<div id='ticket'>",
				"<br/>",
				"<p><b>Class:</b> $class</p>",
				"<p><b>Full Name:</b> $name</p>",
				"<p><b>National ID:</b> $nat_id</p>",
				"<p><b>Sex:</b> $sex</p>",
				"<p><b>Travel Date:</b> $day/$month/$year</p>",
				"<p><b>From:</b> $sp </p>",
				"<p><b>To:</b> $ep </p>",
				"$details",
				"<p><b>Ticket:</b> $ticket_no</p>",
				"<p><h3>$$cost - $trip </h3></p>",

				"<br/>",
				
			"<hr/>",
				"*RT = Return Trip \t ST = Single Trip",
				"<br/>",
			"</div>",
			"<br/>",
			"<div id='ticket'>",
			"<font>",
			"<p>Please pay from now or at least 5 hours before departure time for your ticket through one of these offered platforms</p>",
			"<img src='ecocash.jpg' style='border-radius: 3px; height: 50px; width: 50px;'>",
			"&nbsp &nbsp &nbsp 56142",
			"<p></p>",
			"<img src='telecash.jpg' style='border-radius: 3px; height: 50px; width: 50px;'>",
			"&nbsp &nbsp 111490",
			"</font>",
			"<p></p>",
			"</div>";
			;
	}
	
	else {
	echo
	"Your details are as follows:",
	
	"<div id='ticket'>",
	"<br/>",
	"<p><b>Class:</b> $class</p>",
	"<p><b>Full Name:</b> $name</p>",
	"<p><b>National ID:</b> $nat_id</p>",
	"<p><b>Travel Date:</b> $day/$month/$year</p>",
	"<p><b>From:</b> $sp </p>",
	"<p><b>To:</b> $ep </p>",
	"$details",
	"<p><b>Ticket:</b> $ticket_no</p>",
	"<p><h3>$$cost - $trip </h3></p>",
	
	"*<small>RT = Return Trip \t ST = Single Trip</small>",
	"<br/>",
	"</div>",
	"<br/>",
			"<div id='ticket'>",
			"<font>",
			"<p>Please pay from now or at least 5 hours before departure time for your ticket through one of these offered platforms</p>",
			"<img src='ecocash.jpg' style='border-radius: 3px; height: 50px; width: 50px;'>",
			"&nbsp &nbsp &nbsp 56142",
			"<p></p>",
			
			"<img src='telecash.jpg' style='border-radius: 3px; height: 50px; width: 50px;'>",
			"&nbsp &nbsp 111490",
			"</font>",
			"<p></p>",
			"</div>";
	}
	
}
else {
	echo "Error Occured";
}
}
	
?>
</body>
</html>
