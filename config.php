<?php

	$servername = "sql104.infinityfree.com";
	$username = "if0_35229135";
	$password = "fhzG063mE6a";
	$dbname = "if0_35229135_krishna_bank";

	$conn = mysqli_connect($servername, $username, $password, $dbname);

	if(!$conn){
		die("Could not connect to the database due to the following error --> ".mysqli_connect_error());
	}

?>