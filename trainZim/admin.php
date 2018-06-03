<?php

    include('navbar.html');
	unset($_POST);
?>
<head>
<link rel="stylesheet" href="customCss.css">
</head>
<div id='login-box'>
<form method='POST' action='loginScript.php' >
    
	<center>
	<p>Login as an <b>admin</b> user</p>
	<br/>
	<p><img src='icns/user-48.png'></p>
    <p>Username:
	<br/>
	<input type='text' name='u_name'></p>
	
	<p>Password:
	<br/>
	<input type='password' name='u_pin'></p>
	
	<input type='submit' id='submit-btn' value='Login' style='width: 50%;'>
	
	<p>_</p>
	</center>
	
	
</form>
</div>

