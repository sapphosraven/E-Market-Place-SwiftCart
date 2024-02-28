<?php
/* Database connection settings */

$host = "localhost";
$user = "root";
$pass = "";
$db = "new_e_market_place";

$mysqli = new mysqli($host, $user, $pass, $db, 4306) or die($mysqli->error);

?>