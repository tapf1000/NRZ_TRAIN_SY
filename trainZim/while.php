<?php


function ticketing($class_name) {

include('db_connection.php');
global $sex;
global $class;

if ($class == 'Sleeper') {
$qry1= "SELECT * FROM ticketing_memory WHERE class_name ='{$class_name}{$sex}' ";
$xqt= mysqli_query($cxn, $qry1);
}
else {
$qry1= "SELECT * FROM ticketing_memory WHERE class_name = '{$class_name}' ";
$xqt= mysqli_query($cxn, $qry1);
}

 while ($row = mysqli_fetch_assoc($xqt)) { 
	extract($row);
 
	global $compart1;
	global $st;
	global $co;
	global $st2;
	global $ticket;
	global $details;
	
	$compart1 = $compartment;
	$st = $seat;
	$co = $coach_no;
}//while

if ($co > 2) {
echo "<h1 style='text-align: center;'>This class is full</h1><center><a href='index.php' style='text-align: center;'>Try another coach</a></center>";
die();
}


if ("{$class}{$sex}" == "SleeperF") {
	      while ($co <= 2 &&  $compart1<='J' && $st<=6) {
		  
		    $st = $st;
			
			
			$ticket = $co."-".$compart1."-".$st;
			$details = "<ul style='padding: 1em;'  id='seat-details'>
								<li><b>Coach</b><br/>$co</li>
								<li><b>Compartment</b><br/>$compart1</li>
								<li><b>Seat</b><br/>$st</li>
								</ul>";
								
								
			$st2  = $st;
			$st++;
			
		
			if ($st>6) {
				$compart1++;
				$st=1;
			}//if close
	
			if($compart1>'J') {
				$co++;
				$compart1='G';
			}//if close
	    
		$update = "UPDATE ticketing_memory SET compartment='$compart1', seat='$st',coach_no='$co' WHERE class_name='SleeperF' ";
	    $xqt1 = mysqli_query($cxn, $update);
	    break;
	     }//while close
	}//if sex = f close
	 
	 
	 
	 elseif ("{$class}{$sex}" == 'SleeperM') {
			while ($co <= 2 && $compart1<='F' && $st<=6) {
			
				
				$st = $st;
			
				
				$ticket = $co."-".$compart1."-".$st;
				$details = "<ul style='padding: 1em;'  id='seat-details'>
								<li><b>Coach</b><br/>$co</li>
								<li><b>Compartment</b><br/>$compart1</li>
								<li><b>Seat</b><br/>$st</li>
								</ul>";
								
				$st2  = $st;
				$st++;
			
		
			if ($st>6) {
				$st=1;
				$compart1++;
				
			}//if close
	
			if($compart1>'F') {
				$co++;
				$compart1 ='C';
			}//if close
			
			$update = "UPDATE ticketing_memory SET compartment='$compart1', seat='$st',coach_no='$co' WHERE class_name='SleeperM' ";
			$xqt1 = mysqli_query($cxn, $update);
			
			break;
		}//while close
    }//elseif close
	 
	 
	 
	 elseif ("{$class}{$sex}" == 'Sleeper') {
			while ($co <=2 && $compart1<='B' && $st<=2) {
			   
				$st = $st;
			
				$ticket = $co."-".$compart1."-".$st;
				$details = "<ul style='padding: 1em;'  id='seat-details'>
								<li><b>Coach</b><br/>$co</li>
								<li><b>Compartment</b><br/>$compart1</li>
								<li><b>Bed</b><br/>$st</li>
								</ul>";
				$st2  = $st;
				$st = $st + 2;
			
		
			if ($st>2) {
				$st=1;
				$compart1++;
			}//if close
			
			if($compart1>'B') {
				$compart1='A';
				$co++;
				
			}//if close
			
			
			$update = "UPDATE ticketing_memory SET compartment='$compart1', seat='$st',coach_no='$co' WHERE class_name='Sleeper' ";
			$xqt1 = mysqli_query($cxn, $update);
			
			break;
		}//while close
	}//else close

	
	
	else  {//else if class is not sleeper
		while ($co <= 2 && $compart1<='E' && $st<=100) {
		
				
				
		    $st = $st;
			$ticket = $co."-".$compart1."-".$st;
			$details = "<ul style='padding: 1em;'  id='seat-details'>
								<li><b>Coach</b><br/>$co</li>
								<li><b>Seat</b><br/>$st</li>
								</ul>";
			$st2  = $st;
			$st++;
			
		
		if ($st>100) {
			$compart1++;
			$st=1;
		}//if close
	
		if($compart1>'E') {
			$co++;
			$compart1='A';
		}//if close
		
		$update = "UPDATE ticketing_memory SET compartment='$compart1', seat='$st',coach_no='$co' WHERE class_name='{$class_name}' ";
		$xqt2 = mysqli_query($cxn, $update);
		break;
	}//while close
}//else close


return $ticket; 
}//function_close

?>

