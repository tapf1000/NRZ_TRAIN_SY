

<?php
    include('db_connection.php');
	include('navbar.html');
	
	$un = $_GET['un']; //username currently logged in with
	
    $qry = "UPDATE ticketing_memory SET coach_no=1, compartment='A', seat=1; UPDATE ticketing_memory SET coach_no=1, compartment='C', seat=1 WHERE class_name = 'SleeperM'; UPDATE ticketing_memory SET coach_no=1, compartment='A', seat=1 WHERE class_name = 'Sleeper' OR class_name = 'Standard' OR class_name = 'Economy' ; UPDATE ticketing_memory SET coach_no=1, compartment='G', seat=1 WHERE class_name = 'SleeperF';";
	$xqt = mysqli_multi_query($cxn, $qry);
	
	echo "<script type='text/javascript'>",
	"alert('Seats have been refreshed');",
	"window.navigate('search.php?{$un}')",
	"</script>";
?>
	
	