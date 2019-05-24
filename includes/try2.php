<?php
try {
 	// connect (create a new MySQLi object)
 	$conn = new MySQLi('localhost', 'juice_vampire', 'upinsmoke2013', 'juice_insta');
 	if (mysqli_connect_error())	{
 		throw new Exception(mysqli_connect_error());
 	}
   $sql = "SELECT * FROM gallery ORDER BY idGallery DESC";
 	$result = $conn->query($sql);
 	if (!$result) {
 		throw new Exception($conn->error);
 	}
 	while($row = $result->fetch_object()) {
 		$results[] = $row;
 	}
 }
 catch (Exception $e)
 {
 	echo 'We are having issues. Here is how to get help.';
 }
 print_r($results);
?>