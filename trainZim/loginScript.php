<head>
<link rel="stylesheet" href="customCss.css">
</head>
<?php
	
	include('db_connection.php');
	include('navbar.html');
	
	$user = trim(htmlspecialchars($_POST['u_name']));
	$pin =  trim(htmlspecialchars($_POST['u_pin']));

	$login = "SELECT * FROM admins WHERE user_name='$user' AND user_pin='$pin' ";
	$xqt = mysqli_query($cxn,$login);
	
	if (($row = mysqli_num_rows($xqt)) == 1) {
        header("Location:search.php?un=$user");
	
	unset($_POST['u_name']);
	unset($_POST['u_pin']);
	}
	
	else {
	unset($_POST['u_name']);
	unset($_POST['u_pin']);
	echo "<h3>Login Failed.<a href='admin.php'>Try Again</a></h3>";
	}

?>
