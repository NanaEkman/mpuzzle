<?php
	$servername = "localhost";
	$database = "mpuzzle";
	$username = "root";
	$password = "camila@05";

	$conn = mysqli_connect($servername, $username, $password, $database);
	mysqli_select_db($database);

	if (!$conn) {
		die("A conexão falhou!!!". mysqli_connect_error());
	}

	mysqli_close($conn);

?>