<?php
define('DB_HOST', 'localhost');
if($_SERVER['SERVER_NAME']=="localhost") {
	define('DB_NAME', 'newjob');
	define('DB_USERNAME','root');
	define('DB_PASSWORD','');
	} else {
	define ("DB_NAME", 'sosanh_db'); 
	define ("DB_USERNAME", 'sosanh_db'); 
	define ("DB_PASSWORD", 'Qazwsx123'); 		
}

$conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($conn,"utf8");
if( mysqli_connect_error()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
