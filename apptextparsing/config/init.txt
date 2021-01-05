<?php
session_start();
//url dasar
define('URL', 'http://localhost/apptextsearch/');
// Mengatasi error header();
ob_start();
ob_clean();
//DB
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'textparsing');
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);


?>
