<?php
$server = "127.0.0.1";
$username = "root";
$password = "pass";

/* Attempt to connect to MySQL database */
$conn = new mysqli($server, $username, $password);
 
// Check connection
if ($conn->connect_error) {
	die("Connection Failed: " . $conn->connect_error);
}
echo "Connected";
?>
