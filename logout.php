<?php
require_once('config.php');
session_start();
unset($_SESSION["auth_username"]); 
header("Location: ".WEB_URL."auth.php");
?>