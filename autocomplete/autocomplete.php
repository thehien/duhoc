<?php
error_reporting(0);
@ini_set('display_errors', 0);
require("config.php");
if (isset($_GET['kinhdoanh'])){
	$return_arr = array();
	try {
		$query = "SELECT * FROM coupons_category where UPPER(category_name) LIKE '%".strtoupper($_GET['kinhdoanh'])."%' and parent_id = 5 order by category_name asc ";
		//echo $query;
		$result = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$name = $row['category_name'];
			array_push($return_arr, $name);	
		}	

	} catch(PDOException $e) {
	    echo 'ERROR: ' . $e->getMessage();
	}

	echo json_encode($return_arr);
}

if (isset($_GET['mobileCode'])){
	$mobileCode_arr = array();
	try {
		$query = "SELECT * FROM list_country where UPPER(name) LIKE '%".strtoupper($_GET['mobileCode'])."%' order by name asc";
		echo $query;
		$result = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			var_dump($row);
			$mobile = $row['name'];
			array_push($mobileCode_arr, $mobile);	
		}	

	} catch(PDOException $e) {
	    echo 'ERROR: ' . $e->getMessage();
	}

	echo json_encode($mobileCode_arr);
}
?>