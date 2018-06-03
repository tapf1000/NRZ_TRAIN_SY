<?php

    include('db_connection.php');
	include('navbar.html');

	
	include('admin_console.html');
	
	$word = trim(htmlspecialchars($_POST['keyword']));
    
	$qry = "SELECT * FROM ticket_details WHERE ticket_no LIKE '%$word%' OR class_name  LIKE '%$word%' OR passenger_name  LIKE '%$word%' OR nat_id  LIKE '%$word%' OR start_point  LIKE '%$word%' OR end_point  LIKE '%$word%' ";
	$xqt = mysqli_query($cxn,$qry);
	
	if ($count = (mysqli_num_rows($xqt)) >=1) {
	
	while ($row = mysqli_fetch_assoc($xqt)) {
	    extract($row);
		
		echo 	"<div id='search-entries'>",
					"<p><b>$passenger_name</b><font style='float: right;'>$start_point - $end_point</font></p>",
					"<p>$passenger_sex</p>",
					"<p>$ticket_no</p>",
					"<p>$class_name</p>",
					"<p>$travel_date</p>",
					"<p><small>$payment</small></p>",
					"<a href='print.php?name=$passenger_name&sex=$passenger_sex&ticket=$ticket_no&class=$class_name&date=$travel_date&payment=$payment&nat_id=$nat_id&trip=$trip&sp=$start_point&ep=$end_point&cost=$cost'>",
					"<p style='float: right; color: black;'><b>Print Preview this Ticket</b></p>",
					"<br/>",
				"</div>",
				"</a>";
	  }//while close
	}//if close
	else {
		echo "<div id='search-entries'>",
					"<p><b>No Results Found</b></p>",
				"</div>";
		}
?>