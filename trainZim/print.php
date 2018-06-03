<?php
 include('navbar.html');
 
 $name =  $_GET['name'];
 $sex =  $_GET['sex'];
 $ticket_no =  $_GET['ticket'];
 $class =  $_GET['class'];
 $date =  $_GET['date'];
 $payment = $_GET['payment'];
 $nat_id = $_GET['nat_id'];
 
 $sp = $_GET['sp'];
 $ep = $_GET['ep'];

 $cost = $_GET['cost'];
 $trip = $_GET['trip'];
 echo
			"Your details are as follows:",
			"<center>",
			"<div id='ticket'>",
				"<br/>",
				"<p><b>Class:</b> $class</p>",
				"<p><b>Full Name:</b> $name</p>",
				"<p><b>National ID:</b> $nat_id</p>",
				"<p><b>Sex:</b> $sex</p>",
				"<p><b>Travel Date:</b>$date</p>",
				"<p><b>From:</b> $sp </p>",
				"<p><b>To:</b> $ep </p>",
				"<p><b>Ticket:</b> $ticket_no</p>",
				"<p><h3>$$cost - $trip </h3></p>",

				"<br/>",
				"<img src='img/barcode.png'  style='width: 50%;'>",
			"<hr/>",
				"*RT = Return Trip \t ST = Single Trip",
				"<br/>",
				"<br/>",
				"<br/>",
				"<br/>",
				
				"<p>*Terms & Conditions Apply</p>",
			
			"</div>",
			"</center>";
 ?>