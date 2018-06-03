<?php

    $today = time();
	echo "This is today ".$today."<br/>";
	
	$yesterday = strtotime("2016-01-14");
	echo "This is ".$yesterday."<br/><br/>";
	
	echo (($today-$yesterday)/60/60/24);

?>