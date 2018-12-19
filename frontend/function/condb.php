<?php
	$dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
	$dbname = 'sample';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname) or die('Error with MySQL connection');
	mysqli_set_charset($conn,"utf8");
?>