<?php


function ticketing($class_name) {

include('db_connection.php');
global $sex;

$qry1= "SELECT * FROM ticketing_memory WHERE class_name = '{$class_name}{$sex}' ";
$xqt= mysqli_query($cxn, $qry1);

 while ($row = mysqli_fetch_assoc($xqt)) { 
 extract($row);
 
 global $compart;
 global $st;
 global $co;
global $st2;

 $compart = $compartment;
 $st = $seat;
 $co = $coach_no;

}//while

 if ($class == "Sleeper{$sex}") {
	echo "Sleeper{$sex}";
     if ($sex == 'F') {
	      while ($co <= 2 &&  $compart<='J' && $st<=6) {
		    $st = $st;
			
			global $ticket;
			$ticket = $co."-".$compart."-".$st;
			$st2  = $st;
			$st++;
			
		
		if ($st>6) {
		$compart++;
		$st=1;
	}//if close
	
	if($compart>'J') {
	$co++;
	$compart='G';
	}//if close
	$update = "UPDATE ticketing_memory SET compartment='$compart', seat='$st',coach_no='$co' WHERE class_name='{$class_name}F' ";
	$xqt1 = mysqli_query($cxn, $update);
	break;
	 }
	 }
	 elseif ($sex == 'M') {
	     while ($co <= 2 && $compart<='F' && $st<=6) {
		    $st = $st;
			
			global $ticket;
			$ticket = $co."-".$compart."-".$st;
			$st2  = $st;
			$st++;
			
		
		if ($st>6) {
		$compart++;
		$st=1;
	}//if close
	
	if($compart>'J') {
	$co++;
	$compart='C';
	}//if close
	$update = "UPDATE ticketing_memory SET compartment='$compart', seat='$st',coach_no='$co' WHERE class_name='{$class_name}M' ";
	$xqt1 = mysqli_query($cxn, $update);
	break;
	 }
	 }
	 else {
while ($co <= 2 && $compart<='B' && $st<=6) {
		    $st = $st;
			
			global $ticket;
			$ticket = $co."-".$compart."-".$st;
			$st2  = $st;
			$st++;
			
		
		if ($st>6) {
		$compart++;
		$st=1;
	}//if close
	
	if($compart>'J') {
	$co++;
	$compart='A';
	}//if close
	$update = "UPDATE ticketing_memory SET compartment='$compart', seat='$st',coach_no='$co' WHERE class_name='{$class_name}' ";
	$xqt1 = mysqli_query($cxn, $update);
	break;
	}//while close
 }//else close
}//if close

else 
//else if class is not sleeper
{
while ($co <= 2 && $compart<='E' && $st<=100) {
		    $st = $st;
			$ticket = $co."-".$compart."-".$st;
			$st2  = $st;
			$st++;
			
		
		if ($st>20) {
		$compart++;
		$st=1;
	}//if close
	
	if($compart>'E') {
	$co++;
	$compart='A';
	}//if close
	$update = "UPDATE ticketing_memory SET compartment='$compart', seat='$st',coach_no='$co' WHERE class_name='{$class_name}' ";
	$xqt2 = mysqli_query($cxn, $update);
	
	break;
	}//while close
}//else close
return $ticket; 
}//function_close

/*
while ($coach <= 2) {
    while($compartment<='J') {
	    while($seat<=6) {
		    $seat = $seat;
			echo $coach."-".$compartment."-".$seat."<br/>";
			$seat++;
			
		}
		$compartment++;
		$seat=1;
	}
	$coach++;
	$compartment='A';
}

*/
?>

